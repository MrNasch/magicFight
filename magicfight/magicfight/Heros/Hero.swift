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
        let previousHeroLife = hero.life
        
        attackHero(hero: hero)
        
        if previousHeroLife > hero.life {
            print("\(self)" + " " + "attacked" + " " + "\(hero)")
            print("\(hero) lost \(self.weapon.damages) life")
        } else {
            print("\(self)" + " " + "Healed" + " " + "\(hero)")
            print("\(hero) gain \(self.weapon.damages) life")
        }
    }
    // func add life to the personnage
    func getRegen(healing: Int) {
        life += max(healing, 0)
        
    }
    // func remove life from the personnage
    func getHit(damages: Int) {
        life -= max(damages, 0)
    }
    
    // original attack func
    func attackHero(hero: Hero) {
        fatalError()
    }
    
    // display name, life and weapon
    func description() {
        print("Name : " + name)
        print("Life : \(life)")
        print("damages: \(weapon.damages) - Healing: \(weapon.healing)")
    }
}
