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
    a "Vallecular"   # groovy
    a "Vecordious"   # mad, crazy, senseless
    a "Velar"        # c in cap, g in gap, h in hot, ng in sing, w in wet
    a "Venatic"      # hunting-related
    a "Veriloquent"  # truthful
    a "Vertiginous"  # spinning, dizzy, vertigo-inducing, or changing/unstable
    a "Vetitive"     # grammar term for wishing something won't happen
    a "Vexatious"    # annoying, teasing, troublesome
    a "Viaggiatory"  # travelling
    a "Vigesimal"    # base 20
    a "Viparious"    # life-producing or life-renewing
    a "Volucrine"    # bird-related
    a "Voluptuous"   # luxurious, sensuality-related, curvacious/attractive
  )
]
