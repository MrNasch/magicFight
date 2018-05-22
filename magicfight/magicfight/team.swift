class Team {
    var personnages = [Personnage]()
    var j: Int = 1
    // func that allows us to choose a personnage and add in the team
    func createCharacter() {
        print("Wich class do you want to play \(j)"
            + "\n1. Fighter"
            + "\n2. Magus"
            + "\n3. Colossus"
            + "\n4. Dwarf")
        var personnage: Personnage = Personnage(life: 100)
        if let choice = readLine() {
            switch choice {
            case "1":
                personnage = Fighter()
                print("You choose a fighter")
                team.personnages.append(personnage)
            case "2":
                personnage = Magus()
                print("You choose a magus")
                team.personnages.append(personnage)
            case "3":
                personnage = Colossus()
                print("You choose a colossus")
                team.personnages.append(personnage)
            case "4":
                personnage = Dwarf()
                print("You choose a dwarf")
                team.personnages.append(personnage)
            default:
                print("Please select a class")
            }
        }
        print("Name your character")
        let name = readLine()
        personnage.name = name!
        personnages.append(personnage)
        j += 1
    }
    // func that display the personnage choosen
    func displayCharacter(index: Int) {
        let personnage = personnages[index]
        print(String(describing: personnage.self))
        print(personnage.description())
    }
}

