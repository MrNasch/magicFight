//creat class colossus
class Colossus: Personnage {
    var weapon = Shield()
    
    init() {
        super.init(life: 150)
    }
    override func attackPersonnage(personnage: Personnage) {
        personnage.getHit(damages: self.weapon.damages)
    }
}
