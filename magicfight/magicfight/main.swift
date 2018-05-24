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
var player1 = party.usedPersonnageTeam1
var player2 = party.usedPersonnageTeam2
var count = 0
// create the teams
party.createTeam(number: 1)
party.createTeam(number: 2)
// display the teams
party.displayTeam(number: 1)
party.displayTeam(number: 2)
// while team1 is alive and team 2 alive we play
while player1.life > 0 && player2.life > 0 {
    player1.play(against: player2)
    
    if player2.life > 0 {
        player2.play(against: player1)
    }
    party.choosePersonnage()
    count += 1
}
// we pick the winner
var nameWinner: String

if player1.life > 0 {
    nameWinner = party.teams[1].personnages.description
} else {
    nameWinner = party.teams[2].personnages.description
}

// we display
print("The winner is " + nameWinner + " !")

print("You won in \(count) runs")
