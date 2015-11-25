# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Emotion.destroy_all
Drink.destroy_all

emotions = Emotion.create([
	{
		name: 'Happy'
	},
	{
		name: 'Sleepy'
	},
	{
		name: 'Fancy'
	},
	{
		name: 'Adventurous'
	},
	{
		name: 'Romantic'
	},
	{
		name: 'Zany'
	},
	{
		name: 'Relaxed'
	},
	{
		name: 'Pensive'
	}
	])

drinks_happy = Emotion.find_by_name("Happy").drinks.create([
	{
		name: 'Mint Julep',
		image: '/images/happy-mint-julep.png', 
		ingredients: [".25 oz Raw sugar syrup", "8 Mint leaves", "2 oz Bourbon", "Bitters", "1 Mint sprig"],
		instructions: "In a Julep cup or rocks glass, lightly muddle the mint and syrup. Add the bourbon and pack tightly with crushed ice. Stir until the cup is frosted on the outside. Top with more crushed ice to form an ice dome and garnish with a few drops of bitters, if desired, and a mint sprig."
	},
	{
		name: 'Mojito' ,
		image: '/images/happy-mojito.png',
		ingredients: ["6 Mint leaves", ".75 oz Simple syrup", ".75 oz Fresh lime juice", "1.5 oz White rum", "1.5 oz Club soda", "1 Mint sprig"],
		instructions: "In a shaker, lightly muddle the mint. Add the simple syrup, lime juice and rum, and fill with ice. Shake well and pour (unstrained) into a highball glass. Top with the club soda and garnish with a mint sprig."
	},
	{
		name: 'Gimlet',
		image: '/images/happy-gimlet.png',
		ingredients: ["2.5 oz Gin", ".5 oz Lime juice", ".5 oz Simple syrup", "1 Lime wheel"],
 		instructions: "Add all the ingredients to a shaker and fill with ice. Shake, and strain into a chilled cocktail glass or an Old Fashioned glass filled with fresh ice. Garnish with a lime wheel. (You can substitute 1 oz lime cordial, such as Rose's Lime Juice, for both the lime juice and simple syrup)." 
	}
	])

drinks_sleepy = Emotion.find_by_name("Sleepy").drinks.create([
	{
		name: 'White Russian',
		image: '/images/sleepy-white-russian.png',
		ingredients: ["2 oz Vodka", "1 oz Kahlua", "1 oz Heavy cream"],
 		instructions: "Add the vodka and Kahlúa to an Old Fashioned glass filled with ice. Top with a large splash of heavy cream and stir."
	},
	{
		name: 'Hot Toddy',
		image: '/images/sleepy-hot-toddy.png',
		ingredients: ["Boiling water", "4 Cloves", "1 Lemon Twist", "2 tsp Brown sugar", ".25 oz Lemon juice", "2 oz Bourbon, rye whiskey, Irish whiskey, or Scotch"],
 		instructions: "Fill a mug with boiling water and let stand for a minute or two to warm. Meanwhile, stick the cloves into the lemon twist and set aside. Empty the mug and fill about halfway with fresh boiling water. Add the sugar and stir to dissolve. Add the prepared lemon twist and stir. Add the lemon juice and whiskey, and stir again."
	},
	{
		name: 'Eggnog',
		image: '/images/sleepy-eggnog.png',
		ingredients: ["6 Eggs separated", ".75 cop Sugar, divided", "32 oz Whole milk", "16 oz Heavy cream", "8 oz Bourbon", "4 oz Spiced rum"],
 		instructions: "In a large bowl, beat together the egg yolks and half a cup of sugar until they turn light in color. Stir in the milk, heavy cream, bourbon and rum. In a separate bowl, beat the egg whites with the remaining quarter-cup of sugar until they form soft peaks. Fold about a third of the egg whites into the yolk mixture. Serve in punch or tea cups topped with freshly grated nutmeg, folding in more of the egg whites as desired."
	}
	])


drinks_fancy = Emotion.find_by_name("Fancy").drinks.create([
	{
		name: 'Manhattan',
		image: '/images/fancy-manhattan.png',
		ingredients: ["2 oz Rye Whiskey", "1 oz Sweet vermouth", "5 drops Angostura", "Bitters"],
		instructions: "Add all the ingredients to a mixing glass and fill with ice. Stir well and strain into a chilled cocktail glass. Garnish with a cherry."
	},
	{
		name: 'Vesper',
		image: '/images/fancy-vesper.png',
		ingredients: ["3 oz Plymouth Gin", "1 oz Absolut Vodka", ".5 oz Lillet Blanc", "1 Lemon peel"],
		instructions: "Add all the ingredients to a mixing glass and fill with ice. Stir, and strain into a chilled cocktail glass. Twist a slice of lemon peel over the drink, rub along the rim of the glass and drop it in."
	},
	{
		name: 'Tom Collins',
		image: '/images/fancy-tom-collins.png',
		ingredients: [".75 oz Fresh lemon juice", ".75 oz Simple syrup", "1.5 oz Gin", "Club soda", "Lemon wheel", "Cherry"],
 		instructions: "Add the lemon juice, simple syrup and gin to a shaker and fill with ice. Shake well and strain into a highball or Collins glass filled with fresh ice. Top with club soda and garnish with a lemon wheel and a cherry."
	}
	])

drinks_adventurous = Emotion.find_by_name("Adventurous").drinks.create([
	{
		name: 'Corpse Reviver No. 2',
		image: '/images/adventurous-corpse-reviver.png',
		ingredients: ["Absinthe", ".75 oz Plymouth Gin", ".75 oz Cointreau", ".75oz Lillet Blanc", ".75 oz Lemon juice"],
		instructions: "Rinse a chilled coupe or Martini glass with absinthe and set aside. Add the remaining ingredients to a shaker and fill with ice. Shake, and strain into the prepared glass."
	},
	{
		name: 'Blood & Sand',
		image: '/images/adventurous-blood-sand.png',
		ingredients: [".75 oz Scotch Whisky", ".75 oz Sweet vermouth", ".75 oz Cherry Heering", ".75 oz Orange Juice"],
 		instructions: "Add all the ingredients to a shaker and fill with ice. Shake, and strain into a chilled coupe or cocktail glass. Garnish with an orange peel."
	},
	{
		name: 'Pisco Sour',
		image: '/images/adventurous-pisco-sour.png',
		ingredients: ["2 oz Pisco Barsol Quebranta", "1 oz Fresh lime juice", ".5 oz Simple syrup", "1 Fresh egg white", "Angostura bitters"],
 		instructions: "Add all the ingredients to a shaker and fill with ice. Shake vigorously and strain into a highball glass or Champagne flute. Garnish with a lime wheel and 3 gentle drops of Angostura Bitters, which will settle in the foam of the cocktail. Using a straw, swirl the bitters into a simple design."
	}
	])

drinks_romantic = Emotion.find_by_name("Romantic").drinks.create([
	{
		name: 'Mimosa',
		image: '/images/romantic-mimosa.png',
		ingredients: ["2 oz Orange Juice", "Sparkling wine"],
		instructions: "Add the orange juice to a Champagne flute. Fill with sparkling wine."
	},
	{
		name: 'French 75',
		image: '/images/romantic-french75.png',
		ingredients: [".5 oz Lemon juice", ".5 oz Simple syrup", "1 oz Gin", "3 oz Champagne"],
		instructions: "Add all the ingredients except the Champagne to a shaker and fill with ice. Shake well and strain into a Champagne flute. Top with the Champagne and garnish with a lemon twist."
	},
	{
		name: 'Vieux Carre',
		image: '/images/romantic-vieux-carre.png',
		ingredients: [".75 oz Angel's Envy Rye whiskey", ".75 oz Cognac", ".75 oz Martini sweet Vermouth", "1 tsp Benedictine", "2 dashes Peychaud's Bitters", "2 dashes Angostura bitters"],
 		instructions: "Add all the ingredients to a rocks glass. Fill with ice and stir."
	}
	])

drinks_zany = Emotion.find_by_name("Zany").drinks.create([
	{
		name: 'Bloody Mary',
		image: '/images/zany-bloody-mary.png',
		ingredients: [ "1 Lemon wedge", "1 Lime wedge" ,"2 oz Premium Vodka", "4 oz Tomato juice", "2 dashes Tabasco Sauce", "2 tsp Prepared horseradish", "2 tsp Worcesthershire sauce", "1 pinch celery salt", "1 pinch Ground black pepper", "1 pinch Smoked Paprika", "1 Celery stick"],
 		instructions: "Pour some celery salt onto a small plate. Rub the juicy side of the lemon or lime wedge along the lip of a pint glass. Roll the outer edge of the glass in celery salt until fully coated. Fill with ice and set aside. Squeeze the lemon and lime wedges into a shaker and drop them in. Add the remaining ingredients and fill with ice. Shake gently and strain into the prepared glass. Garnish with a celery stalk and a lime wedge."
	},
	{
		name: 'Pina Colada',
		image: '/images/zany-pina-colada.png',
		ingredients: ["1.5 oz Light or gold rum", "2 oz Coconut milk", "2 oz Fresh pineapple juice","Cherry","Pineapple wedge"],
 		instructions: "To make the Piña Colada add all the ingredients to a shaker and fill with ice. Shake, and strain into a Hurricane glass filled with fresh ice. (You may also blend all the ingredients with crushed ice instead.) Garnish with a cherry and a pineapple wedge."
	},
	{
		name: 'Margarita',
		image: '/images/zany-margarita.png',
		ingredients: [".75 oz Freshly squeezed lime juice", "1 oz Orange liqueur", "1.5 oz Blanco tequila", "Kosher salt", "1 Lime wheel"],
 		instructions: "Add the ingredients to a shaker and fill with ice. Shake well and strain into a chilled cocktail glass or rocks glass filled with fresh ice. Garnish with a lime wheel. For a slightly sweeter drink, add a dash of agave syrup (one part water, two parts agave nectar) before shaking.)."
	}
	])

drinks_relaxed = Emotion.find_by_name("Relaxed").drinks.create([
	{
		name: 'Michelada',
		image: '/images/relaxed-michelada.png',
		ingredients: ["Salt", "Cayenne pepper", ".5 0z Lime juice", "2 drops Tabasco Sauce", "2 dashes Worcestershire sauce" ,"1 pinch Ground black pepper", "1 pinch Ground black pepper", "1 pinch Celery salt", "Mexican lager beer", "1 Lime wedge"],
		instructions: "Rub the lime wedge along half the rim of the pint glass and dip into a mix of equal parts salt and Cayenne pepper. Add the remaining ingredients except the beer. Fill with beer and garnish with a fresh lime wedge."
	},
	{
		name: 'Moscow Mule',
		image: '/images/relaxed-moscow-mule.png',
		ingredients: ["2 oz Vodka", "3 oz Ginger beer", "Juice from half a lime", "1 Lime wheel"],
 		instructions: "Add all the ingredients to a Moscow Mule mug or highball glass filled with ice and garnish with a lime wheel."
	},
	{
		name: 'Whiskey Smash',
		image: '/images/relaxed-whiskey-smash.png',
		ingredients: ["half Lemon", "4 Mint leaves", ".75 oz Simple syrup", "2 oz Bourbon"],
		instructions: "In a shaker, muddle the lemon. Add the remaining ingredients and fill with ice. Shake, and double-strain into a rocks glass filled with crushed ice or one large ice chunk. Slap a mint sprig between your hands and use as garnish. Serve with a straw."
	}
	])

drinks_pensive = Emotion.find_by_name("Pensive").drinks.create([
	{
		name: 'Old Fashioned',
		image: '/images/pensive-old-fashioned.png',
		ingredients: ["1 Brown sugar cube", ".5 tsp White sugar", "3 dashes Angostura bitters", "1 dash Orange bitters", ".25 oz Cold water", "2 oz Whiskey", "Lemon", "Orange Twists"],
 		instructions: "Add all the ingredients to a mixing glass. Muddle to break down the sugar and stir briefly. Fill with ice, stir again and strain into a rocks glass filled with fresh ice. Twist slices of lemon and orange peel over the drink and drop them in."
	},
	{
		name: 'Negroni',
		image: '/images/pensive-negroni.png',
		ingredients: ["1 oz Campari", "1 oz Gin", "1 oz Sweet vermouth", "1 Orange half-wheel"],
		instructions: "Add all the ingredients to an Old Fashioned glass and fill with ice. Stir until cold and garnish with an orange half-wheel."
	},
	{
		name: 'Dark & Stormy',
		image: '/images/pensive-dark-stormy.png',
		ingredients: ["1.5 oz Rum", "Ginger Beer"],
 		instructions: "Fill a tall glass with ice and add the rum. Top with ginger beer. Garnish with a lime wedge."
	}
	])

  # create_table "drinks", force: :cascade do |t|
  #   t.integer  "emotion_id"
  #   t.string   "name"
  #   t.string   "image"
  #   t.text     "ingredients",  default: [],              array: true
  #   t.text     "instructions"
  #   t.datetime "created_at",                null: false
  #   t.datetime "updated_at",                null: false
  # end

# ootds_jamie = User.find_by_name("Jamie Evangelista").ootds.create([
# 	{ootd_img: File.new("public/images/ootds/jam1.png"), trend: "modern", caption: "print all over me"},
# 	{ootd_img: File.new("public/images/ootds/jam2.png"), trend: "boho", caption: "barcelona boho style"},
# 	{ootd_img: File.new("public/images/ootds/jam3.png"), trend: "mod", caption: "off in nature"},
# 	{ootd_img: File.new("public/images/ootds/jam4.png"), trend: "mod", caption: "spring pastels"}
# 	])