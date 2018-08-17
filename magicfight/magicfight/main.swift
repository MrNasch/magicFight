//
//  main.swift
//  magicfight
//
//  Created by Paschal on 19/04/18.
//  Copyright © 2018 Nasch. All rights reserved.
//

import Foundation


let mainparty: Party = Party()

print(mainparty.newGame)

var count = 0

mainparty.run()

// we pick the winner
if mainparty.usedHeroTeam1.life > 0 {
    print("The winner is player 1")
} else {
    print("The winner is player 2")
}
print("Won in \(count) runs")
