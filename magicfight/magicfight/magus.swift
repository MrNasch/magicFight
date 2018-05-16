//creat class magus
class Magus: Personnage {
    var weapon = Scepter()
    
    init() {
        super.init(life: 120)
    }
    override func attackPersonnage(personnage: Personnage) {
        personnage.getHit(damages: self.weapon.healing)
    }
}
