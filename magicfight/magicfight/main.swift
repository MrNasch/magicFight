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

team.CreatePersonnageTeam1()
team.CreatePersonnageTeam2()

party.PersonnageInTheGame()


party.ChoosePersonnage()
