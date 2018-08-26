//creat class colossus
class Colossus: Hero {
    var colossusWeapon: Weapon
    // allows us to change weapon
    override var weapon: Weapon {
        get {
            return colossusWeapon
        }
        set {
            if newValue is Shield {
                colossusWeapon = newValue as! Shield
            } else if newValue is Mass {
                colossusWeapon = newValue as! Mass
            } else {
                print("incorrect weapon")
            }
        }
    }
    
    init() {
        colossusWeapon = Shield()
        super.init(life: 150)
        weapon = colossusWeapon
    }
    // func that attack other personnage
    override func attackHero(hero: Hero) {
        hero.getHit(damages: weapon.damages)
    }
}
