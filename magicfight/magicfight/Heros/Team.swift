class Team {
    var heros = [Hero]()
    var j: Int = 1
    // func that allows us to choose a personnage and add in the team
    func createCharacter() {
        print("Wich class do you want to play \(j)"
            + "\n1. Fighter"
            + "\n2. Magus"
            + "\n3. Colossus"
            + "\n4. Dwarf")
        var hero = Hero(life: 100)
        if let choice = readLine() {
            switch choice {
            case "1":
                hero = Fighter()
                hero.setHeroClass(heroClass: "Fighter")
                print("You choose a fighter")
                team.heros.append(hero)
            case "2":
                hero = Magus()
                hero.setHeroClass(heroClass: "Magus")
                print("You choose a magus")
                team.heros.append(hero)
            case "3":
                hero = Colossus()
                hero.setHeroClass(heroClass: "Colossus")
                print("You choose a colossus")
                team.heros.append(hero)
            case "4":
                hero = Dwarf()
                hero.setHeroClass(heroClass: "Dwarf")
                print("You choose a dwarf")
                team.heros.append(hero)
            default:
                print("Please select a class")
            }
        }
        // ckeck if name is taken
        var exist: Bool = false
        repeat {
            print("Name your character")
            let name = readLine()
            for hero in heros {
                print("test")
                if name == hero.name {
                    exist = true
                    print(name! + " " + "\(exist)")
                }
            }
            if !exist {
                // opening optional
                if let nameNotExist = name {
                    hero.name = nameNotExist
                    exist = false
                    print(name! + " " + "\(exist)")
                }
            }
            heros.append(hero)
        } while exist == true
        j += 1
    }
    // func that display the personnage choosen
    func displayCharacter(index: Int) {
        let hero = heros[index]
        print(String(describing: hero.self))
        print(hero.description())
    }
}

