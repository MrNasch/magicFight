//creat class magus
class Magus: Hero {
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
        magusWeapon = Scepter()
        super.init(life: 120)
        weapon = magusWeapon
    }
    // func that add life to a personnage from his team
    override func attackHero(hero: Hero) {
        hero.getRegen(healing: weapon.healing)
    }
}
