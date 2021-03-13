/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190703 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASL3SETIE.aml, Sat Mar 13 15:09:40 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00002788 (10120)
 *     Revision         0x02
 *     Checksum         0xDF
 *     OEM ID           "abi"
 *     OEM Table ID     "ACRPRDCT"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20190703 (538511107)
 */
DefinitionBlock ("", "SSDT", 2, "abi", "ACRPRDCT", 0x00000000)
{
    External (_PR_.CPU0, DeviceObj)
    External (_PR_.CPU1, DeviceObj)
    External (_PR_.CPU2, DeviceObj)
    External (_PR_.CPU3, DeviceObj)
    External (_SB_.ECOK, DeviceObj)
    External (_SB_.LID0, DeviceObj)
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.GFX0._ADR, UnknownObj)
    External (_SB_.PCI0.GFX0.DD1F, DeviceObj)
    External (_SB_.PCI0.GPI0, DeviceObj)
    External (_SB_.PCI0.GPI0.XSTA, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.HDAS._ADR, UnknownObj)
    External (_SB_.PCI0.HECI._ADR, UnknownObj)
    External (_SB_.PCI0.I2C0, DeviceObj)
    External (_SB_.PCI0.I2C0.TPDE, DeviceObj)
    External (_SB_.PCI0.I2C0.TPDE.XCRS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (_SB_.PCI0.LPCB.EC0_, DeviceObj)
    External (_SB_.PCI0.LPCB.HPET._STA, UnknownObj)
    External (_SB_.PCI0.LPCB.MATH._STA, UnknownObj)
    External (_SB_.PCI0.LPCB.PS2K, UnknownObj)
    External (_SB_.PCI0.LPCB.RTC_._STA, UnknownObj)
    External (_SB_.PCI0.LPCB.TIMR._STA, UnknownObj)
    External (_SB_.PCI0.PPMC._ADR, UnknownObj)
    External (_SB_.PCI0.RP01, DeviceObj)
    External (_SB_.PCI0.RP01.PXSX._ADR, UnknownObj)
    External (_SB_.PCI0.RP09, DeviceObj)
    External (_SB_.PCI0.RP09.PXSX._ADR, UnknownObj)
    External (_SB_.PCI0.RP11, DeviceObj)
    External (_SB_.PCI0.RP11.PXSX._ADR, UnknownObj)
    External (_SB_.PCI0.RP12, DeviceObj)
    External (_SB_.PCI0.RP12.PXSX._ADR, UnknownObj)
    External (_SB_.PCI0.SAT0._ADR, UnknownObj)
    External (_SB_.PCI0.SBUS._ADR, UnknownObj)
    External (_SB_.PCI0.SBUX, DeviceObj)
    External (_SB_.PCI0.XDCI._STA, UnknownObj)
    External (_SB_.PCI0.XHC_._ADR, UnknownObj)
    External (_SB_.PCI0.XHCI, DeviceObj)
    External (_SB_.PCI0.XHCI.RHUB, DeviceObj)
    External (_TZ_.TZ01, DeviceObj)
    External (CPU0, DeviceObj)
    External (CPU1, DeviceObj)
    External (CPU2, DeviceObj)
    External (CPU3, DeviceObj)
    External (EC0_, DeviceObj)
    External (GPI0, DeviceObj)
    External (I2C0, DeviceObj)
    External (LINX, IntObj)
    External (LPCB, DeviceObj)
    External (OSYS, FieldUnitObj)
    External (PS2K, DeviceObj)
    External (RHUB, DeviceObj)
    External (RP01, DeviceObj)
    External (RP09, DeviceObj)
    External (RP11, DeviceObj)
    External (RP12, DeviceObj)
    External (SBUS, DeviceObj)
    External (TPDE, DeviceObj)
    External (TZ01, DeviceObj)
    External (XHC_, DeviceObj)

    OperationRegion (PGIO, SystemIO, 0x0500, 0x3C)
    Field (PGIO, ByteAcc, NoLock, Preserve)
    {
        Offset (0x0C), 
        LG00,   8, 
        Offset (0x2C), 
            ,   1, 
        GI01,   1, 
            ,   1, 
        GI06,   1, 
        Offset (0x2D), 
        LG04,   8
    }

    If (_OSI ("Darwin"))
    {
        Device (RMCF)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (HELP, 0, NotSerialized)
            {
                Debug = "BKLT indicates the type of backlight control. 0: IntelBacklight, 1: AppleBacklight"
                Debug = "LMAX indicates max for IGPU PWM backlight. Ones: Use default, other values must match framebuffer"
            }

            Name (BKLT, One)
            Name (LMAX, Ones)
            Name (FBTP, Zero)
            Name (LEVW, Ones)
            Name (GRAN, Zero)
        }
    }

    Scope (_PR)
    {
        Scope (CPU0)
        {
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                Debug = "ssdtPRGen version.....: 21.5 / Mac OS X 10.13.3 (17D47)"
                Debug = "custom mode...........: 0"
                Debug = "host processor........: Intel(R) Core(TM) i5-7200U CPU @ 2.50GHz"
                Debug = "target processor......: i5-7200U"
                Debug = "number of processors..: 1"
                Debug = "baseFrequency.........: 500"
                Debug = "frequency.............: 2500"
                Debug = "busFrequency..........: 100"
                Debug = "logicalCPUs...........: 4"
                Debug = "maximum TDP...........: 15"
                Debug = "packageLength.........: 27"
                Debug = "turboStates...........: 6"
                Debug = "maxTurboFrequency.....: 3100"
                Debug = "machdep.xcpm.mode.....: 1"
            }

            Name (APLF, Zero)
            Name (APSN, 0x06)
            Name (APSS, Package (0x1B)
            {
                Package (0x06)
                {
                    0x0C1C, 
                    0x3A98, 
                    0x0A, 
                    0x0A, 
                    0x1F00, 
                    0x1F00
                }, 

                Package (0x06)
                {
                    0x0BB8, 
                    0x3A98, 
                    0x0A, 
                    0x0A, 
                    0x1E00, 
                    0x1E00
                }, 

                Package (0x06)
                {
                    0x0B54, 
                    0x3A98, 
                    0x0A, 
                    0x0A, 
                    0x1D00, 
                    0x1D00
                }, 

                Package (0x06)
                {
                    0x0AF0, 
                    0x3A98, 
                    0x0A, 
                    0x0A, 
                    0x1C00, 
                    0x1C00
                }, 

                Package (0x06)
                {
                    0x0A8C, 
                    0x3A98, 
                    0x0A, 
                    0x0A, 
                    0x1B00, 
                    0x1B00
                }, 

                Package (0x06)
                {
                    0x0A28, 
                    0x3A98, 
                    0x0A, 
                    0x0A, 
                    0x1A00, 
                    0x1A00
                }, 

                Package (0x06)
                {
                    0x09C4, 
                    0x3A98, 
                    0x0A, 
                    0x0A, 
                    0x1900, 
                    0x1900
                }, 

                Package (0x06)
                {
                    0x0960, 
                    0x379C, 
                    0x0A, 
                    0x0A, 
                    0x1800, 
                    0x1800
                }, 

                Package (0x06)
                {
                    0x08FC, 
                    0x34B0, 
                    0x0A, 
                    0x0A, 
                    0x1700, 
                    0x1700
                }, 

                Package (0x06)
                {
                    0x0898, 
                    0x31D1, 
                    0x0A, 
                    0x0A, 
                    0x1600, 
                    0x1600
                }, 

                Package (0x06)
                {
                    0x0834, 
                    0x2F01, 
                    0x0A, 
                    0x0A, 
                    0x1500, 
                    0x1500
                }, 

                Package (0x06)
                {
                    0x07D0, 
                    0x2C3F, 
                    0x0A, 
                    0x0A, 
                    0x1400, 
                    0x1400
                }, 

                Package (0x06)
                {
                    0x076C, 
                    0x298B, 
                    0x0A, 
                    0x0A, 
                    0x1300, 
                    0x1300
                }, 

                Package (0x06)
                {
                    0x0708, 
                    0x26E5, 
                    0x0A, 
                    0x0A, 
                    0x1200, 
                    0x1200
                }, 

                Package (0x06)
                {
                    0x06A4, 
                    0x244D, 
                    0x0A, 
                    0x0A, 
                    0x1100, 
                    0x1100
                }, 

                Package (0x06)
                {
                    0x0640, 
                    0x21C3, 
                    0x0A, 
                    0x0A, 
                    0x1000, 
                    0x1000
                }, 

                Package (0x06)
                {
                    0x05DC, 
                    0x1F46, 
                    0x0A, 
                    0x0A, 
                    0x0F00, 
                    0x0F00
                }, 

                Package (0x06)
                {
                    0x0578, 
                    0x1CD6, 
                    0x0A, 
                    0x0A, 
                    0x0E00, 
                    0x0E00
                }, 

                Package (0x06)
                {
                    0x0514, 
                    0x1A74, 
                    0x0A, 
                    0x0A, 
                    0x0D00, 
                    0x0D00
                }, 

                Package (0x06)
                {
                    0x04B0, 
                    0x181F, 
                    0x0A, 
                    0x0A, 
                    0x0C00, 
                    0x0C00
                }, 

                Package (0x06)
                {
                    0x044C, 
                    0x15D7, 
                    0x0A, 
                    0x0A, 
                    0x0B00, 
                    0x0B00
                }, 

                Package (0x06)
                {
                    0x03E8, 
                    0x139C, 
                    0x0A, 
                    0x0A, 
                    0x0A00, 
                    0x0A00
                }, 

                Package (0x06)
                {
                    0x0384, 
                    0x116E, 
                    0x0A, 
                    0x0A, 
                    0x0900, 
                    0x0900
                }, 

                Package (0x06)
                {
                    0x0320, 
                    0x0F4D, 
                    0x0A, 
                    0x0A, 
                    0x0800, 
                    0x0800
                }, 

                Package (0x06)
                {
                    0x02BC, 
                    0x0D38, 
                    0x0A, 
                    0x0A, 
                    0x0700, 
                    0x0700
                }, 

                Package (0x06)
                {
                    0x0258, 
                    0x0B30, 
                    0x0A, 
                    0x0A, 
                    0x0600, 
                    0x0600
                }, 

                Package (0x06)
                {
                    0x01F4, 
                    0x0934, 
                    0x0A, 
                    0x0A, 
                    0x0500, 
                    0x0500
                }
            })
            Method (ACST, 0, NotSerialized)
            {
                Debug = "Method _PR_.CPU0.ACST Called"
                Debug = "CPU0 C-States    : 29"
                Return (Package (0x06)
                {
                    One, 
                    0x04, 
                    Package (0x04)
                    {
                        ResourceTemplate ()
                        {
                            Register (FFixedHW, 
                                0x01,               // Bit Width
                                0x02,               // Bit Offset
                                0x0000000000000000, // Address
                                0x01,               // Access Size
                                )
                        }, 

                        One, 
                        Zero, 
                        0x03E8
                    }, 

                    Package (0x04)
                    {
                        ResourceTemplate ()
                        {
                            Register (FFixedHW, 
                                0x01,               // Bit Width
                                0x02,               // Bit Offset
                                0x0000000000000010, // Address
                                0x03,               // Access Size
                                )
                        }, 

                        0x03, 
                        0xCD, 
                        0x01F4
                    }, 

                    Package (0x04)
                    {
                        ResourceTemplate ()
                        {
                            Register (FFixedHW, 
                                0x01,               // Bit Width
                                0x02,               // Bit Offset
                                0x0000000000000020, // Address
                                0x03,               // Access Size
                                )
                        }, 

                        0x06, 
                        0xF5, 
                        0x015E
                    }, 

                    Package (0x04)
                    {
                        ResourceTemplate ()
                        {
                            Register (FFixedHW, 
                                0x01,               // Bit Width
                                0x02,               // Bit Offset
                                0x0000000000000030, // Address
                                0x03,               // Access Size
                                )
                        }, 

                        0x07, 
                        0xF5, 
                        0xC8
                    }
                })
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Debug = "Method _PR_.CPU0._DSM Called"
                If ((Arg2 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }

                Return (Package (0x02)
                {
                    "plugin-type", 
                    One
                })
            }
        }

        Scope (CPU1)
        {
            Method (APSS, 0, NotSerialized)
            {
                Debug = "Method _PR_.CPU1.APSS Called"
                Return (\_PR.CPU0.APSS)
            }

            Method (ACST, 0, NotSerialized)
            {
                Debug = "Method _PR_.CPU1.ACST Called"
                Debug = "CPU1 C-States    : 31"
                Return (Package (0x07)
                {
                    One, 
                    0x05, 
                    Package (0x04)
                    {
                        ResourceTemplate ()
                        {
                            Register (FFixedHW, 
                                0x01,               // Bit Width
                                0x02,               // Bit Offset
                                0x0000000000000000, // Address
                                0x01,               // Access Size
                                )
                        }, 

                        One, 
                        0x03E8, 
                        0x03E8
                    }, 

                    Package (0x04)
                    {
                        ResourceTemplate ()
                        {
                            Register (FFixedHW, 
                                0x01,               // Bit Width
                                0x02,               // Bit Offset
                                0x0000000000000010, // Address
                                0x03,               // Access Size
                                )
                        }, 

                        0x02, 
                        0x94, 
                        0x01F4
                    }, 

                    Package (0x04)
                    {
                        ResourceTemplate ()
                        {
                            Register (FFixedHW, 
                                0x01,               // Bit Width
                                0x02,               // Bit Offset
                                0x0000000000000030, // Address
                                0x03,               // Access Size
                                )
                        }, 

                        0x03, 
                        0xC6, 
                        0xC8
                    }, 

                    Package (0x04)
                    {
                        ResourceTemplate ()
                        {
                            Register (FFixedHW, 
                                0x01,               // Bit Width
                                0x02,               // Bit Offset
                                0x0000000000000040, // Address
                                0x03,               // Access Size
                                )
                        }, 

                        0x06, 
                        0xF5, 
                        0x015E
                    }, 

                    Package (0x04)
                    {
                        ResourceTemplate ()
                        {
                            Register (FFixedHW, 
                                0x01,               // Bit Width
                                0x02,               // Bit Offset
                                0x0000000000000050, // Address
                                0x03,               // Access Size
                                )
                        }, 

                        0x07, 
                        0xF5, 
                        0xC8
                    }
                })
            }
        }

        Scope (CPU2)
        {
            Method (APSS, 0, NotSerialized)
            {
                Debug = "Method _PR_.CPU2.APSS Called"
                Return (\_PR.CPU0.APSS)
            }

            Method (ACST, 0, NotSerialized)
            {
                Return (\_PR.CPU1.ACST ())
            }
        }

        Scope (CPU3)
        {
            Method (APSS, 0, NotSerialized)
            {
                Debug = "Method _PR_.CPU3.APSS Called"
                Return (\_PR.CPU0.APSS)
            }

            Method (ACST, 0, NotSerialized)
            {
                Return (\_PR.CPU1.ACST ())
            }
        }
    }

    Scope (_SB)
    {
        If (_OSI ("Darwin"))
        {
            Device (ALS0)
            {
                Name (_HID, "ACPI0008" /* Ambient Light Sensor Device */)  // _HID: Hardware ID
                Name (_CID, "smc-als")  // _CID: Compatible ID
                Name (_ALI, 0x012C)  // _ALI: Ambient Light Illuminance
                Name (_ALR, Package (0x01)  // _ALR: Ambient Light Response
                {
                    Package (0x02)
                    {
                        0x64, 
                        0x012C
                    }
                })
            }
        }

        Device (OSI)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If (CondRefOf (\OSYS))
                {
                    If (_OSI ("Linux"))
                    {
                        OSYS = 0x03E8
                        LINX = One
                    }

                    If (_OSI ("Windows 2001"))
                    {
                        OSYS = 0x07D1
                    }

                    If (_OSI ("Windows 2001 SP1"))
                    {
                        OSYS = 0x07D1
                    }

                    If (_OSI ("Windows 2001 SP2"))
                    {
                        OSYS = 0x07D2
                    }

                    If (_OSI ("Windows 2001.1"))
                    {
                        OSYS = 0x07D3
                    }

                    If (_OSI ("Windows 2006"))
                    {
                        OSYS = 0x07D6
                    }

                    If (_OSI ("Windows 2009"))
                    {
                        OSYS = 0x07D9
                    }

                    If (_OSI ("Windows 2012"))
                    {
                        OSYS = 0x07DC
                    }

                    If (_OSI ("Windows 2013"))
                    {
                        OSYS = 0x07DD
                    }

                    If (_OSI ("Windows 2015"))
                    {
                        OSYS = 0x07DF
                    }

                    If (_OSI ("Windows 2017"))
                    {
                        OSYS = 0x07E1
                    }

                    If (_OSI ("Windows 2018"))
                    {
                        OSYS = 0x07E2
                    }

                    If (_OSI ("Darwin"))
                    {
                        OSYS = 0x07DF
                    }
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        If (_OSI ("Darwin"))
        {
            Device (USBX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (!Arg2)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

                    Return (Package (0x08)
                    {
                        "kUSBSleepPortCurrentLimit", 
                        0x0834, 
                        "kUSBSleepPowerSupply", 
                        0x13EC, 
                        "kUSBWakePortCurrentLimit", 
                        0x0834, 
                        "kUSBWakePowerSupply", 
                        0x13EC
                    })
                }
            }
        }
    }

    Scope (_SB.PCI0)
    {
        If (_OSI ("Darwin"))
        {
            Name (GFX0._STA, Zero)  // _STA: Status
            Name (SAT0._STA, Zero)  // _STA: Status
            Name (HECI._STA, Zero)  // _STA: Status
            Name (PPMC._STA, Zero)  // _STA: Status
            Name (HDAS._STA, Zero)  // _STA: Status
            Name (XHC._STA, Zero)  // _STA: Status
            Name (SBUS._STA, Zero)  // _STA: Status
        }

        Device (IGPU)
        {
            Name (_ADR, 0x00020000)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                \_SB.PCI0.GFX0._ADR = Zero
            }

            OperationRegion (RMP3, PCI_Config, Zero, 0x14)
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg2 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }

                Return (Package (0x22)
                {
                    "model", 
                    Buffer (0x1D)
                    {
                        "Intel Iris Plus Graphics 650"
                    }, 

                    "hda-gfx", 
                    Buffer (0x0A)
                    {
                        "onboard-1"
                    }, 

                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built-In"
                    }, 

                    "AAPL,override-no-connect", 
                    Buffer (0x80)
                    {
                        /* 0000 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,  // ........
                        /* 0008 */  0x06, 0x10, 0x12, 0xA0, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0010 */  0x1C, 0x16, 0x01, 0x04, 0xB5, 0x30, 0x1B, 0x78,  // .....0.x
                        /* 0018 */  0x22, 0x6F, 0xB1, 0xA7, 0x55, 0x4C, 0x9E, 0x25,  // "o..UL.%
                        /* 0020 */  0x0C, 0x50, 0x54, 0x00, 0x00, 0x00, 0x01, 0x01,  // .PT.....
                        /* 0028 */  0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,  // ........
                        /* 0030 */  0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0xDA, 0x1D,  // ........
                        /* 0038 */  0x56, 0xE2, 0x50, 0x00, 0x20, 0x30, 0x44, 0x2D,  // V.P. 0D-
                        /* 0040 */  0x47, 0x00, 0x35, 0xAD, 0x10, 0x00, 0x00, 0x18,  // G.5.....
                        /* 0048 */  0x00, 0x00, 0x00, 0xFC, 0x00, 0x69, 0x4D, 0x61,  // .....iMa
                        /* 0050 */  0x63, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  // c.      
                        /* 0058 */  0x20, 0x20, 0x00, 0x00, 0x00, 0xFE, 0x00, 0x43,  //   .....C
                        /* 0060 */  0x4D, 0x4E, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20,  // MN.     
                        /* 0068 */  0x20, 0x20, 0x20, 0x20, 0x00, 0x00, 0x00, 0xFE,  //     ....
                        /* 0070 */  0x00, 0x4E, 0x31, 0x34, 0x30, 0x42, 0x47, 0x41,  // .N140BGA
                        /* 0078 */  0x2D, 0x45, 0x42, 0x33, 0x0A, 0x20, 0x00, 0xAF   // -EB3. ..
                    }, 

                    "AAPL,ig-platform-id", 
                    Buffer (0x04)
                    {
                         0x00, 0x00, 0x16, 0x59                           // ...Y
                    }, 

                    "device_type", 
                    Buffer (0x13)
                    {
                        "Display Controller"
                    }, 

                    "name", 
                    Buffer (0x05)
                    {
                        "IGPU"
                    }, 

                    "framebuffer-patch-enable", 
                    Buffer (0x04)
                    {
                         0x01, 0x00, 0x00, 0x00                           // ....
                    }, 

                    "framebuffer-stolenmem", 
                    Buffer (0x04)
                    {
                         0x00, 0x00, 0x30, 0x01                           // ..0.
                    }, 

                    "framebuffer-fbmem", 
                    Buffer (0x04)
                    {
                         0x00, 0x00, 0x90, 0x00                           // ....
                    }, 

                    "framebuffer-unifiedmem", 
                    Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x80                           // ....
                    }, 

                    "framebuffer-con1-enable", 
                    Buffer (0x04)
                    {
                         0x01, 0x00, 0x00, 0x00                           // ....
                    }, 

                    "framebuffer-con1-type", 
                    Buffer (0x04)
                    {
                         0x00, 0x08, 0x00, 0x00                           // ....
                    }, 

                    "framebuffer-pipecount", 
                    Buffer (0x04)
                    {
                         0x03, 0x00, 0x00, 0x00                           // ....
                    }, 

                    "framebuffer-portcount", 
                    Buffer (0x04)
                    {
                         0x03, 0x00, 0x00, 0x00                           // ....
                    }, 

                    "framebuffer-con2-enable", 
                    Buffer (0x04)
                    {
                         0x01, 0x00, 0x00, 0x00                           // ....
                    }, 

                    "framebuffer-con2-type", 
                    Buffer (0x04)
                    {
                         0x00, 0x08, 0x00, 0x00                           // ....
                    }
                })
            }

            Device (PNLF)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, EisaId ("APP0002"))  // _HID: Hardware ID
                Name (_CID, "backlight")  // _CID: Compatible ID
                Name (_UID, Zero)  // _UID: Unique ID
                Name (_STA, 0x0B)  // _STA: Status
                Field (^RMP3, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x02), 
                    GDID,   16, 
                    Offset (0x10), 
                    BAR1,   32
                }

                OperationRegion (RMB1, SystemMemory, (BAR1 & 0xFFFFFFFFFFFFFFF0), 0x000E1184)
                Field (RMB1, AnyAcc, Lock, Preserve)
                {
                    Offset (0x48250), 
                    LEV2,   32, 
                    LEVL,   32, 
                    Offset (0x70040), 
                    P0BL,   32, 
                    Offset (0xC2000), 
                    GRAN,   32, 
                    Offset (0xC8250), 
                    LEVW,   32, 
                    LEVX,   32, 
                    Offset (0xE1180), 
                    PCHL,   32
                }

                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    Local4 = One
                    If (CondRefOf (\RMCF.BKLT))
                    {
                        Local4 = \RMCF.BKLT
                    }

                    If ((Zero == (One & Local4)))
                    {
                        Return (Zero)
                    }

                    Local0 = ^GDID /* \_SB_.PCI0.IGPU.PNLF.GDID */
                    Local2 = Ones
                    If (CondRefOf (\RMCF.LMAX))
                    {
                        Local2 = \RMCF.LMAX
                    }

                    Local3 = Zero
                    If (CondRefOf (\RMCF.FBTP))
                    {
                        Local3 = \RMCF.FBTP
                    }

                    If ((Zero == Local3))
                    {
                        If ((Ones != Match (Package (0x10)
                                        {
                                            0x010B, 
                                            0x0102, 
                                            0x0106, 
                                            0x1106, 
                                            0x1601, 
                                            0x0116, 
                                            0x0126, 
                                            0x0112, 
                                            0x0122, 
                                            0x0152, 
                                            0x0156, 
                                            0x0162, 
                                            0x0166, 
                                            0x016A, 
                                            0x46, 
                                            0x42
                                        }, MEQ, Local0, MTR, Zero, Zero)))
                        {
                            Local3 = One
                        }
                        Else
                        {
                            Local3 = 0x02
                        }
                    }

                    If ((One == Local3))
                    {
                        If ((Ones == Local2))
                        {
                            Local2 = 0x0710
                        }

                        Local1 = (^LEVX >> 0x10)
                        If (!Local1)
                        {
                            Local1 = Local2
                        }

                        If ((Local2 != Local1))
                        {
                            Local0 = ((^LEVL * Local2) / Local1)
                            Local3 = (Local2 << 0x10)
                            If ((Local2 > Local1))
                            {
                                ^LEVX = Local3
                                ^LEVL = Local0
                            }
                            Else
                            {
                                ^LEVL = Local0
                                ^LEVX = Local3
                            }
                        }
                    }
                    ElseIf ((0x02 == Local3))
                    {
                        If ((Ones == Local2))
                        {
                            If ((Ones != Match (Package (0x16)
                                            {
                                                0x0D26, 
                                                0x0A26, 
                                                0x0D22, 
                                                0x0412, 
                                                0x0416, 
                                                0x0A16, 
                                                0x0A1E, 
                                                0x0A1E, 
                                                0x0A2E, 
                                                0x041E, 
                                                0x041A, 
                                                0x0BD1, 
                                                0x0BD2, 
                                                0x0BD3, 
                                                0x1606, 
                                                0x160E, 
                                                0x1616, 
                                                0x161E, 
                                                0x1626, 
                                                0x1622, 
                                                0x1612, 
                                                0x162B
                                            }, MEQ, Local0, MTR, Zero, Zero)))
                            {
                                Local2 = 0x0AD9
                            }
                            ElseIf ((Ones != Match (Package (0x04)
                                            {
                                                0x3E9B, 
                                                0x3EA5, 
                                                0x3E92, 
                                                0x3E91
                                            }, MEQ, Local0, MTR, Zero, Zero)))
                            {
                                Local2 = 0xFFFF
                            }
                            Else
                            {
                                Local2 = 0x056C
                            }
                        }

                        If ((Zero == (0x02 & Local4)))
                        {
                            Local5 = 0xC0000000
                            If (CondRefOf (\RMCF.LEVW))
                            {
                                If ((Ones != \RMCF.LEVW))
                                {
                                    Local5 = \RMCF.LEVW
                                }
                            }

                            ^LEVW = Local5
                        }

                        If ((0x04 & Local4))
                        {
                            If (CondRefOf (\RMCF.GRAN))
                            {
                                ^GRAN = \RMCF.GRAN
                            }
                            Else
                            {
                                ^GRAN = Zero
                            }
                        }

                        Local1 = (^LEVX >> 0x10)
                        If (!Local1)
                        {
                            Local1 = Local2
                        }

                        If ((Local2 != Local1))
                        {
                            Local0 = ((((^LEVX & 0xFFFF) * Local2) / Local1) | 
                                (Local2 << 0x10))
                            ^LEVX = Local0
                        }
                    }

                    If ((Local2 == 0x0710))
                    {
                        _UID = 0x0E
                    }
                    ElseIf ((Local2 == 0x0AD9))
                    {
                        _UID = 0x0F
                    }
                    ElseIf ((Local2 == 0x056C))
                    {
                        _UID = 0x10
                    }
                    ElseIf ((Local2 == 0x07A1))
                    {
                        _UID = 0x11
                    }
                    ElseIf ((Local2 == 0x1499))
                    {
                        _UID = 0x12
                    }
                    ElseIf ((Local2 == 0xFFFF))
                    {
                        _UID = 0x13
                    }
                    Else
                    {
                        _UID = 0x63
                    }
                }
            }
        }

        Device (SATA)
        {
            Name (_ADR, 0x00170000)  // _ADR: Address
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                \_SB.PCI0.SAT0._ADR = Zero
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg2 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }

                Return (Package (0x06)
                {
                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built In"
                    }, 

                    "name", 
                    Buffer (0x16)
                    {
                        "Sunrise Point-LP AHCI"
                    }, 

                    "model", 
                    Buffer (0x21)
                    {
                        "Sunrise Point-LP SATA Controller"
                    }
                })
            }

            Device (PRT0)
            {
                Name (_ADR, 0xFFFF)  // _ADR: Address
            }

            Device (PRT1)
            {
                Name (_ADR, 0x0001FFFF)  // _ADR: Address
            }

            Device (PRT2)
            {
                Name (_ADR, 0x0002FFFF)  // _ADR: Address
            }

            Device (PRT3)
            {
                Name (_ADR, 0x0003FFFF)  // _ADR: Address
            }

            Device (PRT4)
            {
                Name (_ADR, 0x0004FFFF)  // _ADR: Address
            }

            Device (PRT5)
            {
                Name (_ADR, 0x0005FFFF)  // _ADR: Address
            }

            Device (NVM1)
            {
                Name (_ADR, 0x00C1FFFF)  // _ADR: Address
            }

            Device (NVM2)
            {
                Name (_ADR, 0x00C2FFFF)  // _ADR: Address
            }

            Device (NVM3)
            {
                Name (_ADR, 0x00C3FFFF)  // _ADR: Address
            }
        }

        Device (MCHC)
        {
            Name (_ADR, Zero)  // _ADR: Address
        }

        Device (THML)
        {
            Name (_ADR, 0x00140002)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg2 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }

                Return (Package (0x08)
                {
                    "AAPL,slot-name", 
                    "Built In", 
                    "model", 
                    Buffer (0x23)
                    {
                        "Sunrise Point-LP Thermal Subsystem"
                    }, 

                    "name", 
                    Buffer (0x23)
                    {
                        "Sunrise Point-LP Thermal Subsystem"
                    }, 

                    "device_type", 
                    Buffer (0x08)
                    {
                        "Thermal"
                    }
                })
            }
        }

        Device (IMEI)
        {
            Name (_ADR, 0x00160000)  // _ADR: Address
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                \_SB.PCI0.HECI._ADR = Zero
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg2 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }

                Return (Package (0x08)
                {
                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built In"
                    }, 

                    "device_type", 
                    Buffer (0x10)
                    {
                        "IMEI Controller"
                    }, 

                    "name", 
                    Buffer (0x1E)
                    {
                        "Sunrise Point-LP CSME HECI #1"
                    }, 

                    "model", 
                    Buffer (0x1E)
                    {
                        "Sunrise Point-LP CSME HECI #1"
                    }
                })
            }
        }

        Device (XHCI)
        {
            Name (_ADR, 0x00140000)  // _ADR: Address
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                \_SB.PCI0.XHC._ADR = Zero
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg2 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }

                Return (Package (0x16)
                {
                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built In"
                    }, 

                    "name", 
                    Buffer (0x29)
                    {
                        "Sunrise Point-LP USB 3.0 xHCI Controller"
                    }, 

                    "model", 
                    Buffer (0x29)
                    {
                        "Sunrise Point-LP USB 3.0 xHCI Controller"
                    }, 

                    "device_type", 
                    Buffer (0x10)
                    {
                        "XHCI Controller"
                    }, 

                    "subsystem-id", 
                    Buffer (0x04)
                    {
                         0x70, 0x72, 0x00, 0x00                           // pr..
                    }, 

                    "subsystem-vendor-id", 
                    Buffer (0x04)
                    {
                         0x86, 0x80, 0x00, 0x00                           // ....
                    }, 

                    "AAPL,current-available", 
                    Buffer (0x04)
                    {
                         0x34, 0x08, 0x00, 0x00                           // 4...
                    }, 

                    "AAPL,current-extra", 
                    Buffer (0x04)
                    {
                         0x98, 0x08, 0x00, 0x00                           // ....
                    }, 

                    "AAPL,current-extra-in-sleep", 
                    Buffer (0x04)
                    {
                         0x40, 0x06, 0x00, 0x00                           // @...
                    }, 

                    "AAPL,max-port-current-in-sleep", 
                    Buffer (0x04)
                    {
                         0x34, 0x08, 0x00, 0x00                           // 4...
                    }
                })
            }

            Device (RHUB)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (HS01)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        Zero, 
                        Zero, 
                        Zero
                    })
                }

                Device (HS02)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        Zero, 
                        Zero, 
                        Zero
                    })
                }

                Device (HS03)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        Zero, 
                        Zero, 
                        Zero
                    })
                }

                Device (HS05)
                {
                    Name (_ADR, 0x05)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        0xFF, 
                        Zero, 
                        Zero
                    })
                }

                Device (HS07)
                {
                    Name (_ADR, 0x07)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        0xFF, 
                        Zero, 
                        Zero
                    })
                }

                Device (SS01)
                {
                    Name (_ADR, 0x0D)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        0x03, 
                        Zero, 
                        Zero
                    })
                }

                Device (SS02)
                {
                    Name (_ADR, 0x0E)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        0x03, 
                        Zero, 
                        Zero
                    })
                }
            }
        }

        Device (SBUX)
        {
            Name (_ADR, 0x001F0004)  // _ADR: Address
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                \_SB.PCI0.SBUS._ADR = Zero
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg2 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }

                Return (Package (0x06)
                {
                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built in"
                    }, 

                    "name", 
                    Buffer (0x17)
                    {
                        "Sunrise Point-LP SMBus"
                    }, 

                    "model", 
                    Buffer (0x17)
                    {
                        "Sunrise Point-LP SMBus"
                    }
                })
            }

            Device (BUS0)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Name (_CID, "smbus")  // _CID: Compatible ID
                Name (_ADR, Zero)  // _ADR: Address
                Device (MKY0)
                {
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (_OSI ("Darwin"))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_CID, "mikey")  // _CID: Compatible ID
                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        If ((Arg2 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }

                        Return (Package (0x07)
                        {
                            "refnum", 
                            Zero, 
                            "address", 
                            0x39, 
                            "device-id", 
                            0x0CCB, 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        })
                    }

                    Method (H1EN, 1, Serialized)
                    {
                        If ((Arg0 <= One))
                        {
                            If ((Arg0 == One))
                            {
                                LG04 |= 0x04
                            }
                            Else
                            {
                                LG04 &= 0xFB
                            }
                        }
                    }

                    Method (H1IL, 0, Serialized)
                    {
                        Local0 = ((LG00 & 0x02) >> One)
                        Return (Local0)
                    }

                    Method (H1IP, 1, Serialized)
                    {
                        If ((Arg0 <= One))
                        {
                            Arg0 = ~Arg0
                            GI01 = Arg0
                        }
                    }

                    Name (H1IN, 0x11)
                    Scope (\_GPE)
                    {
                        Method (_L11, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
                        {
                            Notify (\_SB.PCI0.SBUX.BUS0.MKY0, 0x80) // Status Change
                        }
                    }

                    Method (P1IL, 0, Serialized)
                    {
                        Local0 = ((LG00 & 0x40) >> 0x06)
                        Return (Local0)
                    }

                    Method (P1IP, 1, Serialized)
                    {
                        If ((Arg0 <= One))
                        {
                            Arg0 = ~Arg0
                            GI06 = Arg0
                        }
                    }

                    Name (P1IN, 0x16)
                    Scope (\_GPE)
                    {
                        Method (_L14, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
                        {
                            GI06 ^= One
                            Notify (\_SB.PCI0.SBUX.BUS0.MKY0, 0x81) // Information Change
                        }
                    }
                }

                Device (DVL0)
                {
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (_OSI ("Darwin"))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Name (_ADR, 0x57)  // _ADR: Address
                    Name (_CID, "diagsvault")  // _CID: Compatible ID
                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        If ((Arg2 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }

                        Return (Package (0x03)
                        {
                            "address", 
                            0x57, 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        })
                    }
                }

                Device (BLC0)
                {
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (_OSI ("Darwin"))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_CID, "smbus-blc")  // _CID: Compatible ID
                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        If ((Arg2 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }

                        Return (Package (0x10)
                        {
                            "refnum", 
                            Zero, 
                            "version", 
                            0x02, 
                            "fault-off", 
                            0x03, 
                            "fault-len", 
                            0x04, 
                            "skey", 
                            0x4C445342, 
                            "smask", 
                            0xFF, 
                            "type", 
                            0x49324300, 
                            "address", 
                            0x2C
                        })
                    }
                }
            }

            Device (BUS1)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Name (_CID, "smbus")  // _CID: Compatible ID
                Name (_ADR, One)  // _ADR: Address
            }
        }

        Device (PMCR)
        {
            Name (_ADR, 0x001F0002)  // _ADR: Address
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                \_SB.PCI0.PPMC._ADR = Zero
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg2 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }

                Return (Package (0x08)
                {
                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built In"
                    }, 

                    "device_type", 
                    Buffer (0x0E)
                    {
                        "PM Controller"
                    }, 

                    "name", 
                    Buffer (0x15)
                    {
                        "Sunrise Point-LP PMC"
                    }, 

                    "model", 
                    Buffer (0x15)
                    {
                        "Sunrise Point-LP PMC"
                    }
                })
            }
        }

        Device (HDEF)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (_ADR, 0x001F0003)  // _ADR: Address
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                \_SB.PCI0.HDAS._ADR = Zero
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg2 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }

                Return (Package (0x0E)
                {
                    "alc-layout-id", 
                    Buffer (0x04)
                    {
                         0x03, 0x00, 0x00, 0x00                           // ....
                    }, 

                    "layout-id", 
                    Buffer (0x04)
                    {
                         0x03, 0x00, 0x00, 0x00                           // ....
                    }, 

                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built-In"
                    }, 

                    "device_type", 
                    Buffer (0x11)
                    {
                        "Audio Controller"
                    }, 

                    "name", 
                    Buffer (0x05)
                    {
                        "HDEF"
                    }, 

                    "model", 
                    Buffer (0x21)
                    {
                        "Sunrise Point-LP HD Audio ALC255"
                    }, 

                    "hda-gfx", 
                    Buffer (0x0A)
                    {
                        "onboard-1"
                    }
                })
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Scope (I2C0)
        {
            Scope (TPDE)
            {
                Name (SSCN, Package (0x03)
                {
                    0x01B0, 
                    0x01FB, 
                    0x1E
                })
                Name (FMCN, Package (0x03)
                {
                    0x48, 
                    0xA0, 
                    0x1E
                })
                Name (SBFZ, ResourceTemplate ()
                {
                    GpioInt (Level, ActiveLow, Exclusive, PullUp, 0x0000,
                        "\\ _SB.PCI0.GPI0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x003A
                        }
                })
                Name (SBFX, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000052,
                    }
                })
                Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                {
                    If (_OSI ("Darwin"))
                    {
                        Name (SBFI, ResourceTemplate ()
                        {
                            I2cSerialBusV2 (0x0015, ControllerInitiated, 0x00061A80,
                                AddressingMode7Bit, "\\_SB.PCI0.I2C0",
                                0x00, ResourceConsumer, , Exclusive,
                                )
                        })
                        Return (ConcatenateResTemplate (SBFI, SBFZ))
                    }
                    Else
                    {
                        Return (\_SB.PCI0.I2C0.TPDE.XCRS ())
                    }
                }
            }
        }

        Scope (GPI0)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (\_SB.PCI0.GPI0.XSTA ())
                }
            }
        }

        Scope (RP01)
        {
            Device (NVDA)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Name (_ADR, Zero)  // _ADR: Address
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    \_SB.PCI0.RP01.PXSX._ADR = 0xFF
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (!Arg2)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

                    Return (Package (0x10)
                    {
                        "AAPL,slot-name", 
                        Buffer (0x09)
                        {
                            "Built-In"
                        }, 

                        "device-id", 
                        Buffer (0x04)
                        {
                             0xFF, 0xFF, 0x00, 0x00                           // ....
                        }, 

                        "vendor-id", 
                        Buffer (0x04)
                        {
                             0xDE, 0x10, 0x00, 0x00                           // ....
                        }, 

                        "device_type", 
                        Buffer (0x0E)
                        {
                            "3D Controller"
                        }, 

                        "name", 
                        Buffer (0x05)
                        {
                            "NVDA"
                        }, 

                        "model", 
                        Buffer (0x15)
                        {
                            "Nvidia GeForce 940MX"
                        }, 

                        "IOName", 
                        Buffer (0x09)
                        {
                            "#display"
                        }, 

                        "class-code", 
                        Buffer (0x04)
                        {
                             0xFF, 0xFF, 0xFF, 0xFF                           // ....
                        }
                    })
                }
            }
        }

        Scope (RP09)
        {
            Device (SSD0)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    \_SB.PCI0.RP09.PXSX._ADR = 0xFF
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (!Arg2)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

                    Return (Package (0x08)
                    {
                        "AAPL,slot-name", 
                        Buffer (0x09)
                        {
                            "Built in"
                        }, 

                        "name", 
                        Buffer (0x10)
                        {
                            "NVME CONTROLLER"
                        }, 

                        "model", 
                        Buffer (0x10)
                        {
                            "NVME CONTROLLER"
                        }, 

                        "device_type", 
                        Buffer (0x10)
                        {
                            "NVME Controller"
                        }
                    })
                }
            }
        }

        Scope (RP11)
        {
            Device (ARPT)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    \_SB.PCI0.RP11.PXSX._ADR = 0xFF
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (!Arg2)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

                    Return (Package (0x10)
                    {
                        "AAPL,slot-name", 
                        Buffer (0x09)
                        {
                            "Built in"
                        }, 

                        "name", 
                        Buffer (0x10)
                        {
                            "Airport Extreme"
                        }, 

                        "compatible", 
                        Buffer (0x0D)
                        {
                            "pci14e4,4353"
                        }, 

                        "model", 
                        Buffer (0x16)
                        {
                            "Dell Wireless DW1820A"
                        }, 

                        "device_type", 
                        Buffer (0x08)
                        {
                            "Airport"
                        }, 

                        "brcmfx-country", 
                        Buffer (0x03)
                        {
                            "#a"
                        }, 

                        "IOName", 
                        Buffer (0x0D)
                        {
                            "pci14e4,4353"
                        }, 

                        "pci-aspm-default", 
                        Buffer (One)
                        {
                             0x00                                             // .
                        }
                    })
                }
            }
        }

        Scope (RP12)
        {
            Device (GIGE)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    \_SB.PCI0.RP12.PXSX._ADR = 0xFF
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (!Arg2)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

                    Return (Package (0x0C)
                    {
                        "AAPL,slot-name", 
                        "Built In", 
                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                             // .
                        }, 

                        "model", 
                        Buffer (0x34)
                        {
                            "Realtek RTL8168H/8111H PCI Express Gigabit Ethernet"
                        }, 

                        "name", 
                        Buffer (0x14)
                        {
                            "Ethernet Controller"
                        }, 

                        "device_type", 
                        Buffer (0x14)
                        {
                            "Ethernet Controller"
                        }, 

                        "empty", 
                        Zero
                    })
                }
            }
        }

        Scope (LPCB)
        {
            If (_OSI ("Darwin"))
            {
                Scope (EC0)
                {
                    Method (_Q8E, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Notify (\_SB.PCI0.GFX0.DD1F, 0x86) // Device-Specific
                        Notify (PS2K, 0x0206)
                        Notify (PS2K, 0x0286)
                    }

                    Method (_Q8F, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Notify (\_SB.PCI0.GFX0.DD1F, 0x87) // Device-Specific
                        Notify (PS2K, 0x0205)
                        Notify (PS2K, 0x0285)
                    }
                }

                Device (DMAC)
                {
                    Name (_HID, EisaId ("PNP0200") /* PC-class DMA Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x01,               // Alignment
                            0x11,               // Length
                            )
                        IO (Decode16,
                            0x0093,             // Range Minimum
                            0x0093,             // Range Maximum
                            0x01,               // Alignment
                            0x0D,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        DMA (Compatibility, NotBusMaster, Transfer8_16, )
                            {4}
                    })
                }
            }

            If (_OSI ("Darwin"))
            {
                Name (TIMR._STA, Zero)  // _STA: Status
                Device (EC)
                {
                    Name (_HID, "EC000000")  // _HID: Hardware ID
                    Method (_INI, 0, NotSerialized)  // _INI: Initialize
                    {
                        \_SB.PCI0.LPCB.HPET._STA = Zero
                    }
                }

                Device (PMCR)
                {
                    Name (_HID, EisaId ("APP9876"))  // _HID: Hardware ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (_OSI ("Darwin"))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        Memory32Fixed (ReadWrite,
                            0xFE000000,         // Address Base
                            0x00010000,         // Address Length
                            )
                    })
                }

                Device (TMR)
                {
                    Name (_HID, EisaId ("PNP0100") /* PC-class System Timer */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x0050,             // Range Minimum
                            0x0050,             // Range Maximum
                            0x10,               // Alignment
                            0x04,               // Length
                            )
                    })
                }

                Device (XMAT)
                {
                    Name (_HID, EisaId ("PNP0C04") /* x87-compatible Floating Point Processing Unit */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (_OSI ("Darwin"))
                        {
                            Return (0x1F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            )
                        IRQNoFlags ()
                            {8}
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (_OSI ("Darwin"))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }
            }
        }
    }
}

