//creat class magus
class Magus: Personnage {
    var magusWeapon: Weapon
    // allows us to change weapon
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
    // func that add life to a personnage from his team
    override func attackPersonnage(personnage: Personnage) {
        personnage.getRegen(healing: self.weapon.damages)
    }
}
