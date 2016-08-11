echo "Config Settings: "
type
    Modes* = enum
        XRayMode,
        ProgramMode,
        ConsoleMode,
        WorldMode

const
    metaprogID* = "TestingProg"
    infoDB_Backend* = "Testing"
    UI_Backend* = "Console"
    mode* = XRayMode

echo "\tMetaProgram ID: ", metaprogID
echo "\tInfoDB Backend: ", infoDB_Backend
echo "\tUI Backend: ", UI_Backend
echo "\tGeneral Mode: ", mode
