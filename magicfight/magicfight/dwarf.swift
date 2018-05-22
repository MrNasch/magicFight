//creat class dwarf
class Dwarf: Personnage {
    var dwarfWeapon: Weapon
    // allows us to change weapon
    override var weapon: Weapon {
        get {
            return dwarfWeapon
        }
        set {
            if newValue is Axe {
                dwarfWeapon = newValue as! Axe
            } else if newValue is Mass {
                dwarfWeapon = newValue as! Mass
            } else {
                print("incorrect weapon")
            }
        }
    }
    
    init() {
        self.dwarfWeapon = Axe()
        super.init(life: 75)
        self.weapon = self.dwarfWeapon
    }
    // func that attack other personnage
    override func attackPersonnage(personnage: Personnage) {
        personnage.getHit(damages: self.weapon.damages)
    }
}
