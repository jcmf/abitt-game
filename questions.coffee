{qq, q, a} = require './dsl'

exports.qq = qq [
  q("Welcome to this game!  Before we can get started, you'll need to answer a few questions.",
    a("Okay."),
    a("Sure."),
    a("Great."),
    a("Sounds good."),
  ),
  q("What's your name?",
    a("Emily",
      q("And your last name?",
        a("Boegheim", -> @name = 'Ms. Boegheim')
        a("Carroll", -> @name = 'Ms. Carroll')
        a("Ryan", -> @name = 'Ms. Ryan')
        a("Short", -> @name = 'Ms. Short')
      ),
    ),
    a("Jenni",
      q("And your last name?",
        a("Earl", -> @name = 'Ms. Earl')
        a("Jorgensen", -> @name = 'Ms. Jorgensen')
        a("Maddox", -> @name = 'Ms. Maddox')
        a("Polodna", -> @name = 'Ms. Polodna')
        a("Vedenoja", -> @name = 'Ms. Vedenoja')
      ),
    ),
    a("Ryan",
      q("And your last name?",
        a("Burrus", -> @name = 'Mr. Burrus')
        a("Freebern", -> @name = 'Mr. Freebern')
        a("Holman", -> @name = 'Mr. Holman')
        a("Kinsman", -> @name = 'Mr. Kinsman')
        a("Weisenberger", -> @name = 'Mr. Weisenberger')
        a("Stevens", -> @name = 'Mr. Stevens')
        a("Veeder", -> @name = 'Mr. Veeder')
      ),
    ),
  ),

  q((->
      hh = new Date().getHours()
      time = if 3 <= h < 12 then 'morning'
      else if 12 <= h < 17 then 'afternoon'
      else 'evening'
      "Welcome, #{@name}!  What sort of game are you in the mood for this #{time}?"),
    a "Vallecular"
    a "Vecordious"
    a "Velar"
    a "Venatic"
    a "Ventose"
    a "Veriloquent"
    a "Vertiginous"
    a "Vetitive"
    a "Vexatious"
    a "Viaggiatory"
    a "Vigesimal"
    a "Viparious"
    a "Vitilitigate"
    a "Volucrine"
    a "Voluptuous"
  )
]
