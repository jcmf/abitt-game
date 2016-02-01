{qq, q, a} = require './dsl.coffee'

module.exports = qq [
  q "Welcome to this game!  Before we can get started, you'll need to answer a few questions.",
    a "Okay."
    a "Sounds good."
    a "I consent to this."
    a "Hold on, I have a question!",
      q "What is your question?",
        a "How should I indicate which answer I wish to choose?",
          q "Choose an answer by clicking or tapping it, or by typing the appropriate letter.",
            a "Thanks!"
            a "Wait, there's a problem.",
              q "What seems to be the problem?",
                a "Clicking doesn't work.",
                  q "Are you using a mouse?",
                    a "Yes.",
                      q "Is the mouse you are using connected to the device that is displaying these words?",
                        a "Yes.",
                          q "Try clicking harder.",
                            a "Wow, that totally worked, thanks!"
                        a "No.",
                          q "Is the mouse you are using hot-swappable?",
                            a "Yes.",
                              q "Try plugging the mouse into whatever thing you're reading these words on.",
                                a "Wow, that totally worked, thanks!"
                            a "No.",
                              q "Then I'm afraid you're out of luck.",
                                a "Oh well."
                            a "What?",
                              q "Does the mouse feel hot to the touch?",
                                a "Yes.",
                                  q "Try immersing it in ice water.",
                                    a "Done!",
                                      q "Better?",
                                        a "Much!",
                                          q "Excellent.",
                                            a "Thanks!"
                                a "No.",
                                  q "Try rubbing it vigorously.",
                                    a "It's working! It's working!"
                                    a "It's not working.",
                                      q "You're not rubbing vigorously enough, are you?",
                                        a "Am too."
                                a "Maybe?",
                                  q "If you had to guess, would you say that the mouse's temperature is more or less than 293 degrees Kelvin?",
                                    a "Yes.",
                                      q "Then it should be within normal operating parameters.",
                                        a "Thank goodness!"
                                    a "No.",
                                      q "A wise decision!",
                                        a "Huh?"
                    a "No.",
                      q "Try using a mouse.",
                        a "Sounds good, thanks!"
                        a "Maybe later.",
                          q "Let me know when you're ready to continue.",
                            a "I am ready now!"
                a "Tapping doesn't work.",
                  q "Is the screen you are tapping touch-sensitive?",
                    a "Yes.",
                      q "Are you sure?",
                        a "No."
                    a "No.",
                      q "Try clicking or typing instead.",
                        a "Well, okay."
                        a "But you said....",
                          q "Let's move on, shall we?",
                            a "Understood."
                            a "I hear and obey."
                            a "Your wish is my command."
                    a "I'm not sure.",
                      q "Look closely.  Does it look... glossy?",
                        a "Yes.",
                          q "Have you tried using one of those polarizing filters?",
                            a "Yes.",
                              q "How was it?",
                                a "Pretty good I guess?",
                                  q "Would you recommend it to a friend?",
                                    a "Yes."
                                    a "No."
                                a "It was so great, I could hardly believe it.",
                                  q "Can I borrow it later?",
                                    a "Yes.",
                                      q "Thanks!",
                                        a "You're welcome!"
                                    a "No.",
                                      q "Please?",
                                        a "Forget it."
                                a "Terrible.",
                                  q "I'm sorry.",
                                    a "Don't say that.  It's not your fault.",
                                      q "Isn't it?",
                                        a "Yes, it isn't."
                                        a "No, it isn't."
                            a "No.",
                              q "You should totally try one.",
                                a "Great idea!"
                        a "No.",
                          q "Have you considered polishing it?",
                            a "Yes.",
                              q "But you didn't actually do it?",
                                a "No."
                            a "No.",
                              q "Well, are you going to do it now?",
                                a "Nah, I'm good."
                            a "With what?",
                              q "Screen polish, I suppose?",
                                a "That sounds reasonable."
                    a "Screen?  What screen?",
                      q "You don't have a screen?",
                        a "I used to, but I lost it.",
                          q "That is very sad!",
                            a "Yes."
                        a "Why would I have a screen?",
                          q "Oh, uh... no reason....",
                            a "Okay."
                        a "Oh wait, there it is, never mind."
                        a "I mean I do, but it isn't, like, here.",
                          q "Do you want to go get it?",
                            a "Nah, I'm good."
                a "Typing doesn't work.",
                  q "Is the device you are using equipped with a physical keyboard?",
                    a "Yes."
                    a "No.",
                      q "Then I suggest you go with tapping instead.",
                        a "Well, okay."
                        a "Awww, but I wanted to type things!",
                          q "Too bad.",
                            a "You're no fun."
        a "What if I choose the wrong answer?",
          q "There are no wrong answers.",
            a "That's very reassuring, thanks!"
            a "No, I mean, what if I meant to choose one answer but choose a different one by mistake?",
              q "Does the Backspace key work?",
                a "Wow, yes, it totally does."
                a "It, uh, doesn't seem to, no.",
                  q "Well, it's supposed to.",
                    a "Well, it doesn't.",
                      q "I'm sorry.",
                        a "It's okay, I'll manage somehow."
                a "What are you even talking about?  I don't have a backspace key!",
                  q "Then try using your browser's Back button.",
                    a "But I don't wanna.",
                      q "Then don't.",
                        a "Okay, I won't!",
                          q "Good!",
                            a "Yep!"
                    a "Fine, if you insist."
        a "Who wrote this game?",
          q "Are you sure you want to know?",
            a "Yes.",
              q "You're not trying to trick me, are you?",
                a "Of course not."
                a "Why yes, actually, I am trying to trick you."
            a "No.",
              q "Then I won't tell you.",
                a "Phew!"

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
