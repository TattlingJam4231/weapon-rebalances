# Payday 2 Weapon Rebalances
This is a rebalance of weapons for Payday 2 that is intended to make the different weapon types more distinguished from each other and make all weapons equally viable. 

### Dependencies
 - [BeardLib](https://modworkshop.net/mod/14924)
 - [Custom Poison Dots](https://github.com/TattlingJam4231/custom-poison-dots)
 
## Weapon changes
  1. [Shotguns](https://github.com/TattlingJam4231/weapon-rebalances/tree/master#shotguns)
     1. [Ammo](https://github.com/TattlingJam4231/weapon-rebalances/tree/master#ammo)
     2. [Weapons](https://github.com/TattlingJam4231/weapon-rebalances/tree/master#weapons)
  2. [Assault Rifles](https://github.com/TattlingJam4231/weapon-rebalances/tree/master#assault-rifles)
     1. [Skills](https://github.com/TattlingJam4231/weapon-rebalances/tree/master#skills)
     2. [Ammo](https://github.com/TattlingJam4231/weapon-rebalances/tree/master#ammo-1)
     3. [Weapons](https://github.com/TattlingJam4231/weapon-rebalances/tree/master#weapons-1)
  3. [LMGs](https://github.com/TattlingJam4231/weapon-rebalances/tree/master#lmgs)
  4. [Snipers](https://github.com/TattlingJam4231/weapon-rebalances/tree/master#snipers)
  5. [SMGs](https://github.com/TattlingJam4231/weapon-rebalances/tree/master#SMGs)
     1. [Ammo](https://github.com/TattlingJam4231/weapon-rebalances/tree/master#ammo-2)
     2. [Weapons](https://github.com/TattlingJam4231/weapon-rebalances/tree/master#weapons-2)
  6. [Pistols](https://github.com/TattlingJam4231/weapon-rebalances/tree/master#pistols)
     1. [Ammo](https://github.com/TattlingJam4231/weapon-rebalances/tree/master#ammo-3)
     2. [Weapons](https://github.com/TattlingJam4231/weapon-rebalances/tree/master#weapons-3)
  7. [Specials](https://github.com/TattlingJam4231/weapon-rebalances/tree/master#specials)
  8. [Sentry Guns](https://github.com/TattlingJam4231/weapon-rebalances/tree/master#sentry-guns)
  
  Weapon categories have been divided into different tiers based on their base damage. These damage tiers serve only to determine what the the ammo pickup should be and, if the weapon has different ammo types, which version of those ammo types are available.
  
  note: all ammo pickup values are with walk-in closet
### Shotguns:
   tier 5: 155 damage
   
   tier 4: 90 damage
   
   tier 3: 55 damage
   
   tier 2: 42 damage
   
   tier 1: 18 damage
   
#### Ammo:

   note: shotguns fire 12 pellets per shot by default
   - 000 Buckshot:
     - tier 5
       - +48 damage
       - 9 pellets
     - tier 4
       - +30 damage
       - 9 pellets
     - tier 3
       - +20 damage
       - 9 pellets
     - tier 2
       - +17 damage
       - 9 pellets
     - tier 1
       - +13 damage
       - 9 pellets
   
   - Slugs
     - tier 5
       - +74 damage
       - +40 accuracy
       - 1 pellet
       - pierces walls, shields, enemies, and armor
     - tier 4
       - +61 damage
       - +40 accuracy
       - 1 pellet
       - pierces walls, shields, enemies, and armor
     - tier 3
       - +32 damage
       - +40 accuracy
       - 1 pellet
       - pierces walls, shields, enemies, and armor
     - tier 2
       - +30 damage
       - +40 accuracy
       - 1 pellet
       - pierces walls, shields, enemies, and armor
     - tier 1
       - +20 damage
       - +40 accuracy
       - 1 pellet
       - pierces walls, shields, enemies, and armor
   
   - HE Rounds
     - tier 5
       - +9 damage
       - -12 accuracy
       - -60% max ammo pickup
       - 3 pellets
     - tier 4
       - -12 accuracy
       - -20% min ammo pickup
       - -60% max ammo pickup
       - 3 pellets
     - tier 3
       - -12 accuracy
       - -70% min ammo pickup
       - -63% max ammo pickup
       - 3 pellets
     - tier 2
       - -12 accuracy
       - -53% min ammo pickup
       - -64% max ammo pickup
       - 3 pellets
     - tier 1
       - -12 accuracy
       - -50% min ammo pickup
       - -45% max ammo pickup
       - 3 pellets
     
     note: by not hitting an enemy directly with the he rounds, all three pellets can damage the same enemy
   
   - Dragon's Breath
     - tier 5
       - -12 accuracy
       - -60% min ammo pickup
       - deals 80 damage every 0.5 seconds for three seconds
       - 24 pellets
     - tier 4
       - -12 accuracy
       - -60% min ammo pickup
       - deals 70 damage every 0.5 seconds for three seconds
       - 24 pellets
     - tier 3
       - -12 accuracy
       - -60% min ammo pickup
       - deals 60 damage every 0.5 seconds for three seconds
       - 24 pellets
     - tier 2
       - -12 accuracy
       - -60% min ammo pickup
       - deals 50 damage every 0.5 seconds for three seconds
       - 24 pellets
     - tier 1
       - -12 accuracy
       - -60% min ammo pickup
       - deals 40 damage every 0.5 seconds for three seconds
       - 24 pellets
   
   - Flechette
     - hit enemies are afflicted with a dot that decays over time, the dot lasts until the damage decays to 0
     - damage of dot increases with consecutive hits 
     - tier 5
       - -103 damage
       - -4 accuracy
       - 16 pellets
       - dot stats:
         - 0.4 second damage tick rate
         - 105 intial damage
         - -15 damage every 2 damage ticks
         - +105 damage on consecutive hits
     - tier 4
       - -60 damage
       - -4 accuracy
       - 16 pellets
       - dot stats:
         - 0.4 second damage tick rate
         - 60 intial damage
         - -5 damage every damage tick
         - +45 damage on consecutive hits
     - tier 3
       - -37 damage
       - -4 accuracy
       - 16 pellets
       - dot stats:
         - 0.4 second damage tick rate
         - 60 intial damage
         - -5 damage every damage tick
         - +30 damage on consecutive hits
     - tier 2
       - -28 damage
       - -4 accuracy
       - 16 pellets
       - dot stats:
         - 0.4 second damage tick rate
         - 60 intial damage
         - -5 damage every damage tick
         - +20 damage on consecutive hits
     - tier 1
       - -12 damage
       - -4 accuracy
       - 16 pellets
       - dot stats:
         - 0.4 second damage tick rate
         - 30 intial damage
         - -10 damage every damage tick
         - +15 damage on consecutive hits
     
#### Weapons:
   - Tier 5
     - Mosconi
       - ammo pickup changed from 0.43/1.51 to 0.4/1.5
     
     - Joceline
       - ammo pickup increased from 0.38/1.32 to 0.4/1.5
     
     - Breaker
       - ammo pickup increased from 0.27/0.99 to 0.4/1.5

     - Akimbo Judge
       - ammo pickup increased from 0.27/0.81 to 0.4/1.5
       - fire rate decreased from 500 to 361

     - Judge
       - ammo pickup increased from 0.24/0.72 to 0.4/1.5
       - fire rate decreased from 500 to 361

     - Gsps
       - ammo pickup increased from 0.38/1.32 to 0.4/1.5

     - Claire
       - ammo pickup increased from 0.3/0.89 to 0.4/1.5
   
   - Tier 4
     - Raven
       - ammo pickup changed from 0.57/1.98 to 0.5/2
       - fire rate increased from 104 to 160

     - Reinfeld
       - ammo pickup changed from 0.57/1.98 to 0.5/2
       - fire rate increased from 104 to 160

     - Locomotive
       - ammo pickup changed from 0.57/1.98 to 0.5/2
     
   - Tier 3
     - Predator
       - ammo pickup changed from 4.46/6.68 to 4.3/6.7

     - M1014
       - ammo pickup changed from 4.32/6.48 to 4.3/6.7

     - Street Sweeper
       - ammo pickup decreased from 4.86/7.29 to 4.3/6.7
       - damage increased from 42 to 55
   
   - Tier 2
     - Izhma
       - ammo pickup changed from 4.73/7.09 to 4.7/7.3

     - Steakout
       - ammo pickup changed from 4.86/7.29 to 4.7/7.3

     - Akimbo Goliath
       - ammo pickup changed from 4.86/7.29 to 4.7/7.3

     - Goliath
       - ammo pickup increased from 3.65/5.47 to 4.7/7.3
       
   - Tier 1
     - Brothers Grimm
       - ammo pickup increased from 6.48/9.72 to 7/10.5

     - Grimm
       - ammo pickup changed from 7.02/10.53 to 7/10.5
     
### Assault Rifles:
   tier 4: 160 damage
   
   tier 3: 99 damage
   
   tier 2: 58 damage
   
   tier 1: 44 damage
   
   
#### Skills:
   Graze now affects assault rifles fired in single shot mode. Graze now reads as follows in game:
   - Basic
     - Snipers that hit their target deal 20% of the damage dealt in a 1m radius around the bullet trajectory. 
     
       When fired in single shot mode, Assault Rifles that hit their target deal 20% of the damage dealt in a 2.75m radius around the bullet impact.
       
   - Aced 
     - If a bullet would headshot-kill someone, the graze skill will deal 100% of the damage dealt instead of 20%."
   
   note: snipers have a cylindrical aoe around the path of the bullet, assault rifles have a spherical aoe around the impact point of the bullet
   

#### Ammo:
   
   - FMJ
     - +8 accuracy
     - pierces enemies
   - Ballistic Tip Rounds
     - tier 4
       - +80 damage
       - +8 accuracy
       - -60% min ammo pickup
       - -50% max ammo pickup
     - tier 3
       - +33 damage
       - +8 accuracy
       - -50% min ammo pickup
       - -50% max ammo pickup
     - tier 2
       - +20 damage
       - +8 accuracy
       - -25% min ammo pickup
       - -17% max ammo pickup
     - tier 1
       - +17 damage
       - +8 accuracy
       - -17% min ammo pickup
       - -17% max ammo pickup
       
#### Weapons:

   - Tier 4
     - Cavity
       - ammo pickup increased from 0.45/1.34 to 2.5/5

     - M308
       - ammo pickup increased from 0.47/1.42 to 2.5/5

     - Galant
       - ammo pickup increased from 0.49/1.46 to 2.5/5

     - Little Friend
       - ammo pickup increased from 0.27/0.81 to 2.5/5
       - under barrel grenade launcher is now in the assault rifle catagory (benefits from aggressive reload basic)
       
   - Tier 3
     - Eagle
       - ammo pickup increased from 1/3.5 to 6/12
       - total ammo increased from 100 to 160

     - Falcon
       - ammo pickup increased from 1.35/4.73 to 6/12
       - total ammo increased from 100 to 160

     - AK.762
       - ammo pickup increased from 1.22/4.25 to 6/12
       - total ammo increased from 90 to 150

     - Golden AK.762
       - ammo pickup increased from 1.22/4.25 to 6/12
       - total ammo increased from 90 to 150

     - AMR-16
       - ammo pickup increased from 1.21/4.25 to 6/12
       - total ammo increased from 90 to 150

     - AK17
       - ammo pickup increased from 1.42/4.95 to 6/12
       - total ammo increased from 105 to 175

     - Gewehr
       - ammo pickup increased from 1.35/4.73 to 6/12
       - total ammo increased from 100 to 160
   
   - Tier 2
     - Gecko
       - ammo pickup increased from 6.08/11.14 to 10/15
       - total ammo increased from 150 to 240

     - CAR-4
       - ammo pickup increased from 6.08/11.14 to 10/15
       - total ammo increased from 150 to 240

     - Queen's Wrath
       - ammo pickup increased from 6.08/11.14 to 10/15
       - total ammo increased from 150 to 240

     - AK5
       - ammo pickup increased from 6.08/11.14 to 10/15
       - total ammo increased from 150 to 240
       - damage decreased from 56 to 55

     - Lion's Roar
       - ammo pickup increased from 6.08/11.14 to 10/15
       - total ammo increased from 150 to 240

     - AK
       - ammo pickup increased from 6.08/11.14 to 10/15
       - total ammo increased from 150 to 240

     - UAR
       - ammo pickup increased from 6.08/11.14 to 10/15
       - total ammo increased from 150 to 240
       - damage decreased from 55 to 54

     - Tempest
       - ammo pickup increased from 6.08/11.14 to 10/15
       - total ammo increased from 150 to 240

     - Union
       - ammo pickup increased from 6.08/11.14 to 10/15
       - total ammo increased from 150 240
   
   - Tier 1
     - AMCAR
       - ammo pickup increased from 8.91/16.34 to 15/30
       - total ammo increased from 220 to 360

     - Commando
       - ammo pickup increased from 9.72/17.82 to 15/30
       - total ammo increased from 240 to 360
       - damage decreased from 42 to 40

     - JP36
       - ammo pickup increased from 9.72/17.82 to 15/30
       - total ammo increased from 240 to 360
       - damage decreased from 44 to 42

     - Clarion
       - ammo pickup increased from 9.72/17.82 to 15/30
       - total ammo increased from 240 to 360
       - damage decreased from 41 to 39

     - Valkyria
       - ammo pickup increased from 8.91/16.34 to 15/30
       - total ammo increased from 220 to 360
       - damage increased from 41 to 44

     - Bootleg
       - ammo pickup increased from 8.1/14.85 to 15/30
       - total ammo increased from 200 to 300
       - damage increased from 40 to 42

###  LMGs:
   Tier 2: 80 Damage
   
   Tier 1: 55 damage
   
   - Tier 2
     - RPK
       - ammo pickup increased from 4.05/14.18 to 10/25
       - total ammo increased from 300 to 400
       - accuracy decreased from 28 to 0
       - stability increased from 8 to 36
       - damage decreased from 120 to 80
       - threat increased from 22 to 43

     - Brenner
       - ammo pickup increased from 4.05/14.18 to 10/25
       - total ammo increased from 300 to 450
       - accuracy decreased from 36 to 4
       - stability increased from 8 to 44
       - damage decreased from 120 to 80
       - threat increased from 37 to 43
   
   - Tier 1
     - KSP
       - ammo pickup increased from 16.2/29.7 to 15/35
       - total ammo increased from 400 to 600
       - accuracy decreased from 48 to 8
       - stability increased from 28 to 48
       - damage decreased from 80 to 55
       - threat increased from 31 to 43

     - KSP 58
       - ammo pickup increased from 400 to 600
       - stability increased from 28 to 36
       - accuracy decreased from 52 to 8
       - stability increased from 28 to 56
       - damage decreased from 80 to 56
       - threat increased from 31 to 43

     - Buzzsaw
       - ammo pickup changed from 18.23/33.41 to 15/35
       - total ammo increased from 400 to 600
       - accuracy decreased from 48 to 0
       - stability increased from 28 to 36
       - damage decreased from 80 to 57
       - threat increased from 31 to 43

### Snipers:
   Tier 3: 480
   
   Tier 2: 246
   
   Tier 1: 160
   
   - Thanatos
     - ammo pickup decreased from 0.07/0.88 to 0/0.53
     - total ammo decreased from 15 to 5
     - damage increased from 3500 to 8500
     
   - Tier 3
     - Nagant
       - ammo pickup changed from 0.95/1.35 to 0.94/1.35

     - Desertfox
       - ammo pickup changed from 0.95/1.35 to 0.94/1.35

     - R93
       - ammo pickup changed from 0.95/1.35 to 0.94/1.35

     - Platypus
       - ammo pickup changed from 0.95/1.35 to 0.94/1.35
       
   - Tier 2
     - Rattlesnake
       - ammo pickup decreased from 2.7/4.05 to 1.35/2.7
       - rate of fire increased from 60 to 80

     - Repeater
       - ammo pickup decreased from 3.04/4.56 to 1.35/2.7
       - rate of fire increased from 86 to 106
       
     - R700
       - ammo pickup decreased from 2.7/4.05 to 1.35/2.7
       - rate of fire increased from 75 to 95

### SMGs:
   Tier 3: 100
   
   Tier 2: 55
   
   Tier 1: 44
   
#### Ammo:
   
   - FMJ Rounds
     - +4 accuracy
     - pierces enemies
   - Hollow Point Rounds
     - + 5% critical hit chance
    
#### Weapons:
   
   - Tier 3
     - Tatonka
       - ammo pickup increased from 1.73/6.05 to 2.5/7.5

     - Krinkov
       - ammo pickup increased from 1.22/4.25 to 2.5/7.5

     - Jackal
       - ammo pickup increased from 1.22/4.25 to 2.5/7.5

     - MP40
       - ammo pickup increased from 1.08/3.78 to 2.5/7.5

     - Swedish K
       - ammo pickup increased from 1.08/3.78 to 2.5/7.5

     - CR 805B
       - ammo pickup increased from 1.22/4.25 to 2.5/7.5

     - Akimbo Tatonka
       - ammo pickup increased from 1.73/6.05 to 2.5/7.5

     - Akimbo Krinkov
       - ammo pickup increased from 1.62/5.67 to 2.5/7.5

     - Akimbo Jackal
       - ammo pickup increased from 1.62/5.67 to 2.5/7.5

     - Akimbo MP40
       - ammo pickup increased from 1.08/3.78 to 2.5/7.5

     - Akimbo Swedish K
       - ammo pickup increased from 1.08/3.78 to 2.5/7.5

     - Akimbo CR 805B
       - ammo pickup increased from 1.62/5.67 to 2.5/7.5
   
   - Tier 2
     - Kobus
       - ammo pickup changed from 6.08/11.14 to 5/11.25

     - Para
       - ammo pickup changed from 6.08/11.14 to 5/11.25

     - SpecOps
       - ammo pickup decreased from 6.48/11.88 to 5/11.25

     - Heather
       - ammo pickup decreased from 6.48/11.88 to 5/11.25

     - Kross Vertex
       - ammo pickup changed from 6.08/11.14 to 5/11.25

     - Jacket's Piece
       - ammo pickup decreased from 6.48/11.88 to 5/11.25

     - Mark 10
       - ammo pickup decreased from 6.48	11.88 to 5/11.25

     - Typewriter
       - ammo pickup changed from 6.08/11.14 to 5/11.25

     - Akimbo Kobus
       - ammo pickup increased from 2.7/9.45 to 5/11.25

     - Akimbo Para
       - ammo pickup increased from 2.7/9.45 to 5/11.25

     - Akimbo SpecOps
       - ammo pickup increased from 2.7/9.45 to 5/11.25

     - Akimbo Heather
       - ammo pickup increased from 2.59/9.07 to 5/11.25

     - Akimbo Kross Vertex
       - ammo pickup increased from 2.43/8.51 to 5/11.25

     - Akimbo Jacket's Piece
       - ammo pickup increased from 2.59/9.07 to 5/11.25

     - Akimbo Mark 10
       - ammo pickup increased from 2.16/7.56 to 5/11.25

     - Akimbo Typewriter
       - ammo pickup increased from 2.7/9.45 to 5/11.25
   
   - Tier 1
     - Micro Uzi
       - ammo pickup increased from 9.07/16.63 to 7.5/22.5

     - Uzi
       - ammo pickup increased from 8.1/14.85 to 7.5/22.5

     - Patchett
       - ammo pickup increased from 8.91/16.34 to 7.5/22.5

     - Blaster
       - ammo pickup increased from 8.91/16.34 to 7.5/22.5

     - CMP
       - ammo pickup increased from 8.51/15.59 to 7.5/22.5

     - Cobra
       - ammo pickup increased from 8.91/16.34 to 7.5/22.5

     - Compact-5
       - ammo pickup increased from 8.51/15.59 to 7.5/22.5

     - Signature
       - ammo pickup increased from 2.7/9.45 to 7.5/22.5

     - Akimbo Micro Uzi
       - ammo pickup increased from 3.46/12.1 to 7.5/22.5

     - Akimbo Uzi
       - ammo pickup increased from 3.24/11.34 to 7.5/22.5

     - Akimbo Patchett
       - ammo pickup increased from 3.24/11.34 to 7.5/22.5

     - Akimbo Blaster
       - ammo pickup increased from 3.24/11.34 to 7.5/22.5

     - Akimbo CMP
       - ammo pickup increased from 3.24/11.34 to 7.5/22.5

     - Akimbo Cobra
       - ammo pickup increased from 3.24/11.34 to 7.5/22.5

     - Akimbo Compact-5
       - ammo pickup increased from 3.24/11.34 to 7.5/22.5

     - Akimbo Signature
       - ammo pickup increased from 3.24/11.34 to 7.5/22.5

### Pistols:
   Tier 4: 180
   
   Tier 3: 120
   
   Tier 2: 65
   
   Tier 1: 35
   
#### Ammo:
   
   - FMJ Rounds
     - +4 accuracy
     - pierces enemies
   - Hollow Point Rounds
     - + 5% critical hit chance
    
#### Weapons:

   - Tier 4
     - Peacemaker
       - ammo pickup changed from 0.73/2.55 to 1.5/3.0
       - total ammo decreased from 54 to 36
       - rate of fire increased from 240 to 361
       - damage increased from 180 to 230
       - stability decreased from 12 to 0
       - default ammunition is now AP rounds(can pierce walls, enemies, and shields)

     - Matever
       - ammo pickup changed from 0.73/2.55 to 1.5/3.0
       - total ammo decreased from 54 to 48
       - default ammunition is now AP rounds(can pierce walls, enemies, and shields)

     - Castigo
       - ammo pickup changed from 0.73/2.55 to 1.5/3.0
       - total ammo decreased from 54 to 48
       - default ammunition is now AP rounds(can pierce walls, enemies, and shields)

     - Bronco
       - ammo pickup changed from 0.73/2.55 to 1.5/3.0
       - total ammo decreased from 54 to 48
       - default ammunition is now AP rounds(can pierce walls, enemies, and shields)

     - Deagle
       - ammo pickup increased from 0.68/2.36 to 1.5/3.0
       - total ammo decreased from 50 to 30
       - damage increased from 120 to 176
       - accuracy decreased from 76 to 68
       - stability decreased from 28 to 0
       - default ammunition is now AP rounds(can pierce walls, enemies, and shields)

     - Akimbo Matever
       - ammo pickup decreased from 0.81/2.84 to 1.5/3.0
       - total ammo decreased from 60 to 48
       - default ammunition is now AP rounds(can pierce walls, enemies, and shields)

     - Akimbo Castigo
       - ammo pickup decreased from 0.97/3.4 to 1.5/3.0
       - total ammo decreased from 72 to 48
       - default ammunition is now AP rounds(can pierce walls, enemies, and shields)

     - Akimbo Bronco
       - ammo pickup decreased from 0.97/3.4 to 1.5/3.0
       - total ammo decreased from 72 to 48
       - default ammunition is now AP rounds(can pierce walls, enemies, and shields)

     - Akimbo Deagle
       - ammo pickup increased from 0.81/2.84 to 1.5/3.0
       - total ammo decreased from 60 to 40
       - damage increased from 120 to 176
       - accuracy decreased from 76 to 68
       - stability decreased from 28 to 0
       - default ammunition is now AP rounds(can pierce walls, enemies, and shields)
   
   - Tier 3
     - White Streak
       - ammo pickup increased from 0.81/2.84 to 2.5/5.0

     - Baby Deagle
       - ammo pickup increased from 0.81/2.84 to 2.5/5.0

     - Parabellum
       - ammo pickup changed from 0.76/2.65 to 2.5/5.0
       - rate of fire decreased from 361 to 240
       - damage decreased from 180 to 121

     - 5/7
       - ammo pickup increased from 0.3/0.91 to 2.5/5.0

     - Akimbo White Streak
       - ammo pickup increased from 0.97/3.4 to 2.5/5.0
       - total ammo decreased from 72 to 60

     - Akimbo Baby Deagle
       - ammo pickup increased from 0.97/3.4 to 2.5/5.0
       - total ammo decreased from 72 to 60

     - Akimbo Parabellum
       - ammo pickup decreased from 0.86/3.02 to 2.5/5.0
       - total ammo decreased from 64 to 56
       - rate of fire decreased from 361 to 240
       - damage decreased from 180 to 121
   
   - Tier 2
     - Chimano Custom
       - ammo pickup increased from 1.3/4.54 to 4.0/9.0
       - total ammo decreased from 96 to 80

     - Crosskill
       - ammo pickup increased from 1.22/4.25 to 4.0/9.0
       - total ammo decreased from 90 to 80

     - Broomstick
       - ammo pickup increased from 1.22/4.25 to 4.0/9.0
       - total ammo decreased from 90 to 80

     - Interceptor
       - ammo pickup increased from 1.23/4.29 to 4.0/9.0
       - total ammo decreased from 91 to 78

     - Signature .40
       - ammo pickup increased from 1.13/3.97 to 4.0/9.0
       - total ammo decreased from 84 to 72

     - LEO
       - ammo pickup increased from 1.28/4.5 to 4.0/9.0
       - total ammo decreased from 95 to 76

     - Contractor
       - ammo pickup increased from 1.22/4.25 to 4.0/9.0
       - total ammo decreased from 90 to 75
       
     - Igor Automatik
       - ammo pickup increased from 1.08/3.78 to 4.0/9.0

     - Akimbo Chimano Custom
       - ammo pickup increased from 1.3/4.54 to 4.0/9.0
       - total ammo decreased from 96 to 80

     - Akimbo Crosskill
       - ammo pickup increased from 1.35/4.73 to 4.0/9.0
       - total ammo decreased from 100 to 80

     - Akimbo Broomstick
       - ammo pickup increased from 1.35/4.73 to 4.0/9.0
       - total ammo decreased from 100 to 80

     - Akimbo Interceptor
       - ammo pickup increased from 1.4/4.91 to 4.0/9.0
       - total ammo decreased from 104 to 78

     - Akimbo Signature .40
       - ammo pickup increased from 1.3/4.54 to 4.0/9.0
       - total ammo decreased from 96 to 72

     - Akimbo LEO
       - ammo pickup increased from 1.54/5.39 to 4.0/9.0
       - total ammo decreased from 114 to 76

     - Akimbo Contractor
       - ammo pickup increased from 1.22/4.25 to 4.0/9.0
       - total ammo decreased from 90 to 75
       
     - Akimbo Igor Automatik
       - ammo pickup increased from 1.62/5.67 to 4.0/9.0
       - total ammo decreased from 120 to 80
   
   - Tier 1
     - Chimano 88
       - ammo pickup increased from 2.07/7.24 to 8.0/13.0
       - total ammo decreased from 153 to 119

     - Chimano Compact
       - ammo pickup increased from 2.03/7.09 to 8.0/13.0
       - total ammo decreased from 150 to 120

     - Bernetti
       - ammo pickup increased from 2.08/7.28 to 8.0/13.0
       - total ammo decreased from 154 to 112

     - Stryk
       - ammo pickup increased from 2.16/7.56 to 8.0/13.0
       - total ammo decreased from 160 to 120

     - Gruber Kurz
       - ammo pickup increased from 2.08/7.28 to 8.0/13.0
       - total ammo decreased from 154 to 112

     - M13
       - ammo pickup increased from 2.11/7.37 to 8.0/13.0
       - total ammo decreased from 156 to 117
       
     - Bernetti Auto
       - ammo pickup increased from 2.63/9.21 to 8.0/13.0
       - total ammo decreased from 195 to 120
       
     - Czech 92
       - ammo pickup increased from 2.03/7.09 to 8.0/13.0
       - total ammo decreased from 180 to 120

     - Crosskill Guard
       - ammo pickup increased from 2.07/7.24 to 8.0/13.0
       - total ammo decreased from 153 to 119

     - Akimbo Chimano 88
       - ammo pickup increased from 2.3/8.03 to 8.0/13.0
       - total ammo decreased from 179 to 119

     - Akimbo Chimano Compact
       - ammo pickup increased from 2.16/7.56 to 8.0/13.0
       - total ammo decreased from 160 to 120
       - rate of fire decreased from 667 to 480

     - Akimbo Bernetti
       - ammo pickup increased from 2.27/7.94 to 8.0/13.0
       - total ammo decreased from 168 to 112
       - rate of fire decreased from 667 to 480

     - Akimbo Stryk
       - ammo pickup increased from 2.7/9.45 to 8.0/13.0
       - total ammo decreased from 200 to 120

     - Akimbo Gruber Kurz
       - ammo pickup increased from 2.27/7.94 to 8.0/13.0
       - total ammo decreased from 168 to 112

     - Akimbo M13
       - ammo pickup increased from 2.11/7.37 to 8.0/13.0
       - total ammo decreased from 156 to 117

     - Akimbo Crosskill Guard
       - ammo pickup increased from 2.3/8.03 to 8.0/13.0
       - total ammo decreased from 170 to 119
       - rate of fire decreased from 667 to 480
       
     - Akimbo Bernetti Auto
       - ammo pickup increased from 2.84/9.92 to 8.0/13.0
       - total ammo decreased from 210 to 120
       
     - Akimbo Czech 92
       - ammo pickup increased from 2.43/8.51 to 8.0/13.0
       - total ammo decreased from 180 to 120

### Specials:

   - GL40
     - ammo pickup changed from 0.07/0.88 to 0/0.9
   
   - Piglet
     - ammo pickup changed from 0.07/0.88 to 0/0.9
   
   - China Puff
     - ammo pickup changed from 0.07/0.88 to 0/0.9
     - removed damage falloff from explosion
     - reduced radius of explosion
   
   - Compact 40
     - ammo pickup changed from 0.07/0.88 to 0/0.9
   
   - Arbiter
     - ammo pickup changed from 0.07/0.88 to 0/1.1
     - increased damage from 480 to 540
     - increased damage falloff on explosion
     
   - HRL-7
     - ammo pickup increased from 0/0 to 0/0.51
     - damage reduced from 12500 to 6200
     - increased radius of explosion
     
   - Commando 101
     - ammo pickup increased from 0/0 to 0/0.53
     - damage reduced from 4200 to 2100
     - increased radius of explosion
     
   - Flamethrower Mk.1
     - ammo pickup increased from 6.08/18.23 to 27/40.5
     - dot trigger chance increased from 75% to 100%
     - dot damage decreased from 300 to 18
     - dot length increased from 1.6 to 3.6
     - consecutive hits increases rate of damage ticks (time between damage ticks is decreased from 0.5 seconds to a minimum of 0.1 seconds)
     
   - Flamethrower Mk.1
     - ammo pickup increased from 6.08/18.23 to 20.25/33.75
     - dot trigger chance increased from 75% to 100%
     - dot damage decreased from 300 to 18
     - dot length increased from 1.6 to 3.6
     - consecutive hits increases rate of damage ticks (time between damage ticks is decreased from 0.5 seconds to a minimum of 0.1 seconds)
        
   - Vulcan Minigun
     - ammo pickup decreased from 10.13/35.44 to 0.68/2.03
     - total ammo increased from 750 to 990
     - magazine capacity increased from 750 to 1300
     - concealment decreased from 5 to 1
     - damage increased from 25 to 57
     - stability decreased from 24 to 0
     - maximum kick value increased
     - accuracy increased from 32 to 56
     - can now shoot through enemies and shields
     
   - XL 5.56 Microgun
     - ammo pickup changed from 10.13/35.44 to 15/30
     - total ammo increased from 750 to 990
     - magazine capacity increased from 750 to 1300
     - concealment increased from 5 to 7
     - damage decreased from 35 to 32
     - accuracy decreased from 32 to 28
     - stability increased from 24 to 44
     - changed from primary to secondary weapon
     
### Sentry Guns:
   - Sentry guns can now be picked up when destroyed. 
   - When a sentry gun is destroyed it loses all ammo stored in it.
   - Sentry guns have had their ammo stores increased from 100 to 600.
   - Base damage of sentry guns increased from 30 to 40
   - Sentry guns set to fire AP rounds now consume 4 rounds per shot instead of 1.
   
