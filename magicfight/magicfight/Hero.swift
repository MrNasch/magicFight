//creat class personnage”
class Hero {
    var name: String = ""
    var life: Int
    var weapon = Weapon(damages: 0, healing: 0)
    
    init(life: Int) {
        self.life = life
    }
    // func play against other player
    func play(against hero: Hero) {
        
        self.description()
        
        self.attackHero(hero: hero)
        
    }
    
    // func add life to the personnage
    func getRegen(healing: Int) {
        life = life + healing
        
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
    func attackHero(hero: Hero) {
        print("Do nothing")
        self.description()
    }
    // display name, life and weapon
    func description() {
        print("Name : " + self.name)
        print("Life : \(self.life)")
        print("damages: \(self.weapon.damages) - Healing: \(self.weapon.healing)")
    }
}
