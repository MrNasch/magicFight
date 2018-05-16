class Party {
    var teams = [Team]()
    
    // created var newGame imported when you creat a new game
    var newGame: String = "Welcome to MagicFight please select 3 characters"
    var endGame: String = "Good job " + "you won"
    var usedPersonnageTeam1: Personnage = Fighter()
    var usedPersonnageTeam2: Personnage = Fighter()
    
    func input() {
        var userChoice: Int
        repeat {
            if let data = readLine() {
                if let dataToInt = Int(data) {
                    userChoice = dataToInt
                }
            }
        } while userChoice != 1 && userChoice != 2 && userChoice != 3
    }
    
    func createTeam(number: Int) {
        print("Create your team player \(number)")
        let team = Team()
        for _ in 0...2 {
            team.createCharacter()
        }
        print("Choose and name your characters")
        
        teams.append(team)
    }
    func displayTeam(number: Int) {
        print("Team \(number)")
        
        for i in 0...2 {
            teams[number - 1].displayCharacter(index: i)
        }
    }
    
    func ChoosePersonnage() {
        print("Please select one personnage from team1")
        print(displayTeam(number: 1))
        let userChoice = input()
        
        if userChoice != nil {
            usedPersonnageTeam1 = team.personnages[Int(userChoice) - 1]
            print(usedPersonnageTeam1)
        }
        
        print("Please select one personnage from team2")
        print(displayTeam(number: 2))
        let userChoice2 = input()
        
        
        if userChoice2 != nil {
            usedPersonnageTeam2 = team.personnages[Int(userChoice) - 1]
            print(usedPersonnageTeam2)
        }
    }
}

