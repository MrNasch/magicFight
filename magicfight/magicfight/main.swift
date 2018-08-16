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

party.run()

// we pick the winner
if party.usedHeroTeam1.life > 0 {
    print("The winner is player 1")
} else {
    print("The winner is player 2")
}
print("Won in \(count) runs")
