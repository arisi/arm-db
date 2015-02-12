#!/usr/bin/env coffee
#encoding: UTF-8

isWin = /^win/.test(process.platform);
isMac = /^darwin/.test(process.platform);
isLin = /^linux/.test(process.platform);
if not isWin and not isMac and not isLin
  console.log "Warning: Unsupported Platform: #{process.platform}, assuming Unix"
  isLin=true



http = require("http")
express = require("express")
fs = require('fs');
printf = require('printf');
sprintf = require('sprintf').sprintf;
yaml = require('js-yaml');
multer  = require('multer')
#async = require('async')


getUserHome = () ->
  process.env.HOME || process.env.HOMEPATH || process.env.USERPROFILE;

console.log "HOME:",getUserHome()

options={jee: ["joo","jyy",123]}

cfile="#{getUserHome()}/node-arm-db.yaml"
console.log "cfile:",cfile
try
  options = yaml.safeLoad(fs.readFileSync(cfile, 'utf8'));
  console.log options;
catch e
  console.log(e);
  console.log "no config!"
data=yaml.dump(options)

fs.writeFile cfile, data, "utf-8", () ->
  console.log "wrote ok"

app = express()
app.use(multer({ dest: './rest/'}))

console.log "workdir:",__dirname

app.get '/', (req, res) ->
  res.render 'index', { title: 'Hey', message: 'Hello there!'}

get_db = () ->
  db=fs.readFileSync "json/arm-db.json", "utf-8"
  json=JSON.parse db
  #console.log json
  for cpu,data of json
    for k,v of data
      if typeof v =="string" and  v[0..1]=="0x"
        json[cpu][k]=parseInt(v[2..-1],16)

  console.log json
  json

#console.log db


app.get "/arm-db.json", (req, res) ->
  res.set('Content-Type', 'application/json');
  console.log "get json arm-db.json"
  res.json get_db()

app.get "/:cpu.h", (req, res) ->
  res.set('Content-Type', 'text/plain');
  cpu=req.params.cpu
  json=get_db()
  if data=json[cpu]
    console.log "get json arm-db.json"
    s="// #{cpu} arm definitions:\n#define CPU_name \"#{cpu}\"\n"
    for k,v of data
      if typeof v =="string"
        s+="#define CPU_#{k} (\"#{v}\")\n"
      else if typeof v =="number"
        s+="#define CPU_#{k} (#{v})  // 0x#{v.toString(16)}\n"
    res.send s
  else
    res.send ""

app.get "/:file.json", (req, res) ->
  res.set('Content-Type', 'application/json');
  console.log "get json #{req.params.file}.json"
  res.send fs.readFileSync "#{__dirname}/json/#{req.params.file}.json", "utf-8"

app.get "/:cpu/:pack/:act?", (req, res) ->
  res.set('Content-Type', 'application/json');
  res.setHeader("Access-Control-Allow-Origin", "*");
  console.log "get json #{req.params.file}.json"
  f=fs.readFileSync "#{__dirname}/json/#{req.params.cpu}_PO.json", "utf-8"
  json=JSON.parse f
  out=[]
  for data in json
    #console.log "data:",data.pins,req.params.pack
    #console.log "??:",data.pins[req.params.pack]
    if data.pins[req.params.pack]
      out.push {pin: data.pins[req.params.pack],name: data.name, af: data.af}
  if req.params.act=="json"
    res.json out
  else
    str=""
    for data in out
      str+=sprintf "%-4s %-8s  ",data.pin,data.name
      for af in data.af
        str+=sprintf "%s,",af
      str+="\n"
    res.send str


app.listen 3009

stamp = () ->
  (new Date).getTime();



