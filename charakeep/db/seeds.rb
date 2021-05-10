# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Character.destroy_all
Race.destroy_all

#Users Seeds
megan = User.create(name: "Megan")
cici = User.create(name: "CiCi")

#Stat Set Seeds
freystat = Stat.create(agility: 11, charisma: 14, dexterity: 10, intelligence: 15, strength: 17, wisdom: 13)
xemastat = Stat.create(agility: 11, charisma: 14, dexterity: 10, intelligence: 15, strength: 17, wisdom: 13)

#Race Seeds
human = Race.create(name: "Human")
dwarf = Race.create(name: "Dwarf")
tiefling = Race.create(name: "Tiefling")
elf = Race.create(name: "Elf")
orc = Race.create(name: "Orc")
halfling = Race.create(name: "Halfling")

#achievement Seeds
achieveempty = Achievement.create(description: "started a journey")
dragonspeaker = Achievement.create(description: "DragonSpeaker")

#Class seeds
cleric = Dndclass.create(name: "Cleric")
bard = Dndclass.create(name: "Bard")
barbarian = Dndclass.create(name: "Barbarian")
paladin = Dndclass.create(name: "Paladin")
rogue = Dndclass.create(name: "Rogue")
wizard = Dndclass.create(name: "Wizard")
warlock = Dndclass.create(name: "Warlock")
druid = Dndclass.create(name: "Druid")
warrior = Dndclass.create(name: "Warrior")

#Character Seeds
frey = Character.create(name: "Freyja Rubymaul", image: "./ck-frontend/assets/images/freyjarm.jpg", history: "Wisdom is knowing that tomato is not a fruit", level: 5, user: megan, stat: freystat, race: dwarf, dndclass: paladin)

