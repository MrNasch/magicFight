class Party {
    var teams = [Team]()
    var team1UsedPersonnage: Int = 0
    var team2UsedPersonnage: Int = 0
    
    // created var newGame imported when you creat a new game
    var newGame: String = "Welcome to MagicFight please select 3 characters"
    var endGame: String = "Good job " + "you won"
    
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
        let userChoice = readLine()
        
        if userChoice != nil {
            Personnage = team.personnages[userChoice - 1]
        }
        
        print("Please select one personnage from team2")
        print(displayTeam(number: 2))
        let userChoice2 = readLine()
        
        
        if userChoice != nil {
            Personnage = team.personnages[userChoice - 1]
        }
    }
}

