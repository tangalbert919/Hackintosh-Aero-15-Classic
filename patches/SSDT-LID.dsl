/*
 * Fix _LID
 */
DefinitionBlock ("", "SSDT", 2, "ACDT", "_LID", 0x00000000)
{
    External (_SB_.LID0, DeviceObj)
    Scope (\_SB.LID0)
    {
        Method (LIDX, 0, NotSerialized)
        {
            Return (One)
        }
        Method (_LID, 0, NotSerialized)
        {
            Store(LIDX(), Local0)
            Return(Local0)
        }
    }
}