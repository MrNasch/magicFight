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
        print("Pick your character \(j)")
        let name = readLine()
        let personnage: Personnage = Personnage(name: name!)
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
    }
}
