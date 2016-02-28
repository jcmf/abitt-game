{qq, q, a} = require './dsl.coffee'
frack = '<span class="redacted">$@^#</span>'

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
                      if (now.getTime() < 1460617200000) is (not window?.timetravel)
                        q "Then why does your clock say #{now}?",
                          a "Uhhhh... whatever, never mind.", -> @amusing = "Like that thing where you told me the current date and time."
                      else
                        q "You're sure you want me to reveal this?",
                          a "Eh... I changed my mind.", backedoff = -> @amusing = "Like that thing where I wanted to know who wrote this game but you were being all weird about it so I backed off."
                          a "Definitely not.", backedoff
                          a "No way.", backedoff
                          a "Yes, for the last time, I hereby affirm that I actually want you to tell me the name of the person who wrote this game.  I understand that you will really tell me, without any further stalling, and I promise not to disqualify any entrant or entry, retroactively or otherwise, as a result of learning this information, even if I later turn out to be Ryan Veeder.",
                            ->
                              @author = (String.fromCharCode x for x in [74, 97, 99, 113, 117, 101, 115, 32, 70, 114, 101, 99, 104, 101, 116]).join ''
                              @amusing = "Like that thing where you took sooooo much convincing to tell me who wrote this."
                              q "This game was written by #{@author}.",
                                a "Thank you."
                    a "No.",
                      betternottell = q "Then I guess I'd better not tell you!",
                        a "I respect your decision, even though I disagree with it.",
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

  q "You're driving along the highway, next to some railroad tracks, and it's getting a bit foggy but nothing that you can't see through, and all of a sudden your car's engine stalls.  The cars you can see are all coming to a stop as well.  What do you do?",
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
                                    q (-> @origname or= "#{@fn} #{@ln}"; [@title, @fn, @ln, @expo] = [t, f, l, expo]; @nonifer = not expo; "Oh my goodness!  It's such an honor to finally meet you, #{@title} #{@ln}!  I have so many questions!"),
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
    a "A revelation from God.", -> @theology = true
    a "A disaster of epic proportions."
    a "A language design document of mainly historical interest."

  q 'All right, in that case... what does "grue" mean to you?',
    a "It's an alternate pronunciation of \"glue.\"", -> @words = true
    a "It's an imaginary color that flouts Occam's razor.", -> @philosophy = true
    a "It's the root noun from which \"gruesome\" is derived.", -> @words = true
    a "It's a device for preventing adventurers from wandering in the dark.", -> @if = true

  q "Very good!  Now, which of these would you rather be?",
    a "a cowboy",
      (likesong = (song) -> ->
        @song = song
        q "Like the song?",
          a "Yes, like the song!"
          a "No, I didn't even realize that was a song."
          a "No, I know the song but that's not why I chose that answer."
      )('gkA0AsTHUbY')
    a "a hammer than a nail", likesong 'Fh4K5yAFpNA'
    a "able to fly",
      q "So do you look down on people who choose invisibility?",
        a "Yes."
        a "No."
    a "drinking",
      q "Like drinking alcohol?",
        a "Yes.",
          q "Do you think of yourself as an alcoholic?",
            a "Yes."
            a "No."
        a "No."
    a "eating",
      q "Okay, then here's a tip: Later on, when you get to the movie theater, go find an employee.",
        a "Thanks!"
    a "invisible",
      q "So do you feel like the people who choose flight look down on you?",
        a "Yes."
        a "No."
    a "sleeping",
      q "Are you tired right now?",
        a "Yes.",
          q "How much sleep did you get last night?",
            a "Less than four hours."
            a "Four to eight hours."
            a "Eight to twelve hours."
            a "More than twelve hours."
        a "No."
    a "with someone I love", ->
      @love = true
      q "Think of a person you love.  How would you quantify your love for that person?",
        a "I can't think of any such person.",
          q "Why not?",
            a "Because I'm depressed and it's hard to feel things.",
              soundshard = q "Gosh.  That sounds hard.",
                a "It is hard."
                a "Nah, it's fine."
            a "Because I'm very lonely and there is no one special in my life.",
              soundshard
            a "All of the above.", soundshard
            a "None of the above."
        a "Meh.",
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
        a "Pretty okay.", theyloveyoumore
        a "Yep, lots.",
          normalamount = q "So like a normal amount?",
            a "Yes.", theyloveyoumore
            a "No, more than normal.",
              theyloveyouless = q "Do you feel like they love you less than you love them?",
                a "Yep, no question.", howdoyoufeel
                a "No way, in fact they love me even more!", ->
                  @evenmore = true
                  howdoyoufeel
                a "Eh, about the same amount.", howdoyoufeel
            a "No, less than normal.", theyloveyoumore
        a "OMG so much!", normalamount
        a "Impossibly much!!!  <em>[Note: Do not choose this option.]</em>", ->
          @impossibly = true
          theyloveyouless
  -> if @impossibly and @evenmore
    q "Sounds pretty farfetched to me.",
      a "Yeah, I'm just messing with you."
      a "But it's true!", -> @song = ['aQc6Njdkw-E', 560]

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
              a "I regret nothing.",
                q "Uh, okay!",
                  a "Nothing!  You hear me?  <em>Nothing.</em>"
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

  -> if @words
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

  -> if @real and not @geo and not @skullport and not @premath and not @philosophy
    more = (w1, w2, w3, w4) ->
      submore = (words) ->
        capitalize = (word) -> word.replace /^./, (m) -> m.toUpperCase()
        submoreanswer = (word) ->
          a "#{capitalize word}.", -> @word = word
        answers = (submoreanswer word for word in words)
        q "Faster!", answers...
      q "Again!",
        a "Fit.", submore w1
        a "Finish.", submore w2
        a "Form.", submore w3
        a "Function.", submore w4
    q "A \"football\" is...",
      a "...an inflated sphere that can be kicked with the feet and head.",
        q "Pick one:",
          a "A.", more ['grammarian', 'ghoulishly', 'gleamingly', 'gynecology', 'glaciation', 'groundwork', 'gluttonous', 'gorgonzola', 'guillotine', 'geophysics', 'guilefully', 'gunrunning', 'gastronomy', 'gamekeeper', 'graduation', 'grapefruit', 'gentlefolk', 'grisliness', 'gratuitous', 'gloominess'], ['gravestone', 'goldilocks', 'gloriously', 'ghostwrite', 'gunmanship', 'grooviness', 'galvanized', 'grindstone', 'gorgeously', 'greasiness', 'generosity', 'geodynamic', 'glasshouse', 'grudgingly', 'geriatrics', 'granddaddy', 'geographic', 'gentleness', 'granulated', 'gnarliness'], ['gratifying', 'glareproof', 'generalize', 'guesthouse', 'germicidal', 'goalkeeper', 'gramophone', 'graymalkin', 'gigglingly', 'genderless', 'gingerness', 'gutterally', 'groundless', 'grievously', 'geneticist', 'googolplex', 'gingersnap', 'geocentric', 'gargantuan', 'glimmering'], ['greenhouse', 'gracefully', 'grogginess', 'government', 'geothermal', 'gesticular', 'gymnastics', 'gyroscopic', 'garterless', 'gingivitis', 'gregarious', 'glovemaker', 'gelatinous', 'gravidness', 'garishness', 'geological', 'gatekeeper', 'glistening', 'guardhouse', 'giftedness']
          a "B.", more ['xanthodont', 'xenophobia', 'xerography', 'xylophonic'],  ['yearnfully', 'yellowtail', 'yesteryear', 'youthfully'], ['yeastiness', 'yeomanlike', 'yieldingly', 'yourselves'], ['zabaglione', 'zenithward', 'zigzaggery', 'zoomimetic']
          a "C.", more ['juggernaut', 'jauntiness', 'jejuneness', 'journalist', 'jewelsmith', 'junctional', 'joulemeter'], ['johnnycake', 'joyfulness', 'jawbreaker', 'jacketless', 'judicially', 'journeyman', 'jaggedness'], ['jingoistic', 'jailkeeper', 'jardiniere', 'jabberment', 'jeopardize', 'justifying', 'juxtaposit'], ['jinglingly', 'jackassery', 'jocularity', 'jackhammer', 'janitorial', 'jocundness', 'jubilation']
          a "D.", more ['quakeproof', 'quadrennia', 'queryingly', 'quirkiness', 'quaintness', 'quarreling'], ['quadrilogy', 'quixotical', 'questioner', 'quadriceps', 'quaternary', 'queiscence'], ['quadrangle', 'quaternion', 'quenchable', 'quadrature', 'quantifier', 'quintuplet'], ['quadrupole', 'quadruplet', 'queasiness', 'quizzingly', 'quarantine', 'quadrisect']
      a "...a two-pointed air pocket that can be thrown in a spiral pattern.",
        q "Choose:",
          a "1.", more ['leadership', 'letterhead', 'listlessly', 'lithograph', 'liveliness'], ['lackluster', 'ladyfinger', 'languorous', 'liquidator', 'lubricious'], ['laughingly', 'lavishness', 'loggerhead', 'lumberjack'], ['lackadaisy', 'lamentable', 'landlubber', 'lugubrious']
          a "2.", more ['lachrymose', 'lawbreaker', 'litigation', 'logistical', 'luminosity'], ['landlocked', 'largemouth', 'licentious', 'lieutenant', 'lifesaving'], ['laceration', 'lebensraum', 'loveliness', 'lymphocyte'], ['leprechaun', 'libelously', 'lifelessly', 'livelihood']
          a "3.", more ['landholder', 'liberation', 'limitation', 'liverwurst', 'luxuriance'], ['legalistic', 'ligurgical', 'liquescent', 'locomotion', 'loneliness'], ['lengthwise', 'levitation', 'likability', 'lopsidedly'], ['laboratory', 'legitimize', 'lighthouse', 'literalist']
          a "4.", more ['lanthanide', 'lascivious', 'legislator', 'likelihood', 'lusciously'], ['laryngitis', 'lenticular', 'liberalism', 'locomotive', 'loquatious'], ['lampoonery', 'lawfulness', 'loganberry', 'logrolling'], ['legibility', 'legitimate', 'linguistic', 'literature']
      a "...a folded piece of paper that can be flicked across a classroom.",
        q "Select:",
          a "This one.", more ['victimhood', 'virologist', 'vaccilator', 'vespertine', 'viziership'], ['volitional', 'valorously', 'veiledness', 'vaportight', 'vehemently'], ['vertically', 'vagabondry', 'vacantness', 'vernacular', 'volubility'], ['vinegrower', 'vermicular', 'varnishing', 'volumetric', 'vacationer']
          a "That one.", more ['voluptuous', 'viscerally', 'vindictive', 'vulnerable', 'vinologist'], ['vigilantly', 'vocabulary', 'villanelle', 'verbalizer', 'variometer'], ['vegetarian', 'verifiable', 'vengefully', 'vaginismus', 'vertebrate'], ['validation', 'vendettist', 'variegated', 'volleyball', 'victimizer']
          a "The other one.", more ['vasemaking', 'venomously', 'vascularly', 'vassalship', 'visitation'], ['vegetative', 'vanquisher', 'vanishment', 'volatility', 'vagrantism'], ['virginhead', 'vocational', 'victorious', 'vermicelli', 'vacuometer'], ['vituperate', 'voluminous', 'verbomania', 'virtualize', 'vestibular']
          a "No wait", more ['veterinary', 'visualizer', 'valleyward', 'ventilator', 'virtuosity'], ['vegetation', 'vindicator', 'vociferous', 'vulgarness', 'villainess'], ['virulently', 'vaudeville', 'visibility', 'vibraphone', 'velocipede'], ['vixenishly', 'veneration', 'vexingness', 'virtuously']
      a "...a bumpy hemisphere one can stand on in order to massage the feet.",
        q "Decide:",
          a "Red.", more ['whereunder', 'windshield', 'woodenness', 'wieldiness', 'weaponless'], ['woefulness', 'womanishly', 'wheezingly', 'wizardlike', 'wholesaler'], ['whatsoever', 'watchfully', 'windowpane', 'wirelessly'], ['wretchedly', 'wickerwork', 'weasellike', 'watermelon']
          a "Yellow.", more ['wildebeest', 'wordlessly', 'whipstitch', 'wheelhouse', 'wallflower'], ['watchtower', 'worryingly', 'woodpecker', 'withdrawal'], ['wrongdoing', 'weatherman', 'wearyingly', 'wanderlust'], ['waterfront', 'wintertime', 'woodworker', 'wonderland']
          a "Green.", more ['widespread', 'watchmaker', 'wantonness', 'windedness', 'wellspring'], ['whispering', 'wonderment', 'wastepaper', 'wildcatter'], ['wilderness', 'withholder', 'whiteboard', 'wickedness'], ['wrathfully', 'waterproof', 'wraithlike', 'woodcutter']
          a "Blue.", more ['whimpering', 'weakhanded', 'waistcloth', 'witchcraft', 'woundingly'], ['whomsoever', 'wainwright', 'wageworker', 'weightless'], ['worthiness', 'windowless', 'wobbliness', 'westernize'], ['wondrously', 'wagonsmith', 'warehoused', 'windjammer']

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

  -> if @geo then q "Which country has the highest lowest point?",
    a "Andorra", -> @geo = false
    a "Burundi", -> @geo = false
    a "Lesotho", -> @geo = true
    a "Rwanda", -> @geo = false

  -> if @expo and @neverheardofexpo
    @nextamusing = "I don't know... maybe something involving vanilla ice cream?"
    q "Something's been bothering me about some of your earlier answers.",
      a "Oh?  What is it?",
        q "Well... you were asking me who wrote this game... and then it turned out you'd never heard of the Exposition!",
          a "So?",
            q "So?  You told me you were #{@fn} #{@ln}!",
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
          a "It's a gift."
          a "I have those from time to time."
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
                        q "You are also welcome!",
                          a "Thanks!"
                  a "I'm kind of annoyed now, but I would probably be even more annoyed if you'd asked me more questions like that, so maybe it's just as well."
                  a "No way, you <em>have</em> to ask me the follow-up question!",
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

  -> if @words
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
    a "6.674\u00d710<sup>-8</sup> cm<sup>3</sup> g<sup>-1</sup> s<sup>-2</sup>", -> @theoretical_physics = true # CGS, more theoretical
    a "4.302\u00d710<sup>-3</sup> pc <i>M</i><sub>\u2609</sub><sup>-1</sup> (km/s)<sup>2</sup>" # astronomical
    a "0.01720209895" # Gauss's astronomical, applies to the planets
    a "9.8 m/s<sup>2</sup>" # at Earth's surface
    a "1" # natural units

  q "So did you play that game yet where you're a dog?",
    a "Yes.",
      q "What did you think of it?",
        a "Meh."
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

  -> if @philosophy
    q "If a tree falls in the woods and no one hears it, does it make a sound?",
      a "Yes.",
        q "What do you mean, \"yes\"?  How can you possibly know that?",
          a "Well, I'm not <em>certain</em>, but I <em>am</em> 99.9999% sure."
          a "Silent treefalls are unheard-of, and I don't hear <em>you</em> proposing a mechanism through which the presence or absence of an observer could make any difference."
          a "Conservation of energy."
          a "I left an audio recorder nearby and played it back later."
      a "No.",
        q "What do you mean, \"no\"?  How can you possibly be sure?",
          a "Sound is what you hear.  If nobody hears it, then it isn't sound by definition."
          a "The situation you describe is impossible, so <em>any</em> answer I give is 100% correct by definition."
          a "When you say \"no one hears it,\" what you mean is that there is nobody and nothing there to leave behind any evidence of the tree making a sound.  If there's nothing there, then by definition the tree must be falling freely in a perfect vacuum.  And you can't have sound in a vacuum.",
            q "Slow down there, space cow-person!  What part of \"in the forest\" did you not understand?",
              a "Hmm, good point, never mind."
              a "Uh... the \"forest\" part?"
              a "Well I mean by \"forest\" you clearly meant \"perfect absence of anything and everything other than the one tree.\"  So my point stands."
              a "Silence!  My logic is unassailable!"
              a "Space cow-person?",
                q "You know, like space cowboy, only less old-fashioned.",
                  a "Cool!"
                  a "What are you, some kind of feminist?",
                    q "Why yes.  Yes I am.",
                      a "Good."
                      a "Feminism is dumb.",
                        q "Sounds like we disagree, then!",
                          a "Yep!"
                      a "Look, just because you used a gender-neutral term doesn't make you an actual feminist.",
                        q "That's true!",
                          a "Thank you for acknowledging that."
          a "I meant \"No!\" as in \"Stop talking about this!\"", -> @philosophy = false
      a "Well, it depends....",
        q "What does it depend on?",
          a "It depends on what you mean."
          a "It depends on the specific situation."
          a "It depends on how I feel like answering."
          a "Look, can we talk about something else?", -> @philosophy = false
      a "Who cares?", -> @philosophy = false

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
    a "...queen.", -> @song or= ['kHI-zRzXm3A', 560]
    a "...rook."
    a "...squire."

  q "Which of these words would you be most likely to use to describe carbonated soft drinks?",
    a "Soda.", -> @soda = 'soda'
    a "Pop.", -> @soda = 'pop'
    a "Coke.", -> @soda = 'coke'

  -> if @math
    one_inch = '1\u2033'
    q "Imagine a box with perfectly square corners whose length, width, and depth are exact multiples of #{one_inch}.  If the each of the box's six sides has a diagonal measurement that is also an multiple of #{one_inch}, what is the smallest possible volume of the box?",
      a "No such box can exist."
      a "120 cubic inches."
      a "About half a TEU.",
        q "Now imagine that the distances between opposite corners of the box (e.g. front-top-left to back-bottom-right) must also be exact multiples of #{one_inch}.  What's the volume of the smallest possible box?",
          a "No such box can exist.",
            q "But if it did exist, what would you call it?",
              a "A perfect cuboid.", -> @moremath = true
              a "An Euler brick."
              a "A Halcke solid."
              a "Arthur."
          a "Maybe a thousand Olympic swimming pools, give or take."
          a "There are stars about that size."
          a "Much larger than the observable universe."
      a "Bigger than the Earth."

  -> if @theology
    q "After pouring a clean liquid from a clean bottle into an unclean cup, should the bottle be considered contaminated?",
      a "Yes."
      a "No."
      a "It depends."
      a "Who cares?"

  -> if @geo
    q "Bangladesh, Cape Verde, Ethiopia, France, Honduras, Israel, Japan, Kyrgyzstan, Mexico, Qatar, Somalia, Uruguay...",
      a "...Venezuela."
      a "...Samoa."
      a "...Yemen."
      a "...South Africa."
      a "...Zambia."
      a "...Zimbabwe."

  -> if @if
    q "Which of the following won the most XYZZY awards?",
      a "Aotearoa."
      a "Cryptozookeeper.", -> @if = false
      a "Slouching Towards Bedlam.", @if = false
      a "Zombie Exodus."
      a "What's a XYZZY award?", ->
        @if = false
        if @nonifer
          q "The Oscars of the interactive fiction scene, basically?",
            a "Okay."
            a "Huh."
        else
          q "You're breaking character, #{@title} #{@ln}.",
            a "Oops!"

  -> if @theology
    q "Which of the following English monarchs is also a saint?",
      a "Edward the Confessor"
      a "Edward the Martyr"
      a "Henry VIII"
      a "James I"

  -> if @theoretical_physics
    q "Which of the following best explains the decay of black holes?",
      a "General relativity."
      a "Quantum electrodynamics."
      a "The second law of thermodynamics."
      a "String theory."

  -> if @if
    q "Which of the following received the most Spring Thing votes?",
      a "Blue Lacuna"
      a "Fate"
      a "Mentula Macanus: Apocolocyntosis", -> @song or= ['iR8lVsjSF6M', 560]
      a "The Rocket Man from the Sea"

  -> if @moremath
    q "What is the smallest odd number (greater than zero: 1, 3, 5...) such that multiplying that number by any integer power of two (greater than one: 2, 4, 8...) and adding 1 always produces a prime result?",
      a "10223",
        (smallestodd = (msg, letter) -> q "Why did you choose that answer?",
          a msg
          a "Because I like to choose #{letter} when I don't know the answer."
          a "I chose it at random."
          a "It looked nice.",
            q "In what way?",
              a "Oh, you know, the way the digits sort of repeat like that."
              a "It's a pretty color.",
                q "Oh?  What color is it?",
                  a "Teal."
                  a "Mauve."
                  a "Indigo."
                  a "Crimson."
                  a "Veridian."
                  a "Octarine."
                  a "Chartreuse."
                  a "Ultraviolet."
              a "It kind of looks a bit like this other number that I have a crush on.",
                q "Which number?",
                  a "It's... I'm too embarrassed to say."
          a "Because it's the right answer.",
            q "How do you know?",
              a "Because I guessed it!"
              a "Because I looked it up on the Internet."
              a "Because I devised this fiendishly clever proof.  Wanna see it?",
                q "Yes.",
                  a "Well too bad, because I'm not going to show you."
                  a "Okay, hold on, I'm going to... uh... you want me to, like, type it in?",
                    q "No, that would take too long.  Just, hmm, think about it real hard, and I'll try to read your mind.  Okay?",
                      a "Okay!  Thinking... thinking... done!  Did you get it?",
                        q "No.",
                          a "Well too bad because I'm not doing <em>that</em> again."
                          a "Okay, let's try again!  Thinking... thinking... more thinking... okay did you get it this time???",
                            q "Yeah, I guess, probably.",
                              a "Cool."
                              a "What's wrong?",
                                q "I don't really understand this proof.",
                                  a "Oh no!  Maybe it's wrong.",
                                    q "Yeah, maybe.",
                                      a "Maybe I can get one of my peers to review it or something.",
                                        q "Sounds like a great idea.",
                                          a "Thanks, I thought of it myself!"
                                      a "Math sure is hard."
                                  a "Do you want me to explain it?",
                                    q "Not really, no.",
                                      a "Oh.  Okay."
                                  a "Maybe we should try again.  I could think slower this time!",
                                    q "I have a different suggestion.  Instead of doing that, we could just, you know, not do that.",
                                      a "Great idea!  That will save a ton of time!"
                                      a "I like the way you think."
                                      a "Brilliant!"
                      a "On second thought I'd rather keep this to myself."
                      a "That's the stupidest thing I've ever heard.",
                        q "Yay!  I win!",
                          a "Yep, you win at being stupid!"
                          a "You sure are stupid."
                          a "Good job."
                      a "Among the things I have ever heard, the thing you just said is in the 99th percentile for how stupid it is.",
                        q "Well.  Gosh.  I feel pretty... nonplussed about that.",
                          a "Good."
                          a "Sorry."
        )("You asked for the smallest one, and that was the smallest available.", "A")
      a "21181", smallestodd "Well, 10223 turned out not to work, and this is the next smallest option, so....", "B"
      a "55459", smallestodd "I tried 10223 and 21181 and neither of those meets the criteria, so clearly it's gotta be this one.", "C"
      a "78557", smallestodd "Process of elimination -- the first three are definitely no good, and this is the only one left to choose.", "D"

  -> if @philosophy
    q "Two identical twins go out to a bar, drink identical drink after identical drink, and while identically roaring drunk decide to drive back to their identical homes in their identical cars.  As they drive home, side by side (they are neighbors), they happen to run a red light.  Unfortunately a small child is crossing the street!  At the last moment, both twins see the child and brake and swerve and take every possible evasive action, but sadly it is too late and the first twin hits and kills the child!!!  The second twin comes safely to a stop without hitting anybody.  Who is to blame for the child's death?",
      a "Nobody is to blame -- it was an accident.",
        q "How so?",
          a "The twins got drunk by accident.",
            q "What?  Why do you think that?",
              a "It was clear from the way you told the story that they were trying to stay sober, but <em>fate</em> intervened!",
                q "Okay but what if I told you a similar story about a similar set of twins only <em>these</em> twins were <em>definitely</em> trying to get drunk?",
                  a "I guess that would be different."
                  a "Then I'd say you're lying.  It's impossible to get drunk on purpose.",
                    q "Hmm.  Have you ever tried to get drunk?",
                      a "Yes, but I failed."
                      a "No."
                      a "Only accidentally."
          a "The twins got drunk on purpose, but then got in the car by accident.",
            q "How do you figure?",
              a "Those cars were totally asking for it.",
                q "Wait... how does....",
                  a "If the cars didn't want to be entered by drunk twins, they shouldn't have been out at a bar dressed like that.",
                    q "I... that's... yes.",
                      a "Woooooo I win yay me."
                      a "Ha ha you're so gullible."
              a "Drunk people can't do things on purpose.",
                q "That is an interesting way of looking at things.",
                  a "Yes it is."
                  a "You're wrong!  It's boring."
          a "The twins were driving drunk on purpose, but the fact that the child happened to be crossing just then was an accident.",
            q "I guess that's true.  Wait, is that true?  Let me think about this.",
              a "Are you done thinking yet?",
                q "No.",
                  a "How about now?",
                    q "Still thinking!",
                      a "Okay, how about --"
              a "Quit thinking and ask me another question already."
          a "The twins and the child deliberately conspired to engineer this scenario, but it was only meant to result in light bruising.",
            q "Hold on, I'm writing this down... light bruising, got it.",
              a "Excellent."
              a "Actually could you change that to say \"gunshot wound to the chest?\"",
                q "Yes, that seems reasonable.  There we go!  All set.",
                  a "Thanks!"
                  a "Okay now change it back."
          a "I don't like any of those answers."
      a "The twin who hit the child is to blame.",
        q "But they both did the same thing!",
          a "No, one of them killed somebody and the other didn't.",
            q "But they could have!",
              a "But they didn't."
              a "Oh good point never mind."
      a "The twin who didn't hit the child is to blame.",
        q "Really?",
          a "Sorry, wasn't paying attention."
          a "No, I was just being ridiculous."
          a "Wait, which option did I just choose?"
          a "Oh, uh, sorry, I think I chose the wrong thing by mistake."
          a "Yes, really.",
            q "I... I'm sorry, I... I don't have a response prepared for that.",
              a "Yeah, you think you're so smart but I sure showed you, didn't I?",
                q "You sure did!",
                  a "I am so sorry about that."
                  a "Good."
      a "Both twins are to blame.",
        q "Even the one who didn't kill anybody?",
          a "Yes.",
            q "Congratulations, that's the correct answer.  All of the other answers are wrong.",
              a "I knew it!"
              a "Wait, no they're not.",
                q "Then why didn't you choose them?",
                  a "Because this one is right too.",
                    q "No no no, I think you are misunderstanding how questions work.  A question can only have one <em>right</em> answer.",
                      a "Oh."
                      a "Okay."
                  a "I did choose them.",
                    q "What, like in some alternate timeline beyond my feeble comprehension?",
                      a "Uh... sure."
          a "Oh my goodness, I hadn't thought of that.  Can I still change my mind?",
            q "Well... okay, just this once, I will allow it.",
              a "Thanks!"
              a "Aw man, I was secretly hoping that you wouldn't.",
                q "Well it's too late now.  Your mind has been irrevocably changed.",
                  a "Well that's okay because I'm secretly glad that --"
      a "I blame you for asking me this horrifying question!",
        q "Then you're going to <em>love</em> this next one.",
          a "Am I?",
            q "Yes.",
              a "OK, what is the next one?"
          a "OK, what is it?"
          a "Wait, I bet I know what it is.",
            q "How do you know?",
              a "Because I cheated.",
                q "Cool!  Keep up the good work.",
                  a "Okay, I will!"
              a "Because I'm psychic.",
                q "That is very impressive and also hard to believe.",
                  a "Yes it is."
                  a "It's true though."
              a "Because I'm a really good guesser.",
                q "Good job guessing!",
                  a "Gosh thanks."
                  a "But I haven't even told you my guess yet!  Okay: You're going to ask me --"
              a "Because I've played this game before.",
                q "I'm afraid you are mistaken.",
                  a "Oh okay well forget I said anything then."
                  a "No I'm not.  You are."
                  a "Is this a reference to the thing that's going to happen later where I can ask about playing again?",
                    q "I don't know what you're talking about.",
                      a "Sure you don't."
                      a "Oh never mind then, my mistake.",
                        q "That's what I was saying!",
                          a "Huh, I guess so."
                          a "No it wasn't."

  q "Do you know CPR?",
    a "What is CPR?", ->
      @alreadydead = true
      q "Oh, you know, just that thing where somebody is dead and then you bring them back to life using a few simple techniques that can be taught in a few minutes and performed without any special tools!",
        a "Wow, sounds awesome!  Tell me more!"
        a "I don't think that's an accurate description.",
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
                        a "Well sure, I mean why else would you need to give somebody CPR?",
                          q "There could be other reasons!",
                            a "Like what?"
                    a "No."
                a "A SAM splint.",
                  q "Wait, really?  You use those for CPR?",
                    a "Yes.",
                      q "You sure you're not thinking of like a broken bone or something?",
                        a "Nah."
                        a "Oh maybe."
                        a "Well sure, I mean why else would you need to give somebody CPR?",
                          q "Uhhhh... do you know what CPR even is?",
                            a "Yes."
                            a "Of course I do."
                            a "You already asked me this earlier."
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
        a "Ahem... so... do the letters in \"CPR\" <em>stand</em> for anything?",
          q "Oh!  Yes.  Those letters stand for \"cardiopulmonary resuscitation.\"",
            a "Thanks!"
            a "Shouldn't it just be \"CR,\" then?",
              q "Hmm... what if I were to instead claim that \"CPR\" stands for \"Cardio-Pulmonary Resuscitation?\"  Would that work for you?",
                a "I suppose that would be acceptable."
                a "No way.  That hyphenation is totally gross."
                a "Sorry, too much capitalization."
                a "I don't like that you put the question mark inside the quotation marks like that."
                a "I was going to choose D but it called those things \"quotation marks\" instead of \"inverted commas\" like it should have done so I'm going with E instead because E is better."
                a "Shouldn't answer E have more regular commas in it???"
                a "Whoa, F has <em>way</em> too many question marks!!!!!"
                a "omg all of these answers are terrible smh"
                a "Don't even try to weasel out of this.  I'm on to you."
    a "No.",
      liketolearn = q "Would you like to learn?",
        a "Sure."
        a "No thanks.",
          q "Why not?",
            a "Sounds boring.",
              q "It's pretty exciting, actually!",
                a "Oh well, in that case, let's do this!",
            a "I mean I already kinda know quite a bit, I'm just not, like, officially certified or anything.", -> @trained = true
            a "Are you seriously offering to teach me CPR right now?",
              q "Yes.",
                a "Huh.  All right.",
    a "Yes.",
      q "So you've, like, been trained and stuff?",
        a "Yep, I'm certified and everything.", -> @trained = true
        a "I was certified but it expired.", -> @trained = true
        a "I'm not certified, but I like took a course or something.", -> @trained = true
        a "No formal training, but I've studied some things on my own and I feel pretty confident.", -> @trained = true
        a "Ehhh.. you know what, I don't actually know CPR all that well, if at all.", liketolearn

  q "Okay.  Say you're standing in line for the new Star Wars movie, and somebody in front of you starts complaining about chest pain, and then collapses.  What do you do first?",
    a "Call 911.", ->
      @call911 = true
      q "Nice!  That is exactly correct!  Okay, so you dial and it's ringing and you're getting a recording about being transferred and not to hang up and what are you doing in the meantime?",
        a "Begin CPR.",
          q "Actually, if you're in a movie theater, there's a good chance that there's an AED in the lobby.  You might want to grab that first.",
            a "What's an AED?",
              q "It's an Automatic External Defribrillator.  It's a little doodad that can sense when a heart is malfunctioning and shock it back into its normal rhythm.",
                a "Wow, that sounds super handy!  I would totally go look for one.", lookforaed
                a "Yeah, thanks, I'm gonna leave that stuff for the professionals!",
                  q "Actually, AEDs are designed to be used by anyone.  Professional paramedics have way fancier gear.",
                    a "Yeah but I have no idea how to use one.",
                      q "Yeah but smart people have put decades of research into making sure that you'll be able to do it anyway, even though you have no idea what you're doing.  It, like, talks to you and stuff.",
                        a "Wow, that's amazing!"
                        a "I am still skeptical.",
                          aedranout = q "Oh man, I am sorry to hear that you still feel that way!  I wish I could think of more interesting and cool things to say about AEDs but I totally ran out!",
                            a "Eh, happens to the best of us."
                            a "I am surprised and disappointed in you.",
                              q "Me too.",
                                a "Oh well."
                    a "Also isn't it super dangerous to shock someone's heart just because they fell down?  That's just stupid.",
                      q "It would be, which is why that's totally not how AEDs work at all!  See, there are sensors in the thingee that automatically measure the person's heart rhythms and figure out whether they need to be shocked or what.  It's basically idiot-proof.",
                        a "You are saying that AEDs are designed to be used by idiots.",
                          q "Yep!  Pretty awesome, huh?",
                            a "I am grudgingly impressed."
                            a "Should I be insulted?",
                              q "Hmm, let me see... based on your test results so far... I'm gonna go with yes.",
                                a "Ouch."
                            a "Sounds like crazy talk to me.", aedranout
            a "Good idea, I'll go look for it!",
              q "Too late, you hesitated and now all is lost!  Better luck next time.",
                a "Whoops!  Oh well."
                a "I didn't hesitate!  We totally paused that hypothetical scenario while I was asking you a question, so no time passed at all.",
                  q "Nope!  Doesn't work that way.  You lose!",
                    a "If you say so."
                    a "Well that's dumb."
            a "Good idea, I'll send someone to fetch it and do CPR in the meantime!", -> @getaed = true; cpr
        a "Go find an employee.", employee
        a 'Shout "OMG, does anybody know CPR?"', shoutomg
        a "Run around in circles.",
          q "Good answer!  The American Heart Association recommends running in circles for thirty minutes a day, five days a week.",
            a "Hooray, I guessed it!",
              q "Wait, you were just guessing?  Then I'm sorry, but I'm going to have to take back that award.",
                a "Okay, here you go.",
                  q "Thanks for being such a good sport!  Here's another award for that.",
                    a "Thanks!"
                    a "Thanks?"
                    a "You can keep it.  I'm through with your lousy awards."
                a "Nope, I'm keeping it.",
                  q "Hmm.  Looks like you win this round!",
                    a "Yes!"
                a "What award?",
                  q "Don't get fresh with me, buster.",
                    a "Sorry."
                    a "I'm not."
                    a "Do you even understand what words mean?"
            a "But isn't running supposed to be bad for my knees?",
              q "The American Heart Association doesn't give a #{frack} about your #{frack}ing knees.",
                a "Fair enough."
                a "That's discrimination!",
                  q "Yes.  But it's the good kind.",
                    a "Oh."
                    a "No it's not!"
                a "What about the Arthritis Foundation?",
                  q "They're too shy to say anything about it to the AHA.",
                    a "I see."
        a "Scream.",
          q "A highly effective strategy!  Others soon take charge of the situation.  You can stop screaming now.",
            a "Stop screaming."
            a "Continue to scream.",
              q "Paramedics arrive.  They give you a look but decide there are more pressing matters to be dealt with first.",
                a "Scream some more.",
                  q "Okay well I'm going to skip over some stuff but the upshot is that you wind up in one of those creepy institutions for the criminally insane.",
                    a "Cool!  Any supervillains here I would have heard of?",
                      q "Have you heard of Armless Tiger Man?",
                        a "Yes.",
                          q "Well, some say he used to be here.  But everyone agrees that he isn't here now.  So no.",
                            a "Awww."
                        a "No.",
                          q "Then there definitely aren't.",
                            a "Awww."
                    a "I'm still screaming though, right?",
                      q "You suppose?  It's gotten kind of hard to tell lately.",
                        a "Right."
                    a "Is that even a thing?",
                      q "It totally is.",
                        a "Huh!"
                a "Okay I'm tired of screaming now.",
                  q "Too late, you remember the wise words your favorite grandrelative imparted to you during your callow youth: <em>Whomsoever proclaimeth themselves tired of screaming, yea, verily, that person be-eth likewise tired of life itselfeth.</em>",
                    a "Die.",
                      q "You are now dead.",
                        a "I am okay with this."
                        a "More questions?"
                    a "Don't die.",
                      q "You never liked that grandrelative anyway.",
                        a "It's true."
                        a "Did so."
        a "Shout.", ->
          @song = ['NkbL8JxswRc', 560]
          q "Like in the Tears for Fears song?",
            a "Yes, exactly like that.",
              q "So what <em>are</em> the things you can do without?",
                a "A soul."
                a "Sunlight."
                a "Contact with other living beings."
                a "This line of questioning."
            a "No!",
              q "You shout for help!  Somebody over by the drinking fountains comes running over and handles everything.  Good job!",
                a "I am deserving of this praise."
                a "Aw shucks, t'weren't nuttin'."
            a "Actually I was going for more of a Prostetnic Vogon Jeltz impression.",
              q "Are you serious?  Come on, quit horsing around, somebody's life is ebbing away here.",
                a "Fine, I... I do CPR and stuff.  Correctly and non-humorously.",
                  q "Good idea!  Okay, everything is fine now.",
                    a "Great!"
                    a "Boring!"
                a "Well it's hard for me to take anything seriously when you keep presenting me with all of these ridiculous options!",
                  q "Hmm, that's true, isn't it?",
                    a "Yes.",
                      q "You think I should tone it down a bit?",
                        a "Yes."
                        a "No."
                    a "No."
        a "Sit quietly.",
          q "After a minute, somebody picks up.  A few minutes later, the ambulance arrives and whisks their patient away, sirens blaring.  You never find out what happens next.",
            a "Cool."
            a "Yikes."
        a "Panic.", dontpanic
    a 'Shout "OMG, does anybody know CPR?"',
      shoutomg = q "Good plan!  Turns out somebody does, over by the drinking fountains, and they totally save the day thanks to your quick thinking!",
        a "Hooray!"
    a "Go find an employee.",
      employee = q "Hmm.  There's someone at the concession stand.",
        a "Perfect!  I get in line.",
          q "The line's pretty long.  It might be a while!",
            a "Hmm, this doesn't seem worth it.  I guess I give up and go home."
            a "This is important!  I stay in line.",
              q "Okay, you're getting closer to the front of the line now.",
                a "Good!",
                  q "It's still pretty far though.",
                    a "I continue to wait patiently in line.",
                      q "Time passes.",
                        a "z.z.z.z.z.",
                          q "Suddenly you are at the front of the line!  What will you order?",
                            a "Giant pretzel.",
                              delicious = q "Delicious!",
                                a "What now?"
                            a "Popcorn.",
                              q "With butter?",
                                a "Obviously.",
                                  excellentchoice = q "Excellent choice!",
                                    a "What next?"
                                a "Nope.",
                                  q "Good thinking!",
                                    a "What next?"
                            a "Box of candy.",
                              q "Mmmm... so what do you think of Candy Box 2?",
                                a "Never heard of it!",
                                  q "Oh, you should check it out!  It's a text-based game, much like this one, only different!",
                                    a "No thanks."
                                    a "Where can I find this game?",
                                      cb2link = q """It's at <a href="http://candybox2.net/" target="_blank">candybox2.net</a>.""",
                                        a "Cool, thanks!"
                                a "I've heard of it but haven't played it.",
                                  q "Have you played the original Candy Box, at least?",
                                    a "Yes.",
                                      q "What did you think of that one?",
                                        a "Good!",
                                          q "Then you should totally check out Candy Box 2!  It's by the same author and everything!",
                                            a "Maybe later."
                                            a "OMG show me it!", cb2link
                                        a "Bad!"
                                    a "No.",
                                      q "Oh wow, you should check it out!  It's a text-based game, much like this one, but different!",
                                        a "I'd rather not."
                                        a "Cool, how can I find it?",
                                          q """Just go to <a href="http://candies.aniwey.net/" target="_blank">candies.aniway.net</a>.""",
                                            a "Thanks for the tip!"
                                a "Pretty good!"
                                a "Pretty bad!"
                            a "Hot dog.", excellentchoice
                            a "Pizza.",
                              q "You purchase the pizza, but later discover that this was a terrible, terrible mistake.",
                                a "Oh no!"
                            a "Hot wings.",
                              q "Messy and delicious!",
                                a "Awww yeah."
                            a "Mozarella sticks.",
                              q "With what sauce?",
                                a "Marinara.",
                                  q "Classic!",
                                    a "Yay!"
                                a "Ranch.",
                                  q "Nice.",
                                    a "Mmmmm."
                                a "Mayo.",
                                  q "A bold decision!",
                                    a "Yep, that's me."
                                    a "I disagree."
                                a "BBQ.",
                                  q "Good thinking!",
                                    a "Indeed."
                                a "Honey mustard.",
                                  q "The perfect accompaniment!",
                                    a "Of course."
                                a "No sauce.",
                                  q "That's right, keep it simple!",
                                    a "Yes."
                            -> a "Large #{@soda}.",
                              q "What kind?",
                                a "Coke."
                                a "Dr. Pepper."
                                a "Root beer."
                                a "Sprite."
                                a "Mountain Dew."
                                a "Pepsi."
                                a "7 Up."
                                a "Ginger ale."
                                a "Mr. Pibb."
                                a "Diet Coke."
                                a "Diet Dr. Pepper."
                            a "Ice cream.",
                              q "Which kind?",
                                a "Cone.",
                                  softserve = q "What flavor?",
                                    a "Chocolate.",
                                      toppings = q "Do you want hot fudge on that?",
                                        a "Yes.",
                                          toppings2 = q "Nuts?",
                                            a "Yes.",
                                              q "Candy sprinkles?",
                                                a "Sure.",
                                                  toppings3 = q "How about whipped cream?",
                                                    a "Yes please.",
                                                      q "With a cherry on top?",
                                                        a "Yes!"
                                                        a "No."
#                                                            a "Is it one of those maraschino ones?",
#                                                              a "Yep.  You want it or not?",
#                                                                a "Yes."
#                                                                a "No."
                                                    a "No thank you."
                                                a "No thanks.", toppings3
                                            a "No.",
                                              nutallergy = q "Are you by any chance allergic to tree nuts or other nuts?",
                                                a "Yes.",
                                                  q "Any allergies to medications?",
                                                    a "Yes."
                                                    a "No."
                                                    a "None that I know of...."
                                                a "No."
                                                a "Maybe.",
                                                  q "Did you get tested?",
                                                    a "Yes.",
                                                      q "So what happened?",
                                                        a "Results were inconclusive."
                                                        a "I don't trust them."
                                                        a "I don't remember."
                                                        a "Haven't heard back yet."
                                                    a "No.",
                                                      q "Are you gonna?",
                                                        a "Probably."
                                                        a "Probably not.",
                                                          q "Why not?",
                                                            a "Don't wanna."
                                                            a "Don't have insurance."
                                                            a "Can't get a referral."
                                                            a "It's pretty inconvenient."
                                                            a "For good reasons I won't get into here."
                                                            a "For stupid reasons I won't get into here."
                                        a "No.", toppings2
                                    a "Vanilla.", ->
                                      @nextamusing = "Like that thing with the vanilla ice cream... but what if it were a different <em>kind</em> of vanilla ice cream?"
                                      q "So are you into BDSM?",
                                        a "Yes.",
                                          q "So would you say that the only vanilla thing about you is your ice cream preference?",
                                            a "Yes, I would say that."
                                            a "No, I would not say that."
                                            a "What are you... what?"
                                        a "No."
                                        a "What is BDSM?",
                                          q "It's, uh... it stands for something... can't you just look it up?",
                                            a "Okay, I looked it up!",
                                              q "Where did you look it up?",
                                                a "Wikipedia.",
                                                  q "Did you look at all the pictures?",
                                                    a "Yes."
                                                    a "No.",
                                                      q "Well?  Are you going to go back and look at them?",
                                                        a "Yes."
                                                        a "No."
                                                a "Urban Dictionary.",
                                                  howdthat = q "Yeah?  How'd that work out for you?",
                                                    a "Surprisingly well."
                                                    a "About like you'd expect."
                                                a "An actual physical dictionary made out of squashed trees.",
                                                  q "Was it a library book?",
                                                    a "Yes."
                                                    a "No."
                                                    a "It used to be, but it isn't anymore.",
                                                      q "Because you stole it?",
                                                        a "Yes, I stole it."
                                                        a "No, it was, like, decommissioned or whatever."
                                                a "Google."
                                                a "Yahoo! Answers.", howdthat
                                                a "Asked somebody.",
                                                  q "Who?",
                                                    a "A friend."
                                                    a "A family member."
                                                    a "An acquaintance."
                                                    a "A stranger."
                                                    a "Myself.",
                                                      q "Did the answer sound convincing?",
                                                        a "Yes.",
                                                          q "Good job.",
                                                            a "Thanks."
                                                        a "No."
                                                    a "No one."
                                            a "No, I'd rather not.",
                                        a "That's none of your business!",
                                          q "That's true.  You don't have to answer.",
                                            a "Thank you."
                                        a "Why are you asking me that?!",
                                          q "Why do you think?",
                                            a "Because you want to make me uncomfortable."
                                            a "Because the idea excites you."
                                            a "Because you're trying to make a stupid joke about ice cream."
                                            a "All of the above."
                                    a "Chocolate vanilla swirl.", toppings
                                a "Sundae.", softserve
                                a "Sandwich."
                                a "Bar on a stick.",
                                  q "Okay, do you want the one with milk chocolate and nuts on the outside and vanilla ice cream inside, or the one with dark chocolate and no nuts on the outside and chocolate ice cream on the inside?",
                                    a "Milk chocolate nuts vanilla.",
                                      q "Why did you choose that one over the other one?",
                                        a "Because I like milk chocolate better than dark chocolate."
                                        a "Because I like vanilla ice cream better than chocolate ice cream.", vanilla = ->
                                          q "Don't you worry about counterfeit vanilla?",
                                            a "Yes."
                                            a "No."
                                            a "Is that a thing?",
                                              q "Absolutely!  There's this chemical, coumarin, that has a really intense vanilla flavor, even more intense than actual vanilla.  It's prescribed as a blood thinner, and it's also pretty commonly used as rat poison, because it kills by causing internal bleeding.  And sometimes it's abused by unscrupulous taste-criminals!",
                                                a "Wow, neat!"
                                                a "Gah, that's horrifying!"
                                                a "I think you're confused about the difference between coumarin and coumadin.",
                                                  q "Wait, really?",
                                                    a "Yeah, see, couma<em>rin</em> is the thing that shows up in fake vanilla, and couma<em>din</em> (also known as warfarin) is the blood-thinning drug that doubles as rat poison (though it isn't technically poisonous of course, just harmful in large doses, like many drugs).  They're similar, and the one is used to make the other, but they're not actually the same thing.",
                                                      q "Wow!  So the vanilla stuff is fine, is what you're saying.",
                                                        a "Oh no!  It causes liver and kidney damage, and it's banned as a food additive by the FDA.  It's legal in Mexico, though.",
                                                          q "Gosh, I did not realize that!  Thanks, I learned something today!",
                                                            a "No no, thank <em>you</em>."
                                                    a "No, not really."
                                        a "Because I like nuts better than no nuts."
                                        a "They both sounded equally good but I went with this one."
                                        a "They both sounded equally bad but I went with this one."
                                        a "Eh, no reason."
                                    a "Dark chocolate chocolate.",
                                      q "Why did you choose that one over the other one?",
                                        a "Because I like dark chocolate better than milk chocolate."
                                        a "Because I like chocolate ice cream better than vanilla ice cream."
                                        a "Because I like no nuts better than nuts.", nutallergy
                                        a "They both sounded equally good but I went with this one."
                                        a "They both sounded equally bad but I went with this one."
                                        a "Eh, no reason."
                                a "Bar not on a stick.",
                                  q "Hmm, looks like just those Snickers ones then.  Is that what you want?",
                                    a "Yes.",
                                      q "It's cold, yet satisfying.",
                                        a "Okay."
                                    a "No."
                                a "Cylindrical container.",
                                  q "Which flavor?",
                                    a "Vanilla.", vanilla
                                    a "Rocky road.", -> @song = 'beTsDOBRs8I'
                                    a "Mango sorbet.",
                                      q "Why?",
                                        a "Because I enjoy mango-flavored foods."
                                        a "Because I enjoy mango-colored foods."
                                        a "Because I enjoy mango-textured foods."
                                        a "Because it sounded like it might be non-dairy."
                                    a "Fudge brownie.",
                                      q "Mmm, good choice.",
                                        a "Thank you."
                                        a "I agree."
                                    a "Espresso bean.",
                                      q "Why?",
                                        a "Because it sounds cool."
                                        a "Because it sounds different."
                                        a "I enjoy the intense flavor."
                                        a "I enjoy the stimulating effect."
                                    a "Pistachio caramel.",
                                      q "For the pistashio or for the caramel?",
                                        a "Pistashios."
                                        a "Caramel."
                                        a "Both."
                                        a "Neither."
                                    a "Peaches and cream.", -> @song = 'wvAnQqVJ3XQ'
                                    a "Chocolate peanut butter banana.",
                                      q "It has a picture of Elvis on it.",
                                        a "Nice."
                                        a "Meh."
                            -> if @ln != 'Veeder'
                              a "Enormous cupcake.",
                                q "What kind?",
                                  a "Beelzebubblegum."
                                  a "Cake-o-Lantern Spicy Pumpkin."
                                  a "Creepy Candy Corn Creature."
                                  a "Cupcake from the Black Lagoon."
                                  a "Curse of the S'Mummy's S'Mores."
                                  a "Double, Double, Toil and Truffle."
                                  a "Frostingstein's Monster."
                                  a "Neapolitomb."
                                  a "Salted Calaveramel."
                                  a "Scarecrow Guts."
                                  a "Spookies and Cream."
                                  a "Strawberry Venomade."
                                  a "Hey, what's with all this cutesy Halloween-themed stuff?  Doesn't this place have any normal cupcakes?",
                                    q "It is a joke!  Would you like me to explain it for you?",
                                      a "Plz expln humor plz!",
                                        q "I did not come up with any of those names myself -- instead, I blatantly stole them from Ryan Veeder!",
                                          a "Wow, that's hilarous!  I am laughing so hard right now!"
                                          a "Oh my gosh!  He's gonna be so pissed when he finds out you did that!",
                                            q "I'm way ahead of you -- I set it up so that this branch will only be visible to non-Ryan Veeder players!",
                                              a "Good thinking!"
                                              a "Brilliant!"
                                              a "Phew!"
                                          a "Well the joke's on you, my friend, because I've actually been Ryan Veeder <em>all along</em>!", ->
                                            [@title, @fn, @ln] = ['Mr.', 'Ryan', 'Veeder']
                                            q "Goodness me!  I did not anticipate this eventuality!  Whatsoever will become of me now?",
                                              a "Pain of forfeit, of course!",
                                                q "Noooooooooooooooooooooooooo!",
                                                  a "Yeeeeeeeesssssssssss!"
                                                  a "Okay fine geez.  I didn't think you were going to be such a wuss about it."
                                              a "Oh, don't worry, I'm just going to sue you for copyright infringement.",
                                                q "Oh thank goodness!  Thank you so much Mr. Veeder, sir!",
                                                  a "You're welcome!"
                                          a "I am unimpressed by these shenanigans."
                                      a "No thanks."
                            a "Chicken tenders.", delicious
                            a "French fries.",
                              q "With what dipping sauce?",
                                a "Ketchup.",
                                  q "Still the best.",
                                    a "Yep."
                                a "Mayo.",
                                  q "I'm not here to judge you, but sometimes it's difficult.",
                                    a "Okay?"
                                a "Ketchup and mayo mixed together.",
                                  q "Satisfactory!",
                                    a "Okay."
                                a "Hot sauce and honey.",
                                  nothere = q "Yeah... they don't have that here.",
                                    a "Oh no!"
                                a "Malt vinegar.", nothere
                                a "Ponzu.", nothere
                                a "None.",
                                  q "Extra salt, perhaps?",
                                    a "Yes."
                                    a "No."
                            a "Huge candy bar.",
                              q "What kind?",
                                a "Baby Ruth",
                                  q "Who was that named after?",
                                    a "Babe Ruth, baseball player."
                                    a "Ruth Cleveland, presidental granddaughter."
                                    a "Ruth Williamson, granddaughter of a candy company executive."
                                    a "Beats me."
                                a "Butterfinger",
                                  q "Who appeared in ads for that?",
                                    a "Bart Simpson."
                                    a "Spuds MacKenzie."
                                    a "Steve Urkel."
                                    a "I have no idea what you're talking about."
                                a "Clark",
                                  q "Who was that named after?",
                                    a "Otey Clark, baseball pitcher."
                                    a "David L. Clark, its inventor."
                                    a "Clark Can't, a pet chinchilla."
                                    a "Sorry, not a clue."
                                a "Heath",
                                  q "Who was that named after?",
                                    a "L.S. Heath, a schoolteacher."
                                    a "Bayard Heath, a confectioner."
                                    a "Edward Bayard Heath, founder and CEO."
                                    a "I don't understand why you might think I would know this."
                                a "Kit Kat",
                                  q "Why is it called that, anyway?",
                                    a "An anonymous factory worker put the name in a suggestion box."
                                    a "It's named after the Kit-Cat Club in London."
                                    a "No one seems to know."
                                    a "I don't know."
                                a "Milky Way",
                                  q "What is that named after?",
                                    a "A malted milk drink."
                                    a "A boulevard in Akron."
                                    a "The galaxy in which we live."
                                    a "Who knows?"
                                a "Oh Henry",
                                  q "Who was that named after?",
                                    a "O. Henry, the author."
                                    a "<em>Henry V</em>, a play by William Shakespeare."
                                    a "Some boy who flirted with the girls who made the candy."
                                    a "I am baffled by this question."
                                a "Payday",
                                  q "Why is it called that, anyway?",
                                    a "Because it happened to be pay day when they named it.  Obviously."
                                    a "It's named after a movie."
                                    a "Nobody knows."
                                    a "Why do you... what... where do these questions even come from?  How would I possibly... I don't get this!  This is ridiculous!"
                                a "Skor",
                                  q "Why is it called that, anyway?",
                                    a "Because it sounds like the word \"score.\"",
                                      q "So when someone gives you one, you triumphantly shout out its name?",
                                        a "Uh... sure."
                                    a "Because it's Swedish for \"shoes.\"",
                                      q "That doesn't make any sense!",
                                        a "Yes it does.",
                                          q "Explain.",
                                            a "Shoes are delicious!  They are made of cow, just like hamburgers, which are also delicious."
                                            a "It's a Swedish delicacy, similar to Cuban <em>ropa vieja</em>, which literally translates to \"old clothes.\"  Except that <em>skor</em> is more of a dessert food, obviously."
                                            a "I cannot explain this."
                                        a "No, you're right."
                                    a "It is a great mystery."
                                a "Snickers",
                                  q "Why is it called that, anyway?",
                                    a "It's named after a horse.",
                                      q "Oh.  How'd you know that?",
                                        a "Well, it was the only choice available."
                                a "Twix",
                                  q "Why is it called that, anyway?",
                                    a "Uhhhh... because there are two of them?",
                                      q "I guess that would make sense.",
                                        a "Probably!"
                    a "I start a conversation with the person in front of me to help make the time pass more quickly.",
                      q "What will you talk about?",
                        a "News.",
                          q "\"Hey,\" you say, trying to direct your words to the person standing ahead of you in line, \"did you hear about that person who collapsed just now?  I think they were probably having a heart attack!\"  No one seems to be listening to you, however.",
                            a "Oh well."
                        a "Weather.",
                          q "\"Hey,\" you say, to nobody in particular, \"lots of weather we've been having lately, huh?  Huh?\"  You elicit no reaction.",
                            a "Meh."
                        a "Sports.",
                          q "\"Hey,\" you say to the back of the head of the person in front of you, \"how about that local sports team?\"  They ignore you, however.",
                            a "Bah."
                        a "Entertainment.",
                          q "\"Hey,\" you say, \"have you seen this movie yet?  Because I have!  Let me tell you what happens!\"",
                            a "Abort!  Abort!"
                        a "Lifestyle.",
                          q "\"Hey,\" you say to the person in front of you, \"are you into BDSM, by any chance?  Because I sure am!\"  And it turns out they are too!  Also they are super attractive!  You have a delightful conversation, sit next to each other during the movie, miss most of it, get kicked out by the ushers afterwards, and embark on a beautiful and mutually fulfilling relationship.",
                            a "Well <em>that</em> escalated quickly.",
                              q "Sure did.  Nice work!",
                                a "Thanks?"
                            a "Er, actually, I already have a romantic partner.",
                              q "A beautiful <em>polyamorous</em> relationship, with the full knowledge and enthusiastic consent of all parties!",
                                a "Got it!"
    a "Hide.",
      q "Where will you hide?",
        a "Inside the projection booth.", ->
          @nextamusing = "Well like what if, instead of doing CPR, I could just pray to Ryan Veeder?"
          q "You encounter a sign: EMPLOYEES ONLY.",
            a "Go in anyway.",
              q "It's locked.",
                a "Oh well."
                a "Unlock door.",
                  q "With what?",
                    a "Key.",
                      q "Which key do you mean: the red key, or the blue key?",
                        a "Red.",
                          q "It doesn't fit the lock.",
                            a "Shake fist at sky.",
                              q "That's not a verb I recognize.",
                                a "HINT.",
                                  q "Hints have been disabled.",
                                    a "RESTART."
                                    a "QUIT."
                                a "XYZZY.",
                                  q 'A hollow voice says, "Did somebody order pizza?"',
                                    a "Yes.",
                                      q "You consume the pizza.",
                                        a "Yum!"
                                        a "Yuck!"
                                    a "No."
                        a "Blue.",
                          q "You unlock the door.",
                            a "Enter door.",
                              q "Which door do you mean: the north door, the east door, or the south door?",
                                a "North.",
                                  closed = q "It's closed.",
                                    a "Open door.",
                                      q "Which door do you mean: the north door, the east door, or the south door?",
                                        a "North.",
                                          ->
                                            @song = ['hvkjP6dqpfY', 560]
                                            q "You are in a dark room.",
                                              a "Leave."
                                              a "Inventory.", ->
                                                items =
                                                  'Veeder': 'a magnifying glass, a pair of sunglasses, a handgun'
                                                  'Polodna': 'a shock collar (being worn)'
                                                  'Short': 'a T-remover, a tub of restoration gel'
                                                  'Ryan': 'a ballgown (containing six bombs and a cannon) (being worn)'
                                                  'Boegheim': 'a notebook, an information sheet'
                                                  'Vedenoja': 'black tape (being worn)'
                                                  'Freebern': 'a bottle (containing a cork)'
                                                  'Kinsman': 'a small sword, a blindfold, the Room 203 key'
                                                  'Nelson': 'a chocolate biscuit, a crumpled piece of paper'
                                                inventory = if @ln of items then items[@ln] + ', a red key, and a blue key' else 'a red key and a blue key'
                                                q "You are carrying #{inventory}.  You have been eaten by a grue!",
                                                  a "Quit."
                                              a "Turn on light switch.",
                                                q "You can't see any such thing.  You have been eaten by a grue!",
                                                  a "Quit."
                                              a "Sit in chair.  Enjoy movie."
                                        a "East.",
                                          q "You can't go that way.",
                                            a "Quit."
                                        a "South.",
                                          q "That's plainly inedible.",
                                            a "Quit."
                                            a "Send bug report.",
                                              q "Days later, you get a response claiming that it's a stylistic choice.",
                                                a "Argue."
                                                a "Give up."
                                a "East.", closed
                                a "South.", closed
            a "Find an employee.", employee
            a "Fill out employment application.", ->
              q "#{@ln} comma #{@fn}, yadda yadda... hmm... there's a blank where you're supposed to put what you see yourself doing five years from now.",
                a "A minimum-wage movie theater employee."
                a "Manager of this entire theater."
                a "White collar worker at the corporate office of the company that runs this place."
                a "Executive at same."
                a "CEO."
                a "Movie star.",
                  q "Wouldn't you become embittered about the news media?",
                    a "Yes."
                    a "No."
                a "Supporting actor.",
                  q "Would you win an Oscar?",
                    a "Yes."
                    a "No."
                a "Key grip.",
                  q "Do you even know what that is?",
                    a "Yeah, it's the grip who is in charge of all the other grips.",
                      q "Yeah but what's a grip?",
                        a "A force that prevents movie cameras everywhere from falling to the ground and shattering into a million pieces."
                        a "Like a roadie, but for movies instead of rock concerts."
                        a "A questionably sane electrician."
                        a "MacGyver, basically."
                        a "It hardly matters, does it?  I have a very hands-off management style."
                    a "No."
                a "Producer.", -> @song = 'kHmYIo7bcUw'
                a "Restauranteur.",
                  q "Have you worked at any of the local eating establishments?",
                    a "Yes.",
                      q "Which?",
                        a "Get Your Licks"
                        a "La Pizzá"
                        a "Paco's Tacos"
                        a "Squiggles 'N Dots"
                        a "Sugar Comma"
                    a "No."
                a "Astronaut.", -> @song = ['KaOC9danxNo', 560]
                a "Pirate.",
                  q "Do you speak the language?",
                    a "Aye."
                    a "No."
                a "Drug dealer.",
                  q "Any industry experience?",
                    a "Sure, you know, I've helped my family run a cartel or two."
                    a "I'm pretty good at the smuggling part!"
                    a "Well this one time I sold two Advil to my fifth grade teacher."
                    a "No."
                a "Chicken sexer.",
                  q "Do you have any chicken-sexing experience?",
                    a "Well no, I've never sexed a chicken before, but how hard could it be?"
                    a "Yes, I have sexed several chickens!",
                      q "How many?",
                        a "One.",
                          q "That's not several!",
                            a "Oops, I got confused."
                            a "Yes it is."
                        a "Two.",
                          q "That's not several!",
                            a "Several just means more than one.  Two is more than one."
                            a "Sorry, I meant to say a couple."
                        a "Three or more.",
                          q "And what was your accuracy rating?",
                            a "About 1%."
                            a "About 9%."
                            a "About 10%."
                            a "About 11%."
                a "Vagrant.",
                  q "Experience?",
                    a "Sure, I've done some loitering."
                    a "I, uh, handled a pan once?  Does that count?"
                    a "The top button of my shirt is unbuttoned.",
                      q "Whatever you do, <em>don't button it!</em>",
                        a "Don't worry, I would never do such an obviously disruptive and game-breaking thing."
                    a "My couchsurfing resume is formidable!"
                    a "I have sailed around the world."
                    a "Well, I do live in a van."
                    a "Not really, no."
                a "Retired.",
                  q "How many years experience do you have being retired?",
                    a "Less than fifty."
                    a "Between fifty and a thousand."
                    a "Over one thousand years."
                a "Unemployed.",
                  q "Any experience being unemployed?",
                    a "Yes.",
                      q "Can you provide a professional reference, such as a manager or colleague from that period?",
                        a "Yes."
                        a "No."
                    a "No."
        a "In the restroom.", restroom = (msg) ->
          q msg or """You are in a stall in the #{if @title is 'Mr.' then "men's" else "women's"} restroom.  Obvious exits are out and down.""",
            a "Out."
            -> if not @flushed then a "Down.", ->
              @flushed = true
              restroom "You attempt to flush yourself down the toilet.  It doesn't work.  Now your socks are all wet."
            -> if not @waited then a "Wait.", ->
              @waited = true
              restroom "Time passes."
            -> if not @sang then a "Sing.", ->
              @sang = true
              restroom "Your singing is abominable."
            -> if not @peed then a "Use toilet.", ->
              @peed = true
              restroom "Ah, much better."
        a "In plain sight.",
          q "You remain exactly where you are.  Luckily, nobody notices, and you escape detection!",
            a "Woooooo!"
            a "Huh."
        a "Under the linoleum.",
          q "Your attempts to pry up the flooring succeed only in drawing attention away from the unconscious victim and towards yourself.  You are ejected bodily from the theater.  The victim dies.",
            a "Oh no!"
            a "Eh, that could have gone worse."
        a "I'll just close my eyes -- if I can't see anybody, then nobody can see me!",
          q "As soon as you close your eyes, the external universe, which turns out to have been a figment of your imagination all along, ceases to exist.",
            a "Hooray!"
            a "Oh dear."
    a "Run.",
      q "When you regain consciousness, you're lying face down, a short distance away from your car, which seems to have been engulfed in the greenish fog bank.  It smells like a swimming pool.",
        a "What a weird dream!", -> @dream = true
    a "Look for an AED.",
      lookforaed = q "Okay!  You run into the lobby and... what are you looking for exactly?",
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
                                a "Because then we know where we stand.  You're trying to convince me to do something I already said don't want to do.  Don't try to pretend that you're not.  This is bullshit, and I want to call you on it."
                                a "Because I know that I would totally not want to undress some random stranger, probably not even be able to do it, but I fear that maybe this is wrong and bad and I kinda want you to motivate me."
                                a "Uh, wow, I... gosh.  I, uh, can't really get behind either of the above two options.  Can I just go with \"other\" or something?",
                                  q "Sure thing.",
                                    a "Thanks!"
                            a "No.",
                              q "Then I won't.",
                                a "Okay."
                            a "Well, is it true?  How likely is it, in a real scenario, that my doing this would actually save somebody's life?",
                              q "I think I remember seeing a study somewhere that claimed there was a few percent chance, or else it would up the odds of someone's survival by a few percentage points, or something like that?  Not sure what I did with that paper.  This was for CPR performed by a bystander, mind you, not an AED.  Apparently AEDs are unambiguously super helpful, well into the double digit percentages.",
                                a "Huh."
                    a "No problem, I pull their shirt up.",
                      q "Nice work!  You win at CPR!",
                        a "Awesome!"
                    a "Wow, this is intense.  Maybe I should pay attention to what the voice is saying.",
                      listened = q "An excellent idea!  You know, they did this study where they found that schoolchildren were typically a bit better than adults at AED use because they did a better job of actually following the directions.",
                        a "Cool story bro."
                        a "Do you have, like, a citation or something?",
                          q "Eh, it's probably around here somewhere.",
                            a "That's not very convincing.",
                              q "Sure it is!  It's an anecdote.  Studies show that anecdotes about purported studies are significantly more effective at changing behaviors than citations.",
                                a "Neat."
                                a "What are you, like, xkcd or something now?",
                                  q "Oh man, I wish!",
                                    a "That makes two of us then."
                a "Wait and listen to what the AED is telling me to do.", listened
        a "A green heart with a lightning bolt in it.", redorgreen
        a "A little placard that says AED on it.",
          q "Yep, and it'll almost certainly have the symbol too, either the red or the green one.", rggotit
        a "Any of the above.",
          q "Yep, it'll likely have both the letters AED and the red or green symbol.", rggotit
    a "Stand around doing nothing.",
      q "You stand around.  People are looking, but nobody is saying anything.  Everyone seems sort of embarrassed.  Eventually, an ambulance shows up, but by then it's too late.  You have failed!",
        a "Oh well."
        a "No, <em>you</em> have failed.",
          q "That is a false statement.",
            a "No, <em>you're</am> a false statement!"
            a "Okay geez fine."
        a "Can I try again?",
          q "That depends.  Do you have access to time travel technology?",
            a "Yes.",
              q "Then sure, knock yourself out.",
                a "Thanks, I'll do that!"
                a "Eh whatever, time travel is boring."
            a "No.",
              q "Then I'm afraid you are powerless!",
                a "Okay."
                a "Booo!  Hiss!"
    a "Panic.",
      dontpanic = q "Don't panic!  Take slow, deep breaths.  Slow!  Focus on your breathing.  Slow breaths.  Deep.  That's it.  Close your eyes.  Keep breathing, don't hold your breath, just take it real slow and easy.",
        a "Thanks, I feel a little better now."
        a "Sorry, I closed my eyes and then I couldn't read the rest of what you said.",
          q "Wait.  Are you reading this now?",
            a "No, I'm just blindly selecting choices!  I hope this is working.",
              q "Okay, we can do this!  Listen carefully!  On the count of three, I want you to open your eyes again!  Okay?",
                a "It's too late for that now!  Just go on without me!",
                  q "Nonsense!  Okay: ONE!",
                    a "It's not working!",
                      q "TWO!",
                        a "I have no idea what number you're even on!",
                          q "THREE!  Open your eyes!",
                            a "Wow, I can't believe that worked!"
    a "Give CPR.",
      cpr = ->
        if @trained
          q "Okay, well!  You said earlier that you totally know CPR, so I assume that you would do a great job!  Flawless victory!",
            a "Gee, thanks!"
        else
          q "Okay!  It's CPR time.  So what are you gonna do first?",
            a "Check the airway for obstructions.",
              supposedto = q "I think that's what you're supposed to do if you know what you're doing, which is good... wait, I thought you said you didn't know how to do CPR?",
                a "Yeah, if that was the right thing to do it was pure coincidence.",
                  q "Okay, so I think the actual recommendation for someone in your situation is that you skip all the fancy stuff and go straight for chest compressions.  Ready?",
                    a "Uh, sure....",
                      compressions = q "Okay!  So you put one hand on top of the other and put the heel of the bottom hand on the person's chest, right about... where?",
                        a "I don't know!  This is stressful!  I'm in a stressful situation!  Can't you just, like, educate me or whatever?",
                          q "Good idea!  So I believe the deal is that you want to put the heel of your hand pretty much exactly between the nipples.",
                            a "OK!  What next?",
                              q "Now all you have to do is press down so hard that you crush their heart.",
                                a "Got it!  And after that?", ->
                                  @song = 'I_izvAbhExY'
                                  if @love then @song = 'ZBR2G-iI3-I'
                                  q "Keep crushing their heart, to the rhythm of that one song, until the EMTs show up.",
                                    a "Right, got it."
                                    a "Which song?",
                                      q "It's on the tip of my tongue... maybe I'll remember later.",
                                        a "Okay."
                                    a "Wait.  EMTs?", ->
                                      if @call911
                                        q "Emergency medical technicians.  From when you called 911 earlier.",
                                          a "Oh, right."
                                          a "What if they don't show up in time?",
                                            q "You sent somebody to fetch an AED, remember?  A lot of places like this have one.  Those things have a pretty good chance of getting a heart beating properly again.",
                                              a "Oh good."
                                              a "But what if this particular place doesn't have an AED?",
                                                q "It does, though.  Look, they're coming back with it now.  See?",
                                                  a "Thank goodness!"
                                                  a "But what if something like this were to happen in a place with no AED and no way to get help?",
                                                    q "Well then whoever it was would most likely die.",
                                                      a "Okay."
                                                      a "But that's horrible!",
                                                        q "Yes.  Yes it is.",
                                                          a "Thank you for acknowledging that."
                                                          a "You said they're coming though, right?",
                                                            q "Yep.  Everything's going to be fine!",
                                                              a "Thanks."
                                      else
                                        q "Emergency medical technicians.  You remembered to call 911, right?",
                                          a "Uh...",
                                            q "It's okay, somebody over by the drinking fountain called them and they're on their way.  But try to remember to get that started earlier next time, okay?  This is not an ideal situation you've gotten yourself into here.",
                                              a "Okay, I'll remember."
                                              a "I #{frack}ed up, didn't I?  This person's going to die now and it's going to be my fault because I #{frack}ed it up.  #{frack}!",
                                                q "First off, no, they're not going to die.  And second, even if they somehow did, it wouldn't be your fault.  You are doing the best you can here.",
                                                  a "I guess that's true, isn't it?",
                                                    q "Yes.  It is.",
                                                      a "Okay."
                                                  a "Bullshit.  I could have done better.  I could have remembered to call 911.  How hard is it to remember something like that?",
                                                    q "Pretty hard!  It can be hard to think of stuff like that in the moment.  You don't have to be so hard on yourself, though.  It's not like you set out to murder this person by doing the wrong thing, is it?",
                                                      a "I guess not.",
                                                        q "Then you did your best!  Plus it totally worked, you saved their life by doing CPR until help arrived, and now you're basically a hero.  Are you okay with that?",
                                                          a "Yes."
                                                          a "No.",
                                                            q "What do you want, then?  A pony?",
                                                              a "Yes.", ->
                                                                @song = ['Bb4rR9fN0ho', 560]
                                                                q "Okay!  You are now the proud owner of a pretty pink pony!  Your pony loves you so much!",
                                                                  a "Thanks!"
                                                                  a "But I wanted a blue pony.",
                                                                    q "Too bad.  There's no such thing.",
                                                                      a "Zounds!"
                                                              a "No."
                                                      a "Actually....",
                                                        q "Well then you're a really incompetent murderer because this person totally survives thanks to your doing CPR on them until help arrives.",
                                                          a "Rats!"
                                                          a "I am secretly glad about this.",
                                                            q "Well don't worry!  I won't tell anyone.",
                                                              a "Thanks!"
                                a "You can't be serious.",
                                  q "I am 100% serious.  The entire point is to press so hard that you squeeze the blood out of the heart and into the arteries, and then when you let go more blood rushes in from the veins, and so on.  To pump blood through the body.  So they don't die.",
                                    a "Yeah well that's not the same thing as <em>crushing</em> their heart!"
                                    a "I thought you said they were already dead?", ->
                                      if not @alreadydead
                                        q "Not in this playthrough, I didn't.",
                                          a "Oh snap!"
                                      else
                                        q "Well so they don't get any deader, then.  So more bits of them don't die.",
                                          a "Okay, that makes sense."
                                          a "Like the kidneys?",
                                            q "Yes, actually!  Kidneys are important.  I mean you can survive without them, but it's not exactly convenient.",
                                              a "Huh."
                                          a "Like the brain?",
                                            q "Yes, that is an excellent example of an organ that people get pretty attached to.",
                                              a "Got it."
                                          a "Like the heart?",
                                            q "Yes, actually -- pumping blood through the heart keeps the heart muscle from dying.  Which is important in this situation.",
                                              a "Makes sense."
                                              a "That doesn't make any sense.  Isn't the heart already dead at this point?",
                                                q "No, it's not.  This person collapsed a few seconds ago, right?  It takes a bit longer than that for the heart to die.  Often what's going on in these situations is that the heart is fibrillating -- it's sort of sitting there twitching ineffectively, but it's not dead yet.",
                                                  a "I see."
                                          a "Like the hair?",
                                            q "No, not like that.  That doesn't count.  Hair is not alive.",
                                              a "You're no fun."
                            a "I am suddenly uncomfortable with this.",
                              q "Okay, that's totally fair!  How about if we talk about something else?",
                                a "Thanks."
                        a "Hands have heels now?  I could have sworn heels were for feet.",
                          q "Oh yeah!  It's like the front part of the hand, right next to where the wrist is?  Like, if you bend your hand back and pretend you're pressing it into, I don't know, somebody's ribcage, say, then the heel is the part that's in line with your arm, where all the force gets transferred.",
                            a "Cool, thanks!"
                            a "I'm still confused.",
                              picture = q "Yeah, this would be a lot easier if I could show you a picture.  Too bad this is a text adventure, huh?",
                                a "Yeah, too bad."
                                a "Don't you mean \"interactive fiction\"?",
                                  q "But this isn't fiction.",
                                    a "Good point!"
                                    a "That's not what \"interactive fiction\" means, though.",
                                      q "Well what does it mean?",
                                        a "Uh... you know... like... text adventures....",
                                          q "Got it!",
                                            a "Good!"
                                        a "I can't really explain it, but I know it when I see it.",
                                          q "Like pornography?",
                                            a "Yes, like pornography."
                                            a "<em>[sigh]</em>"
                                        a "It's, you know, anything that fits into the pattern established by the pre-existing body of work that is generally agreed upon to already be interactive fiction.",
                                          q "Wait, so who decides what fits in and what doesn't?",
                                            a "The author.",
                                              q "Huh!  Sure, okay.",
                                                a "Yep, pretty straightforward."
                                            a "Well, see, there's kind of an informal ruling committee....",
                                              q "Really?  How's that work?",
                                                a "I'd tell you, but... well... you know....",
                                                  q "Right.",
                                                    a "Sorry.",
                                                      q "No no, that's cool.",
                                                        a "Oh good."
                                                a "We meet three times a year in a secret cavern under the Massive Auditorium."
                                                a "Basically you just enter your so-called game in IFComp, and if the average score is 4 or higher, it's interactive fiction, and if it's 3 or lower, it's not.",
                                                  q "What if the average score is somewhere between 3 and 4?",
                                                    a "Roshambo."
                                                    a "Cage match."
                                                    a "Length of longest sentence.",
                                                      q "So... I'm assuming longer sentences are more IFfy?",
                                                        a "Obviously."
                                            -> a "I, #{@fn} #{@ln}, decide this.",
                                              q "Wow!",
                                                a "Yep."
                                            a "Oh, usually Sam does it.  He's gotten really good at it!",
                                              q "Sam Ashwell?",
                                                a "Yeah!  Him!"
                                                a "No.  Different Sam.  Unrelated."
                                            a "Everybody decides for themselves.",
                                              q "Sounds a little chaotic.",
                                                a "You have no idea."
                                                a "Nah, it's pretty chill actually."
                                            a "Nobody, silly-head!  Your question is based on false assumptions!",
                                              q "Well how would you put it then?",
                                                a "I meant \"fit in\" as in physically.  Like a puzzle piece.  This is completely literal and not subject to interpretation.",
                                                  q "That... uh... wow, sorry, that isn't anything like what I was expecting you to say.  Can you explain what you mean by that?  I'm having trouble picturing?",
                                                    a "Yeah, it would help if I could show you a diagram."
                                    a "You're wrong, this <em>is</em> fiction.",
                                      q "How so?",
                                        a "Well, like, I'm not <em>actually</em> giving CPR someone right now!  It's just a story.",
                                          q "I guess you could look at it that way?  I was thinking more of it being just like a hypothetical example of something.",
                                            a "Yeah but that's what fiction <em>is</em>.",
                                              q "I guess.",
                                                a "Search your feelings!  You know this to be true!"
                                a "Actually text adventures are totally allowed to have illustrations.",
                                  q "Huh, good to know!  I guess I'll have to try including some of those next time.",
                                    a "You really should!"
                                    a "Oh, I didn't mean to sound like I was <em>recommending</em> illustrations, I was just pointing out that it's, you know, permissible.  Technically.",
                                      q "Oh.  Well.  Thanks for the clarification!",
                                        a "No problem!"
                        a "Wait, I have to touch an unconscious stranger's chest?",
                          q "Hey, nobody's forcing you to do anything here.",
                            a "Good, cuz I'm out."
                            a "No, no, I should really finish what I started here.",
                              q "I don't know!  You seemed pretty squicked out back there.",
                                a "Yeah, I guess.  Never mind then."
                                a "\"Squicked out\"?",
                                  q "You've never heard that expression?",
                                    a "Nope, never.",
                                      squicksplain = q """I think it was <span="redacted">Heath</span> <span="redacted">Hunnicut</span> who introduced me to the term, actually.  He explained... so you've heard of ear fisting?""",
                                        a "No and I don't wanna kthxbi"
                                        a "Please explain!",
                                          q "So <em>ear fisting</em> is a purely hypothetical kinky sex act in which you make a fist and stick it entirely into somebody's ear-hole.  Purely for rhetorical purposes, you understand.  And the hypothetical sound that it hypothetically makes when you hypothetically do this is <em>squick</em>, <em>squick</em>, <em>squick</em>.",
                                            a "AAAAAAAAAAAAAAAAAAAAAHHH!!!",
                                              q "Exactly!",
                                                a "Got it."
                                    a "Sure, but I don't actually know what it means.", squicksplain
                        a "I'm having trouble visualizing this hand position.", picture
                        a "Which one is the bottom hand?",
                          q "Whichever.  Doesn't matter.",
                            a "Okay."
                            a "But then how do I know which one to put on their chest?", picture
                        a "I'm panicking!  I'm panicking!", dontpanic
            a "Pull the head back to make space between the chin and the chest.", supposedto
            a "Grab my mask.",
              q "Wait, you have a mask?",
                a "Of course!  I keep a CPR mask with me at all times.",
                  q "You said you weren't trained, though.  The thing about those masks is that even the professionals have a hard time with them sometimes.  I think what you're supposed to do in this situation is to just skip the rescue breathing and go straight to chest compressions.",
                    a "Okay, I'll try to remember that next time this comes up."
                a "It's a hypothetical situation.  Can't we just pretend that I happened to have a CPR mask?",
                  q "What, like, by pure coincidence?  Do you even own a CPR mask?",
                    a "Well, no, but....",
                      q "Yeah, see, I just don't think this is very realistic.",
                        a "Fine, just forget it."
                        a "When did you suddenly become concerned about realism?",
                          q "Realism is very important in a game like this!  Otherwise why would anybody play?",
                            a "Point taken."
                            a "What about fun?  Isn't fun more important than realism?",
                              q "I don't know about that.  I mean without realism, anything could happen!  It would just be a big free-for-all!  What are the odds of fun happening in such a chaotic environment?  Sounds pretty unlikely to me!",
                                a "Yeah, I guess you're right."
            a "Form a seal between their lips and mine.", supposedto
            a "Check for a pulse.", supposedto
            a "See if they're breathing.", supposedto
            a 'Shout "ARE YOU CHOKING?" in a loud voice.',
              q "That would totally be the right answer if we were doing the Heimlich maneuver, but we're doing CPR, so....",
                a "But I thought you said they collapsed suddenly at a movie theater!  What if they were just choking on a hot dog or something?",
                  q "Gosh!  I guess... I guess they could be...?",
                    a "Okay, so I try that!",
                      q "And it totally works!  You shout so loud that they wake up and spit out the hot dog and the mayor gives you the key to the city and everything!",
                        a "Hooray!"
            a "Apply a tourniquet to the jugular vein.",
              q "That is not a recommended medical procedure!",
                a "Well phooey."
                a "Cmon, I just got this fancy Israeli bandage on Amazon, it's perfect for tourniquets!  What else am I gonna do with this thing?",
                  q "Aren't you supposed to just keep it in your purse at all times and hope that somebody has a horrible accident right in front of you so you can heroically save them with your preparedness?",
                    a "Oh yeah, you're right."
            a "Begin chest compressions.", compressions
            a 'Shout "IS THERE A DOCTOR IN THE HOUSE?"',
              q "Good plan!  Turns out there is, over by the drinking fountains, and they totally save the day thanks to your quick thinking!",
                a "Hooray!"
            a "Whip out my smartphone and ask Siri or Google or whatever how to do CPR.",
              q "Okay, tell you what -- get out your phone right now and try that and tell me what you think of the result.",
                a "Wow, this is great!",
                  q "Cool!  I guess that was a good plan then!  As long as you get signal inside the movie theater, anyway.",
                    a "Hmm, good point."
                    a "Eh, it's probably fine."
                a "Hmm, that was pretty disappointing.",
                  q "Well, I guess that's good to know, isn't it?",
                    a "I guess so!"
                a "I, uh, don't actually have my phone with me right now.",
                  q "But if this had been an actual emergency, you would definitely have it with you?",
                    a "Possibly not.",
                      q "Do you see the problem here?",
                        a "Yes.",
                          q "Try to come up with a better plan next time, all right?",
                            a "Okay."
                        a "No.",
                          q "Then I guess everything is fine!",
                            a "Awesome!  I win at everything!"
                    a "Yes, definitely!",
                      q "Wow!  Good thinking!",
                        a "Thanks!"
    a "Don't give CPR.",
      q "Little do these fools realize that you've been planted here as part of an elaborate large-scale experiment to determine the effectiveness of proper CPR techniques in naturalistic conditions!  You are part of the control group.  Your job is to perform \"sham CPR\" on this unfortunate victim.  What will you do first?",
        a "Poke them with needles.",
          q "As you pull the wad of needles from your pocket, you visualize a diagram of the body's nervous system, so as to be ready to avoid accidentally following correct CPR technique.  Gingerly, you insert the first needle...",
            a "Near the mid-thorax.",
              q "The victim screams in pain!",
                a "Keep going.",
                  q "No, I think you should stop now.",
                    a "Okay."
                    a "Too bad, I keep going.",
                      q "Actually, this is making me kind of uncomfortable.",
                        a "Fine, we can stop now."
                        a "I refuse to stop.",
                          q "Well you just don't understand <em>consent</em> then!",
                            a "That's true."
                            a "I understand, I just don't care.",
                              q "You monster!",
                                a "Yes, that's me!"
                                a "Actually I'm not a monster."
                a "Stop."
            a "Inside the vena cava.",
              q "You carefully thread the needle through the vein and into the heart itself.  The crowd gasps!",
                a "I rotate the needle 90 degrees clockwise.",
                  q "\"Hey, what are you doing?\" shouts a bystander.  \"That's not how you do CPR!\"",
                    a "Deny.",
                      q "\"Yes it is,\" you say.",
                        a "Rotate again.",
                          q "This time, no one dares challenge you.",
                            a "Good."
                            a "That's kind of disappointing, actually."
                        a "Enough."
                    a "Bargain.",
                      q "You pull a five dollar bill out of your wallet.  \"Make it ten,\" they snarl.",
                        a "Acquiesce."
                        a "Defy."
                    a "Accept.",
                      q "\"Yes,\" you say.  \"It is so.\"  You withdraw the needle, and allow the police to lead you away in handcuffs.",
                        a "I am satisfied with this outcome."
                        a "This turn of events displeases me."
                a "I pull the needle backwards by 25.4 millimeters.",
                  q "Oh no!  You've sprung a leak in the auricular ventricle!",
                    a "Well, shit."
                    a "No no, I meant to do that."
                a "I maintain position for a count of six.",
                  q "The crowd looks on with baited breath.",
                    a "Cool."
                    a "No, that is incorrect.",
                      q "How so?",
                        a "Misapplied simile."
                        a "Incorrect diction."
                        a "Mixed metaphor."
                        a "Too trite."
            a "Alongside the epithelium.",
              q "You plunge your needle into the epicanthic fold.",
                a "Epithelial fold.",
                  q "Sorry, <em>epithelial</em> fold.",
                    a "Thanks."
                    a "And don't you forget it!"
                a "And what happens next?"
                a "I don't like where this is going."
            a "Deep into the mandibular fossa.",
              q "Which is located where, exactly?",
                a "Brazil."
                a "California."
                a "Madagascar."
                a "Mexico."
            a "A the three-fifths point of the calcineal tuberosity.",
              q "Which, expressed as a percentage, would be...",
                a "30%."
                a "60%."
                a "90%."
                a "120%."
        a "Give them a sugar pill.",
          q "They immediately awake from their diabetic coma!  Christmas is saved!",
            a "Woohoo!"
            a "Meh."
        a "Connect a saline IV.",
          q "To which orifice?",
            a "Navel."
            a "Ear canal."
            a "Tear duct."
            a "Salivary gland."
        a "Homeopathy.",
          q "What kind?",
            a "Nosode."
            a "Sarcode."
            a "Radionic."
            a "Imponderable."
        a "Pray.",
          q "To whom will you pray?",
            a "Baal.",
              q "It starts raining.  The crop is saved!  You harvest 30 wheat.",
                a "Thank Baal for his kindness.",
                  q "\"You're welcome,\" says Baal.",
                    a "Blush furiously."
                a "Ask Baal for more wheat.",
                  q "You explain to Baal that you need at least 50 wheat in order to feed your family this winter.  Baal apologizes for the oversight and hands you 20 additional wheat.",
                    a "Okay perfect."
                    a "No no, keep asking for more.",
                      q "You keep asking for more and more wheat.  Baal complies with all of your demands.  Before you know it, you've cornered the grain futures market and are crowned Emperor of the World.",
                        a "I earned this through my own hard work and determination."
                        a "I achieved this outcome largely due to fortunate circumstances outside my control."
            a "Satan.",
              q "Which, backwards, is...",
                a "Dog."
                a "Santa."
                a "Nathan."
                a "Stanis."
                a ".nataS"
                a "Jesus."
                a "شيطان"
                a "Yes."
            a "Ryan Veeder.", ->
              @nextamusing = "Like if I tried to find out who wrote this game but then it turned out that I had never even heard of the Exposition but it later also turned out that I was one of the people involved in putting it on."
              if @ln is 'Veeder'
                q "You can't pray to yourself!  That would be, like, super embarrassing.",
                  a "Okay."
              else
                q "Ryan Veeder appears and solves all of your problems!",
                  a "Thanks, Ryan Veeder!"
                  a "But I <em>liked</em> having problems.",
                    q "Well!  In that case, Ryan reaches deep into the folds of his voluminous robe and produces...",
                      a "...a crow."
                      a "...a goat."
                      a "...a wolf."
                      a "...a snake."
                      a "...a centipede."
                      a "...a piece of paper.",
                        q "You take the paper and unfold it.",
                          a "And...?", ->
                            if @word
                              q "It just has the word <em>#{@word.toUpperCase()}</em> written on it.",
                                a "Huh?"
                                a "Whatever."
                                a "Oh right, that."
                            else
                              q "It's blank.",
                                a "Mysterious!"
                                a "Boring!"
                      a "OH DEAR GOD BEES"
            a "Graham Nelson.",
              ->
                msg = if @ln is 'Nelson' then "Talking to yourself is a sign of impending mental collapse." else "You can't see any such thing."
                q msg,
                  a "Sounds legit."
                  a "Wait, what?"
            a "The Flying Spaghetti Monster.",
              q "Do you even own a colander?",
                a "Yes.",
                  q "Are you currently wearing it?",
                    a "Yes.",
                      q "Really?",
                        a "Yes.",
                          q "Did you just put it on after I started asking about this?",
                            a "Yes.", darecall = ->
                              @song = 'g1jJ-ttrSd8'
                              q "And you dare call yourself a Pastafarian?",
                                a "Yes."
                                a "No.",
                                  q "Oh!  Sorry.  I just assumed.",
                                    a "That's okay."
                                    a "Then assume no more, lest He smite you with His Noodly Appendage!"
                            a "No.", -> @song = ['FvDHSCpW0O8', 560]
                        a "No.", darecall
                    a "No.", darecall
                a "No.", darecall

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
                a "Alan Price", -> @song = 'Dyg420eUvok'
                a "Bette Midler", -> @song = 'Fpn_xu81ySo'
                a "The Bobs", -> @song = 'DoEuRa6YyoU'
                a "Chaka Khan", -> @song = 'tTVv-ktbvpg'
                a "Cristina Monet", -> @song = 'AybvLztacFM'
                a "Giant Sand", -> @song = '1w6bHzvikl8'
                a "Firewater", -> @song = ['YTrWOPaCax0', 560]
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
                a "Lindsay Anderson", -> @song = 'yCgWJqcOQhA'
                a "Liz Gillies", -> @song = ['HNnTQbLbtWI', 560]
                a "PJ Harvey", -> @song = 'O0ZUAorP0b4'
                a "Peggy Lee", -> @song = 'LCRZZC-DH7M'
                a "Sandra Bernhard", -> @song = ['ru6d318UlOQ', 560]
                a "Tony Bennett", -> @song = 'xr3CcBp6aw0'
                a "Uncle Yo", -> @song = ['hu18YKjijEo', 560]
            a "No seriously, wtf",
              q "Yep, that's all there is!",
                a "But what about --"
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
                                  ->
                                    if @undoagain
                                      q "No.",
                                        a "Boooo!"
                                    else
                                      @undoagain = true
                                      q "Fine.",
                                        a "Yay!",
                                          q "Nothing different will happen.",
                                            a "Well never mind then."
                                            a "But I still want to do it!",
                                              q "Too bad.",
                                                a "Awwww!"
                                            a "Hey, um, I don't think you sent me back far enough.",
                                              q "Oh right.  Here you go.",
                                                a "Thanks!", yourscore
                        a "No, forget it."
                a "CREDITS",
                  q """This game was written by #{@author or '<span class="redacted">REDACTED</span>'}.""",
                    a "Thanks!"
                    a "Hey, what about beta-testers?",
                      ->
                        if not @author
                          q "Sorry, you haven't unlocked that achievement in this playthrough, so I can't say anything more.",
                            a "Oh well!"
                            a "Wait, how do I unlock it?",
                              q "Oh, it's way back at the beginning.  You have to get me to tell you who wrote this game first.",
                                a "Got it, thanks!"
                        else ->
                          testers_list = ((String.fromCharCode x for x in y).join '' for y in [
                            [78, 105, 99, 107, 32, 84, 97, 121, 108, 111, 114],
                            [77, 97, 114, 99, 32, 70, 114, 101, 99, 104, 101, 116],
                            [83, 97, 114, 97, 104, 32, 79, 114, 116, 105, 122],
                            [83, 97, 116, 117, 32, 84, 97, 105, 112, 97, 108, 117, 115],
                            [65, 110, 100, 114, 101, 119, 32, 87, 97, 116, 116],
                          ])
                          last = testers_list.length - 1
                          testers_list[last] = 'and ' + testers_list[last]
                          testers = testers_list.join ', '
                          q "This game was bravely tested by #{testers}.  Any bugs or other inadequacies are the author's fault, not theirs, and are also a figment of your imagination.",
                            a "Good to know, thanks!"
                a "AMUSING",
                  q "Amusing?  Like what?",
                    -> if @amusing then a @amusing,
                      q "Oh yeah!  That was pretty okay I guess!",
                        a "Agreed."
                    a @nextamusing or "Well, I've always wondered about what it would be like to go inside one of those projection booths at a movie theater.",
                      q "Sure, I guess you could try to do something like that if you wanted.  If the game weren't over already, I mean.",
                        a "Oh well."
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
        -> if not @dream then a "What about that thing with the fog and the railroad tracks and my car's engine stalls?",
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
                                q "So #{@origname} doesn't drive an electric car either.",
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
                      ->
                        @song or= ['Ob7nx4BAJb0', 560]
                        q "Good point.",
                          a "Thanks!"
                    a "Because this game sucks, dude.",
                      q "Well, good thing it's over, right?",
                        a "Thank goodness!"
                        a "So... how many endings are there?",
                          q "Hmm.  I'm gonna say... 28ish?",
                            a "Interesting....", -> @song = ['JYtCeONQN3o', 560]

  ->
    if not @song
      q 'THE END'
    else
      if 'object' is typeof @song then [@song, width] = @song else width = 420
      q """THE END<iframe width="#{width}" height="315" src="https://www.youtube.com/embed/#{@song}?rel=0" frameborder="0" allowfullscreen></iframe>"""
]
