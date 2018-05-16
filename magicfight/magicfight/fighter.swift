//creat class fighter
class Fighter: Personnage {
    var fighterWeapon: Weapon
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
        self.fighterWeapon = Sword()
        super.init(life: 100)
        self.weapon = self.fighterWeapon
    }
    
    override func attackPersonnage(personnage: Personnage) {
         personnage.getHit(damages: self.weapon.damages)
    }
}
