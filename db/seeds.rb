# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Plataforma para publicação dos jogos
pSteam = Platform.create(name: 'Steam')
pGP = Platform.create(name: 'Google Play')
pAS = Platform.create(name: 'App Store')

# Categoria dos jogos
cMOBA = Category.create(name: 'MOBA')
cTiro = Category.create(name: 'Tiro')
cAventura = Category.create(name: 'Aventura')
cRPG = Category.create(name: 'RPG')
cEstrategia = Category.create(name: 'Estratégia')

# Games
gDota = Game.create(name: 'Dota', value: 90, category: cMOBA)
gLOL = Game.create(name: 'LOL', value: 20, category: cMOBA)
gCC = Game.create(name: 'Clash of Clans', value: 30, category: cEstrategia)
gRU = Game.create(name: 'Rise Up', value: 15, category: cAventura)

# Add categoria
gDota.platforms.push(pSteam)
gLOL.platforms.push(pSteam)
gCC.platforms.push(pGP)
gRU.platforms.push(pAS)
