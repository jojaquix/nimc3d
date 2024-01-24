type
  Header* = ref object
    nbOfZerosBeforeHeader*: int
    parametersAddress*: int
    checksum: int
    nb3dPoints: int
    nbAnalogsMeasurement: int
    hasRotationalData: bool
    firstFrame: int
    lastFrame: int
    nbMaxInterpGap: int
    scaleFactor: int
    dataStart: int
    nbAnalogByFrame: int
    frameRate: int
    emptyBlock1: int
    emptyBlock2: int
    emptyBlock3: int
    emptyBlock4: int
    keyLabelPresent: int
    firstBlockKeyLabel: int
    fourCharPresent: int

proc newHeader*(): Header =
  new(result)
  result.nbOfZerosBeforeHeader = 0
  result.parametersAddress = 2
  result.checksum = 0x50
  result.nb3dPoints = 0
  result.nbAnalogsMeasurement = 0
  result.hasRotationalData = false
  result.firstFrame = 0
  result.lastFrame = 0
  result.nbMaxInterpGap = 10
  result.scaleFactor = -1
  result.dataStart = 1
  result.nbAnalogByFrame = 0
  result.frameRate = 0
  result.emptyBlock1 = 0
  result.emptyBlock2 = 0
  result.emptyBlock3 = 0
  result.emptyBlock4 = 0
  result.keyLabelPresent = 0
  result.firstBlockKeyLabel = 0
  result.fourCharPresent = 0x3039
 


proc print*(header: Header) =
  echo "HEADER"
  echo "nb3dPoints = ", header.nb3dPoints
  echo "nbAnalogsMeasurement = ", header.nbAnalogsMeasurement
  #echo "nbAnalogs = ", header.nbAnalogs
  echo "hasRotationalData = ", header.hasRotationalData
  echo "firstFrame = ", header.firstFrame
  echo "lastFrame = ", header.lastFrame
  #echo "nbFrames = ", header.nbFrames
  echo "nbMaxInterpGap = ", header.nbMaxInterpGap
  echo "scaleFactor = ", header.scaleFactor
  echo "dataStart = ", header.dataStart
  echo "nbAnalogByFrame = ", header.nbAnalogByFrame
  echo "frameRate = ", header.frameRate
  echo "keyLabelPresent = ", header.keyLabelPresent
  echo "firstBlockKeyLabel = ", header.firstBlockKeyLabel
  echo "fourCharPresent = ", header.fourCharPresent
  #echo "nbEvents = ", header.nbEvents