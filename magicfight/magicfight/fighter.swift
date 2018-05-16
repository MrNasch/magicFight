//creat class fighter
class Fighter: Personnage {
    var weapon = Sword()
    
    init() {
        super.init(life: 100)
    }
    
    override func attackPersonnage(personnage: Personnage) {
         personnage.getHit(damages: self.weapon.damages)
    }
}
