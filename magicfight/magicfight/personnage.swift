//creat class personnage”
class Personnage {
    var name: String = ""
    var life: Int
    
    init(life: Int) {
        self.life = life
    }
    
    
    
    
    func getHit(damages: Int) {
        self.life = self.life - damages
        
        // if life is under 0 the personnage is dead
        if self.life < 0 {
            self.life = 0
        }
    }
    
    func attackPersonnage(personnage: Personnage) {
        print("Do nothing")
    }

    func description() {
        print("Name : " + self.name)
        print("Life : \(self.life)")
        print("weapon: " )
    }
}
