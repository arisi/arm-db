#!/usr/bin/env ruby
#encoding: UTF-8

require 'pp'
require 'json'

# -         -        5           5       B3           5            PE6           I/O         FT                         TIM9_CH2 / DCMI_D7 /
#                                                                                                                            EVENTOUT
# 1        A10        6           6       C1           6            VBAT            S
# -         -         -        13        J2          19            PF3           I/O         FT                         FSMC_A3/EVENTOUT            ADC3_IN9
# -         -         -        14        J3          20            PF4           I/O         FT                (4)
#012345678901234567890

def pick line,i
  pin=line[i*10..i*10+9]
  puts ">#{pin}<"
  if pin
    if pin[/^\s*(\S+)\s*$/]
      if $1!="-"
        return $1
      end
    end
  end
  false
end

pb=[]
packs=["LQFP64","WLCP90","LQFP100","LQFP144","UFBGA176","LQFP176"]


`pdftotext -f 45 -l 57 -layout '/home/arisi/projects/arm-db/doc/DM00037051.pdf' -`.split("\n").each do |line|
  #puts ">#{line}"
  if line.length>10*packs.length
    if m=line.scan(/(\S+)/)
      pinna={}
      p=packs.length
      packs.each_with_index do |p,i|
        if m[i] and m[i][0]!="-"
          pinna[p]=m[i][0]
        end
      end
      if pinna["LQFP176"] and pinna["LQFP176"].to_i>0

        pb<<{name: m[p][0],pins: pinna, af:[]}
      end
    end
  end
end
puts pb.to_json
