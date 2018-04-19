//
//  main.swift
//  magicfight
//
//  Created by Paschal on 19/04/18.
//  Copyright © 2018 Nasch. All rights reserved.
//

import Foundation

//creat game
class Game {
    // created var newGame imported when you creat a new game
    var newGame : String = "Welcome to MagicFight please select 3 characters"
    var endGame : String = "Good job " + "you won"
}

//creat player
class Player {
    var name: String
    var usedCharacters = [Characters]()
    let numberOfCharacters = 3
    
    init(name: String){
        self.name = name
    }
}

//creat plate
class Plate {
    var characters = [Characters]()
    var players = [Player]()
    let numberOfPlayers = 2
}

//creat class Chest
class Chest {
    
}

//creat class randomKill
class RandomKill {
    
}

//creat class CHaracters dictionnaires”
class Characters {
    var name: String
    
    init(name: String){
        self.name = name
    }
}
    //creat class fighter
    class Fighter {
        var name = ""
        var life = 100
        var attack = 10
        
        func strike() {
            
        }
    }
    
    //creat class magus
    class Magus {
        var name: String
        var life = 120
        var heal = 15
        init(name: String){
            self.name = name
        }
        
        func regen() {
            
        }
    }
    
    //creat class colossus
    class Colossus {
        var name = ""
        var life = 180
        var attack = 5
        
        func strike() {
            
        }
    }
    
    //creat class dwarf
    class Dwarf {
        var name = ""
        var life = 70
        var attack = 25
        
        func strike() {
            
        }
    }

