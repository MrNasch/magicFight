//creat class dwarf
class Dwarf: Personnage {
    var axe: Weapon = Weapon(damages: 0, healing: 0)
    override var weapon: Weapon {
        get {
            return axe
        }
        set {
            if newValue is Axe {
                axe = newValue as! Axe
            } else if newValue is Mass {
                axe = newValue as! Mass
            } else {
                print("incorrect weapon")
            }
            self.weapon = newValue
        }
    }
    
    init() {
        super.init(life: 75)
    }
    override func attackPersonnage(personnage: Personnage) {
        personnage.getHit(damages: self.weapon.damages)
    }
}
