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
  6. [Pistols](https://github.com/TattlingJam4231/weapon-rebalances/tree/master#pistols)
  7. [Specials](https://github.com/TattlingJam4231/weapon-rebalances/tree/master#specials)
  
  note: all ammo pickup values are with walk-in closet
### Shotguns:
   
#### Ammo:
   tier 5: used by 155 damage shotguns
   
   tier 4: used by 90 damage shotguns
   
   tier 3: used by 55 damage shotguns
   
   tier 2: used by 42 damage shotguns
   
   tier 1: used by 18 damage shotguns
   
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
     - damage of dot increased with consecutive hits 
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
   
   - Raven
     - ammo pickup changed from 0.57/1.98 to 0.5/2
   
   - Reinfeld
     - ammo pickup changed from 0.57/1.98 to 0.5/2
     
   - Locomotive
     - ammo pickup changed from 0.57/1.98 to 0.5/2
     
   - Predator
     - ammo pickup changed from 4.46/6.68 to 4.3/6.7
   
   - M1014
     - ammo pickup changed from 4.32/6.48 to 4.3/6.7
   
   - Street Sweeper
     - ammo pickup decreased from 4.86/7.29 to 4.3/6.7
     - damage increased from 42 to 55
     
   - Izhma
     - ammo pickup changed from 4.73/7.09 to 4.7/7.3
   
   - Steakout
     - ammo pickup changed from 4.86/7.29 to 4.7/7.3
   
   - Akimbo Goliath
     - ammo pickup changed from 4.86/7.29 to 4.7/7.3
   
   - Goliath
     - ammo pickup increased from 3.65/5.47 to 4.7/7.3
   
   - Brothers Grimm
     - ammo pickup increased from 6.48/9.72 to 7/10.5
   
   - Grimm
     - ammo pickup changed from 7.02/10.53 to 7/10.5
     
### Assault Rifles:

#### Skills:
   Graze now affects assault rifles fired in single shot mode. Graze now reads as follows in game:
   - Basic
     - Snipers that hit their target deal 20% of the damage dealt in a 1m radius around the bullet trajectory. 
     
       When fired in single shot mode, Assault Rifles that hit their target deal 20% of the damage dealt in a 2.75m radius around the            bullet impact.
       
   - Aced 
     - If a bullet would headshot-kill someone, the graze skill will deal 100% of the damage dealt instead of 20%."
   
   note: snipers have a cylindrical aoe around the path of the bullet, assault rifles have a spherical aoe around the impact point of the bullet
   

#### Ammo:
   tier 4: used by 160 damage assault rifles
   
   tier 3: used by 99 damage assault rifles
   
   tier 2: used by 58 damage assault rifles
   
   tier 1: used by 44 damage assault rifles
   
   - FMJ
     - tier 4
       - -55 damage
       - +8 accuracy
       - pierces enemies
     - tier 3
       - -30 damage
       - +8 accuracy
       - pierces enemies
     - tier 2
       - -12 damage
       - +8 accuracy
       - pierces enemies
     - tier 1
       - -14 damage
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
   - Armor Piercing Rounds
     - tier 4
       - pierces shields
       - -50% min ammo pickup
       - -50% max ammo pickup
     - tier 3
       - pierces shields
       - -50% min ammo pickup
       - -50% max ammo pickup
     - tier 2
       - pierces shields
       - -50% min ammo pickup
       - -50% max ammo pickup
     - tier 1
       - pierces shields
       - -50% min ammo pickup
       - -50% max ammo pickup
       
#### Weapons:

   - Cavity
     - ammo pickup increased from 0.45/1.34 to 2.5/5
   
   - M308
     - ammo pickup increased from 0.47/1.42 to 2.5/5
   
   - Galant
     - ammo pickup increased from 0.49/1.46 to 2.5/5
     
   - Little Friend
     - ammo pickup increased from 0.27/0.81 to 2.5/5
     - under barrel grenade launcher is now in the assault rifle catagory (benefits from aggressive reload basic)
     
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

   - RPK
     - ammo pickup decreased from 4.05/14.18 to 2.5/10
   
   - Brenner
     - ammo pickup decreased from 4.05/14.18 to 2.5/10
   
   - KSP
     - ammo pickup decreased from 16.2/29.7 to 10/15
   
   - KSP 58
     - ammo pickup decreased from 16.2/29.7 to 10/15
     - stability increased from 28 to 36
     
   - Buzzsaw
     - ammo pickup decreased from 18.23/33.41 to 10/15

### Snipers:

   - Thanatos
     - ammo pickup decreased from 0.07/0.88 to 0/0.53
     - total ammo decreased from 15 to 5
     - damage increased from 3500 to 8500

   - Nagant
     - ammo pickup changed from 0.95/1.35 to 0.94/1.35
   
   - Desertfox
     - ammo pickup changed from 0.95/1.35 to 0.94/1.35
   
   - R93
     - ammo pickup changed from 0.95/1.35 to 0.94/1.35
   
   - Platypus
     - ammo pickup changed from 0.95/1.35 to 0.94/1.35
   
   - Rattlesnake
     - ammo pickup decreased from 2.7/4.05 to 1.35/2.7
   
   - Repeater
     - ammo pickup decreased from 3.04/4.56 to 1.35/2.7

### SMGs:

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

   - Peacemaker
     - ammo pickup changed from 0.73/2.55 to 0.68/2.7
   
   - Matever
     - ammo pickup changed from 0.73/2.55 to 0.68/2.7
   
   - Castigo
     - ammo pickup changed from 0.73/2.55 to 0.68/2.7
   
   - Bronco
     - ammo pickup changed from 0.73/2.55 to 0.68/2.7
   
   - Parabellum
     - ammo pickup changed from 0.76/2.65 to 0.68/2.7
   
   - Akimbo Matever
     - ammo pickup decreased from 0.81/2.84 to 0.68/2.7
   
   - Akimbo Castigo
     - ammo pickup decreased from 0.97/3.4 to 0.68/2.7
   
   - Akimbo Bronco
     - ammo pickup decreased from 0.97/3.4 to 0.68/2.7
   
   - Akimbo Parabellum
     - ammo pickup decreased from 0.86/3.02 to 0.68/2.7
   
   - White Streak
     - ammo pickup increased from 0.81/2.84 to 1.35/4.05
   
   - Deagle
     - ammo pickup increased from 0.68/2.36 to 1.35/4.05
   
   - Baby Deagle
     - ammo pickup increased from 0.81/2.84 to 1.35/4.05
   
   - 5/7
     - ammo pickup increased from 0.3/0.91 to 1.35/4.05
   
   - Akimbo White Streak
     - ammo pickup increased from 0.97/3.4 to 1.35/4.05
   
   - Akimbo Deagle
     - ammo pickup increased from 0.81/2.84 to 1.35/4.05
   
   - Akimbo Baby Deagle
     - ammo pickup increased from 0.97/3.4 to 1.35/4.05
   
   - Chimano Custom
     - ammo pickup increased from 1.3/4.54 to 2.7/6.75
   
   - Crosskill
     - ammo pickup increased from 1.22/4.25 to 2.7/6.75
   
   - Broomstick
     - ammo pickup increased from 1.22/4.25 to 2.7/6.75
   
   - Interceptor
     - ammo pickup increased from 1.23/4.29 to 2.7/6.75
   
   - Signature .40
     - ammo pickup increased from 1.13/3.97 to 2.7/6.75
   
   - LEO
     - ammo pickup increased from 1.28/4.5 to 2.7/6.75
   
   - Contractor
     - ammo pickup increased from 1.22/4.25 to 2.7/6.75
   
   - Akimbo Chimano Custom
     - ammo pickup increased from 1.3/4.54 to 2.7/6.75
   
   - Akimbo Crosskill
     - ammo pickup increased from 1.35/4.73 to 2.7/6.75
   
   - Akimbo Broomstick
     - ammo pickup increased from 1.35/4.73 to 2.7/6.75
   
   - Akimbo Interceptor
     - ammo pickup increased from 1.4/4.91 to 2.7/6.75
   
   - Akimbo Signature .40
     - ammo pickup increased from 1.3/4.54 to 2.7/6.75
   
   - Akimbo LEO
     - ammo pickup increased from 1.54/5.39 to 2.7/6.75
   
   - Akimbo Contractor
     - ammo pickup increased from 1.22/4.25 to 2.7/6.75
   
   - Chimano 88
     - ammo pickup increased from 2.07/7.24 to 4.05/8.1
   
   - Chimano Compact
     - ammo pickup increased from 2.03/7.09 to 4.05/8.1
   
   - Bernetti
     - ammo pickup increased from 2.08/7.28 to 4.05/8.1
   
   - Stryk
     - ammo pickup increased from 2.16/7.56 to 4.05/8.1
   
   - Gruber Kurz
     - ammo pickup increased from 2.08/7.28 to 4.05/8.1
   
   - M13
     - ammo pickup increased from 2.11/7.37 to 4.05/8.1
   
   - Crosskill Guard
     - ammo pickup increased from 2.07/7.24 to 4.05/8.1
   
   - Akimbo Chimano 88
     - ammo pickup increased from 2.3/8.03 to 4.05/8.1
   
   - Akimbo Chimano Compact
     - ammo pickup increased from 2.16/7.56 to 4.05/8.1
   
   - Akimbo Bernetti
     - ammo pickup increased from 2.27/7.94 to 4.05/8.1
   
   - Akimbo Stryk
     - ammo pickup increased from 2.7/9.45 to 4.05/8.1
   
   - Akimbo Gruber Kurz
     - ammo pickup increased from 2.27/7.94 to 4.05/8.1
   
   - Akimbo M13
     - ammo pickup increased from 2.11/7.37 to 4.05/8.1
   
   - Akimbo Crosskill Guard
     - ammo pickup increased from 2.3/8.03 to 4.05/8.1

### Specials:

   - GL40
     - ammo pickup changed from 0.07/0.88 to 0/0.9
   
   - Piglet
     - ammo pickup changed from 0.07/0.88 to 0/0.9
   
   - China Puff
     - ammo pickup changed from 0.07/0.88 to 0/0.9
   
   - Compact 40
     - ammo pickup changed from 0.07/0.88 to 0/0.9
   
   - Arbiter
     - ammo pickup changed from 0.07/0.88 to 0/1.1
        
   - Vulcan Minigun
     - ammo pickup decreased from 10.13/35.44 to 0.68/2.03
     - magazine capacity increased from 750 to 984
     - concealment decreased from 5 to 1
     - damage increased from 25 to 80
     - stability decreased from 24 to 0
     - maximum kick value increased
     - accuracy increased from 32 to 56
     - can now shoot through enemies and shields
     
   - XL 5.56 Microgun
     - ammo pickup changed from 10.13/35.44 to 15/30
     - magazine capacity increased from 750 to 984
     - concealment increased from 5 to 7
     - damage decreased from 35 to 32
     - accuracy decreased from 32 to 28
     - stability increased from 24 to 44
     - changed from primary to secondary weapon
