//creat class dwarf
class Dwarf: Hero {
    override var typeName: String {
        return String(describing: Dwarf.self)
    }
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
        dwarfWeapon = Axe()
        super.init(life: 75)
        weapon = dwarfWeapon
    }
    // func that attack other personnage
    override func attackHero(hero: Hero) {
        hero.getHit(damages: weapon.damages)
    }
}
