type
  Header* = object
    nbOfZerosBeforeHeader*: int = 0
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

proc initHeader*(header: var Header) =
  header.nbOfZerosBeforeHeader = 0
  header.parametersAddress = 2
  header.checksum = 0x50
  header.nb3dPoints = 0
  header.nbAnalogsMeasurement = 0
  header.hasRotationalData = false
  header.firstFrame = 0
  header.lastFrame = 0
  header.nbMaxInterpGap = 10
  header.scaleFactor = -1
  header.dataStart = 1
  header.nbAnalogByFrame = 0
  header.frameRate = 0
  header.emptyBlock1 = 0
  header.emptyBlock2 = 0
  header.emptyBlock3 = 0
  header.emptyBlock4 = 0
  header.keyLabelPresent = 0
  header.firstBlockKeyLabel = 0
  header.fourCharPresent = 0x3039
 
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