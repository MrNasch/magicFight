//creat class magus
class Magus: Personnage {
    var magusWeapon: Weapon
    override var weapon: Weapon {
        get {
            return magusWeapon
        }
        set {
            if newValue is Scepter {
                magusWeapon = newValue as! Scepter
            } else if newValue is Stick {
                magusWeapon = newValue as! Stick
            } else {
                print("incorrect weapon")
            }
        }
    }
    init() {
        self.magusWeapon = Scepter()
        super.init(life: 120)
        self.weapon = self.magusWeapon
    }
    override func attackPersonnage(personnage: Personnage) {
        personnage.getRegen(healing: self.weapon.damages)
    }
}
