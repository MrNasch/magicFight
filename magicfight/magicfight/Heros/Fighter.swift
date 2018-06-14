//creat class fighter
class Fighter: Hero {
    var fighterWeapon: Weapon
    // allows us to change weapon
    override var weapon: Weapon {
        get {
            return fighterWeapon
        }
        set {
            if newValue is Sword {
                fighterWeapon = newValue as! Sword
            } else if newValue is Mass {
                fighterWeapon = newValue as! Mass
            } else {
                print("incorrect weapon")
            }
        }
    }
    
    init() {
        fighterWeapon = Sword()
        super.init(life: 100)
        weapon = fighterWeapon
    }
    // func that attack other personnage
    override func attackHero(hero: Hero) {
        hero.getHit(damages: weapon.damages)
    }
}
