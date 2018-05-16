//
//  main.swift
//  magicfight
//
//  Created by Paschal on 19/04/18.
//  Copyright © 2018 Nasch. All rights reserved.
//

import Foundation

var party: Party = Party()
var team: Team = Team()
print(party.newGame)

party.createTeam(number: 1)
party.createTeam(number: 2)

party.displayTeam(number: 1)
party.displayTeam(number: 2)

print(party.teams.count)
print(team.personnages.count)

party.choosePersonnage()
