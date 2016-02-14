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
                            a "Wow, that totally worked, thanks!",
                              -> @amusing = "Like when you said to try clicking harder on the mouse."
                        a "No.",
                          q "Is the mouse you are using hot-swappable?",
                            a "Yes.",
                              q "Try plugging the mouse into whatever thing you're reading these words on.",
                                a "Wow, that totally worked, thanks!", -> @amusing = "Like when you asked about whether the mouse was hot-swappable."
                            a "No.",
                              q "Then I'm afraid you're out of luck.",
                                a "Oh well.", -> @amusing = "Like when you said you were afraid I was out of luck."
                            a "What?",
                              q "Does the mouse feel hot to the touch?",
                                a "Yes.",
                                  q "Try immersing it in ice water.",
                                    a "Done!",
                                      q "Better?",
                                        a "Much!",
                                          q "Excellent.",
                                            a "Thanks!", -> @amusing = "Like when you forced me to dunk my mouse in a bucket of ice water."
                                a "No.",
                                  q "Try rubbing it vigorously.",
                                    a "It's working! It's working!",
                                      q "Keep going!",
                                        a "OMG this is AMAZING!", -> @amusing = "Like that rubbing vigorously thing."
                                    a "It's not working.",
                                      q "You're not rubbing vigorously enough, are you?",
                                        a "Am too.",
                                          q "Are so.",
                                            a "Is not.", -> @amusing = "Like that rubbing vigorously thing."
                                a "Maybe?",
                                  q "If you had to guess, would you say that the mouse's temperature is more or less than 300 degrees Kelvin?",
                                    a "Yes.",
                                      q "Then it should be within normal operating parameters.",
                                        a "Thank goodness!", -> @amusing = "Like the thing where my mouse was within normal operating parameters."
                                    a "No.",
                                      q "A wise decision!",
                                        a "Huh?", -> @amusing = "Like when you asked if it was more or less but the choices were yes and no and then you said it was a wise decision."
                    a "No.",
                      q "Try using a mouse.",
                        a "Sounds good, thanks!"
                        a "Maybe later.",
                          q "Let me know when you're ready to continue.",
                            a "I am ready now!", -> @amusing = "Like the thing where... I think you were supposed to be waiting for me to go get a mouse?"
                a "Tapping doesn't work.",
                  q "Is the screen you are tapping touch-sensitive?",
                    a "Yes.",
                      q "Are you sure?",
                        a "No.", -> @amusing = "Like when I told you the screen was touch-sensitive but then you made me say it wasn't."
                    a "No.",
                      q "Try clicking or typing instead.",
                        a "Well, okay.", -> @amusing = "Like when you said to try clicking or... actually that was pretty reasonable advice, never mind."
                        a "But you said....",
                          ->
                            @amusing = "Like when you said let's move on and gave me three increasingly obsequious choices."
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
                                  ->
                                    @amusing = "Like when you asked me whether I would recommend the polarizing filter to a friend."
                                    q "Would you recommend it to a friend?",
                                      a "Yes."
                                      a "No."
                                a "It was so great, I could hardly believe it.",
                                  ->
                                    @amusing = "Like when you asked to borrow my polarizing filter."
                                    q "Can I borrow it later?",
                                      a "Yes.",
                                        q "Thanks!",
                                          a "You're welcome!"
                                      a "No.",
                                        q "Please?",
                                          a "Forget it."
                                a "Terrible.",
                                  ->
                                    @amusing = "Like when you apologized about the polarizing filter and my only option was to say that it wasn't your fault."
                                    q "I'm sorry.",
                                      a "Don't say that.  It's not your fault.",
                                        q "Isn't it?",
                                          a "Yes, it isn't."
                                          a "No, it isn't."
                            a "No.",
                              q "You should totally try one.",
                                a "Great idea!", -> @amusing = "Like when you said I should try a polarizing filter and then made me agree with you."
                        a "No.",
                          ->
                            @amusing = "Like that thing about polishing the screen to make it look glossy."
                            q "Have you considered polishing it?",
                              a "Yes.",
                                q "But you didn't actually do it?",
                                  a "No."
                              a "No.",
                                q "Well, are you going to do it now?",
                                  a "Nah, I'm good."
                              a "With what?",
                                q "Screen polish, I suppose?",
                                  a "That sounds reasonable.", -> @amusing = "Like that thing about screen polish.  I don't think that's even a real thing!"
                    a "Screen?  What screen?",
                      q "You don't have a screen?",
                        a "I used to, but I lost it.",
                          q "That is very sad!",
                            a "Yes.", -> @amusing = "Like that thing about losing my screen."
                        a "Why would I have a screen?",
                          q "Oh, uh... no reason....",
                            a "Okay.", -> @amusing = "Like that thing about me having a screen.  Why would I have a screen?"
                        a "Oh wait, there it is, never mind.", -> @amusing = "Like that thing about me losing my screen and then finding it again."
                        a "I mean I do, but it isn't, like, here.",
                          q "Do you want to go get it?",
                            a "Nah, I'm good.", -> @amusing = "Like that thing about me not wanting to go get my screen."
                a "Typing doesn't work.",
                  q "Is the device you are using equipped with a physical keyboard?",
                    a "Yes.",
                      q "Maybe the keyboard focus is elsewhere?  Try, like, clicking somewhere in this window.",
                        a "What do you think I've been doing this whole time?",
                          q "Great, you're way ahead of me!  Now if you try typing again, does it work?",
                            a "Yes.",
                              q "Cool.",
                                a "Thanks!", -> @amusing = "Like that thing about the keyboard focus and then typing worked again."
                            a "No.",
                              q "Well, hmm.  Have you cleaned the keyboard recently?",
                                a "Yes.",
                                  probablywhy = ->
                                    @amusing = "Like that thing about whether I'd cleaned the keyboard recently."
                                    q "That's probably why, then.",
                                      a "Okay."
                                a "No.", probablywhy
                    a "No.",
                      q "Then I suggest you go with tapping instead.",
                        a "Well, okay.", -> @amusing = "Like that thing with tapping instead of typing."
                        a "Awww, but I wanted to type things!",
                          q "Too bad.",
                            a "You're no fun.", -> @amusing = "Like that thing where I wanted to type things but you said I couldn't."
        a "What if I choose the wrong answer?",
          q "There are no wrong answers.",
            a "Thanks, that's very reassuring!", -> @amusing = "Like that thing you said about there being no wrong answers."
            a "No, I mean, what if I meant to choose one answer but choose a different one by mistake?",
              q "Does the Backspace key work?",
                a "Wow, yes, it totally does."
                a "It, uh, doesn't seem to, no.",
                  q "Well, it's supposed to.",
                    a "Well, it doesn't.",
                      q "I'm sorry.",
                        a "It's okay, I'll manage somehow.", -> @amusing = "Like that thing where my Backspace key doesn't work."
                a "What are you even talking about?  I don't have a backspace key!",
                  q "Then try using your browser's Back button.",
                    a "But I don't wanna.",
                      q "Then don't.",
                        a "Okay, I won't!",
                          q "Good!",
                            a "Yep!", -> @amusing = "Like that thing where you were trying to get me to use the stupid back button in my stupid browser."
                    a "Fine, if you insist.", -> @amusing = "Like that thing where I had to use the back button in my browser instead of the backspace key."
        a "Who wrote this game?",
          q "Are you sure you want to know?",
            a "Yes.",
              q "You're not trying to trick me, are you?",
                a "Of course not.",
                  q "So the judging period is over?",
                    a "Yes.", ->
                      now = new Date()
                      if now.getTime() < 1460617200000
                        q "Then why does your clock say #{now}?",
                          a "Uhhhh... whatever, never mind.", -> @amusing = "Like that thing where you told me the current date and time."
                      else
                        q "You're sure you want me to reveal this?",
                          a "Eh... I changed my mind.", -> @amusing = "Like that thing where I wanted to know who wrote this game but you were being all weird about it so I backed off."
                          a "Yes, for the last time, I hereby affirm that I actually want you to tell me the name of the person who wrote this game.",
                            ->
                              @author = (String.fromCharCode x for x in [74, 97, 99, 113, 117, 101, 115, 32, 70, 114, 101, 99, 104, 101, 116]).join ''
                              @amusing = "Like that thing where you took sooooo much convincing to tell me who wrote this."
                              q "This game was written by #{@author}.",
                                a "Thank you."
                    a "No.",
                      betternottell = q "Then I guess I'd better not tell you!",
                        a "Well, I respect your decision, even though I disagree with it.",
                          q "Thanks!  That's very big of you.",
                            a "Aw shucks.", -> @amusing = "Like that thing where I had to respect your decision even though I disagreed with it."
                        a "Aw cmon.",
                          ->
                            @amusing = "Like that thing where you refused to tell me who wrote this game just because the judging period wasn't up yet!"
                            q "Nope, my mind's made up.",
                              a "Well shoot."
                              a "Drat."
                              a "Curses!"
                              a "Zut alors."
                              a "Fiddlesticks."
                    a "Uh... judging period?  What?",
                      q "You know, for the exposition thing.",
                        a "Oh right, the exposition thing!",
                          q "Yes.  That.",
                            a "Okay.", -> @amusing = "Like the thing with the judging period and the exposition thing."
                        a "What exposition thing?",
                          ->
                            @whatexpo = true
                            q "Why, the First Quadrennial Ryan Veeder Exposition for Good Interactive Fiction, of course!",
                              a "Oh, <em>that</em>!",
                                q "So you understand my position?",
                                  a "Totally.", -> @amusing = "Like the thing where you were explaining about the First Quadrennial whatever it is."
                                  a "No, I'm just trying to change the subject.  Can't you take a hint?",
                                    q "Oh, sorry!  We can talk about something else now.",
                                      a "Thanks!", -> @amusing = "Like that thing where I kept trying to change the subject but you were really slow to take a hint!"
                              a "Never heard of it.",
                                q "Well, the relevant bit is that the organizer has made repeated credible threats to disqualify any entrant whose anonymity is compromised.  So you understand my reluctance.",
                                  a "Uh... sure... whatever you say.",
                                    ->
                                      @amusing = "Like that thing about repeated credible threats."
                                      @neverheardofexpo = true
                a "Why yes, actually, I am trying to trick you.", betternottell
            a "No.",
              q "Then I won't tell you.",
                a "Phew!", -> @amusing = "Like that thing where I was trying to ask an innocent question about who wrote this game and you got all defensive."

  q "What's your name?",
    a "Emily",
      q "And your last name?",
        a "Boegheim", -> [@title, @fn, @ln] = ['Ms.', 'Emily', 'Boegheim']; @expo = true
        a "Carroll", -> [@title, @fn, @ln] = ['Ms.', 'Emily', 'Carroll']
        a "Ryan", -> [@title, @fn, @ln] = ['Ms.', 'Emily', 'Ryan']
        a "Short", -> [@title, @fn, @ln] = ['Ms.', 'Emily', 'Short']
    a "Jenni",
      q "And your last name?",
        a "Earl", -> [@title, @fn, @ln] = ['Ms.', 'Jenni', 'Earl']
        a "Jorgensen", -> [@title, @fn, @ln] = ['Ms.', 'Jenni', 'Jorgensen']
        a "Maddox", -> [@title, @fn, @ln] = ['Ms.', 'Jenni', 'Maddox']
        a "Polodna", -> [@title, @fn, @ln] = ['Ms.', 'Jenni', 'Polodna']; @expo = true
        a "Vedenoja", -> [@title, @fn, @ln] = ['Ms.', 'Jenni', 'Vedenoja']
    a "Ryan",
      q "And your last name?",
        a "Burrus", -> [@title, @fn, @ln] = ['Mr.', 'Ryan', 'Burrus']
        a "Freebern", -> [@title, @fn, @ln] = ['Mr.', 'Ryan', 'Freebern']
        a "Holman", -> [@title, @fn, @ln] = ['Mr.', 'Ryan', 'Holman']
        a "Kinsman", -> [@title, @fn, @ln] = ['Mr.', 'Ryan', 'Kinsman']
        a "Weisenberger", -> [@title, @fn, @ln] = ['Mr.', 'Ryan', 'Weisenberger']
        a "Stevens", -> [@title, @fn, @ln] = ['Mr.', 'Ryan', 'Stevens']
        a "Veeder", -> [@title, @fn, @ln] = ['Mr.', 'Ryan', 'Veeder']; @expo = true

  q "You're driving along the highway, next to some railroad tracks, and it's getting a bit foggy but nothing that you can't see through, and all of a sudden your car's engine stalls.  You see other cars coming to a stop as well.  What do you do?",
    a "See what the other drivers are doing."
    a "Try to start the car again."
    a "Turn on the radio."
    a "Find my phone."
    a "Wait."
    a "Run."

  q (-> "Hold on.  Are you the <em>real</em> #{@fn} #{@ln}?"),
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
                                (meet = (t, f, l, expo) ->
                                  a "...#{f} #{l}.",
                                    q (-> @origname or= "#{@fn} #{@ln}"; [@title, @fn, @ln, @expo] = [t, f, l, expo]; "Oh my goodness!  It's such an honor to finally meet you, #{@title} #{@ln}!  I have so many questions!"),
                                      a "Such as...?"
                                )('Mr.', 'Graham', 'Nelson'),
                                meet 'Ms.', 'Hillary', 'Clinton'
                                meet 'Mr.', 'Teddy', 'Ruxpin'
                                meet 'Ms.', 'Anastasia', 'Romanov'
                                ->
                                  if @fn is 'Ryan'
                                    meet 'Ms.', 'Jenni', 'Polodna', true
                                  else
                                    meet 'Mr.', 'Ryan', 'Veeder', true
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
    a "Manitoba"
    a "Nunavut"
    a "Ottawa", -> @geo = true
    a "Saskatchewan"
    a "Skullport", -> @skullport = true
    a "Toronto"
    a "Vancouver"

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
    a "a cowboy",
      # XXX offer to sing the song, multiple choice lyrics
      likesong = q "Like the song?",
        a "Yes, like the song!"
        a "No, I didn't even realize that was a song."
        a "No, I know the song but that's not why I chose that answer."
    a "a hammer than a nail", likesong
    a "able to fly"
    a "drinking",
      q "Like drinking alcohol?",
        a "Yes."
        a "No."
    a "eating"
    a "invisible"
    a "sleeping",
      q "Are you tired right now?",
        a "Yes."
        a "No."
    a "with someone I love",
      q "Think of a person you love.  How would you quantify your love for that person?",
        a "0 -- I can't think of any such person.",
          q "Why not?",
            a "Because I'm depressed and it's hard to feel things.",
              soundshard = q "Gosh.  That sounds hard.",
                a "It is hard."
                a "Nah, it's fine."
            a "Because I'm very lonely and there is no one special in my life.",
              soundshard
            a "All of the above.", soundshard
            a "None of the above."
        a "1 -- Meh.",
          theyloveyoumore = q "Do you feel like they love you more than you love them?",
            a "Yes, absolutely!",
              howdoyoufeel = q "How do you feel about this state of affairs?",
                a "It's pretty good, actually!"
                a "It kinda sucks, actually!"
                a "Eh, it's okay I guess."
                a "Eh, it's not the best, but you know, whatever."
            a "No way, definitely not.", howdoyoufeel
            a "Eh, maybe kinda mostly.", howdoyoufeel
            a "Not really, no?", howdoyoufeel
        a "2 -- Pretty okay.", theyloveyoumore
        a "3 -- Yep, lots.",
          normalamount = q "So like a normal amount?",
            a "Yes.", theyloveyoumore
            a "No, more than normal.",
              theyloveyouless = q "Do you feel like they love you less than you love them?",
                a "Yep, no question.", howdoyoufeel
                a "No way, in fact they love me even more!", howdoyoufeel
                a "Eh, about the same amount.", howdoyoufeel
            a "No, less than normal.", theyloveyoumore
        a "4 -- OMG so much!", normalamount
        a "5 -- Impossibly much!!!", theyloveyouless

  -> if @skullport
    q "So the capital of Canada is Skullport, huh?",
      a "Yep!",
        q "Okay, just checking!",
          a "No problem!"
      a "Wait a minute... are you implying that the capital of Canada <em>isn't</em> Skullport?",
        q "That... would be what I'm implying, yes.",
          a "I've been reading too much City of Splendors, haven't I?",
            possibility = q "Seems like a distinct possibility, yes!",
              a "Sorry, I'll try to do better next time."
              a "I have no regrets about my choices in this matter."
          a "I've been playing too much Forgotten Realms, haven't I?", possibility
          a "I've been playing too much Lords of Waterdeep, haven't I?", possibility
          a "Uh... I think you lost me on the above answers.",
            q "Just try to roll with it.",
              a "Okay."
              a "No!",
                q "Then go look it up, I guess?  I can't stop you from looking things up, you know.",
                  a "Okay, fine, I looked it up.  It all makes sense now.  Are you happy?"
                  a "I'm not going to just set this aside and start looking up random things!",
                    q "Why not?",
                      a "Eh, too lazy.",
                        q "Yeah, okay, I can respect that argument.",
                          a "Really?  Thanks!",
                            q "No, not really.",
                              a "Okay, that's fair."
                              a "Well screw you too then."
                      a "Because that would be boring.",
                        q "Fair enough.  Let's move on.",
                          a "Okay."
                      a "Because it would break my funky flow here.",
                        q '"Funky flow," huh?',
                          a "You have a problem with that?",
                            q "No, no problem!  No problem at all!",
                              a "Well good!"
                              a "I am sensing a certain degree of insincerity here.",
                                q "Oh, you're sensing it, are you?",
                                  a "Shut up."
                      a 'I kinda like option C, but I just want to register my objection to your transparent attempt to put the words "funky flow" in my mouth like that.  That is not how I roll.',
                        q "Objection noted!",
                          a "Thank you!"

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
    a "One space."
    a "Two spaces."
    a "U+200F WIDENED SPACE"
    a "Nothing."
    a "It depends.",
      q "On what?",
        a "The medium."
        a "Monospaced vs proportional."
        a "The specific typesetting system."
        a "Full justification vs ragged right."

  # XXX start explaining the solution
  -> if @premath then q "How much bigger than one tenth is one ninth?",
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
                    a "Totally ready!", -> @math = true

  q "How do you typically respond to stress?",
    a "Fight."
    a "Flee."
    a "Freeze."
    a "Dissociate."

  -> if @geo then q "Which country has the highest lowest point?",
    a "Andorra"
    a "Burundi"
    a "Lesotho"
    a "Rwanda"

  -> if @expo and @neverheardofexpo
    q "Something's been bothering me about some of your earlier answers.",
      a "Oh?  What is it?",
        q "Well... you were asking me who wrote this game... and then it turned out you'd never heard of the Exposition!",
          a "So?",
            q "So?  You're #{@fn} #{@ln}!",
              a "So?",
                if @fn is 'Ryan'
                  q "You're supposed to be the fricking organizer!  How can you not have heard of the competition that you yourself <em>invented</em>?",
                    a "What an impertinent question!",
                      q "I thought it was a pretty good question, actually!",
                        besilent = a "Be silent, or face the consequences!",
                          q "What consequences might those be?",
                            a "I'll kick your ass!",
                              neversay = q "Ha!  The <em>real</em> #{@fn} #{@ln} would <em>never</em> say that!",
                                a "Omigosh, you're right!  I've been living a lie!",
                                  q "Confess, traitor!  What is your true name?",
                                    (meet = (t, f, l) ->
                                      a "#{f} #{l}", ->
                                        @origname or= "#{@fn} #{@ln}"
                                        [@title, @fn, @ln] = [t, f, l]
                                        q "Holy moly!  I've always wanted to meet you, #{t} #{l}!  If I could just ask you a few questions....",
                                          a "Certainly!"
                                    )('Mr.', 'Jim', 'Crawford')
                                    meet 'Mr.', 'Doug', 'Egan'
                                    meet 'Mr.', 'Jeremy', 'Freese'
                                    meet 'Mr.', 'Jason', 'McIntosh'
                                    meet 'Mr.', 'Hamish', 'McIntyre'
                                    meet 'Mr.', 'Carl', 'Muckenhoupt'
                                    meet 'Mr.', 'Dan', 'Ravipinto'
                                    meet 'Ms.', 'Emily', 'Short'
                            a "A $271 dollar fine!", neversay
                            a "I'll drive you out of business!", neversay
                            a "Pain of forfeit!",
                              q "Wow, you passed my test!  Truly, you are the real #{@fn} #{@ln} after all!",
                                a "Yes.  Yes I am."
                            a "I'll stick paperclips up your toenails!", neversay
                            a "Swarms of angry cyber-bees!", neversay
                    a "I'm a very busy man.",
                      q "Hmm, yes... the real #{@fn} #{@ln} would never waste time playing such a trivial game as this!  Isn't he more into, like, parser stuff?  You couldn't possibly be....", besilent
                else
                  q "You're supposed to be one of the fricking <em>stewards</em>!  How can you not have heard of the competition that you yourself are... uhhh....",
                    a "...stewing?",
                      huh = q "...huh.  Okay, maybe you <em>are</em> #{@fn} #{@ln}.",
                        a "Told you so!"
                    a "...stewarding?", huh
                    a "...stewardessing?", huh
                    a "...stewardinessing?", huh
                    a "...stewardlinessing?", huh
                    a "...stewardshiplikenessing?", huh
                    a "...stewardsnesslishippagelikelifallityinessaging?", huh
      a "It's probably nothing.  You should just ignore whatever feelings you might think you have on that topic.",
        q "Great idea!",
          a "I know, right?"
      a "OMG did I screw up the math question?  I hate math.",
        q "The one ninth one?",
          if not @premath
            a "Wait, what?  I don't remember....",
              q "Oh hey, that's right, I decided not to ask you that one.  Never mind!",
                a "Just as well."
                a "Are you just making this up?",
                  q "No, no!  It's a real question that I ask sometimes.  Just... not this time.",
                    a "Oh, okay then."
          else
            a "Yeah, that one!",
              if @math
                q "Oh, no, you did fine on that one.",
                  a "Phew!"
                  a "Darn!"
                  a "You're not just trying to trick me?",
                    q "Why would I want to trick you?",
                      a "I guess you're right."
                  a "You're not just saying that to make me feel better?",
                    q "No, it's true!  You totally destroyed that question.",
                      a "Awww, thanks!"
              else
                wellkinda = q "Well, kinda?  I mean I was sort of planning on skipping the follow-up question.  Just, you know, I didn't want to, like, annoy you.",
                  a "That's very considerate of you!",
                    q "Thanks!",
                      a "You're welcome!",
                        q "You are also welcome!"
                          a "Thanks!"
                  a "I'm kind of annoyed now, but I would probably be even more annoyed if you'd asked me more questions like that, so maybe it's just as well."
                  a "No way, you HAVE to ask me the follow-up question!",
                    q "Well, okay.  But not right away.",
                      a "All right.", -> @math = true
          a "No no, the one with the 99 heads.",
            if @premath
              q "Oh, that one!  You did fine on that one.",
                a "But not the other one?",
                  if not @math then wellkinda else
                    q "No no, you did great on both of those!  All of them.  You're awesome.",
                      a "Gosh, thanks!"
            else
              q "Yeah, well, I think we probably saw that one differently.",
                a "Sure, okay."
                a "What's that supposed to mean?",
                  q "You chose poorly.",
                    a "I thought that might have been what you were implying."

  -> if @geo then q "Which country has the lowest lowest point?",
    a "Djibouti"
    a "Israel"
    a "Jordan"
    a "Syria"

  -> if @geo then q "Which country has the lowest highest point?",
    a "Cocos Islands"
    a "Maldives"
    a "Tokelau"
    a "Tuvalu"

  -> if @geo then q "What do you think of these geography questions?",
    a "They're interesting."
    a "They're amusing."
    a "They're boring.", -> @geo = false
    a "They're terrible.", -> @geo = false

  -> if @geo then q "Which country has the highest highest point?",
    a "Bhutan"
    a "China"
    a "Nepal"
    a "Tibet"

  q "Lorem ipsum dolor sit...",
    a "...amah."
    a "...aman."
    a "...amen."
    a "...amet.", -> @lorem = true
    a "...amin."
    a "...emim."
    a "...imam."
    a "...uman."

  -> if @math then q "About how strong is gravity?",
    a "6.674\u00d710<sup>-11</sup> N (m/kg)<sup>2</sup>" # MKS in terms of force, easier to understand
    a "6.674\u00d710<sup>-11</sup> m<sup>3</sup> kg<sup>-1</sup> s<sup>-2</sup>" # MKS, more practical
    a "6.674\u00d710<sup>-8</sup> cm<sup>3</sup> g<sup>-1</sup> s<sup>-2</sup>" # CGS, more theoretical
    a "4.302\u00d710<sup>-3</sup> pc <i>M</i><sub>\u2609</sub><sup>-1</sup> (km/s)<sup>2</sup>" # astronomical
    a "0.01720209895" # Gauss's astronomical, applies to the planets
    a "9.8 m/s<sup>2</sup>" # at Earth's surface
    a "1" # natural units

  q "So did you play that game yet where you're a dog?",
    a "Yes.",
      q "What did you think of it?",
        a "It was terrific!",
          q "Wow, really?  What did you like best about it?",
            a "I really liked that thing with Not-Your-Person!"
            a "The squeak toy was super fun!"
            a "I liked the eating place!"
        a "It was terrible.",
          q "Really?  Why do you say that?",
            a "The graphics were sub-par.",
              samegame = q "Are you sure we're thinking of the same game?",
                a "Yes."
                a "No."
            a "The soundtrack was no good.", samegame
            a "The voice acting was terrible!", samegame
        a "Meh."
    a "No.",
      q "Oh well you totally should!  It's really good!",
        a "Thanks, I'll keep an eye out for it!"
        a "It doesn't sound like my cup of tea, actually.",
          ->
            if @expo
              q "Well I'm sorry to hear you say that.",
                a "Yeah, me too."
                a "Why are you sorry?",
                  ->
                    if @ln != "Veeder"
                      q "Well, you know, as a steward and all, you might have to play it or something.",
                        a "Eh, it's a sacrifice I'll have to make.",
                          q "That's very noble of you.",
                            a "Oh, it's nothing, really."
                            a "Yes.  Yes it is."
                        a "Oh, that's okay, I'll just get #{if @fn is 'Emily' then 'Jenni' else 'Emily'} to look at it instead.",
                          q "What a brilliant idea!  Why didn't I think of that?",
                            a "That's why they pay me the big bucks!",
                              q "Wait, really?",
                                a "Yes, really.",
                                  q "Wow, that's so cool!",
                                    a "Agreed."
                                a "No, not really.",
                                  q "Wow, you had me going there!",
                                    a "Heh heh."
                    else
                      q "Well, you know, as judge and all... seems kind of unseemly for you to express a negative opinion of it before you've even played it.",
                        a "Hmm yeah, that's a good point.  I take it back.",
                          q "Consider it forgotten.",
                            a "Thanks!"
                        a "Are you saying I'm biased?",
                          q "I... guess so?",
                            a "Well you're right.",
                              q "Uh... okay....",
                                a "Good thinking.",
                                  q "Um... thanks?",
                                    a "You're welcome!"
                            a "Well I'm not.",
                              q "Okay, if you say so.",
                                a "I do say so."
                        a "But a positive opinion would have been okay?",
                          q "Uh... no, I guess not....",
                            a "Okay, just checking."
        a "So you played it?",
          q "Well, no, I haven't played it <em>yet</em>, but, you know, I've heard good things about it!  Rumors, mostly.  Lotta buzz!",
            a "That seems reasonable!"
            a "Wait a minute.  Who wrote this dog game?",
              q "Oh... uh... I'm not sure if I should tell you.",
                a "Good thinking!  Better not."
                a "Wait, why not?",
                  ->
                    if @ln != 'Veeder'
                      q "Because what if Ryan Veeder found out?",
                        a "Good point!  Never mind."
                        a "Oh come on.  I promise not to tell him.",
                          q "But how do I know I can trust you?",
                            a "I'm #{@fn} #{@ln}.  Of course you can trust me!",
                              q "See, I don't know about that.  I think I'd better not say anything.",
                                a "As you wish."
                            a "I'm #{@fn} #{@ln}.  Of course you can't trust me!",
                              q "See, that's exactly what I'm afraid of.",
                                a "Ah well, I tried.",
                                  q "Yes you did.  Good job trying, by the way!",
                                    a "Gee, thanks!"
                            a "I guess there's no way of knowing, is there.",
                              q "No, there really isn't.",
                                a "Oh well."
                    else
                      q "Because you're Ryan Veeder!",
                        a "So?",
                          q "Wait -- is the exposition over already?",
                            a "Yes.",
                              q "So I can just tell you?",
                                a "Yes.",
                                  q "But what if you're lying?",
                                    a "You're right, I'm lying.",
                                      q "I knew it!",
                                        a "Good call!"
                                    a "You're wrong, I'm telling the truth.",
                                      q "But, see, you could be lying about that too!",
                                        a "No I couldn't!",
                                          q "Nice try, but you won't fool me!",
                                            a "Curses!  Foiled again!"
                                        a "Oh, good point.",
                                          q "I know!",
                                            a "Yes."
                                a "No.",
                                  q "Wait, why not?",
                                    a "I changed my mind.",
                                      q "Well, all right.",
                                        a "Thank you for respecting my right to change my mind about things!",
                                          q "You're welcome, #{@fn}.  You'er welcome.",
                                            a "Okay now ask me another question."
                            a "No.",
                              q "Then I'd better not tell you.",
                                a "Fine."
                                a "Why not?",
                                  q "Rule 6.  Obviously.",
                                    a "Oh yeah, rule 6."
                                    a "Wait, what's rule 6?",
                                      q "I forget exactly.  Something about pain of forfeit?",
                                        a "Sounds annoying."
                            a "What exposition is this?",
                              ->
                                if @whatexpo
                                  q "Don't play dumb with me, #{@fn}!  We've been over this already!  You're clearly just trying to trick me.",
                                    a "Foiled again!"
                                else
                                  q "The First Quadrennial Ryan Veeder Exposition for Good Interactive Fiction!",
                                    a "Wow, that sounds amazing!",
                                      q "OMG so amazing!!!",
                                        a "You sure seem excited about this.",
                                          q "I am!  This is gonna be so great!!!!",
                                            a "Well, good luck with that!",
                                              q "Thanks!",
                                                a "You're welcome!"
                                    a "Gosh, that sounds terrible!",
                                      q "Really?  You think?",
                                        a "Yes, I really think that.",
                                          q "I am skeptical of your opinion on this matter.",
                                            a "All right, be skeptical then."
                                        a "No, I was just messing with you.",
                                          q "Oh thank goodness!  I mean wait, what?  Why would you even do that?",
                                            a "No reason.",
                                    a "<em>[yawn]</em>",
                                      q "Am I boring you?  We can talk about something else if you want.",
                                        a "Please."
                        a "No I'm not.",
                          q "Sure you are!  We've been over this.",
                            a "Oh sorry, I must have forgotten.",
                              q "You must've.",
                                a "Yes!"
                        a "Oh yeah, good point."
    a "Wait, which one?",
      q "You know, the other entry in the... thing.",
        a "Are you referring to the First Quadrennial Ryan Veeder Exposition for Interactive Fiction?",
          q "Why yes.  Yes I am.  As it happens.",
            a "Thanks, now I totally understand exactly which game you were referring to earlier.",
              q "Oh good!  I was worried that I was going to have to explain and it was going to be awkward somehow.",
                a "Nope, no worries!"
            a "I was not aware that there was an entry about being a dog.",
              q "Oh!  Well.  Um.  Never mind then.",
                a "Okay...."
            a "Which of the entries about being a dog did you mean?",
              q "Uh... you know... the one by... um....",
                a "Go on.",
                  q "Wait, are there seriously several entries about being a dog?",
                    a "Yes.",
                      q "Wow.  I did <em>not</em> see that coming.",
                        a "Me either."
                        a "Oh come on, it should have been obvious.",
                          q "Maybe to you.",
                            -> a "Well, I <em>am</em> #{@fn} #{@ln}.",
                              q "Oh yeah that's right, we established that earlier, didn't we?",
                                a "We certainly did."
                                a "Eh probably."
                    a "No.",
                      q "So you're just messing with me.",
                        a "Yes."
                a "Stop right there.",
                  q "Why?  So you can remind me about rule 6?  What do you care?",
                    ->
                      if @expo
                        a "Because I'm #{@fn} #{@ln}.  Obviously.  It's like my <em>job</em> to care.",
                          q "Oh, hey, good point!",
                            a "Thank you, I'm rather proud of it myself."
                      else
                        a "I'm just, you know, looking out for you and stuff.  Like, as a fellow....",
                          q "Ah ah ah!  Don't say it!  Rule 6!",
                            a "Wait, but I'm not even....",
                              q "You are complicit in this!  I'll take you down with me, you know!",
                                a "You wouldn't dare.",
                                  liketothink = q "Oh, you'd like to think that, wouldn't you?",
                                    a "Yes."
                                    a "No."
                                    a "Maybe?"
                                a "That doesn't make any sense.", liketothink
                                a "Um.  <em>Does</em> that make sense?  I have no idea what you're even talking about anymore.", liketothink

  -> if @lorem then q "Grumpy wizards make a toxic brew for the jovial...",
    a "...bishop."
    a "...duchess."
    a "...duke."
    a "...earl."
    a "...fool."
    a "...footman."
    a "...jack.",
      q "No, you're thinking of the other one.  Try harder next time.",
        a "Will do!"
    a "...joker."
    a "...king."
    a "...knave."
    a "...knight."
    a "...lady."
    a "...lord."
    a "...pawn."
    a "...prince."
    a "...queen." # XXX
    a "...rook."
    a "...squire."

  q "Do you have friends?",
    a "Yes."
    a "No."
    a "Kinda?"

  -> if @geo
    q "Bangladesh, Cape Verde, Ethiopia, France, Honduras, Israel, Japan, Kyrgyzstan, Mexico, Qatar, Somalia, Uruguay...",
      a "...Venezuela."
      a "...Samoa."
      a "...Yemen."
      a "...South Africa."
      a "...Zambia."
      a "...Zimbabwe."

  q "Do you know CPR?",
    a "Yes."
    a "No.",
      q "Would you like to learn?",
        a "Sure."
        a "No thanks.",
          q "Why not?",
            a "Sounds boring.",
              q "It's pretty exciting, actually!",
                a "Oh well, in that case, let's do this!",
            a "I mean I already kinda know some things, I'm just not, like, certified or anything."
            a "Are you seriously offering to teach me CPR right now?",
              q "Yes.",
                a "Huh.  All right.",
    a "What is CPR?",
      q "Oh, you know, just that thing where somebody is dead and then you bring them back to life using a few simple techniques that can be taught in a few minutes and performed without any special tools!",
        a "Wow, sounds awesome!  Tell me more!"
        a "I don't think that's an accurate description.",
          q "I thought you said you didn't know what CPR was?",
            a "Good point!  I withdraw my objection."
            a "I said no such thing!  I merely asked what it was.",
              q "Okay so which part of my description is wrong?",
                a "The bit about somebody being dead.",
                  q "Wait, <em>that's</em> your objection?  People do die, you know.",
                    a "No they don't."
                    a "I think you're misunderstanding my point.",
                      q "No I'm not.  That's what you said.  Look, the \"bringing people back to life\" option was <em>right there</em>.",
                        a "Shoot.  Can I go back?",
                          q "Too late for that now!",
                            a "Darn."
                        a "Are you seriously trying to tell me that you think you know what I meant better than I do?",
                          q "Okay, maybe I'm not being <em>entirely</em> serious.",
                            a "Oh good."
                a "The bit about bringing them back to life.",
                  q "But that's the whole point, right?  If their heart is stopped, they're dead.",
                    a "I guess you're right."
                    a "That's not what \"dead\" means.",
                      q "Well what does it mean then?",
                        a "It means their soul has left their body and they've gone to heaven.",
                          q "And that doesn't happen until later, is what you're saying?",
                            a "Yes.",
                              meandifferent = q "Well okay, then I guess we mean different things.  Sorry about the confusion.",
                                a "Thanks!"
                            a "Sometimes.", meandifferent
                        a "It means their brain has stopped working.", meandifferent
                        a "It means they're actually permanently dead!", meandifferent
                    a "You can't actually restart someone's heart with CPR!  Why does everybody think that?",
                      q "That's true, you can't.  But you can buy them some time until the professionals show up and actually restart their heart, and that's the next best thing, right?",
                        a "Sure, I guess."
                        a "Not really, I mean it only makes a difference in like a few percent of cases.",
                          q "You're complaining that a few percent chance is too small?  For saving somebody's life?  By, like, doing a few minutes work or whatever?",
                            a "Well, when you put it that way...."
                            a "No, what I'm saying is that your argument is bullshit."
                a "The bit about simple techniques.",
                  q "You're saying CPR is complicated.",
                    a "Yes."
                    a "No."
                a "The bit about no special tools.",
                  q "What special tools do you need for CPR?",
                    a "A mask.",
                      q "Oh man, those things are so fiddly though!",
                        a "Yeah but they're important to prevent infection.",
                          butactually = q "But actually what they're recommending now is that you don't bother with the rescue breathing stuff and focus more on chest compressions.",
                            a "Oh, okay."
                            a "But isn't that only for untrained responders?",
                              q "Sure.  But so like then why didn't you just say \"yes\" when I asked you if you knew what CPR was?",
                                a "Because I wanted to know how you would answer, obviously."
                                a "Oh well you know, I'm not like technically certified or anything at this point...."
                    a "An AED.",
                      q "Well that's true, AEDs are super good, but you can still do CPR without an AED.",
                        a "I disagree."
                        a "I suppose you're right."
                        a "Yeah but the AED is so much more effective.",
                          q "Well that's true, isn't it.",
                            a "Yes, it is!"
                            a "No actually I was just saying that for no reason."
                    a "A manikin.",
                      q "I, uh... I mean... those are good for practicing, but, like, in a real situation where you were really doing CPR on someone, you don't actually need one of those.",
                        a "Don't be ridiculous.  They're included in the training for a reason."
                        a "Hmm, I guess you have a point."
                        a "Wait I thought we <em>were</em> talking about training.",
                          q "Oh!  Well, no, that's not what I meant.  Sorry for being unclear!",
                            a "That's okay!"
                            a "You're not getting off that easy, bub."
                    a "A lung bag.",
                      q "A lung bag?  What the heck is a lung bag?",
                        a "Nothing.  Never mind."
                        a "Go do an image search.",
                          q "Wait, is it that big long thing?  Weird!",
                            a "I know, right?"
                    a "A HALO seal.",
                      waitreallygsw = q "Wait, really?  You use those for CPR?",
                        a "Yes.",
                          q "You sure you're not thinking of a gunshot wound to the chest or something?",
                            a "Nah."
                            a "Oh maybe."
                            a "Well sure, I mean why else would you need to give somebody CPR?"
                        a "No."
                    a "A SAM splint.",
                      q "Wait, really?  You use those for CPR?",
                        a "Yes.",
                          q "You sure you're not thinking of like a broken bone or something?",
                            a "Nah."
                            a "Oh maybe."
                            a "Well sure, I mean why else would you need to give somebody CPR?",
                              q "Uhhhh... do you know what CPR is?",
                                a "Yes."
                        a "No."
                    a "An oxygen tank.",
                      q "Hmm.  I guess that could be useful.",
                        a "Totally useful!", butactually
                    a "A butane lighter.",
                      q "I don't get it.",
                        a "Me either!"
                    a "An Israeli bandage.", waitreallygsw
                    a "A hemostatic sponge.", waitreallygsw
                a "All of it.",
                  q "So you're saying everything I say is wrong?",
                    a "Yes."
                    a "No."

  q "Okay.  Say you're standing in line for the new Star Wars movie, and somebody in front of you starts complaining about chest pain, and then collapses.  What do you do first?",
    a "Call 911.",
      q "Nice!  That is exactly correct!  Okay, so you dial and it's ringing and you're getting a recording about being transferred and not to hang up and what are you doing in the meantime?",
        a "Begin CPR.",
          q "Actually, if you're in a movie theater, there's a good chance that there's an AED in the lobby.  You might want to grab that first.",
            a "What's an AED?",
              q "It's an Automatic External Defribrillator.  It's a little doodad that can sense when a heart is malfunctioning and shock it back into its normal rhythm.",
                a "Wow, that sounds super handy!  I would totally go look for one.",
                  q "Okay!  You run into the lobby and... what are you looking for exactly?",
                    a "A red heart with a spark in the middle.",
                      redorgreen = q "Could be red or green.",
                        rggotit = a "Got it.",
                          q "Cool.  You find it and bring it back and open it up and it starts talking.  What now?",
                            a "Stick the electrodes on the victim's chest.",
                              q "Sure, there's a little diagram on there, and... wait, these go under the clothes, don't they?",
                                a "Nope!  We're not doing this.  Sorry.",
                                  q "That is okay!  Nobody is going to make you do anything you don't feel comfortable doing.",
                                    a "Thank you."
                                    a "Aren't you supposed to, like, tell me that they might die if I don't do this?",
                                      q "Do you want me to tell you that?",
                                        a "Yes.",
                                          q "Why?",
                                            a "Because then we know where we stand.  You're trying to convince me to do something I already said don't want to do.  Don't try to pretend that you're not.  This is bullshit, and I want to call you on it.",
                                              q "It's true that someone might die, and it's true that I might like to convince you of something, but...." # XXX
                                            a "Because I know that I would totally not want to undress some random stranger, probably not even be able to do it, but I fear that maybe this is wrong and bad and I kinda want you to motivate me." # XXX
                                            a "Uh, wow, I... gosh.  I, uh, can't really get behind either of the above two options.  Can I just go with \"other\" or something?" # XXX
                                        a "No.",
                                          q "Then I won't.",
                                            a "Okay."
                                        a "Well, is it true?  How likely is it, in a real scenario, that my doing this would actually save somebody's life?" # XXX
                                a "No problem, I pull their shirt up." # XXX
                                a "Wow, this is intense.  Maybe I should pay attention to what the voice is saying." # XXX
                            a "Wait and listen to what the AED is telling me to do." # XXX
                    a "A green heart with a lightning bolt in it.", redorgreen
                    a "A little placard that says AED on it.",
                      q "Yep, and it'll almost certainly have the symbol too, either the red or the green one.", rggotit
                    a "Any of the above.",
                      q "Yep, it'll likely have both the letters AED and the red or green symbol.", rggotit
                a "Yeah, thanks, I'm gonna leave that stuff for the professionals!",
                  q "Actually, AEDs are designed to be used by anyone.  Professional paramedics have way fancier gear.",
                    a "Yeah but I have no idea how to use one." # XXX
                    a "Also isn't it super dangerous to shock someone's heart just because they fell down?  That's just stupid." # XXX
            a "Good idea, I'll go look for it!" # XXX
            a "Good idea, I'll send someone to fetch it and do CPR in the meantime!" # XXX
        a "Go find an employee." # XXX
        a 'Shout "OMG, does anybody know CPR?"' # XXX
        a "Run around in circles." # XXX
        a "Scream." # XXX
        a "Shout." # XXX
        a "Sit quietly." # XXX
        a "Panic." # XXX
    a 'Shout "OMG, does anybody know CPR?"' # XXX
    a "Go find an employee." # XXX
    a "Hide." # XXX
    a "Run." # XXX
    a "Look for an AED." # XXX
    a "Stand around doing nothing." # XXX
    a "Panic." # XXX
    a "Give CPR." # XXX
    a "Don't give CPR." # XXX

  q "[XXX more stuff goes here]",
    a "[XXX okay?]"

  -> q "Okay, looks like that's it.  Thank you for playing this game, #{@fn}.",
    a "My pleasure."
    a "You're welcome."
    a "What a satisfying conclusion!",
      q "I know, right?",
        a "Totally.",
          q "Yep!",
            a "Uh-huh."
    a "Hold on, I have a question!",
      q "What is your question?",
        a "Is that all there is?",
          q "Because if that's all there is, my friend...",
            a "Then let's keep dancing...",
              q "Who is that from, anyway?",
                a "Alan Price",
                  (youtube = (id, aa...) ->
                    if aa.length is 0 then aa = [a "Nice."]
                    q """<iframe width="420" height="315" src="https://www.youtube.com/embed/#{id}?rel=0" frameborder="0" allowfullscreen></iframe>""", aa...
                  )("Dyg420eUvok")
                a "Bette Midler", youtube 'Fpn_xu81ySo'
                a "The Bobs", youtube 'DoEuRa6YyoU'
                a "Chaka Khan", youtube 'tTVv-ktbvpg'
                a "Cristina Monet", youtube 'AybvLztacFM'
                a "Giant Sand", youtube '1w6bHzvikl8'
                a "Firewater", youtube 'YTrWOPaCax0'
                a "Hecate, goddess of witchcraft",
                  q "Oh man.  Were you there for that?",
                    a "I was.",
                      q "So good, right?",
                        a "YES.",
                          q "Did she...?",
                            a "Yes.",
                              q "OMG I'm so jealous!",
                                a "I know, right?  I can hardly believe it!"
                            a "No.",
                              q "Still!",
                                a "Yeah."
                    a "No, but I heard about it.",
                      q "And are you gonna...?",
                        a "Yes."
                        a "No."
                    a "Actually I have no idea what you're talking about.",
                      q "I am talking about <em>Sleep No More</em>.",
                        a "Okay."
                a "Lindsay Anderson", youtube 'yCgWJqcOQhA'
                a "Liz Gillies", youtube 'HNnTQbLbtWI'
                a "PJ Harvey", youtube 'O0ZUAorP0b4'
                a "Peggy Lee", youtube 'LCRZZC-DH7M'
                a "Sandra Bernhard", youtube 'ru6d318UlOQ'
                a "Tony Bennett", youtube 'xr3CcBp6aw0'
                a "Uncle Yo", youtube 'hu18YKjijEo'
            a "No seriously, wtf" # XXX
        a "What is my score?",
          yourscore = q "Your score?  There is no score in this game.",
            a "Oh, okay."
            a "I want a score dammit.",
              q "Your score is 0 out of a total of 0 possible points.  This is the only possible score and gives you no rank in particular.  Would you like to RESTORE, RESTART, UNDO the last command, look at the CREDITS, see a list of AMUSING things to do, or QUIT?",
                a "RESTORE",
                  q "Okay, go ahead and edit the URL now.  Or use a bookmark.  Or your browser's history function.",
                    a "Eh, never mind."
                a "RESTART"
                a "UNDO",
                  ->
                    if not @undo
                      @undo = true
                      yourscore
                    else
                      q "Again?!",
                        a "Yes, again!",
                          q "But we just did this.",
                            a "Oh right, I forgot, never mind."
                            a "But I want to see if something different will happen this time!",
                              q "Nothing different will happen.",
                                a "Well never mind then."
                                a "But I still want to do it!",
                                  q "No.",
                                    a "Boooo!"
                        a "No, forget it."
                a "CREDITS",
                  q """This game was written by #{@author or "<span class='redacted'>REDACTED</span>"}.""",
                    a "Thanks!"
                    a "Hey, what about beta-testers?",
                      ->
                        if not @author
                          q "Sorry, you haven't unlocked that achievement in this playthrough, so I can't say anything more.",
                            a "Oh well!"
                            a "Wait, how do I unlock it?",
                              q "Oh, it's way back at the beginning.  You have to get me to tell you who wrote this game first.",
                                a "Got it, thanks!"
                        else
                          q "No beta-testers yet!  Unless... wait, are <em>you</em> a beta tester?",
                            a "Yes.",
                              q "Then be sure to remind me to add your name here!",
                                a "Okay, will do!"
                            a "No.",
                              q "Then I guess that's it!",
                                a "Thanks!"
                a "AMUSING",
                  q "Amusing?  Like what?",
                    -> if @amusing then a @amusing,
                      q "Oh yeah!  That was pretty okay I guess!",
                        a "Agreed."
                    a "I guess I can't think of anything.",
                      q "Yeah, me either.",
                        a "Too bad."
                a "QUIT"
        a "How can I send feedback to the author?",
          q 'Simply email <a href="mailto:REDACTED@lolbird.com"><span class="redacted">REDACTED</span>@<span class="redacted">lolbird</span>.com</a>.',
            a "Thanks!"
            a "Wait, there's a problem.",
              q "What seems to be the problem?",
                a "I'm trying to copy and paste that email address, but it's kinda hard to select the text because of how it's a hyperlink.",
                  q 'Here you go: <span class="redacted">REDACTED</span>@<span class="redacted">lolbird</span>.com',
                    a "Thanks!"
                a "The email address is blacked out!",
                  q 'My goodness, so it is!  Here, try this one: <a href="mailto:REDACTED@lolbird.com"><span class="redacted">REDACTED</span>@lolbird.com</a>',
                    a "Thanks!"
                    a "Hey, um, the first part is still blacked out.",
                      q 'Oh!  In that case, I recommend you use this one: <a href="mailto:REDACTED@lolbird.com">REDACTED@<span class="redacted">lolbird</span>.com</a>',
                        a "Thanks!"
                        a "But now the first part just says REDACTED.",
                          q "Yes, that's correct.",
                            a "Thanks!"
                            a "But that's not going to work, I mean I need the actual email address.",
                              q "Oh!  Well, just... uh... hey, what's your favorite 19-letter word?",
                                a "astrometeorological",
                                  classy = q "Classy!  I bet that'll work great.",
                                    a "Thanks!"
                                    a "Wait, so, what was I supposed to --"
                                a "bronchoconstriction",
                                  medical = q "Wow, sounds all fancy and medical!  Seems like that ought to do the trick, then!",
                                    a "Thanks!"
                                    a "Okay, so all I need now is --"
                                a "counterintelligence", classy
                                a "deindustrialization", medical
                                a "extraterritoriality", classy
                                a "facioscapulohumeral", medical
                                a "gastroenterological", medical
                                a "hypersusceptibility", classy
                                a "interdenominational", classy
                                a "jurisprudentialists", classy
                                a "knowledgeablenesses",
                                  stretch = q "That's, uh, kind of a stretch, don't you think?",
                                    a "Yeah, you're right.  Never mind!"
                                    a "No way, that's totally a legit word.",
                                      q "Cool.  Try that, then.",
                                        a "Thanks!"
                                        a "Wait, uh, what was the second --"
                                a "lithochromatography", classy
                                a "mischaracterization", classy
                                a "nonrepresentational", classy
                                a "overdiversification", classy
                                a "plenipotentiaryship", classy
                                a "quadragintesimality", stretch
                                a "representationalism", classy
                                a "straightforwardness",
                                  q "Wow, that's so... straightforward!  Bound to work!",
                                    a "Thanks!"
                                    a "Could you just remind me what the --"
                                a "theoanthropomorphic", classy
                                a "unprepossessingness", classy
                                a "vicissitudinousness", stretch
                                a "wondermongeringness", stretch
                                a "xylotypographicness", stretch
                                a "yohimbinizationists", stretch
                                a "zygomaticoauricular", medical
                        a "But now the second part is blacked out.",
                          q "Well don't you remember it from before?",
                            a "Yes.",
                              q "Then you should be all set.",
                                a "Thanks!"
                                a '<span class="redacted">!@#$</span> you!'
                            a "No.",
                              q "I imagine you'll have a difficult time, then.",
                                a "Look, could you just give me the --"
        a "What about that thing with the fog and the railroad tracks and the car's engine stalls?",
          q "Oh right!  Did I ever explain what was supposed to be going on with that?",
            a "No.",
              goingon = q "Oh man, it was gonna be so good... see, the fog was actually going to turn out to be chlorine gas....",
                a "Wait, what?!",
                  q "Anyway I guess we're out of time.  Have a nice rest of your day!",
                    a "But --"
                a "Isn't that poisonous?",
                  q "Indeed it is!",
                    a "I thought as much.  So that means --"
                a "Where would it have come from?",
                  q "Train wreck.  Tank cars, full of liquefied chlorine gas.",
                    a "Got it."
                    a "Wait.  Is that even a real thing?",
                      q "Oh totally!  It's used for water purification.  This is all based on a real incident.",
                        a "Wow, this sounds impressively well-researched!  I bet if you --"
                a "Doesn't chlorine have a distinctive odor?",
                  q "Sure does!  Smells like a pool at first.  I was considering mentioning, but then I thought I'd have you only notice it in the next bit, to increase the mysteriousness!",
                    a "Wow, that would have been so much fun!  You should --"
                    a "That's ridiculous.  I would totally have noticed --"
                a "Doesn't chlorine have a distinctive color?",
                  q "Kind of?  It's a bit greenish.  I was considering mentioning, but then I thought I'd have you only notice it in the next bit, to increase the mysteriousness!",
                    a "Wow, that would have been awesome.  Too bad --"
                    a "But that's completely unrealistic.  I would definitely have --"
                a "Wait but so why were all the car engines dying?",
                  q "Well, you know, they've got internal combustion engines, and if the air intake stops feeding oxygen to the thingee, it can't burn the fuel so the engine conks out.",
                    a "Oh, that makes sense.  Thanks!"
                    a "But I drive an electric car.",
                      q "Wait, really?",
                        a "Yeah, really.",
                          q "Are you sure?",
                            a "Of course I'm sure.",
                              q "And you'd be willing to testify to that effect in a courtroom?",
                                a "Sure, why?",
                                  q "Because I think this private investigator is going to try to weasel out of refunding my money, is why.  I'll be in touch!  See ya!",
                                    a "Wait, I --"
                                a "No way.",
                                  q "What about an afidavit?",
                                    a "Well, okay.",
                                      q "Great!  I'll be in touch.",
                                        a "Okay?"
                                    a "Nope.",
                                      q "Really?  After everything we've been through?  One simple thing I ask of you, and you won't even....",
                                        a "I really don't think --"
                                    a "What's that?",
                                      q "You know, like a sworn statement.  On paper.",
                                        a "Sure, that doesn't sound so bad."
                                        a "I don't think so."
                            a "Um... does a hybrid count?",
                              q "I, uh... huh.  Maybe?  I'll have to get back to you on that.",
                                a "Okay, um, how long do you think you'll --"
                        a "No not really but how would you even know if I did or not, I mean it's not like you even asked.",
                          if @origname
                            q "But didn't you say you were #{@origname}?",
                              a "So?",
                                q "So #{@origname} doesn't drive an electric car iether.",
                                  howdoyou = a "Wait, how do you know that?",
                                    q "Extensive market research?",
                                      a "Okay, sure, that sounds plausible."
                                      a "Wait, what exactly do you mean by --"
                              a "Wait, I thought I was #{@fn} #{@ln}.",
                                q "Well, sure, I mean, <em>now</em> I know that, but <em>at the time</em> I believed that you were #{@origname}.  And #{@origname} doesn't drive an electric car either.", howdoyou
                          else
                            q "But didn't you say you were #{@fn} #{@ln}.",
                              a "Yes, so?",
                                q "So #{@fn} #{@ln} doesn't drive an electric car either.", howdoyou
                              a "But see I'm not actually #{@fn} #{@ln}.",
                                q "Wait, you're not?!",
                                  a "Correct.",
                                    q "But I was still right about you not driving an electric car.",
                                      a "Well, yes.",
                                        q "Oh good.  Well, I guess we're done here then.",
                                          a "Okay."
                                          a "Wait, I still --"
                a "How is that <em>good</em>?",
                  q "Narratively, I mean!  There's no better way to engage the player's interest than by throwing you into the middle of a story like that.",
                    a "Well, I guess that makes sense."
                    a "But wouldn't the gas just kill me right away?",
                      q "Well, probably!  But, you know.  Learn by dying, right?",
                        a "Oh I see.  Cool!"
                        a "No no no, you're doing it wrong.  See, if the character keeps dying and the player keeps undoing or restarting the game back to the same situation, then not only is that super boring but it also tends to interfere with the player's sense of --"
            a "Definitely not.", goingon
        a "Can I play again?",
          q "No, unfortunately it's only ever possible to play this game once.",
            a "Oh well."
            a "What's so unfortunate about that?",
              q "Just that you'll only ever get to read a tiny fraction of the text contained within this game?  It seems like such a waste.",
                a "Huh, I guess so."
                a "I disagree.",
                  q "Why is that?",
                    a "Because it's better to quit after having a somewhat positive experience than to persist until the magic is spoiled.",
                      q "Good point.",
                        a "Thanks!" # XXX
                    a "Because this game sucks, dude.",
                      q "Well, good thing it's over, right?",
                        a "Thank goodness!"

  q "THE END"
]
