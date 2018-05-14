class Team {
    var personnages = [Personnage]()
    var j: Int = 0
    
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
            case "2":
                personnage = Magus()
                print("You choose a magus")
            case "3":
                personnage = Colossus()
                print("You choose a colossus")
            case "4":
                personnage = Dwarf()
                print("You choose a dwarf")
            default:
                print("Please select a class")
            }
        }
        print("Name your character")
        let name = readLine()
        personnage.name = name!
        personnages.append(personnage)
    }
    
    func displayCharacter(index: Int) {
        let personnage = personnages[index]
        print(String(describing: personnage.self))
        print(personnage.description())
    }
}

