//creat class personnage”
class Hero {
    var name: String = ""
    var life: Int
    var heroClass: String = ""
    var weapon = Weapon(damages: 0, healing: 0)
    
    init(life: Int) {
        self.life = life
    }
    // func play against other player
    func play(against hero: Hero) {
        
        attackHero(hero: hero)
        
    }
    // get the class of the hero
    func getHeroClass() -> String {
        return self.heroClass
    }
    // set the class of the hero
    func setHeroClass(heroClass: String) {
        self.heroClass = heroClass
    }
    // func add life to the personnage
    func getRegen(healing: Int) {
        life = life + healing
        
    }
    // func remove life from the personnage
    func getHit(damages: Int) {
        life = life - damages
        
        // if life is under 0 the personnage is dead
        if life < 0 {
            life = 0
        }
    }
    // original attack func
    func attackHero(hero: Hero) {
        print("Do nothing")
        self.description()
    }
    // display name, life and weapon
    func description() {
        print("Name : " + name)
        print("Life : \(life)")
        print("damages: \(weapon.damages) - Healing: \(weapon.healing)")
    }
}
