import UIKit
class LinearLightsOutGame: CustomStringConvertible {
    
    enum GameState: String {
        case win = "You Win!"
        case notWin = "Keep going!"
    }
    
    var gameState: GameState
    var lightStates: [Bool]
    var moves: Int
    
    init(numLights num: Int) {
        gameState = .notWin
        lightStates = [Bool](repeating: false, count: num)
        moves = 0
        for i in 0...num-1 {
            let randomNumber : Int = Int(arc4random_uniform(UInt32(2)))
            if randomNumber == 1 {
                lightStates[i] = true
            } else {
                lightStates[i] = false
            }
        }
    }
    
    var description: String {
        return "Lights: \(getLightStatusString()) Moves: \(moves)"
    }
    
    func getLightStatusString() -> String {
        var lightStatusString = ""
        for light in lightStates {
            if light == true {
                lightStatusString += "1"
            } else {
                lightStatusString += "0"
            }
        }
        return lightStatusString
    }
    
    func pressedLightAtIndex(_ index: Int) -> Bool {
        if gameState == .win {
            return true
        }
        moves+=1
        switchLight(index)
        if index == 0 {
            switchLight(index+1)
        } else if index == lightStates.count-1 {
            switchLight(index-1)
        } else {
            switchLight(index-1)
            switchLight(index+1)
        }
        return checkForGameOver()
    }
    
    func switchLight(_ index: Int) {
        if lightStates[index] == false {
            lightStates[index] = true
        } else {
            lightStates[index] = false
        }
    }
    
    func checkForGameOver() -> Bool {
        if lightStates.contains(true) {
            gameState = .notWin
            return false
        } else {
            gameState = .win
            return true
        }
    }
    
}

/* ----------------- Official Playground testing ----------------- */
var lg = LinearLightsOutGame(numLights: 13)
lg.lightStates = [Bool](repeating: true, count: 13)
lg.pressedLightAtIndex(0)
lg
lg.pressedLightAtIndex(3)
lg
lg.pressedLightAtIndex(6)
lg
lg.pressedLightAtIndex(9)
lg
lg.pressedLightAtIndex(12)
lg
lg.pressedLightAtIndex(1)
lg
//
//
var lg2 = LinearLightsOutGame(numLights: 13)
lg2.lightStates = [true, true, false, false, false, false, false, false, false, false, true, true, true]
lg2.pressedLightAtIndex(0)
lg2
lg2.pressedLightAtIndex(11)
lg2
lg2.pressedLightAtIndex(6)
lg2

