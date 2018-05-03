//
//  main.swift
//  magicfight
//
//  Created by Paschal on 19/04/18.
//  Copyright © 2018 Nasch. All rights reserved.
//

import Foundation

var party: Party = Party()
for i in 1...2 {
    print("Create your team player \(i)")
    let team = Team()
    print("Choose and name your characters")
    for j in 1...3 {
        print("Wich class do you want to play \(j)"
            + "\n1. Fighter"
            + "\n2. Magus"
            + "\n3. Colossus"
            + "\n4. Dwarf")
        var personnage: Personnage = Personnage()
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
        team.personnages.append(personnage)
    }
    party.teams.append(team)
}
for i in 0...1 {
    print("Team \(i+1)")
    let team:Team = party.teams[i]
    for j in 0...2 {
        print("Character \(j+1)")
        let personnage = team.personnages[j]
        print(personnage.name)
        print(String(describing: personnage.self))
    }
}
