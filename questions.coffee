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

  q "You're driving along the highway, next to some railroad tracks, and it's getting a bit foggy but nothing that you can't see through, and all of a sudden your car's engine stalls.  You see other cars coming to a stop as well.  What do you do?",
    a "See what the other drivers are doing."
    a "Try to start the car again."
    a "Turn on the radio."
    a "Find my phone."
    a "Wait."
    a "Run."

  q (-> "Wait.  Are you the <em>real</em> #{@fn} #{@ln}?"),
    a "Yes.", -> @real = true
    a "No.",
      q "So you were just lying to my face earlier?",
        a "Yes.",
          q "But what about just now?  Were you lying just now?",
            a "Yes.",
              figured = q (-> "So you <em>are</em> #{@fn} #{@ln}!  I knew it!"),
                a "Yep, you figured it out all right."
            a "No.",
              q "Well... can you prove it?",
                a "Prove what?",
                  q (-> "Can you prove that you're not #{@fn} #{@ln}!"),
                    a "Yes.",
                      q "How?",
                        a "Well...",
                          q "Yes?",
                            a "I'm actually...",
                              q "Yes???",
                                (meet = (t, f, l) ->
                                  a "...#{f} #{l}.",
                                    q (-> [@title, @fn, @ln] = [t, f, l]; "Oh my goodness!  It's such an honor to finally meet you, #{@title} #{@ln}!  I have so many questions!"),
                                      a "Such as...?"
                                )('Mr.', 'Graham', 'Nelson'),
                                meet 'Ms.', 'Hillary', 'Clinton'
                                meet 'Mr.', 'Teddy', 'Ruxpin'
                                meet 'Ms.', 'Anastasia', 'Romanov'
                                ->
                                  if @fn is 'Ryan'
                                    meet 'Ms.', 'Jenni', 'Polodna'
                                  else
                                    meet 'Mr.', 'Ryan', 'Veeder'
                    a "No.", figured
        a "No.",
          q (-> "So what you're saying is that you were telling the truth about... wait... so... you're just <em>#{if /^[AEIOU]/.test @fn then 'an' else 'a'}</em> #{@fn} #{@ln}?  Is that it?"),
            a "Yes.",
              q (-> "Well but so um, gosh, can't I just, like, <em>pretend</em> that you're the real #{@fn} #{@ln}?"),
                a "Yes.",
                  cool = q (-> "Cool!  Thanks #{@fn}!  Uh... can I call you #{@fn}?"),
                    a "Yes.",
                      q (-> "Thanks #{@fn}!"),
                        a "You're welcome!"
                    a "No.",
                      q (-> "Sorry #{@title} #{@ln}!  Sorry!  My mistake!"),
                        a "Don't worry about it."
                        a "Don't let it happen again!"
                a "No.",
                  q "Please?",
                    a "Yes.", cool
                    a "No.",
                      q "Pretty please???",
                        a "No!",
                          q (-> "Oh please #{@title} #{@fn}, please please please, it would mean sooooo much to me, please won't you please find it in your heart to just let me have this one small thing?"),
                            a "All right, if you insist.", cool
                            a "Forget it.",
                              q "Aw man!",
                                a "Can we move on here?",
                                  q "Yes.  Sorry.",
                                    a "Thank you."
                        a "Fine.", cool
            a "No.", figured

  q "So.  What's the capital of Canada?",
    a "Saskatchewan"
    a "Manitoba"
    a "Toronto"
    a "Nunavut"
    a "Ottawa", -> @geo = true
    a "Skullport"

  q "And what is an apocalypse?",
    a "An Oscar winner."
    a "A revelation from God."
    a "A disaster of epic proportions."
    a "A language design document of mainly historical interest."

  q 'All right, in that case... what does "grue" mean to you?',
    a "It's an alternate pronunciation of \"glue.\""
    a "It's an imaginary color that flouts Occam's razor."
    a "It's the root noun from which \"gruesome\" is derived."
    a "It's a device for preventing adventurers from wandering in the dark."

  q "Very good!  Now, which of these would you rather be?",
    a "a cowboy"
    a "a hammer than a nail"
    a "able to fly"
    a "drinking"
    a "eating"
    a "invisible"
    a "sleeping"
    a "with someone I love"

  q "Suppose I flip a fair coin 99 times, and get heads each time.  Which of these best describes what will happen on the 100th flip?",
    a "Heads and tails are equally likely.",
      q "Why do you say that?",
        a "Because I don't care."
        a "Because you said it was a fair coin.", -> @premath = true
        a "Because there's no way to decide between the two."
    a "Heads is much more likely than tails.",
      q "Why do you say that?",
        a "Because you rigged this game somehow.", -> @premath = true
        a "Because I don't care how I answer this."
        a "Because you were wrong about it being a fair coin.", -> @premath = true
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
  q "Hmm, yes... maybe we can come back to this later....",
    a "Okay."
    a "What if I want to talk about it now?",
      q "Then I guess you're going to be disappointed, aren't you?",
        a "I guess.",
          q "Sorry, that came out... I didn't mean to... just bear with me, okay?  We'll get through this.",
            surewhatevs = a "Sure, whatever.",
              q "No, seriously.  This will be good!  Just a few more questions, okay?",
                a "I'm listening."
        a "Am I?",
          q "Well, no, I mean... no, that's not what... just bear with me, okay?  We'll get through this.", surewhatevs

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

  -> if @premath then q "Bear with me here.  How much bigger than one tenth is one ninth?",
    a "About 1%.",
      q "And why is that?",
        a "You just, uh, add together, the, like....", mathend = (x) ->
          return ->
            if x then @math = true
            q "Mmm, yes, I see... sorry, I just need to make a note here....",
              a "Okay....",
                therewego = q "Ah yes, there we go.  Where were we?",
                  a "You, uh, were asking me questions?",
                    q "Indeed I was!  Shall we get back to that?",
                      a "Okay."
              a "Are you done?", therewego
        a "It, uh, I mean, if you subtract, um....", mathend true
        a "I think you can, like, multiply them and, er....", mathend
        a "Well you just, er, divide one by the, uh....", mathend
        a "Pass!  Can I pass?",
          q "Sure.",
            a "Thank you!"
    a "About 9%.",
      q "Is it?  Why do you think that?",
        a "It's, um... wait....", mathend
        a "I'm, uh, not sure if....", mathend
        a "I'm sorry, I take it back, I take it back!",
          q "Oh, it's far too late for that.",
            a "Oh no!  What do I do?  What do I <em>do</em>???",
              q "Please remain calm and continue to answer questions.",
                a "yes yes I will do this yes"
        a "Please forgive me.",
          q "Do you promise not to do it again?",
            a "Yes.",
              q "Then I forgive you.",
                a "Thank you!"
            a "No.",
              q "But you expect me to forgive you anyway?",
                a "Yes.",
                  q "Well... you're right!",
                    a "Thanks!",
                      q "I don't mean about the original question, I mean....",
                        a "No no, I get it.",
                          goodcanigo = q "Good",
                            a "Can I go now?",
                              q "Sure, just... I need to ask just a few more questions....",
                                a "Okay...."
                        a "Wait, what do you mean?",
                          q "I mean that I forgive you.",
                            a "Oh.  Thanks!",
                              q "You're welcome.",
                                a "So... are we done here?",
                                  q "Well, no, I have more questions....",
                                    a "Okay...."
                a "No.",
                  q "Then I believe we have an understanding.",
                    a "Yes.", goodcanigo
    a "About 10%.",
      q "And what led you to choose <em>that</em> option?",
        a "Well, it... it seemed like....", mathend
        a "Well I mean it's clearly <em>close</em> to that, because it's not the other one, because otherwise there's no decoy, and, uh, it's got fewer significant figures than... so I mean... you see where I'm going with this, right?", mathend
        a "Oh yeah, yeah!  That one!  B!  I choose B!  That sounds good.", mathend
        a "Wait, no, B is bullshit, isn't it?", mathend
    a "About 11%.",
      q "Can you explain why that is?",
        a "Sure, it's just... one over nine is point one repeating, and then you just move the decimal and subtract one and....", mathend true
        a "Well, it's, like, the ratio is clearly just a little bit bigger than one tenth itself, so....", mathend true
        a "I totally could, if these answers didn't suck so much.", mathend true
        a "No, not really.", mathend
        a "Eleven is my favorite number!",
          q "OMG mine too!",
            a "High five!",
              q "High five!",
                a "Awesome.",
                  q "Ready for more questions?",
                    a "Totally ready!"

  q "How do you typically respond to stress?",
    a "Fight."
    a "Flee."
    a "Freeze."
    a "Dissociate."

  q "Which country has the highest lowest point?",
    a "Andorra"
    a "Burundi"
    a "Lesotho"
    a "Rwanda"

  q "Which country has the lowest lowest point?",
    a "Djibouti"
    a "Israel"
    a "Jordan"
    a "Syria"

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

  q "Which country has the highest highest point?",
    a "Bhutan"
    a "China"
    a "Nepal"
    a "Tibet"

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

  q "About how strong is gravity?",
    a "6.674\u00d710<sup>-11</sup> N (m/kg)<sup>2</sup>" # MKS in terms of force, easier to understand
    a "6.674\u00d710<sup>-11</sup> m<sup>3</sup> kg<sup>-1</sup> s<sup>-2</sup>" # MKS, more practical
    a "6.674\u00d710<sup>-8</sup> cm<sup>3</sup> g<sup>-1</sup> s<sup>-2</sup>" # CGS, more theoretical
    a "4.302\u00d710<sup>-3</sup> pc <i>M</i><sub>\u2609</sub><sup>-1</sup> (km/s)<sup>2</sup>" # astronomical
    a "0.01720209895" # Gauss's astronomical, applies to the planets
    a "9.8 m/s<sup>2</sup>" # at Earth's surface
    a "1" # natural units

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
