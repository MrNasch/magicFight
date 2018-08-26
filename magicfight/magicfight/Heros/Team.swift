class Team {
    var heros = [Hero]()
    // Bool to verify if there's still a hero alive
    var herosAlwaysAlive: Bool {
        var haveAHeroAlive = false
        for hero in heros {
            if hero.life > 0 {
                haveAHeroAlive = true
                break
            }
        }
        return haveAHeroAlive
    }
    
    var j: Int = 1
    // func that allows us to choose a personnage and add in the team
    func createCharacter(otherTeam: Team?) {
        print("Wich class do you want to play \(j)"
            + "\n1. Fighter"
            + "\n2. Magus"
            + "\n3. Colossus"
            + "\n4. Dwarf")
        
        var hero: Hero?
        
        repeat {
            if let choice = readLine() {
                switch choice {
                case "1":
                    hero = Fighter()
                    
                case "2":
                    hero = Magus()
                    
                case "3":
                    hero = Colossus()
                    
                case "4":
                    hero = Dwarf()
                default:
                    print("Please select a class")
                }
            }
        } while hero == nil
        
        guard let theHero = hero else { fatalError() }
        
        print("You choose a \(type(of: theHero))")
        
        
        repeat {
            print("Name your character")
            guard let name = readLine() else { continue }
            
            var alreadyExist = false
            for hero in heros {
                if hero.name == name {
                    alreadyExist = true
                }
            }
            if let otherTeam = otherTeam {
                for hero in otherTeam.heros {
                    if hero.name == name {
                        alreadyExist = true
                    }
                }
            }
            if alreadyExist {
                print(name + " already exist !")
            } else {
                theHero.name = name
            }
        } while theHero.name.isEmpty
        
        if let hero = hero {
            heros.append(hero)
        }
        
        j += 1
    }
    
    // func that display the personnage choosen
    func displayCharacter(index: Int) {
        let hero = heros[index]
        print(String(describing: hero.self))
        print(hero.description())
    }
}

