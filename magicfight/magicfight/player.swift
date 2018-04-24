//creat player
class Player {
    var nameOfPlayer: String
    var usedCharacters = [Personnage]()
    var numberOfCharacters = 3
    
    init(nameOfPlayer: String){
        self.nameOfPlayer = nameOfPlayer
    }
}
