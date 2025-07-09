extends Node
var deck_values = {
	"ace_of_spades": 
		{
		"number": 1,
		"face": "ace",
		"colour": "black",
		"suit": "spades",
		},
	"two_of_spades": 
		{
		"number": 2,
		"face": "two",
		"colour": "black",
		"suit": "spades",
		},
	"three_of_spades": 
		{
		"number": 3,
		"face": "three",
		"colour": "black",
		"suit": "spades",
		},
	"four_of_spades": 
		{
		"number": 4,
		"face": "four",
		"colour": "black",
		"suit": "spades",
		},
	"five_of_spades": 
		{
		"number": 5,
		"face": "five",
		"colour": "black",
		"suit": "spades",
		},
	"six_of_spades": 
		{
		"number": 6,
		"face": "six",
		"colour": "black",
		"suit": "spades",
		},
	"seven_of_spades": 
		{
		"number": 7,
		"face": "seven",
		"colour": "black",
		"suit": "spades",
		},
	"eight_of_spades": 
		{
		"number": 8,
		"face": "eight",
		"colour": "black",
		"suit": "spades",
		},
	"nine_of_spades": 
		{
		"number": 9,
		"face": "nine",
		"colour": "black",
		"suit": "spades",
		},
	"ten_of_spades": 
		{
		"number": 10,
		"face": "ten",
		"colour": "black",
		"suit": "spades",
		},
	"jack_of_spades": 
		{
		"number": 10,
		"face": "jack",
		"colour": "black",
		"suit": "spades",
		},
	"queen_of_spades": 
		{
		"number": 10,
		"face": "queen",
		"colour": "black",
		"suit": "spades",
		},
	"king_of_spades": 
		{
		"number": 10,
		"face": "king",
		"colour": "black",
		"suit": "spades",
		},
	"ace_of_clubs": 
		{
		"number": 1,
		"face": "ace",
		"colour": "black",
		"suit": "clubs",
		},
	"two_of_clubs": 
		{
		"number": 2,
		"face": "two",
		"colour": "black",
		"suit": "clubs",
		},
	"three_of_clubs": 
		{
		"number": 3,
		"face": "three",
		"colour": "black",
		"suit": "clubs",
		},
	"four_of_clubs": 
		{
		"number": 4,
		"face": "four",
		"colour": "black",
		"suit": "clubs",
		},
	"five_of_clubs": 
		{
		"number": 5,
		"face": "five",
		"colour": "black",
		"suit": "clubs",
		},
	"six_of_clubs": 
		{
		"number": 6,
		"face": "six",
		"colour": "black",
		"suit": "clubs",
		},
	"seven_of_clubs": 
		{
		"number": 7,
		"face": "seven",
		"colour": "black",
		"suit": "clubs"},
	"eight_of_clubs": 
		{
		"number": 8,
		"face": "eight",
		"colour": "black",
		"suit": "clubs",
		},
	"nine_of_clubs": 
		{
		"number": 9,
		"face": "nine",
		"colour": "black",
		"suit": "clubs",
		},
	"ten_of_clubs": 
		{
		"number": 10,
		"face": "ten",
		"colour": "black",
		"suit": "clubs",
		},
	"jack_of_clubs": 
		{
		"number": 10,
		"face": "jack",
		"colour": "black",
		"suit": "clubs",
		},
	"queen_of_clubs": 
		{
		"number": 10,
		"face": "queen",
		"colour": "black",
		"suit": "clubs",
		},
	"king_of_clubs": 
		{
		"number": 10,
		"face": "king",
		"colour": "black",
		"suit": "clubs",
		},
	"ace_of_hearts": 
		{
		"number": 1,
		"face": "ace",
		"colour": "red",
		"suit": "hearts",
		},
	"two_of_hearts": 
		{
		"number": 2,
		"face": "two",
		"colour": "red",
		"suit": "hearts",
		},
	"three_of_hearts": 
		{
		"number": 3,
		"face": "three",
		"colour": "red",
		"suit": "hearts",
		},
	"four_of_hearts": 
		{
		"number": 4,
		"face": "four",
		"colour": "red",
		"suit": "hearts",
		},
	"five_of_hearts": 
		{
		"number": 5,
		"face": "five",
		"colour": "red",
		"suit": "hearts",
		},
	"six_of_hearts": 
		{
		"number": 6,
		"face": "six",
		"colour": "red",
		"suit": "hearts",
		},
	"seven_of_hearts": 
		{
		"number": 7,
		"face": "seven",
		"colour": "red",
		"suit": "hearts",
		},
	"eight_of_hearts": 
		{
		"number": 8,
		"face": "eight",
		"colour": "red",
		"suit": "hearts",
		},
	"nine_of_hearts": 
		{
		"number": 9,
		"face": "nine",
		"colour": "red",
		"suit": "hearts",
		},
	"ten_of_hearts": 
		{
		"number": 10,
		"face": "ten",
		"colour": "red",
		"suit": "hearts",
		},
	"jack_of_hearts": 
		{
		"number": 10,
		"face": "jack",
		"colour": "red",
		"suit": "hearts",
		},
	"queen_of_hearts": 
		{
		"number": 10,
		"face": "queen",
		"colour": "red",
		"suit": "hearts",
		},
	"king_of_hearts": 
		{
		"number": 10,
		"face": "king",
		"colour": "red",
		"suit": "hearts",
		},
	"ace_of_diamonds": 
		{
		"number": 1,
		"face": "ace",
		"colour": "red",
		"suit": "diamonds",
		},
	"two_of_diamonds": 
		{
		"number": 2,
		"face": "two",
		"colour": "red",
		"suit": "diamonds",
		},
	"three_of_diamonds": 
		{
		"number": 3,
		"face": "three",
		"colour": "red",
		"suit": "diamonds",
		},
	"four_of_diamonds": 
		{
		"number": 4,
		"face": "four",
		"colour": "red",
		"suit": "diamonds",
		},
	"five_of_diamonds": 
		{
		"number": 5,
		"face": "five",
		"colour": "red",
		"suit": "diamonds",
		},
	"six_of_diamonds": 
		{
		"number": 6,
		"face": "six",
		"colour": "red",
		"suit": "diamonds",
		},
	"seven_of_diamonds": 
		{
		"number": 7,
		"face": "seven",
		"colour": "red",
		"suit": "diamonds",
		},
	"eight_of_diamonds": 
		{
		"number": 8,
		"face": "eight",
		"colour": "red",
		"suit": "diamonds",
		},
	"nine_of_diamonds": 
		{
		"number": 9,
		"face": "nine",
		"colour": "red",
		"suit": "diamonds",
		},
	"ten_of_diamonds": 
		{
		"number": 10,
		"face": "ten",
		"colour": "red",
		"suit": "diamonds",
		},
	"jack_of_diamonds": 
		{
		"number": 10,
		"face": "jack",
		"colour": "red",
		"suit": "diamonds",
		},
	"queen_of_diamonds": 
		{
		"number": 10,
		"face": "queen",
		"colour": "red",
		"suit": "diamonds",
		},
	"king_of_diamonds": 
		{
		"number": 10,
		"face": "king",
		"colour": "red",
		"suit": "diamonds",
		},
	}
#table > card > data	
var lookups = {
	#Explore prompts only go up to ten, if you draw a face draw from the face table
	"explore": {
		"ace": {
			"red": {
				"prompt": "a cultist",
				"modifiers" : {
					"hearts": "unarmed",
					"diamonds": "armed"
					}
				},
			"black": {
				"prompt": "a large treasure",
				"modifiers": {
					"spades": "untouched",
					"clubs": "raided"
				}
			}
		},
		"two": {
			"red": {
				"prompt": "an animal to hunt",
				"modifiers" : {
					"hearts": "easy prey",
					"diamonds": "dangerous"
					}
				},
			"black": {
				"prompt": "a massive door",
				"modifiers": {
					"spades": "intact/locked",
					"clubs": "ruined"
				}
			}
		},
		"three": {
			"red": {
				"prompt": "your calling",
				"modifiers" : {
					"hearts": "friendly",
					"diamonds": "not friendly"
					}
				},
			"black": {
				"prompt": "a staircase",
				"modifiers": {
					"spades": "intact",
					"clubs": "ruined"
				}
			}
		},
		"four": {
			"red": {
				"prompt": "tasked to locate something (draw from item table)",
				"modifiers" : {
					"hearts": "trustworthy",
					"diamonds": "untrustworthy"
					}
				},
			"black": {
				"prompt": "ancient ruins",
				"modifiers": {
					"spades": "somewhat intact",
					"clubs": "mostly rubble"
				}
			}
		},
		"five": {
			"red": {
				"prompt": "a dead body (draw from item table)",
				"modifiers" : {
					"hearts": "seems safe",
					"diamonds": "something's off..."
					}
				},
			"black": {
				"prompt": "a strange mechanism",
				"modifiers": {
					"spades": "functional",
					"clubs": "damaged"
				}
			}
		},
		"six": {
			"red": {
				"prompt": "another adventurer",
				"modifiers" : {
					"hearts": "friendly",
					"diamonds": "unfriendly"
					}
				},
			"black": {
				"prompt": "a trap",
				"modifiers": {
					"spades": "you avoid it",
					"clubs": "you are caught in it"
				}
			}
		},
		"seven": {
			"red": {
				"prompt": "a gargoyle",
				"modifiers" : {
					"hearts": "taken to a new area",
					"diamonds": "taken to the rafters"
					}
				},
			"black": {
				"prompt": "a cave",
				"modifiers": {
					"spades": "easily navigable",
					"clubs": "difficult and deep"
				}
			}
		},
		"eight": {
			"red": {
				"prompt": "a small settlement",
				"modifiers" : {
					"hearts": "draw from item table",
					"diamonds": "draw from event table"
					}
				},
			"black": {
				"prompt": "a sea",
				"modifiers": {
					"spades": "calm",
					"clubs": "stormy"
				}
			}
		},
		"nine": {
			"red": {
				"prompt": "a massive skeleton",
				"modifiers" : {
					"hearts": "safe",
					"diamonds": "bandit camp"
					}
				},
			"black": {
				"prompt": "your calling",
				"modifiers": {
					"spades": "something you were looking for",
					"clubs": "a clue"
				}
			}
		},
		"ten": {
			"red": {
				# The following result is not the same as the official table because I don't think non-humans should automatically be aggressive
				"prompt": "a camp of non-human people (draw from an oracle to see if they notice you)",
				"modifiers" : {
					"hearts": "they are peaceful",
					"diamonds": "they are aggressive"
					}
				},
			"black": {
				"prompt": "a city",
				"modifiers": {
					"spades": "thriving",
					"clubs": "abandoned"
				}
			}
		}
	},
	"explore faces": {
		"jack": "you find an item (draw from the item table)",
		"queen": "a medium rook",
		"king": "a massive rook"
	},
	"items": {
		"ace": "a treasure",
		"two": "supplies",
		"three": "knowledge",
		"four": "herbs or ingredients (heal one wound)",
		"five": "a key",
		"six": "a vehicle",
		"seven": "a tame animal",
		"eight": "a potion",
		"nine": "a machine part",
		"ten": "a map",
		"jack": "a weapon",
		"queen": "an artifact or idol",
		"king": "two treasures"
	},
	"events": {
		"ace": "you meet a friend",
		"two": "a storm",
		"three": "something falls from the Ceiling",
		"four": "you fall",
		"five": "a loud noise",
		"six": "a strange feeling",
		"seven": "the sun sets or rises",
		"eight": "a fire starts",
		"nine": "something breaks",
		"ten": "your way is blocked",
		"jack": "you are surrounded",
		"queen": "hunger sets in",
		"king": "create or repair something"
	},
	"opponents": {
		"intention": {
			"spades": "kill you",
			"clubs": "steal from you",
			"hearts": "flee from you",
			"diamonds": "hide something from you"
		},
		"weapon type": {
			"ace": "ranged",
			"two": "ranged",
			"three": "ranged",
			"four": "ranged",
			"five": "ranged",
			"six": "ranged",
			"seven": "melee",
			"eight": "melee",
			"nine": "melee",
			"ten": "melee",
			"jack": "melee",
			"queen": "melee",
			"king": "melee"
		},
		"magic type": {
			"spades": "none",
			"clubs": "electric",
			"hearts": "rumble",
			"diamonds": "ice"
		},
		"body type": {
			"ace": "attack",
			"two": "attack",
			"three": "attack",
			"four": "attack",
			"five": "attack",
			"six": "attack",
			"seven": "defend",
			"eight": "defend",
			"nine": "defend",
			"ten": "defend",
			"jack": "defend",
			"queen": "defend",
			"king": "defend"
		},
		"reward": {
			"spades": "helm",
			"clubs": "arm",
			"hearts": "rookling",
			"diamonds": "weapon"
		},
		"combat modifier": {
			"red": +1,
			"black": -1
		}
	},
	"attack types": {
		"spades": "unarmed",
		"clubs": "weapon",
		"hearts": "magic",
		"diamonds": "creative"
	},
	"oracle": {
		"red": {
			"ace": "no, and it's worse than expected",
			"two": "no, and it's worse than expected",
			"three": "no, and it's worse than expected",
			"four": "no, and it's worse than expected",
			"five": "no",
			"six": "no",
			"seven": "no",
			"eight": "no",
			"nine": "no",
			"ten": "no, but there is an upside",
			"jack": "no, but there is an upside",
			"queen": "no, but there is an upside",
			"king": "no, but there is an upside"
		},
		"black": {
			"ace": "yes, with a complication",
			"two": "yes, with a complication",
			"three": "yes, with a complication",
			"four": "yes, with a complication",
			"five": "yes",
			"six": "yes",
			"seven": "yesno",
			"eight": "yes",
			"nine": "yes",
			"ten": "yes, with a bonus",
			"jack": "yes, with a bonus",
			"queen": "yes, with a bonus",
			"king": "yes, with a bonus"
		}
	},
	"two player oracle": {
		"red": "bad outcome - negative - no - player 1 - leader",
		"black": "good outcome - positive - yes - player 2 - non-leader"
	},
	"complications": {
		"red": {
			"ace": "someone only one of you knows",
			"two": "a disagreement or argument between PCs",
			"three": "a bonding experience",
			"four": "an ambush: two human bandits attack, each player faces one and resolves the combat independently (no aiding eachother)",
			"five": "one player helps another (draw from the 2 player oracle to decide which player needs help)",
			"six": "a player loses something important (if you devise a plan to recover it draw from the default oracle to see if your plan works)",
			"seven": "you must flee",
			"eight": "a player must reveal a secret about their character (use the 2 player oracle to decide which player must do so)",
			"nine": "an item is damaged (use the 2 player oracle to decide who's item is damaged)",
			"ten": "you find a clue relating to a nemesis, or evidence they were nearby",
			"jack": "a wild rookling appears and wanders up to you both (use the magic type table to decide it's magic type)",
			"queen": "you have both been poisoned",
			"king": "add +1 to the combat score of any opponent this turn"
		},
		"black": {
			"ace": "one of you is trapped (use the 2 player oracle to deicde which player is trapped)",
			"two": "you reach a fork in the road",
			"three": "an obstacle blocks your path (it can be removed somehow)",
			"four": "a sudden weather change forces you to seek shelter (use the weather table to decide what the weather is)",
			"five": "the terrain ahead is challenging",
			"six": "your path is completely blocked (it cannot be removed)",
			"seven": "the floor gives way, dropping you into a new room (discard all exploration cards and draw a new exploration phase)",
			"eight": "your mount, helm, arm, or rookling breaks or stops functioning (use the 2 player oracle to decide which player suffers this)",
			"nine": "you spot a vantage point, but must climb to reach it (draw from the default oracle to see if you succeed. If you reach the vantage point you may draw two full sets of explore cards and choose which one to use, discarding the other)",
			"ten": "if you find an item or treasure this turn, just before it is picked up, you notice it might be rigged with a trap (use the default oracle to resolve)",
			"jack": "if you have drawn a rook this turn it becomes a massive rook, but as it approaches you it colapses and is now dead. A door opens and you may use any remaining explore cards for the turn while exploring the interior of the rook",
			"queen": "you wake up in a cell. Any explore cards played after this card must relate to your imprisonment and attempetd escape",
			"king": "the leader may draw an extra explore card and reveal it when they choose to"
		}
	},
	"storytelling": {
		"incite": {
			"ace": "protect...",
			"two": "assist...",
			"three": "destroy...",
			"four": "investigate...",
			"five": "escort...",
			"six": "rescue someone from...",
			"seven": "find or locate...",
			"eight": "escape from...",
			"nine": "smuggle...",
			"ten": "deceive...",
			"jack": "defeat...",
			"queen": "stop...",
			"king": "capture..."
		},
		"subject": {
			"ace": "rookling(s)",
			"two": "archaeological dig",
			"three": "rook fighting arena",
			"four": "a massive rook husk",
			"five": "someone experimenting with rookstones",
			"six": "a powerful artefact",
			"seven": "a castle hold manned by soldiers",
			"eight": "shady dealings",
			"nine": "meeting of cultists",
			"ten": "a strange and complicated machine",
			"jack": "a locked door to another Room",
			"queen": "a unique rookstone",
			"king": "a royal formal event"
		},
		"twist": {
			"ace": "betrayal",
			"two": "love",
			"three": "a murder",
			"four": "an explosion",
			"five": "a treasure",
			"six": "an important item",
			"seven": "dark secrets",
			"eight": "a clue to an ancient mystery",
			"nine": "a kidnapping",
			"ten": "someone reveals their true identity",
			"jack": "a rook appears, but something's wrong with it",
			"queen": "a chase",
			"king": "an injury"
		}
	},
	"NPC": {
		"name": {
			"ace": "Nelia",
			"two": "Thoroug",
			"three": "Berek",
			"four": "Fen-Reley",
			"five": "Soriq",
			"six": "Alis",
			"seven": "Dreya",
			"eight": "Yeleris",
			"nine": "Perelli",
			"ten": "Quen",
			"jack": "Taura",
			"queen": "Reneen",
			"king": "Mirriq"
		},
		"look": {
			"ace": "beautiful",
			"two": "rugged",
			"three": "scarred",
			"four": "old",
			"five": "muscled",
			"six": "delicate",
			"seven": "wild and feral",
			"eight": "posh and fancy",
			"nine": "cute and small",
			"ten": "big",
			"jack": "wiry and thin",
			"queen": "injured",
			"king": "a child"
		},
		"character": {
			"ace": "joker",
			"two": "suspicious",
			"three": "weary",
			"four": "timid and quiet",
			"five": "intimidating and domineering",
			"six": "passionate and firey",
			"seven": "arrogant and over-confident",
			"eight": "reliable and tough",
			"nine": "stoic",
			"ten": "inteligent and strategic",
			"jack": "shrewd, quiet, and brooding",
			"queen": "wise and experienced",
			"king": "desperate for adventure"
		}
	},
	# faces are drawn against the deafult faces explore table
	"ocean explore": {
		"ace": {
			"prompt": "a single castle tower juts from the water. A sealed doorway allows entry. The entry leads to a vast underwater complex (draw from the weather table)",
			"modifiers" : {
				"black": "uninhabited",
				"red": "you hear voices deep within"
			}
		},
		"two": {
			"prompt": "you encounter another adventurer in their own seagoing vessel (draw from the weather table)",
			"modifiers" : {
				"black": "friendly",
				"red": "unfriendly"
			}
		},
		"three": {
			"prompt": "you discover a shipwreck",
			"modifiers" : {
				"black": "inact (you find two items)",
				"red": "wrecked (you find one item)"
			}
		},
		"four": {
			"prompt": "huge crenelations jut from the water, a rook?",
			"modifiers" : {
				"black": "dead",
				"red": "it's traps remain active"
			}
		},
		"five": {
			"prompt": "a huge creature swims underwater beneath your vessel (draw from the weather table)",
			"modifiers" : {
				"black": "it swims past without incident",
				"red": "it strikes your vessel as it passes"
			}
		},
		"six": {
			"prompt": "an entrance to a huge cave, large enough to sail your vessel within",
			"modifiers" : {
				"black": "uninhabited (draw from the item table)",
				"red": "inhabited (non-humans)"
			}
		},
		"seven": {
			"prompt": "captured by pirates (all explore cards played after this one must detail your capture and escape)",
			"modifiers" : {
				"black": "there is a treasure to find",
				"red": "there is a weapon to find"
			}
		},
		"eight": {
			"prompt": "underwater ruins (you can anchor and dive in good weather)",
			"modifiers" : {
				"black": "there is a treasure to find",
				"red": "there are rook parts to find"
			}
		},
		"nine": {
			"prompt": "a small island (draw a single explore phase for your time on the island, draw from the weather table)",
			"modifiers" : {
				"black": "uninhabited",
				"red": "inhabited"
			}
		},
		"ten": {
			"prompt": "a coastline/shore (if you disembark here return to standard explore pahses, draw from the weather table)",
			"modifiers" : {
				"black": "unguarded",
				"red": "guarded"
			}
		}
	},
	# some of these results are not the standard
	"weather": {
		"ace": "sunshine (add 1 to your explore or combat scores)",
		"two": "windy (move more quickly on water)",
		"three": "fog (visibility is greatly reduced, it is earily quiet)",
		"four": "heavy rain",
		"five": "calm (no winds, wind-powered vessels cannot move)",
		"six": "crosswinds (you are blown off course)",
		"seven": "snow",
		"eight": "waterspout",
		"nine": "storm",
		"ten": "lightning",
		"jack": "ice (mechanics freeze, non-wind powered vessels cannot move)",
		"queen": "great wave",
		"king": "maelstrom (your vessel is destroyed and you wake up on land in an unknwon place9)"
	},
	"city building": {
		"ace": "palace grounds",
		"two": "lapidarist",
		"three": "rooksmith",
		"four": "cartographer",
		"five": "weapon smith",
		"six": "arms dealer",
		"seven": "rookling creche",
		"eight": "gourmet district",
		"nine": "house for sale",
		"ten": "abandoned (draw again)",
		"jack": "abandoned (draw again)",
		"queen": "abandoned (draw again)",
		"king": "abandoned (draw again)"
	},
	"hunters guild quests": {
		"location": {
			"ace": "a deep dark forest",
			"two": "a deep dark forest",
			"three": "an island in the middle of a lake",
			"four": "high in rocky mountains",
			"five": "high in rocky mountains",
			"six": "a rook graveyard",
			"seven": "deep in a strange cave",
			"eight": "deep in a strange cave",
			"nine": "misty, gloomy swamplands",
			"ten": "a doorway to another room",
			"jack": "a doorway to another room",
			"queen": "the abandoned ruins of an ancient people",
			"king": "a huge staricase leading up into the clouds"
		},
		"distance (exploration phases)": {
			"spades": 2,
			"clubs": 3,
			"hearts": 4,
			"diamonds": 5
		},
		"twist": {
			"ace": "the rook is picking on travellers, attacking their mounts and eating them",
			"two": "the rook is flying somehow, ciricling a tower and dropping rocks on any who approach",
			"three": "a medium rook hides within the husk of a massive rook, sending out hordes of rooklings to steal resources",
			"four": "a massive spire-like rook is terrorising local towns and villages",
			"five": "a wheeled rook is churning up the farmland of a local village",
			"six": "a rook has made it's nest in a village, forcing all the villagers out",
			"seven": "a rook has planted itself in a river, blocking the river's flow",
			"eight": "a rook underground is causing earthquakes with it's rumble magic",
			"nine": "at the top of a volcano a massive rook threatens to make the volcano erupt",
			"ten": "a mischevious spectral rookling haunts a town",
			"jack": "a town was built on the back of dormant rook, but the rook is now on the move",
			"queen": "people have reported voices coming from within a massive dormant rook",
			"king": "a whole village is dreaming of the same rook, but none of them have seen it... yet"
		},
		"reward": {
			"spades": "two treasures",
			"clubs": "two treasures",
			"hearts": "three treasures",
			"diamonds": "two treasures",
		}
	},
	"rooklings": {
		"ace": "a spidrey rookling",
		"two": "a ball-shaped one that rolls",
		"three": "a telescoping one that extends and retracts",
		"four": "one with a large glowing eye",
		"five": "a speedy wheeled one",
		"six": "a friendly loving one",
		"seven": "one with powerful spring-like legs",
		"eight": "it walks on four legs",
		"nine": "one that splits into three parts",
		"ten": "a mean-looking one bristling with blades",
		"jack": "one that magically floats in the air beside you",
		"queen": "one with a mysterious door in it's front",
		"king": "one that emits garbled speech from time to time"
	}
}
# double values for 2 player game
var combat_scores = {
	"person": 1,
	"medium rook": 3,
	"massive rook": 5
}

var deck = []

func _ready():
	shuffle()

func shuffle():
	deck.clear()
	for card in deck_values:
		deck.append(card)
	# I don't understand why, but shuffle works like a real deck shuffle; if you only do one riffle it's not very well randomised!
	deck.shuffle()
	deck.shuffle()
	deck.shuffle()
	deck.shuffle()
	deck.shuffle()
	deck.shuffle()
	deck.shuffle()
	print("deck shuffled")
