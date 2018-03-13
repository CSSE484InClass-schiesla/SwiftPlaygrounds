// Basic enum
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}
var today: Weekday
today = .tuesday
//today.rawValue

switch today {
    
case .monday:
    print("ewww monday")
case .tuesday:
    print("great still not haveway done")
case .wednesday:
    print("humpday!")
case .thursday:
    print("is it the weekend yet?")
case .friday:
    print("LETS GOO")
}

enum State: Int {
    case ready = 0
    case set
    case go
}

var raceState = State.set
raceState.rawValue

var nextRaceState = State(rawValue: raceState.rawValue + 1)
if nextRaceState == .go {
    print("sommmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmthingL")
}

nextRaceState
type(of: nextRaceState)
nextRaceState?.rawValue





// Rawvalues













// Associated values and functions
enum HomeworkStatus {
    case noHomework
    case inProgress(Int, Int)
    case done
    
    func simpleDescription() -> String {
        switch self {
            
        case .noHomework:
            return "No homework, yea!"
        case .inProgress(let numComplete, let totalToDo):
            return "You have finished \(numComplete) out of \(totalToDo)"
        case .done:
            return "Done!"
        }
    }
}

