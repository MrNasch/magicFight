//creat class dwarf
class Dwarf: Personnage {
    var weapon = Axe()
    
    init() {
        super.init(life: 75)
    }
    override func attackPersonnage(personnage: Personnage) {
        personnage.getHit(damages: self.weapon.damages)
    }
}
