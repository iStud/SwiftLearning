
class StepCounter{
    
    var totalSteps:Int = 0{
        
        willSet(newTotalSteps){
            print("About to set totalSteps to \(newTotalSteps)")
        }
        
        didSet{
            
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 200
stepCounter.totalSteps = 360
stepCounter.totalSteps = 896

struct SomeStructure{
    
    static var storedTypeProperty = "Some value"
    static var computedTypeProperty :Int{
        
        return 1
    }
}


enum SomeEnumeration {
    static var storedTypeProperty = "Some value"
    static var computedTypeProperty :Int{
        return 6
    }
}

class SomeClass{
    
    static var stroedTypeProperty = "Some value"
    static var computedTypePorperty :Int{
        
        return 27
    }
    
    class var overrideableComputedTypeProperty: Int {
        return 107
        
    }
}

print(SomeStructure.storedTypeProperty)
SomeStructure.storedTypeProperty = "Another value"
print(SomeStructure.storedTypeProperty)
print(SomeEnumeration.computedTypeProperty)
print(SomeClass.computedTypePorperty)

struct AudionChannel{
    
    static let thresholdLevel = 10
    static var maxInputLevelForAllChannels = 0
    var currentLevel:Int = 0{
        
        didSet{
            
            if currentLevel > AudionChannel.thresholdLevel {
                currentLevel = AudionChannel.thresholdLevel
            }
            
            if currentLevel > AudionChannel.maxInputLevelForAllChannels {
                
                AudionChannel.maxInputLevelForAllChannels = currentLevel
            }
        }
    }
}

var leftChannel = AudionChannel()
var rightChannel = AudionChannel()
leftChannel.currentLevel = 7
print(leftChannel.currentLevel)
print(AudionChannel.maxInputLevelForAllChannels)

rightChannel.currentLevel = 11
print(rightChannel.currentLevel)
print(AudionChannel.maxInputLevelForAllChannels)
















