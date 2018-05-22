//creat class colossus
class Colossus: Personnage {
    var colossusWeapon: Weapon
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
        self.colossusWeapon = Shield()
        super.init(life: 150)
        self.weapon = self.colossusWeapon
    }
    override func attackPersonnage(personnage: Personnage) {
        personnage.getHit(damages: self.weapon.damages)
    }
}
