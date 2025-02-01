SimVar("L:STARTER_SWITCH")
SimVar("X:STARTER_DOWN")


function STARTER_ENGAGE()
    SimWrite("X:STARTER_DOWN", 1)
    repeat
        SimWrite("L:STARTER_SWITCH", 4)
        Sleep(30)
    until SimRead("X:STARTER_DOWN") ~= 1
end
