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
            team.createCharacter(otherTeam: teams.first)
        }
        print("Choose and name your characters")
        
        teams.append(team)
    }
    
    // display the 2 diferent team
    func displayTeam(number: Int) {
        print("Team \(number)")
        let team = teams[number - 1]
        
        for i in 0..<team.heros.count {
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
    func chooseHero(firstTeam: Bool) {
        let teamWhichPlay = firstTeam == true ? 1 : 2
        let againstTeam = teamWhichPlay == 1 ? 2 : 1
        var selectedHero: Hero?
        
        while selectedHero == nil {
            print("Please select one personnage from team \(teamWhichPlay)")
            print(displayTeam(number: teamWhichPlay))
            let userChoice = input()
            
            let hero = teams[teamWhichPlay - 1].heros[Int(userChoice) - 1]
            if hero.life <= 0 {
                print("Your hero is dead")
            } else {
                selectedHero = hero
            }
        }
        // team 1 attack

            
        usedHeroTeam1 = selectedHero!
            print(usedHeroTeam1.description())

        
        // random chest
        let chest = Chest()
        let number = Int(arc4random_uniform(11))
        if number == 4 {
            chest.changeWeapon(hero: usedHeroTeam1)
        }
        
        if usedHeroTeam1 is Magus {
            print("Please select one personnage from team \(teamWhichPlay)")
            print(displayTeam(number: teamWhichPlay))
            let userChoice = input()
            
            
            usedHeroTeam2 = teams[teamWhichPlay - 1].heros[Int(userChoice) - 1]
            print(usedHeroTeam2.description())
        } else {
            selectedHero = nil
            while selectedHero == nil {
                print("Please select one personnage from team \(againstTeam)")
                print(displayTeam(number: againstTeam))
                let userChoice = input()
                
                let hero = teams[againstTeam - 1].heros[Int(userChoice) - 1]
                if hero.life <= 0 {
                    print("Your hero is dead")
                } else {
                    selectedHero = hero
                }
                usedHeroTeam2 = selectedHero!
                print(usedHeroTeam1.description())
            }
        }
        
        
        
    }
    
    func play(firstTeam: Bool) -> Bool {
        chooseHero(firstTeam: firstTeam)
        usedHeroTeam1.play(against: usedHeroTeam2)
        return teams[0].herosAlwaysAlive == true && teams[1].herosAlwaysAlive == true
    }
    func run() {
        // create the teams
        print("--- TEAM BUILDING")
        createTeam(number: 1)
        createTeam(number: 2)
        
        // display the teams
        print("--- TEAM RESUME")
        displayTeam(number: 1)
        displayTeam(number: 2)
        
        
        // while team1 is alive and team 2 alive we play
        
        while play(firstTeam: count % 2 == 0) {
            count += 1
        }
    }
}

