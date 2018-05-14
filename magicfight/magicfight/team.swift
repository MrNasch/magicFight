class Team {
    var personnages = [Personnage]()
    var team1: Int = 0
    var team2: Int = 0

    
    func CreatePersonnageTeam1() {
        print("Create your team player 1")
        let team1 = Team()
        print("Choose and name your characters")
        for j in 1...3 {
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
            team1.personnages.append(personnage)
        }
        party.teams.append(team1)
    }
    func CreatePersonnageTeam2() {
        print("Create your team player 2")
        let team2 = Team()
        print("Choose and name your characters")
        for j in 1...3 {
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
            team2.personnages.append(personnage)
        }
        party.teams.append(team2)

    }
}
