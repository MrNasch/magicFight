import Foundation
// class party
class Party {
    var teams = [Team]()
    
    // created var newGame imported when you creat a new game
    let newGame: String = "Welcome to MagicFight please select 3 characters"
    var usedHeroTeam1: Hero = Hero(life: 100)
    var usedHeroTeam2: Hero = Hero(life: 100)
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
    private func input() -> Int {
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
    func chooseHero() {
        
        // team 1 attack
        print("Please select one personnage from team1")
        print(displayTeam(number: 1))
        let userChoice = input()
        
        
        usedHeroTeam1 = team.heros[Int(userChoice) - 1]
        print(usedHeroTeam1.description())
        
        // random chest
        let chest = Chest()
        let number = Int(arc4random_uniform(11))
        if number == 4 {
            //chest.changeWeapon(hero: Hero)
        }
        
        print("Please select one personnage from team2")
        print(displayTeam(number: 2))
        let userChoice2 = input()
        
        
        
        let usedHeroTeam2 = team.heros[Int(userChoice2) - 1]
        print(usedHeroTeam2.description())
        
        print("\(usedHeroTeam1)" + " " + "attacked" + " " + "\(usedHeroTeam2)")
        print("\(usedHeroTeam2) lost \(usedHeroTeam1.weapon.damages) life")
        
    }
}

