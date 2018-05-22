//creat class personnage”
class Personnage {
    var name: String = ""
    var life: Int
    var weapon = Weapon(damages: 0, healing: 0)
    
    init(life: Int) {
        self.life = life
    }
    
    
    // func add life to the personnage
    func getRegen(healing: Int) {
        self.life = self.life + healing
        
    }
    // func remove life from the personnage
    func getHit(damages: Int) {
        self.life = self.life - damages
        
        // if life is under 0 the personnage is dead
        if self.life < 0 {
            self.life = 0
        }
    }
    // original attack func
    func attackPersonnage(personnage: Personnage) {
        print("Do nothing")
    }
    // display name, life and weapon
    func description() {
        print("Name : " + self.name)
        print("Life : \(self.life)")
        print("damages: \(self.weapon.damages) - Healing: \(self.weapon.healing)")
    }
}
