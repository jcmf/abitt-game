{qq, q, a} = require './dsl.coffee'
SKIP = ->

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

  q "What's your name?",
    a "Emily",
      q "And your last name?",
        a "Boegheim", -> [@title, @fn, @ln] = ['Ms.', 'Emily', 'Boegheim']
        a "Carroll", -> [@title, @fn, @ln] = ['Ms.', 'Emily', 'Carroll']
        a "Ryan", -> [@title, @fn, @ln] = ['Ms.', 'Emily', 'Ryan']
        a "Short", -> [@title, @fn, @ln] = ['Ms.', 'Emily', 'Short']
    a "Jenni",
      q "And your last name?",
        a "Earl", -> [@title, @fn, @ln] = ['Ms.', 'Jenni', 'Earl']
        a "Jorgensen", -> [@title, @fn, @ln] = ['Ms.', 'Jenni', 'Jorgensen']
        a "Maddox", -> [@title, @fn, @ln] = ['Ms.', 'Jenni', 'Maddox']
        a "Polodna", -> [@title, @fn, @ln] = ['Ms.', 'Jenni', 'Polodna']
        a "Vedenoja", -> [@title, @fn, @ln] = ['Ms.', 'Jenni', 'Vedenoja']
    a "Ryan",
      q "And your last name?",
        a "Burrus", -> [@title, @fn, @ln] = ['Mr.', 'Ryan', 'Burrus']
        a "Freebern", -> [@title, @fn, @ln] = ['Mr.', 'Ryan', 'Freebern']
        a "Holman", -> [@title, @fn, @ln] = ['Mr.', 'Ryan', 'Holman']
        a "Kinsman", -> [@title, @fn, @ln] = ['Mr.', 'Ryan', 'Kinsman']
        a "Weisenberger", -> [@title, @fn, @ln] = ['Mr.', 'Ryan', 'Weisenberger']
        a "Stevens", -> [@title, @fn, @ln] = ['Mr.', 'Ryan', 'Stevens']
        a "Veeder", -> [@title, @fn, @ln] = ['Mr.', 'Ryan', 'Veeder']

  SKIP q "Which kind of game sounds best right now?  Don't think too hard, just choose the answer that seems the most appealing.",
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

  q "You're driving along the highway, next to some railroad tracks, and its getting a bit foggy but nothing that you can't see through, and all of a sudden your car's engine stalls.  You see other cars coming to a stop as well.  What do you do?",
    a "See what the other drivers are doing."
    a "Try to start the car again."
    a "Turn on the radio."
    a "Find my phone."
    a "Wait."
    a "Run."

  q (-> "Wait.  Are you the REAL #{@fn} #{@ln}?"),
    a "Yes."
    a "No."

  q "Which country has the highest lowest point?",
    a "Andorra"
    a "Burundi"
    a "Lesotho"
    a "Rwanda"

  q "What is an apocalypse?",
    a "An Oscar winner."
    a "A revelation from God."
    a "A disaster of epic proportions."
    a "A language design document of mainly historical interest."

  q "Which of these would you rather be?",
    a "a cowboy"
    a "a hammer than a nail"
    a "able to fly"
    a "drinking"
    a "eating"
    a "invisible"
    a "sleeping"
    a "with someone I love"

  q "Which country has the lowest lowest point?",
    a "Djibouti"
    a "Israel"
    a "Jordan"
    a "Syria"

  q "What goes between two sentences?",
    a "no space."
    a "One space."
    a "Two spaces."
    a "U+200F WIDENED SPACE"
    a "It depends.",
      q "On what?",
        a "The medium."
        a "Monospaced vs proportional."
        a "The specific typesetting system."
        a "Full justification vs ragged right."

  q "How much bigger than one tenth is one ninth?",
    a "About 1%."
    a "About 9%."
    a "About 10%."
    a "About 11%."

  q 'To what does the word "grue" refer?',
    a "A device for preventing adventurers from wandering in the dark."
    a 'An alternate pronunciation of "glue."'
    a "An imaginary color that flouts Occam's razor."
    a 'The root noun from which "gruesome" is derived.'

  q "Which country has the lowest highest point?",
    a "Cocos Islands"
    a "Maldives"
    a "Tokelau"
    a "Tuvalu"

  q "What do you think of these geography questions?",
    a "They're interesting."
    a "They're amusing."
    a "They're boring."
    a "They're terrible."

  q "Suppose I flip a fair coin 99 times, and get heads each time.  Which of these best describes what will happen on the 100th flip?",
    a "Heads and tails are equally likely.",
      q "Why do you say that?",
        a "Because I don't care."
        a "Because you said it was a fair coin."
        a "Because there's no way to know what will happen."
    a "Heads is much more likely than tails.",
      q "Why do you say that?",
        a "Because you rigged this game somehow."
        a "Because I don't care how I answer this."
        a "Because you were wrong about it being a fair coin."
    a "Tails is much more likely than heads.",
      q "Why do you say that?",
        a "Because tails is overdue now."
        a "Because that's how a fair coin works."
        a "Because I'm not even paying attention anymore."
    a "I don't know.",
      q "Why do you say that?",
        a "Because that question is unanswerable."
        a "Because that question is complicated."
        a "Because that question is difficult."
        a "Because that question is boring."
        a "Because that question is bad."

  q "Which country has the highest highest point?",
    a "Bhutan"
    a "China"
    a "Nepal"
    a "Tibet"

  q "How do you respond to stress?",
    a "Fight."
    a "Flee."
    a "Freeze."
    a "Dissociate."

  q "About how strong is gravity?",
    a "6.674*10^-11 N (m/kg)^2" # MKS in terms of force, easier to understand
    a "6.674*10^-11 m^3 kg^-1 s^-2" # MKS, more practical
    a "6.674*10^-8 cm^3 g^-1 s^-2" # CGS, more theoretical
    a "4.302x10^-3 pc M_☉^-1 (km/s)^2" # astronomical
    a "0.01720209895" # Gauss's astronomical, applies to the planets
    a "9.8 m/s^2" # at Earth's surface
    a "1" # natural units

  q "Lorem ipsum dolor sit...",
    a "...amah."
    a "...aman."
    a "...amen."
    a "...amet."
    a "...amin."
    a "...emim."
    a "...imam."
    a "...uman."

  q "Grumpy wizards make a toxic brew for the jovial...",
    a "...bishop."
    a "...duchess."
    a "...duke."
    a "...earl."
    a "...fool."
    a "...footman."
    a "...joker."
    a "...king."
    a "...knave."
    a "...knight."
    a "...lady."
    a "...lord."
    a "...pawn."
    a "...prince."
    a "...queen."
    a "...rook."
    a "...squire."

  q "Bangladesh, Cape Verde, Ethiopia, France, Honduras, Israel, Japan, Kyrgyzstan, Mexico, Qatar, Somalia, Uruguay...",
    a "...Venezuela."
    a "...Samoa."
    a "...Yemen."
    a "...South Africa."
    a "...Zambia."
    a "...Zimbabwe."

  q "Do you know CPR?",
    a "Yes."
    a "No."
    a "Kinda?"

  q "Do you have friends?",
    a "Yes."
    a "No."
    a "Kinda?"

  q "THE END"
]
