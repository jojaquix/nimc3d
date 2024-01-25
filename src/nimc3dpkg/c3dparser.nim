import binaryparse


createParser(C3dData):
    u8: firstParamLoc
    u8: _ = 80
    u16: numberOfPoints