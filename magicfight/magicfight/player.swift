//creat player
class Player {
    var nameOfPlayer: String
    var usedCharacters = [Personnage]()
    let numberOfCharacters = 3
    
    init(nameOfPlayer: String){
        self.nameOfPlayer = nameOfPlayer
    }
}
