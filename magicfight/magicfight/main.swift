//
//  main.swift
//  magicfight
//
//  Created by Paschal on 19/04/18.
//  Copyright © 2018 Nasch. All rights reserved.
//

import Foundation


let party: Party = Party()
let team: Team = Team()

print(party.newGame)

var count = 0

// create the teams
print("--- TEAM BUILDING")
party.createTeam(number: 1)
party.createTeam(number: 2)

// display the teams
print("--- TEAM RESUME")
party.displayTeam(number: 1)
party.displayTeam(number: 2)


// while team1 is alive and team 2 alive we play
while party.play() {
    count += 1
}

// we pick the winner
if party.usedHeroTeam1.life > 0 {
    print("The winner is player 1")
} else {
    print("The winner is player 2")
}
print("Won in \(count) runs")
