//creat class magus
class Magus: Personnage {
    var scepter: Weapon = Weapon(damages: 0, healing: 0)
    override var weapon: Weapon {
        get {
            return scepter
        }
        set {
            if newValue is Scepter {
                scepter = newValue as! Scepter
            } else if newValue is Mass {
                scepter = newValue as! Mass
            } else {
                print("incorrect weapon")
            }
            self.weapon = newValue
        }
    }
    init() {
        super.init(life: 120)
    }
    override func attackPersonnage(personnage: Personnage) {
        personnage.getHit(damages: self.weapon.healing)
    }
}
