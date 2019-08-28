# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Answer.destroy_all
Question.destroy_all

paula = User.create({
    username: "paula", password: "password", img_url: "https://pbs.twimg.com/profile_images/714265217727901696/d8qm1F9d_400x400.jpg", zombie: true

})

tun = User.create({
    username: "tun", password: "password", img_url: "https://pbs.twimg.com/profile_images/714265217727901696/d8qm1F9d_400x400.jpg", zombie: false

})



q1 = Question.create({q_value: "What makes a person sexy?"})
a1 = Answer.create({a_value: "their brain", zombie: true, question_id: q1.id})
a2 = Answer.create({a_value: "their face", zombie: false, question_id: q1.id})
a3 = Answer.create({a_value: "their personality", zombie: false, question_id: q1.id})
a4 = Answer.create({a_value: "their body", zombie: false, question_id: q1.id})

q2 = Question.create({q_value: "Would you run a 5k marathon?"})
a5 = Answer.create({a_value: "Who me?! I'm way too slow!", zombie: true, question_id: q2.id})
a6 = Answer.create({a_value: "I'm training for one right now!", zombie: false, question_id: q2.id})
a7 = Answer.create({a_value: "I would love to but I don't have the time!", zombie: false, question_id: q2.id})
a8 = Answer.create({a_value: "I hate running!", zombie: false, question_id: q2.id})

q3 = Question.create({q_value: "Are you hungry? If so, for what?"})
a9 = Answer.create({a_value: "Lately, I just want meat. like any kind of flesh at all will work!", zombie: true, question_id: q3.id})
a10 = Answer.create({a_value: "Honestly, I've been craving junk food lately", zombie: false, question_id: q3.id})
a11 = Answer.create({a_value: "I've been vegan for a month now. I really want a f***ing hamburger.", zombie: false, question_id: q3.id})
a12 = Answer.create({a_value: "Ice Cream and french fries!", zombie: false, question_id: q3.id})

q4 = Question.create({q_value: "How is your relationship with your mom?"})
a13 = Answer.create({a_value: "I hate her. We're just so different now. I've been waiting for my chance to tear her apart.", zombie: true, question_id: q4.id})
a14 = Answer.create({a_value: "She ruined my childhood. I don't talk to her anymore", zombie: false, question_id: q4.id})
a15 = Answer.create({a_value: "My mom is my best friend!", zombie: false, question_id: q4.id})
a16 = Answer.create({a_value: "I hate her. We're just so different now. She just sits and waits for any chance to tear me apart", zombie: false, question_id: q4.id})

q5 = Question.create({q_value: "Are you well-rested?"})
a17 = Answer.create({a_value: "I’m well rested.", zombie: false, question_id: q5.id})
a18 = Answer.create({a_value: "I don’t need much sleep.", zombie: false, question_id: q5.id})
a19 = Answer.create({a_value: "I’m dead on my feet.", zombie: true, question_id: q5.id})
a20 = Answer.create({a_value: "Who needs rest when you've got coldbrew?", zombie: false, question_id: q5.id})

q6 = Question.create({q_value: "Which best describes your complexion?"})
a21 = Answer.create({a_value: "Vibrant", zombie: false, question_id: q6.id})
a22 = Answer.create({a_value: "Pale", zombie: false, question_id: q6.id})
a23 = Answer.create({a_value: "Lifeless", zombie: true, question_id: q6.id})
a24 = Answer.create({a_value: "Healthy", zombie: false, question_id: q6.id})

q7 = Question.create({q_value: "Which best describes your walk?"})
a25 = Answer.create({a_value: "Graceful", zombie: false, question_id: q7.id})
a26 = Answer.create({a_value: "Brisk", zombie: false, question_id: q7.id})
a27 = Answer.create({a_value: "Staggering", zombie: true, question_id: q7.id})
a28 = Answer.create({a_value: "I don't walk, I skip.", zombie: false, question_id: q7.id})

q8 = Question.create({q_value: "Which best describes your communication skills?"})
a29 = Answer.create({a_value: "I'm not much of a talker.", zombie: false, question_id: q8.id})
a30 = Answer.create({a_value: "I speak my mind.", zombie: false, question_id: q8.id})
a31 = Answer.create({a_value: "I have trouble expressing myself verbally.", zombie: true, question_id: q8.id})
a32 = Answer.create({a_value: "Communication is key.", zombie: false, question_id: q8.id})



