class Party {
    var teams = [Team]()
    var team1UsedPersonnage: Int = 0
    var team2UsedPersonnage: Int = 0
    
    // created var newGame imported when you creat a new game
    var newGame: String = "Welcome to MagicFight please select 3 characters"
    var endGame: String = "Good job " + "you won"
    
    func PersonnageInTheGame() {
        for i in 0...1 {
            print("Team \(i+1)")
            let team:Team = party.teams[i]
            for j in 0...2 {
                print("Character \(j+1)")
                let personnage = team.personnages[j]
                print(String(describing: personnage.self))
                print(personnage.description())
            }
        }
    }
    
    func ChoosePersonnage() {
        print("Please select one personnage from team1")
        let userChoice = readLine()
        
        if userChoice != nil {
            team1UsedPersonnage = Int(userChoice!)! - 1
        }
        print("Please select one personnage from team2")
        let userChoice2 = readLine()
        
        if userChoice2 != nil {
            team2UsedPersonnage = Int(userChoice2!)! - 1
        }
    }
}
