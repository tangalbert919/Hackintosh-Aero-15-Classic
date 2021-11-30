// Custom GPI0 patch, should allow for multi-boot.
DefinitionBlock("", "SSDT", 2, "AXIRO", "GPI0", 0)
{
    //External(_SB_.PCI0.GPI0, DeviceObj)
	//External(_SB_.PCI0.I2C1.TPD0, DeviceObj)
	External(GPHD, FieldUnitObj)
	
	If (_OSI("Darwin"))
	{
		GPHD = Zero
	}
	/*Scope (_SB.PCI0.GPI0)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
		    If (_OSI ("Darwin"))
			{
                Return (0x0F)
			}
			If ((GPHD == One))
			{
			    Return (0x03)
		    }
			Return (Zero)
        }
    }*/
	
	// Fix the trackpad.
	/*Scope (_SB.PCI0.I2C1.TPD0)
	{
	    Name (SBFG, ResourceTemplate()
		{
		    GpioInt (Level, ActiveLow, ExclusiveAndWake, PullDefault, 0x0000,
			    "\\_SB.PCI0.GPI0", 0x00, ResourceConsumer, ,
			    )
			    {   // Pin list
			        0x4A
		        }
		})
	}*/
}
