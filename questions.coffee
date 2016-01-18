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
      time = if 3 <= h < 12 then 'morning'
      else if 12 <= h < 17 then 'afternoon'
      else 'evening'
      "Good #{time}, #{@ln}!  Which kind of game sounds best right now?  Don't think too hard, just choose the answer that seems the most appealing."),
    a "Velar",       # c in cap, g in gap, h in hot, ng in sing, w in wet
      q "Excellent!  Choose one of the following.  Don't overthink it!",
        a "a cog"
        a "a hag"
        a "a wick"
        a "a wing"
        a "a wookie"
        a "a hacking gang"
        a "a wigging keg king"
    a "Venatic",     # hunting-related
      q "Excellent!  Choose one of the following.  Don't overthink it!",
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
      q "Excellent!  Choose one of the following.  Don't overthink it!",
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
      q "Excellent!  Choose one of the following.  Don't overthink it!",
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
      q "Excellent!  Choose one of the following.  Don't overthink it!",
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
    a "Volucrine"    # bird-related
    a "Viparious"    # life-producing or life-renewing
    a "Voluptuous"   # luxurious, sensuality-related, curvacious/attractive
    a "Vallecular"   # groovy
    a "Vecordious"   # mad, crazy, senseless
    a "Veriloquent"  # truthful
    a "Vertiginous"  # spinning, dizzy, vertigo-inducing, or changing/unstable
    a "Viaggiatory"  # travelling
  )
]
