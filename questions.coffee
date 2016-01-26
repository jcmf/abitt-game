{qq, q, a} = require './dsl.coffee'

module.exports = qq [
  q("Welcome to this game!  Before we can get started, you'll need to answer a few questions.",
    a("Okay."),
    a("Sure."),
    a("Great."),
    a("Sounds good."),
  ),

  q("What's your name?",
    a("Emily",
      q((-> @fn = 'Emily'; "And your last name?"),
        a("Boegheim", -> @ln = 'Ms. Boegheim')
        a("Carroll", -> @ln = 'Ms. Carroll')
        a("Ryan", -> @ln = 'Ms. Ryan')
        a("Short", -> @ln = 'Ms. Short')
      ),
    ),
    a("Jenni",
      q((-> @fn = 'Jenni'; "And your last name?"),
        a("Earl", -> @ln = 'Ms. Earl')
        a("Jorgensen", -> @ln = 'Ms. Jorgensen')
        a("Maddox", -> @ln = 'Ms. Maddox')
        a("Polodna", -> @ln = 'Ms. Polodna')
        a("Vedenoja", -> @ln = 'Ms. Vedenoja')
      ),
    ),
    a("Ryan",
      q((-> @fn = 'Ryan'; "And your last name?"),
        a("Burrus", -> @ln = 'Mr. Burrus')
        a("Freebern", -> @ln = 'Mr. Freebern')
        a("Holman", -> @ln = 'Mr. Holman')
        a("Kinsman", -> @ln = 'Mr. Kinsman')
        a("Weisenberger", -> @ln = 'Mr. Weisenberger')
        a("Stevens", -> @ln = 'Mr. Stevens')
        a("Veeder", -> @ln = 'Mr. Veeder')
      ),
    ),
  ),

  q((->
      hh = new Date().getHours()
      time = if 3 <= hh < 12 then 'morning'
      else if 12 <= hh < 17 then 'afternoon'
      else 'evening'
      "Good #{time}, #{@ln}!  Which kind of game sounds best right now?  Don't think too hard, just choose the answer that seems the most appealing."),

    a "Velar",       # c in cap, g in gap, h in hot, ng in sing, w in wet
      q "Excellent!  Now choose one of the following.  Don't overthink it!",
        a "a cog"
        a "a hag"
        a "a wick"
        a "a wing"
        a "a wookie"
        a "a hacking gang"
        a "a wigging keg king"

    a "Venatic",     # hunting-related
      q "Excellent!  Now choose one of the following.  Don't overthink it!",
        a "Antelope"
        a "Bison"
        a "Duck"
        a "Elephant"
        a "Falcon"
        a "Fox"
        a "Grouse"
        a "Hare"
        a "Hound"
        a "Mink"
        a "Pheasant"
        a "Stag"
        a "Tiger"
        a "Whale"
        a "Wolf"

    a "Vetitive",    # grammar term for wishing something won't happen
      q "Excellent!  Now choose one of the following.  Don't overthink it!",
        a "anger"
        a "crash"
        a "gas"
        a "gun"
        a "keys"
        a "oven"
        a "sleet"
        a "smell"
        a "toast"
        a "wallet"

    a "Vexatious",   # annoying, teasing, troublesome
      q "Excellent!  Now choose one of the following.  Don't overthink it!",
        a "advertising"
        a "beeping"
        a "children"
        a "cough"
        a "drunk"
        a "Facebook"
        a "gum"
        a "hair"
        a "in-laws"
        a "neighbors"
        a "orange"
        a "password"
        a "politics"
        a "slow"
        a "smell"
        a "sunburn"
        a "traffic"

    a "Vigesimal",   # base 20
      q "Excellent!  Now choose one of the following.  Don't overthink it!",
        a "ABC"
        a "aluminum"
        a "Andorra"
        a "calcium"
        a "Egypt"
        a "Jackson"
        a "jiggit"
        a "Pareto"
        a "place"
        a "questions"
        a "score"
        a "vision"

    a "Volucrine",   # bird-related
      q "Excellent!  Now choose one of the following.  Don't overthink it!",
        a "asity"
        a "boobook"
        a "chachalaca"
        a "drongo"
        a "emerald"
        a "fulvetta"
        a "gallinule"
        a "hoopoe"
        a "inca"
        a "jacamar"
        a "knot"
        a "megapode"
        a "noddy"
        a "potoo"
        a "rhea"
        a "saltator"
        a "tapaculo"
        a "vanga"
        a "wigeon"
        a "xenops"

    a "Viparious",   # life-producing or life-renewing
      q "Excellent!  Now choose one of the following.  Don't overthink it!",
        a "qi"
        a "egg"
        a "mana"
        a "lipid"
        a "coffee"
        a "energon"
        a "platypus"
        a "vibration"

    a "Voluptuous",  # luxurious, sensuality-related, curvacious/attractive
      q "Excellent!  Now choose one of the following.  Don't overthink it!",
        a "silk"
        a "satin"
        a "alpaca"
        a "spandex"
        a "cashmere"
        a "lambswool"
        a "chinchilla"
        a "microfleece"

    a "Vallecular",  # groovy
      q "Excellent!  Now choose one of the following.  Don't overthink it!",
        a "Army of Darkness"
        a "circlip"
        a "Enceladus"
        a "Jon St. John"
        a "JSR 241"
        a "Mike Myers"
        a "Protectobots"
        a "stopped"
        a "tongue"
        a "vinyl"
        a "Zune"

    a "Vecordious",  # mad, crazy, senseless
      q "Excellent!  Now choose one of the following.  Don't overthink it!",
        a "burrito.nyc.us.gov"
        a "flight 93"
        a "grassy knoll"
        a "hypergraphia"
        a "layer mask"
        a "P3X-797"
        a "pusher robot"
        a "SCP-1733"
        a "time cube"
        a "topkek"

    a "Veriloquent", # truthful
      q "Excellent!  Now choose one of the following.  Don't overthink it!",
        a "Cassandra"
        a "Colbert"
        a "Dawkins"
        a "Galahad"
        a "Lennon"
        a "Limbaugh"
        a "Plato"
        a "Rand"
        a "Snowden"
        a "Sojourner"

    a "Vertiginous", # spinning, dizzy, vertigo-inducing, or changing/unstable
      q "Excellent!  Now choose one of the following.  Don't overthink it!",
        a "Cabrio Bahn"
        a "Caminito del Rey"
        a "Coit Tower"
        a "Gaztelugatxe"
        a "Hakone"
        a "Half Dome"
        a "High Roller"
        a "Horseshoe Bend"
        a "Huangshan"
        a "London Eye"
        a "Meteora"
        a "Outlaw Run"
        a "Royal Gorge"
        a "Trolltunga"
        a "Verrückt"

    a "Viaggiatory", # travelling
      q "Excellent!  Now choose one of the following.  Don't overthink it!",
        a "Cleveland"
        a "Cusco"
        a "Elqui"
        a "Goreme"
        a "Harare"
        a "Havana"
        a "Jeddah"
        a "Marrakech"
        a "McMurdo"
        a "Orlando"
        a "Petra"
        a "Qaqortoq"
        a "Rome"
        a "Siem Reap"
        a "Tallinn"
        a "Ubud"
        a "Zermatt"

  )

  q 'THE END'
]
