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
                print("You choose a fighter")
                team.heros.append(hero)
            case "2":
                hero = Magus()
                print("You choose a magus")
                team.heros.append(hero)
            case "3":
                hero = Colossus()
                print("You choose a colossus")
                team.heros.append(hero)
            case "4":
                hero = Dwarf()
                print("You choose a dwarf")
                team.heros.append(hero)
            default:
                print("Please select a class")
            }
        }
        print("Name your character")
        let name = readLine()
        if name == hero.name {
            print("name already taken")
        } else {
            hero.name = name!
        }
        heros.append(hero)
        j += 1
    }
    // func that display the personnage choosen
    func displayCharacter(index: Int) {
        let hero = heros[index]
        print(String(describing: hero.self))
        print(hero.description())
    }
}

