//creat class colossus
class Colossus: Personnage {
    var shield: Weapon = Weapon(damages: 0, healing: 0)
    override var weapon: Weapon {
        get {
            return shield
        }
        set {
            if newValue is Shield {
                shield = newValue as! Shield
            } else if newValue is Mass {
                shield = newValue as! Mass
            } else {
                print("incorrect weapon")
            }
            self.weapon = newValue
        }
    }
    
    init() {
        super.init(life: 150)
    }
    override func attackPersonnage(personnage: Personnage) {
        personnage.getHit(damages: self.weapon.damages)
    }
}
