//creat class Chest
class Chest {
    func changeWeapon(hero: Hero) {
        print("A chest appears! You get a new weapon!")
        if hero.heroClass == "Magus" {
            hero.weapon = Stick()
        } else {
            hero.weapon = Mass()
        }
    }
}

