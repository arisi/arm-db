Pinouts and pin description                                                                    STM32F405xx, STM32F407xx


                                      Figure 17. STM32F40x WLCSP90 ballout
                               10        9       8        7      6      5        4        3        2      1


                      A       VBAT    PC13     PDR_ON   BOOT0   PB4    PD7      PD4     PC12    PA14    VDD


                              PC14                                                               PI1
                      B               PC15      VDD      PB7    PB3    PD6      PD2     PA15           VCAP_2



                      C        PA0    VSS       PB9      PB6    PD5    PD1      PC11    PI0     PA12    PA11



                          D    PC2   BYPASS_             PB5    PD0    PC10     PA13    PA10    PA9     PA8
                                       REG      PB8



                          E    PC0    PC3       VSS     VSS     VDD    VSS      VDD     PC9     PC8     PC7




                      F        PH0    PH1       PA1     VDD     PE10   PE14    VCAP_1   PC6    PD14     PD15



                      G       NRST    VDDA      PA5      PB0    PE7    PE13     PE15    PD10    PD12    PD11



                      H       VSSA     PA3      PA6      PB1    PE8    PE12     PB10    PD9     PD8     PB15




                      J        PA2     PA4      PA7      PB2    PE9    PE11     PB11    PB12    PB14    PB13

                                                                                                                MS30402V1

                1. This figure shows the package bump view.

                              Table 6. Legend/abbreviations used in the pinout table
     Name                 Abbreviation                                            Definition

                     Unless otherwise specified in brackets below the pin name, the pin function during and after
    Pin name
                     reset is the same as the actual pin name
                               S                                                  Supply pin
    Pin type                    I                                               Input only pin
                               I/O                                             Input / output pin
                               FT                                               5 V tolerant I/O
                              TTa                               3.3 V tolerant I/O directly connected to ADC
  I/O structure
                               B                                             Dedicated BOOT0 pin
                              RST                       Bidirectional reset pin with embedded weak pull-up resistor

     Notes           Unless otherwise specified by a note, all I/Os are set as floating inputs during and after reset

    Alternate
                     Functions selected through GPIOx_AFR registers
    functions

   Additional
                     Functions directly selected/enabled through peripheral registers
   functions




44/185                                                  DocID022152 Rev 4
STM32F405xx, STM32F407xx                                                                                                            Pinouts and pin description


                                                             Table 7. STM32F40x pin and ball definitions
                   Pin number




                                                                                            I / O structure
                                                               Pin name




                                                                                 Pin type
                                        UFBGA176




                                                                                                              Notes
         WLCSP90

                    LQFP100
                              LQFP144




                                                   LQFP176
LQFP64




                                                             (function after                                            Alternate functions   Additional functions
                                                                reset)(1)




                                                                                                                      TRACECLK/ FSMC_A23 /
 -         -        1           1       A2           1            PE2           I/O         FT                           ETH_MII_TXD3 /
                                                                                                                           EVENTOUT
                                                                                                                      TRACED0/FSMC_A19 /
 -         -        2           2       A1           2            PE3           I/O         FT
                                                                                                                          EVENTOUT
                                                                                                                      TRACED1/FSMC_A20 /
 -         -        3           3       B1           3            PE4           I/O         FT
                                                                                                                      DCMI_D4/ EVENTOUT
                                                                                                                      TRACED2 / FSMC_A21 /
 -         -        4           4       B2           4            PE5           I/O         FT                         TIM9_CH1 / DCMI_D6 /
                                                                                                                            EVENTOUT
                                                                                                                      TRACED3 / FSMC_A22 /
 -         -        5           5       B3           5            PE6           I/O         FT                         TIM9_CH2 / DCMI_D7 /
                                                                                                                            EVENTOUT
1        A10        6           6       C1           6            VBAT            S

                                                                                                              (2)(                               RTC_TAMP1,
 -         -         -          -       D2           7            PI8           I/O         FT                 3)          EVENTOUT              RTC_TAMP2,
                                                                                                                                                   RTC_TS

                                                                                                              (2)                                 RTC_OUT,
2        A9         7           7       D1           8           PC13           I/O         FT                (3)          EVENTOUT              RTC_TAMP1,
                                                                                                                                                   RTC_TS
                                                             PC14/OSC32_IN                                    (2)(
3        B10        8           8       E1           9                     I/O              FT                 3)          EVENTOUT              OSC32_IN(4)
                                                                 (PC14)
                                                                 PC15/                                        (2)(
4        B9         9           9       F1         10         OSC32_OUT         I/O         FT                 3)          EVENTOUT             OSC32_OUT(4)
                                                                (PC15)
 -         -         -          -       D3         11             PI9            I/O        FT                        CAN1_RX / EVENTOUT
                                                                                                                        ETH_MII_RX_ER /
 -         -         -          -       E3         12             PI10          I/O         FT
                                                                                                                          EVENTOUT
                                                                                                                       OTG_HS_ULPI_DIR /
 -         -         -          -       E4         13             PI11          I/O         FT
                                                                                                                          EVENTOUT
 -         -         -          -       F2         14             VSS             S
 -         -         -          -       F3         15             VDD             S
                                                                                                                      FSMC_A0 / I2C2_SDA /
 -         -         -        10        E2         16             PF0           I/O         FT
                                                                                                                          EVENTOUT




                                                                               DocID022152 Rev 4                                                           45/185
Pinouts and pin description                                                                                                        STM32F405xx, STM32F407xx


                                                   Table 7. STM32F40x pin and ball definitions (continued)
                   Pin number




                                                                                            I / O structure
                                                               Pin name




                                                                                 Pin type
                                        UFBGA176




                                                                                                              Notes
         WLCSP90

                    LQFP100
                              LQFP144




                                                   LQFP176
LQFP64




                                                             (function after                                            Alternate functions   Additional functions
                                                                reset)(1)




                                                                                                                       FSMC_A1 / I2C2_SCL /
 -         -         -        11        H3          17            PF1           I/O         FT
                                                                                                                           EVENTOUT
                                                                                                                      FSMC_A2 / I2C2_SMBA /
 -         -         -        12        H2          18            PF2           I/O         FT
                                                                                                                          EVENTOUT
                                                                                                              (4)
 -         -         -        13        J2          19            PF3           I/O         FT                         FSMC_A3/EVENTOUT            ADC3_IN9
 -         -         -        14        J3          20            PF4           I/O         FT                (4)
                                                                                                                       FSMC_A4/EVENTOUT           ADC3_IN14
                                                                                                              (4)
 -         -         -        15        K3          21            PF5           I/O         FT                         FSMC_A5/EVENTOUT           ADC3_IN15
 -       C9         10        16        G2          22            VSS             S
 -       B8         11        17        G3          23            VDD             S
                                                                                                                           TIM10_CH1 /
                                                                                                              (4)
 -         -         -        18        K2          24            PF6           I/O         FT                            FSMC_NIORD/              ADC3_IN4
                                                                                                                           EVENTOUT

                                                                                                              (4)     TIM11_CH1/FSMC_NREG
 -         -         -        19        K1          25            PF7           I/O         FT                                                     ADC3_IN5
                                                                                                                           / EVENTOUT
                                                                                                                           TIM13_CH1 /
 -         -         -        20        L3          26            PF8           I/O         FT                (4)
                                                                                                                          FSMC_NIOWR/              ADC3_IN6
                                                                                                                           EVENTOUT

                                                                                                              (4)     TIM14_CH1 / FSMC_CD/
 -         -         -        21        L2          27            PF9           I/O         FT                                                     ADC3_IN7
                                                                                                                           EVENTOUT
                                                                                                              (4)
 -         -         -        22        L1          28           PF10           I/O         FT                        FSMC_INTR/ EVENTOUT          ADC3_IN8
                                                             PH0/OSC_IN
5        F10 12               23        G1          29                          I/O         FT                              EVENTOUT               OSC_IN(4)
                                                               (PH0)
                                                             PH1/OSC_OUT
6        F9         13        24        H1          30                          I/O         FT                             EVENTOUT              OSC_OUT(4)
                                                                 (PH1)
                                                                                            RS
7        G10 14               25        J1          31           NRST           I/O
                                                                                             T

                                                                                                              (4)      OTG_HS_ULPI_STP/
8        E10 15               26        M2          32            PC0           I/O         FT                                                   ADC123_IN10
                                                                                                                          EVENTOUT
                                                                                                              (4)
9          -        16        27        M3          33            PC1           I/O         FT                        ETH_MDC/ EVENTOUT          ADC123_IN11
                                                                                                                            SPI2_MISO /
                                                                                                              (4)        OTG_HS_ULPI_DIR /
10 D10 17                     28        M4          34            PC2           I/O         FT                                                   ADC123_IN12
                                                                                                                           ETH_MII_TXD2
                                                                                                                      /I2S2ext_SD/ EVENTOUT




46/185                                                                         DocID022152 Rev 4
STM32F405xx, STM32F407xx                                                                                                            Pinouts and pin description


                                                   Table 7. STM32F40x pin and ball definitions (continued)
                   Pin number




                                                                                            I / O structure
                                                               Pin name




                                                                                 Pin type
                                        UFBGA176




                                                                                                              Notes
         WLCSP90

                    LQFP100
                              LQFP144




                                                   LQFP176
LQFP64




                                                             (function after                                            Alternate functions   Additional functions
                                                                reset)(1)




                                                                                                                      SPI2_MOSI / I2S2_SD /
                                                                                                              (4)     OTG_HS_ULPI_NXT /
11       E9         18        29        M5          35            PC3           I/O         FT                                                   ADC123_IN13
                                                                                                                        ETH_MII_TX_CLK/
                                                                                                                           EVENTOUT
 -         -        19        30        G3          36            VDD             S
12 H10 20                     31        M1          37           VSSA             S
 -         -         -          -       N1           -           VREF–            S
 -         -        21        32        P1          38           VREF+            S
13       G9         22        33        R1          39           VDDA             S
                                                                                                                          USART2_CTS/
                                                                                                                           UART4_TX/
                                                              PA0/WKUP                                        (5)        ETH_MII_CRS /        ADC123_IN0/WKUP(4
14 C10 23                     34        N3          40                          I/O         FT                                                         )
                                                                (PA0)                                                    TIM2_CH1_ETR/
                                                                                                                      TIM5_CH1 / TIM8_ETR/
                                                                                                                           EVENTOUT
                                                                                                                         USART2_RTS /
                                                                                                                           UART4_RX/
                                                                                                              (4)     ETH_RMII_REF_CLK /
15       F8         24        35        N2          41            PA1           I/O         FT                                                   ADC123_IN1
                                                                                                                        ETH_MII_RX_CLK /
                                                                                                                      TIM5_CH2 / TIM2_CH2/
                                                                                                                           EVENTOUT
                                                                                                                      USART2_TX/TIM5_CH3 /
                                                                                                              (4)
16 J10 25                     36        P2          42            PA2           I/O         FT                        TIM9_CH1 / TIM2_CH3 /      ADC123_IN2
                                                                                                                      ETH_MDIO/ EVENTOUT
                                                                                                                      ETH_MII_CRS/EVENTOU
 -         -         -          -       F4          43            PH2           I/O         FT
                                                                                                                               T
                                                                                                                      ETH_MII_COL/EVENTOU
 -         -         -          -       G4          44            PH3            I/O        FT
                                                                                                                               T
                                                                                                                          I2C2_SCL /
 -         -         -          -       H4          45            PH4           I/O         FT                         OTG_HS_ULPI_NXT/
                                                                                                                          EVENTOUT
 -         -         -          -       J4          46            PH5           I/O         FT                        I2C2_SDA/ EVENTOUT




                                                                               DocID022152 Rev 4                                                           47/185
Pinouts and pin description                                                                                                        STM32F405xx, STM32F407xx


                                                   Table 7. STM32F40x pin and ball definitions (continued)
                   Pin number




                                                                                            I / O structure
                                                               Pin name




                                                                                 Pin type
                                        UFBGA176




                                                                                                              Notes
         WLCSP90

                    LQFP100
                              LQFP144




                                                   LQFP176
LQFP64




                                                             (function after                                            Alternate functions    Additional functions
                                                                reset)(1)




                                                                                                                      USART2_RX/TIM5_CH4 /
                                                                                                                      TIM9_CH2 / TIM2_CH4 /
                                                                                                              (4)
17       H9         26        37        R2          47            PA3           I/O         FT                          OTG_HS_ULPI_D0 /          ADC123_IN3
                                                                                                                          ETH_MII_COL/
                                                                                                                           EVENTOUT
18       E5         27        38           -         -            VSS             S
         D9                             L4          48       BYPASS_REG            I        FT
19       E4         28        39        K4          49            VDD             S
                                                                                                                       SPI1_NSS / SPI3_NSS /
                                                                                                                           USART2_CK /
                                                                                                              (4)                                   ADC12_IN4
20       J9         29        40        N4          50            PA4            I/O TTa                                  DCMI_HSYNC /
                                                                                                                                                   /DAC_OUT1
                                                                                                                      OTG_HS_SOF/ I2S3_WS/
                                                                                                                            EVENTOUT
                                                                                                                            SPI1_SCK/
                                                                                                              (4)       OTG_HS_ULPI_CK /  ADC12_IN5/DAC_OU
21       G8         30        41        P4          51            PA5            I/O TTa
                                                                                                                         TIM2_CH1_ETR/           T2
                                                                                                                      TIM8_CH1N/ EVENTOUT
                                                                                                                           SPI1_MISO /
                                                                                                                      TIM8_BKIN/TIM13_CH1 /
                                                                                                              (4)
22       H8         31        42        P3          52            PA6           I/O         FT                            DCMI_PIXCLK /            ADC12_IN6
                                                                                                                      TIM3_CH1 / TIM1_BKIN/
                                                                                                                           EVENTOUT
                                                                                                                      SPI1_MOSI/ TIM8_CH1N
                                                                                                                      / TIM14_CH1/TIM3_CH2/
                                                                                                              (4)         ETH_MII_RX_DV /
23       J8         32        43        R3          53            PA7           I/O         FT                                                     ADC12_IN7
                                                                                                                            TIM1_CH1N /
                                                                                                                         ETH_RMII_CRS_DV/
                                                                                                                             EVENTOUT
                                                                                                                        ETH_RMII_RX_D0 /
                                                                                                              (4)
24         -        33        44        N5          54            PC4           I/O         FT                           ETH_MII_RX_D0/           ADC12_IN14
                                                                                                                           EVENTOUT
                                                                                                                        ETH_RMII_RX_D1 /
                                                                                                              (4)
25         -        34        45        P5          55            PC5           I/O         FT                           ETH_MII_RX_D1/           ADC12_IN15
                                                                                                                           EVENTOUT
                                                                                                                      TIM3_CH3 / TIM8_CH2N/
                                                                                                              (4)       OTG_HS_ULPI_D1/
26       G7         35        46        R5          56            PB0           I/O         FT                                                     ADC12_IN8
                                                                                                                         ETH_MII_RXD2 /
                                                                                                                      TIM1_CH2N/ EVENTOUT



48/185                                                                         DocID022152 Rev 4
STM32F405xx, STM32F407xx                                                                                                            Pinouts and pin description


                                                   Table 7. STM32F40x pin and ball definitions (continued)
                   Pin number




                                                                                            I / O structure
                                                               Pin name




                                                                                 Pin type
                                        UFBGA176




                                                                                                              Notes
         WLCSP90

                    LQFP100
                              LQFP144




                                                   LQFP176
LQFP64




                                                             (function after                                            Alternate functions   Additional functions
                                                                reset)(1)




                                                                                                                      TIM3_CH4 / TIM8_CH3N/
                                                                                                              (4)       OTG_HS_ULPI_D2/
27       H7         36        47        R4          57            PB1           I/O         FT                                                    ADC12_IN9
                                                                                                                         ETH_MII_RXD3 /
                                                                                                                      TIM1_CH3N/ EVENTOUT
                                                              PB2/BOOT1
28       J7         37        48        M6          58                          I/O         FT                             EVENTOUT
                                                                (PB2)
 -         -         -        49        R6          59           PF11           I/O         FT                        DCMI_D12/ EVENTOUT
 -         -         -        50        P6          60           PF12           I/O         FT                        FSMC_A6/ EVENTOUT
 -         -         -        51        M8          61            VSS             S
 -         -         -        52        N8          62            VDD             S
 -         -         -        53        N6          63           PF13           I/O         FT                        FSMC_A7/ EVENTOUT
 -         -         -        54        R7          64           PF14           I/O         FT                        FSMC_A8/ EVENTOUT
 -         -         -        55        P7          65           PF15           I/O         FT                        FSMC_A9/ EVENTOUT
 -         -         -        56        N7          66            PG0           I/O         FT                        FSMC_A10/ EVENTOUT
 -         -         -        57        M7          67            PG1           I/O         FT                        FSMC_A11/ EVENTOUT
                                                                                                                       FSMC_D4/TIM1_ETR/
 -       G6         38        58        R8          68            PE7           I/O         FT
                                                                                                                          EVENTOUT
                                                                                                                      FSMC_D5/ TIM1_CH1N/
 -       H6         39        59        P8          69            PE8           I/O         FT
                                                                                                                          EVENTOUT
                                                                                                                       FSMC_D6/TIM1_CH1/
 -       J6         40        60        P9          70            PE9           I/O         FT
                                                                                                                          EVENTOUT
 -         -         -        61        M9          71            VSS             S
 -         -         -        62        N9          72            VDD             S
                                                                                                                      FSMC_D7/TIM1_CH2N/
 -       F6         41        63        R9          73           PE10           I/O         FT
                                                                                                                          EVENTOUT
                                                                                                                       FSMC_D8/TIM1_CH2/
 -       J5         42        64        P10         74           PE11           I/O         FT
                                                                                                                          EVENTOUT
                                                                                                                      FSMC_D9/TIM1_CH3N/
 -       H5         43        65        R10         75           PE12           I/O         FT
                                                                                                                          EVENTOUT
                                                                                                                      FSMC_D10/TIM1_CH3/
 -       G5         44        66        N11         76           PE13           I/O         FT
                                                                                                                          EVENTOUT




                                                                               DocID022152 Rev 4                                                           49/185
Pinouts and pin description                                                                                                        STM32F405xx, STM32F407xx


                                                   Table 7. STM32F40x pin and ball definitions (continued)
                   Pin number




                                                                                            I / O structure
                                                               Pin name




                                                                                 Pin type
                                        UFBGA176




                                                                                                              Notes
         WLCSP90

                    LQFP100
                              LQFP144




                                                   LQFP176
LQFP64




                                                             (function after                                            Alternate functions    Additional functions
                                                                reset)(1)




                                                                                                                       FSMC_D11/TIM1_CH4/
 -       F5         45        67        P11         77           PE14            I/O        FT
                                                                                                                           EVENTOUT
                                                                                                                      FSMC_D12/TIM1_BKIN/
 -       G4         46        68        R11         78           PE15           I/O         FT
                                                                                                                          EVENTOUT
                                                                                                                        SPI2_SCK / I2S2_CK /
                                                                                                                      I2C2_SCL/ USART3_TX /
29       H4         47        69        R12         79           PB10           I/O         FT                           OTG_HS_ULPI_D3 /
                                                                                                                          ETH_MII_RX_ER /
                                                                                                                       TIM2_CH3/ EVENTOUT
                                                                                                                      I2C2_SDA/USART3_RX/
                                                                                                                         OTG_HS_ULPI_D4 /
30       J4         48        70        R13         80           PB11            I/O        FT                           ETH_RMII_TX_EN/
                                                                                                                          ETH_MII_TX_EN /
                                                                                                                       TIM2_CH4/ EVENTOUT
31       F4         49        71        M10         81          VCAP_1            S
32         -        50        72        N10         82            VDD             S
                                                                                                                      I2C2_SMBA / TIM12_CH1
 -         -         -          -       M11         83            PH6           I/O         FT                            / ETH_MII_RXD2/
                                                                                                                             EVENTOUT
                                                                                                                           I2C3_SCL /
 -         -         -          -       N12         84            PH7           I/O         FT                           ETH_MII_RXD3/
                                                                                                                           EVENTOUT
                                                                                                                           I2C3_SDA /
 -         -         -          -       M12         85            PH8           I/O         FT                            DCMI_HSYNC/
                                                                                                                           EVENTOUT
                                                                                                                           I2C3_SMBA /
 -         -         -          -       M13         86            PH9           I/O         FT                         TIM12_CH2/ DCMI_D0/
                                                                                                                            EVENTOUT
                                                                                                                       TIM5_CH1 / DCMI_D1/
 -         -         -          -       L13         87           PH10           I/O         FT
                                                                                                                           EVENTOUT
                                                                                                                       TIM5_CH2 / DCMI_D2/
 -         -         -          -       L12         88           PH11           I/O         FT
                                                                                                                           EVENTOUT
                                                                                                                       TIM5_CH3 / DCMI_D3/
 -         -         -          -       K12         89           PH12           I/O         FT
                                                                                                                           EVENTOUT
 -         -         -          -       H12         90            VSS             S
 -         -         -          -       J12         91            VDD             S



50/185                                                                         DocID022152 Rev 4
STM32F405xx, STM32F407xx                                                                                                            Pinouts and pin description


                                                   Table 7. STM32F40x pin and ball definitions (continued)
                   Pin number




                                                                                            I / O structure
                                                               Pin name




                                                                                 Pin type
                                        UFBGA176




                                                                                                              Notes
         WLCSP90

                    LQFP100
                              LQFP144




                                                   LQFP176
LQFP64




                                                             (function after                                            Alternate functions   Additional functions
                                                                reset)(1)




                                                                                                                       SPI2_NSS / I2S2_WS /
                                                                                                                           I2C2_SMBA/
                                                                                                                      USART3_CK/ TIM1_BKIN
                                                                                                                           / CAN2_RX /
33       J3         51        73        P12         92           PB12            I/O        FT
                                                                                                                        OTG_HS_ULPI_D5/
                                                                                                                         ETH_RMII_TXD0 /
                                                                                                                          ETH_MII_TXD0/
                                                                                                                      OTG_HS_ID/ EVENTOUT
                                                                                                                       SPI2_SCK / I2S2_CK /
                                                                                                                          USART3_CTS/
                                                                                                                      TIM1_CH1N /CAN2_TX /
34       J1         52        74        P13         93           PB13            I/O        FT                          OTG_HS_ULPI_D6 /        OTG_HS_VBUS
                                                                                                                         ETH_RMII_TXD1 /
                                                                                                                          ETH_MII_TXD1/
                                                                                                                           EVENTOUT
                                                                                                                      SPI2_MISO/ TIM1_CH2N
                                                                                                                          / TIM12_CH1 /
                                                                                                                          OTG_HS_DM/
35       J2         53        75        R14         94           PB14           I/O         FT
                                                                                                                          USART3_RTS /
                                                                                                                      TIM8_CH2N/I2S2ext_SD/
                                                                                                                            EVENTOUT
                                                                                                                       SPI2_MOSI / I2S2_SD/
                                                                                                                      TIM1_CH3N / TIM8_CH3N
36       H1         54        76        R15         95           PB15           I/O         FT                             / TIM12_CH2 /          RTC_REFIN
                                                                                                                           OTG_HS_DP/
                                                                                                                             EVENTOUT
                                                                                                                          FSMC_D13 /
 -       H2         55        77        P15         96            PD8           I/O         FT
                                                                                                                      USART3_TX/ EVENTOUT
                                                                                                                          FSMC_D14 /
 -       H3         56        78        P14         97            PD9           I/O         FT
                                                                                                                      USART3_RX/ EVENTOUT
                                                                                                                          FSMC_D15 /
 -       G3         57        79        N15         98           PD10           I/O         FT
                                                                                                                      USART3_CK/ EVENTOUT
                                                                                                                          FSMC_CLE /
 -       G1         58        80        N14         99           PD11           I/O         FT                        FSMC_A16/USART3_CT
                                                                                                                         S/ EVENTOUT
                                                                                                                          FSMC_ALE/
                                                                                                                      FSMC_A17/TIM4_CH1 /
 -       G2         59        81        N13 100                  PD12           I/O         FT
                                                                                                                         USART3_RTS/
                                                                                                                          EVENTOUT



                                                                               DocID022152 Rev 4                                                           51/185
Pinouts and pin description                                                                                                        STM32F405xx, STM32F407xx


                                                   Table 7. STM32F40x pin and ball definitions (continued)
                   Pin number




                                                                                            I / O structure
                                                               Pin name




                                                                                 Pin type
                                        UFBGA176




                                                                                                              Notes
         WLCSP90

                    LQFP100
                              LQFP144




                                                   LQFP176
LQFP64




                                                             (function after                                            Alternate functions   Additional functions
                                                                reset)(1)




                                                                                                                      FSMC_A18/TIM4_CH2/
 -         -        60        82        M15 101                  PD13           I/O         FT
                                                                                                                          EVENTOUT
 -         -         -        83           -       102            VSS             S
 -         -         -        84        J13 103                   VDD             S
                                                                                                                       FSMC_D0/TIM4_CH3/
 -       F2         61        85        M14 104                  PD14            I/O        FT
                                                                                                                      EVENTOUT/ EVENTOUT
                                                                                                                       FSMC_D1/TIM4_CH4/
 -       F1         62        86        L14 105                  PD15           I/O         FT
                                                                                                                          EVENTOUT
 -         -         -        87        L15 106                   PG2           I/O         FT                        FSMC_A12/ EVENTOUT
 -         -         -        88        K15 107                   PG3           I/O         FT                        FSMC_A13/ EVENTOUT
 -         -         -        89        K14 108                   PG4           I/O         FT                        FSMC_A14/ EVENTOUT
 -         -         -        90        K13 109                   PG5           I/O         FT                        FSMC_A15/ EVENTOUT
 -         -         -        91        J15 110                   PG6           I/O         FT                        FSMC_INT2/ EVENTOUT
                                                                                                                           FSMC_INT3
 -         -         -        92        J14        111            PG7           I/O         FT                            /USART6_CK/
                                                                                                                           EVENTOUT
                                                                                                                         USART6_RTS /
 -         -         -        93        H14 112                   PG8           I/O         FT                           ETH_PPS_OUT/
                                                                                                                           EVENTOUT
 -         -         -        94        G12 113                   VSS             S
 -         -         -        95        H13 114                   VDD             S
                                                                                                                           I2S2_MCK /
                                                                                                                       TIM8_CH1/SDIO_D6 /
37       F3         63        96        H15 115                   PC6           I/O         FT                            USART6_TX /
                                                                                                                       DCMI_D0/TIM3_CH1/
                                                                                                                           EVENTOUT
                                                                                                                           I2S3_MCK /
                                                                                                                       TIM8_CH2/SDIO_D7 /
38       E1         64        97        G15 116                   PC7           I/O         FT                            USART6_RX /
                                                                                                                       DCMI_D1/TIM3_CH2/
                                                                                                                           EVENTOUT
                                                                                                                         TIM8_CH3/SDIO_D0
39       E2         65        98        G14 117                   PC8           I/O         FT                        /TIM3_CH3/ USART6_CK
                                                                                                                       / DCMI_D2/ EVENTOUT




52/185                                                                         DocID022152 Rev 4
STM32F405xx, STM32F407xx                                                                                                            Pinouts and pin description


                                                   Table 7. STM32F40x pin and ball definitions (continued)
                   Pin number




                                                                                            I / O structure
                                                               Pin name




                                                                                 Pin type
                                        UFBGA176




                                                                                                              Notes
         WLCSP90

                    LQFP100
                              LQFP144




                                                   LQFP176
LQFP64




                                                             (function after                                            Alternate functions   Additional functions
                                                                reset)(1)




                                                                                                                         I2S_CKIN/ MCO2 /
                                                                                                                        TIM8_CH4/SDIO_D1 /
40       E3         66        99        F14 118                   PC9           I/O         FT
                                                                                                                      /I2C3_SDA / DCMI_D3 /
                                                                                                                      TIM3_CH4/ EVENTOUT
                                                                                                                       MCO1 / USART1_CK/
                                                                                                                       TIM1_CH1/ I2C3_SCL/
41       D1         67 100 F15 119                                PA8           I/O         FT
                                                                                                                          OTG_FS_SOF/
                                                                                                                           EVENTOUT
                                                                                                                      USART1_TX/ TIM1_CH2 /
42       D2         68 101 E15 120                                PA9           I/O         FT                        I2C3_SMBA / DCMI_D0/      OTG_FS_VBUS
                                                                                                                           EVENTOUT
                                                                                                                      USART1_RX/ TIM1_CH3/
43       D3         69 102 D15 121                               PA10           I/O         FT                         OTG_FS_ID/DCMI_D1/
                                                                                                                           EVENTOUT
                                                                                                                      USART1_CTS / CAN1_RX
                                                                                                                          / TIM1_CH4 /
44       C1         70 103 C15 122                               PA11           I/O         FT
                                                                                                                          OTG_FS_DM/
                                                                                                                           EVENTOUT
                                                                                                                         USART1_RTS /
                                                                                                                       CAN1_TX/ TIM1_ETR/
45       C2         71 104 B15 123                               PA12           I/O         FT
                                                                                                                          OTG_FS_DP/
                                                                                                                           EVENTOUT
                                                                 PA13                                                     JTMS-SWDIO/
46       D4         72 105 A15 124                                              I/O         FT
                                                             (JTMS-SWDIO)                                                  EVENTOUT

47       B1         73 106 F13 125                              VCAP_2            S
 -       E7         74 107 F12 126                                VSS             S
48       E6         75 108 G13 127                                VDD             S
                                                                                                                      TIM8_CH1N / CAN1_TX/
 -         -         -          -       E12 128                  PH13           I/O         FT
                                                                                                                           EVENTOUT
                                                                                                                      TIM8_CH2N / DCMI_D4/
 -         -         -          -       E13 129                  PH14           I/O         FT
                                                                                                                           EVENTOUT
                                                                                                                      TIM8_CH3N / DCMI_D11/
 -         -         -          -       D13 130                  PH15           I/O         FT
                                                                                                                           EVENTOUT
                                                                                                                      TIM5_CH4 / SPI2_NSS /
 -       C3          -          -       E14 131                   PI0           I/O         FT                         I2S2_WS / DCMI_D13/
                                                                                                                            EVENTOUT



                                                                               DocID022152 Rev 4                                                           53/185
Pinouts and pin description                                                                                                        STM32F405xx, STM32F407xx


                                                   Table 7. STM32F40x pin and ball definitions (continued)
                   Pin number




                                                                                            I / O structure
                                                               Pin name




                                                                                 Pin type
                                        UFBGA176




                                                                                                              Notes
         WLCSP90

                    LQFP100
                              LQFP144




                                                   LQFP176
LQFP64




                                                             (function after                                            Alternate functions    Additional functions
                                                                reset)(1)




                                                                                                                       SPI2_SCK / I2S2_CK /
 -       B2          -          -       D14 132                   PI1           I/O         FT
                                                                                                                       DCMI_D8/ EVENTOUT
                                                                                                                      TIM8_CH4 /SPI2_MISO /
 -         -         -          -       C14 133                   PI2           I/O         FT                        DCMI_D9 / I2S2ext_SD/
                                                                                                                           EVENTOUT
                                                                                                                      TIM8_ETR / SPI2_MOSI /
 -         -         -          -       C13 134                   PI3           I/O         FT                         I2S2_SD / DCMI_D10/
                                                                                                                           EVENTOUT
 -         -         -          -       D9         135            VSS             S
 -         -         -          -       C9         136            VDD             S
                                                                 PA14                                                     JTCK-SWCLK/
49       A2         76 109 A14 137                                              I/O         FT
                                                             (JTCK/SWCLK)                                                  EVENTOUT

                                                                                                                         JTDI/ SPI3_NSS/
                                                                  PA15                                                I2S3_WS/TIM2_CH1_ET
50       B3         77 110 A13 138                                              I/O         FT
                                                                 (JTDI)                                                   R / SPI1_NSS /
                                                                                                                           EVENTOUT
                                                                                                                       SPI3_SCK / I2S3_CK/
                                                                                                                       UART4_TX/SDIO_D2 /
51       D5         78 111 B14 139                               PC10           I/O         FT
                                                                                                                      DCMI_D8 / USART3_TX/
                                                                                                                           EVENTOUT
                                                                                                                      UART4_RX/ SPI3_MISO /
                                                                                                                            SDIO_D3 /
52       C4         79 112 B13 140                               PC11           I/O         FT
                                                                                                                      DCMI_D4/USART3_RX /
                                                                                                                      I2S3ext_SD/ EVENTOUT
                                                                                                                        UART5_TX/SDIO_CK /
                                                                                                                       DCMI_D9 / SPI3_MOSI
53       A3         80 113 A12 141                               PC12           I/O         FT
                                                                                                                      /I2S3_SD / USART3_CK/
                                                                                                                            EVENTOUT
                                                                                                                       FSMC_D2/CAN1_RX/
 -       D6         81 114 B12 142                                PD0           I/O         FT
                                                                                                                          EVENTOUT
                                                                                                                       FSMC_D3 / CAN1_TX/
 -       C5         82 115 C12 143                                PD1           I/O         FT
                                                                                                                          EVENTOUT
                                                                                                                       TIM3_ETR/UART5_RX/
54       B4         83 116 D12 144                                PD2           I/O         FT                        SDIO_CMD / DCMI_D11/
                                                                                                                            EVENTOUT




54/185                                                                         DocID022152 Rev 4
STM32F405xx, STM32F407xx                                                                                                            Pinouts and pin description


                                                   Table 7. STM32F40x pin and ball definitions (continued)
                   Pin number




                                                                                            I / O structure
                                                               Pin name




                                                                                 Pin type
                                        UFBGA176




                                                                                                              Notes
         WLCSP90

                    LQFP100
                              LQFP144




                                                   LQFP176
LQFP64




                                                             (function after                                            Alternate functions   Additional functions
                                                                reset)(1)




                                                                                                                           FSMC_CLK/
 -         -        84 117 D11 145                                PD3           I/O         FT                            USART2_CTS/
                                                                                                                           EVENTOUT
                                                                                                                           FSMC_NOE/
 -       A4         85 118 D10 146                                PD4           I/O         FT                            USART2_RTS/
                                                                                                                           EVENTOUT
                                                                                                                      FSMC_NWE/USART2_TX
 -       C6         86 119 C11 147                                PD5           I/O         FT
                                                                                                                          / EVENTOUT
 -         -         -        120       D8         148            VSS             S
 -         -         -        121       C8         149            VDD             S
                                                                                                                          FSMC_NWAIT/
 -       B5         87 122 B11 150                                PD6            I/O        FT
                                                                                                                      USART2_RX/ EVENTOUT
                                                                                                                      USART2_CK/FSMC_NE1/
 -       A5         88 123 A11 151                                PD7            I/O        FT                            FSMC_NCE2/
                                                                                                                           EVENTOUT
                                                                                                                          USART6_RX /
 -         -         -        124 C10 152                         PG9           I/O         FT                        FSMC_NE2/FSMC_NCE3
                                                                                                                          / EVENTOUT
                                                                                                                         FSMC_NCE4_1/
 -         -         -        125 B10 153                        PG10           I/O         FT
                                                                                                                      FSMC_NE3/ EVENTOUT
                                                                                                                         FSMC_NCE4_2 /
                                                                                                                         ETH_MII_TX_EN/
 -         -         -        126       B9         154           PG11           I/O         FT
                                                                                                                        ETH _RMII_TX_EN/
                                                                                                                           EVENTOUT
                                                                                                                           FSMC_NE4 /
 -         -         -        127       B8         155           PG12           I/O         FT                            USART6_RTS/
                                                                                                                           EVENTOUT
                                                                                                                           FSMC_A24 /
                                                                                                                          USART6_CTS
 -         -         -        128       A8         156           PG13           I/O         FT                           /ETH_MII_TXD0/
                                                                                                                         ETH_RMII_TXD0/
                                                                                                                           EVENTOUT
                                                                                                                      FSMC_A25 / USART6_TX
                                                                                                                         /ETH_MII_TXD1/
 -         -         -        129       A7         157           PG14           I/O         FT
                                                                                                                         ETH_RMII_TXD1/
                                                                                                                           EVENTOUT




                                                                               DocID022152 Rev 4                                                           55/185
Pinouts and pin description                                                                                                        STM32F405xx, STM32F407xx


                                                   Table 7. STM32F40x pin and ball definitions (continued)
                   Pin number




                                                                                            I / O structure
                                                               Pin name




                                                                                 Pin type
                                        UFBGA176




                                                                                                              Notes
         WLCSP90

                    LQFP100
                              LQFP144




                                                   LQFP176
LQFP64




                                                             (function after                                            Alternate functions    Additional functions
                                                                reset)(1)




 -       E8          -        130       D7         158            VSS             S
 -       F7          -        131       C7         159            VDD             S
                                                                                                                         USART6_CTS /
 -         -         -        132       B7         160           PG15            I/O        FT
                                                                                                                      DCMI_D13/ EVENTOUT

                                                                 PB3                                                   JTDO/ TRACESWO/
                                                                                                                      SPI3_SCK / I2S3_CK /
55       B6         89 133 A10 161                             (JTDO/           I/O         FT
                                                                                                                      TIM2_CH2 / SPI1_SCK/
                                                             TRACESWO)
                                                                                                                           EVENTOUT
                                                                                                                       NJTRST/ SPI3_MISO /
                                                                 PB4
56       A6         90 134              A9         162                          I/O         FT                        TIM3_CH1 / SPI1_MISO /
                                                               (NJTRST)                                               I2S3ext_SD/ EVENTOUT
                                                                                                                      I2C1_SMBA/ CAN2_RX /
                                                                                                                         OTG_HS_ULPI_D7 /
                                                                                                                      ETH_PPS_OUT/TIM3_CH
57       D7         91 135              A6         163            PB5           I/O         FT
                                                                                                                           2 / SPI1_MOSI/
                                                                                                                      SPI3_MOSI / DCMI_D10 /
                                                                                                                        I2S3_SD/ EVENTOUT
                                                                                                                      I2C1_SCL/ TIM4_CH1 /
                                                                                                                           CAN2_TX /
58       C7         92 136              B6         164            PB6           I/O         FT
                                                                                                                      DCMI_D5/USART1_TX/
                                                                                                                           EVENTOUT
                                                                                                                       I2C1_SDA / FSMC_NL /
                                                                                                                          DCMI_VSYNC /
59       B7         93 137              B5         165            PB7           I/O         FT
                                                                                                                      USART1_RX/ TIM4_CH2/
                                                                                                                            EVENTOUT
60       A7         94 138              D6         166          BOOT0              I           B                                                       VPP
                                                                                                                        TIM4_CH3/SDIO_D4/
                                                                                                                      TIM10_CH1 / DCMI_D6 /
61       D8         95 139              A5         167            PB8           I/O         FT                            ETH_MII_TXD3 /
                                                                                                                       I2C1_SCL/ CAN1_RX/
                                                                                                                            EVENTOUT
                                                                                                                       SPI2_NSS/ I2S2_WS /
                                                                                                                      TIM4_CH4/ TIM11_CH1/
62       C8         96 140              B4         168            PB9           I/O         FT                          SDIO_D5 / DCMI_D7 /
                                                                                                                       I2C1_SDA / CAN1_TX/
                                                                                                                            EVENTOUT




56/185                                                                         DocID022152 Rev 4
 STM32F405xx, STM32F407xx                                                                                                               Pinouts and pin description


                                                     Table 7. STM32F40x pin and ball definitions (continued)
                    Pin number




                                                                                                I / O structure
                                                                    Pin name




                                                                                    Pin type
                                          UFBGA176




                                                                                                                  Notes
          WLCSP90

                     LQFP100
                               LQFP144




                                                     LQFP176
 LQFP64




                                                                (function after                                             Alternate functions   Additional functions
                                                                   reset)(1)




                                                                                                                          TIM4_ETR / FSMC_NBL0
  -         -        97 141               A4         169              PE0          I/O          FT
                                                                                                                           / DCMI_D2/ EVENTOUT
                                                                                                                          FSMC_NBL1 / DCMI_D3/
  -         -        98 142               A3         170              PE1          I/O          FT
                                                                                                                              EVENTOUT
63          -        99          -        D5           -              VSS            S
  -       A8          -        143        C6         171            PDR_ON            I         FT
                     10
64        A1            144               C5         172              VDD            S
                     0
                                                                                                                          TIM8_BKIN / DCMI_D5/
  -         -         -          -        D4         173              PI4          I/O          FT
                                                                                                                               EVENTOUT
                                                                                                                               TIM8_CH1 /
  -         -         -          -        C4         174              PI5          I/O          FT                            DCMI_VSYNC/
                                                                                                                               EVENTOUT
                                                                                                                           TIM8_CH2 / DCMI_D6/
  -         -         -          -        C3         175              PI6          I/O          FT
                                                                                                                               EVENTOUT
                                                                                                                           TIM8_CH3 / DCMI_D7/
  -         -         -          -        C2         176              PI7          I/O          FT
                                                                                                                               EVENTOUT
1. Function availability depends on the chosen device.
2. PC13, PC14, PC15 and PI8 are supplied through the power switch. Since the switch only sinks a limited amount of current
   (3 mA), the use of GPIOs PC13 to PC15 and PI8 in output mode is limited:
   - The speed should not exceed 2 MHz with a maximum load of 30 pF.
   - These I/Os must not be used as a current source (e.g. to drive an LED).
3. Main function after the first backup domain power-up. Later on, it depends on the contents of the RTC registers even after
   reset (because these registers are not reset by the main reset). For details on how to manage these I/Os, refer to the RTC
   register description sections in the STM32F4xx reference manual, available from the STMicroelectronics website:
   www.st.com.
4. FT = 5 V tolerant except when in analog mode or oscillator mode (for PC14, PC15, PH0 and PH1).
5. If the device is delivered in an UFBGA176 or WLCSP90 and the BYPASS_REG pin is set to VDD (Regulator off/internal reset
   ON mode), then PA0 is used as an internal Reset (active low).


                                                                                  Table 8. FSMC pin definition
                                                                                               FSMC
                                                                                                                                                           WLCSP90
                                     Pins(1)                                                                                                  LQFP100(2)      (2)
                                                                     NOR/PSRAM/
                                                               CF               NOR/PSRAM Mux NAND 16 bit
                                                                       SRAM

                                         PE2                                A23                                   A23                             Yes
                                         PE3                                A19                                   A19                             Yes



                                                                                  DocID022152 Rev 4                                                            57/185
