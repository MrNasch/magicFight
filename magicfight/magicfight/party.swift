// class party
class Party {
    var teams = [Team]()
    
    // created var newGame imported when you creat a new game
    var newGame: String = "Welcome to MagicFight please select 3 characters"
    var endGame: String = "Good job " + "you won"
    var usedPersonnageTeam1: Personnage = Fighter()
    var usedPersonnageTeam2: Personnage = Fighter()
    // create 2 diferent team
    func createTeam(number: Int) {
        print("Create your team player \(number)")
        let team = Team()
        for _ in 0...2 {
            team.createCharacter()
        }
        print("Choose and name your characters")
        
        teams.append(team)
    }
    // display the 2 diferent team
    func displayTeam(number: Int) {
        print("Team \(number)")
        
        for i in 0...2 {
            teams[number - 1].displayCharacter(index: i)
        }
    }
    // func that only work if we choose an INT between 1 and 3
    func input() -> Int {
        var userChoice: Int = Int()
        repeat {
            print("Please select a number between 1 and 3")
            if let data = readLine() {
                if let dataToInt = Int(data) {
                    userChoice = dataToInt
                }
            }
            
        } while userChoice != 1 && userChoice != 2 && userChoice != 3
        return userChoice
    }
    // func to choose personnage from 1 team and 1 from the other team
    func choosePersonnage() {
        print("Please select one personnage from team1")
        print(displayTeam(number: 1))
        let userChoice = input()
        
       
            usedPersonnageTeam1 = team.personnages[Int(userChoice) - 1]
            print(usedPersonnageTeam1.description())
    
        
        print("Please select one personnage from team2")
        print(displayTeam(number: 2))
        let userChoice2 = input()
        
        
        
            usedPersonnageTeam2 = team.personnages[Int(userChoice2) - 1]
            print(usedPersonnageTeam2.description())
        
    }
}

