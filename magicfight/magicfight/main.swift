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
    print("creation de l'équipe \(i)")
    let team = Team()
    print("creation des personnages")
    for j in 1...3 {
        print("creation du personnage \(j)")
        let name = readLine()
        let personnage: Personnage = Personnage(name: name!)
        team.personnages.append(personnage)
    }
    party.teams.append(team)
}
for i in 0...1 {
    print("Equipe \(i+1)")
    let team:Team = party.teams[i]
    for j in 0...2 {
        print("personnage \(j+1)")
        let personnage = team.personnages[j]
        print(personnage.name)
    }
}
