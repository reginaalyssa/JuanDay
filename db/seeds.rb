# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Question.create()

Question.delete_all
Answer.delete_all
State.delete_all

State.create!(scene_id: 0)

questions = [ 
              {text: "5:55 na, nag-alarm cellphone mo. Kring kring, ganun. Oh tapos? Ano gagawin mo? ", scene_id: 1},
              {text: "Question 2", scene_id: 2},
              {text: "Question 3", scene_id: 3},
              {text: "Question 4", scene_id: 4},
              {text: "Question 5", scene_id: 5},
              {text: "Question 6", scene_id: 6},
              {text: "Question 7", scene_id: 7},
              {text: "Question 8", scene_id: 8},
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> merged
              {text: "Question 9", scene_id: 9},
              {text: "Question 10", scene_id: 10},
              {text: "Question 11", scene_id: 11},
              {text: "Question 12", scene_id: 12},
              {text: "Question 13", scene_id: 13},
              {text: "Question 14", scene_id: 14},
              {text: "Question 15", scene_id: 15},
<<<<<<< HEAD
              {text: "Question 16", scene_id: 16},
              {text: "Question 17", scene_id: 17}
<<<<<<< HEAD
=======
              {text: "Question 16", scene_id: 16}
>>>>>>> merge
            ]

answers = [ {"May 5 minutes pa, sobrang laki ng matutulong nun sa energy stored ng katawan mo kaya matutulog ka munang butaw ka." => 2, "Gigising ako malamang." => 3},
  {"sabay sa magulang" => 7, "commute" => 6},
  {"fb (5 minutes)" => 4, "ligo na" => 2},
  {"di siya naligo" => 5, "nag-igib ng tubig" => 2},
  {"sabay sa magulang" => 7, 'commute' => 6},
  {},
  {"tuloy lang" => 8, "MRT" => 8},
  {"help cram" => 9, "No help" => 10},
  {"dinibdib" => 10, "nagpakopya siya" => 10},
  {"minsan lang kumain" => 11, "tabi tabi" => 11},
  {"stay because it is important" => 12, "go early but matutulog lang" => 11},
  {"uwi ng maaga" => 13, "attend ng meeting" => 14},
  {"meeting, uwi" => 15},
  {"dukutan sa mrt" => 16},
  {"fb" => 17},
  {"answer" => 17, "ignore scold" => 17}
  ]
=======
=======
State.delete_all

State.create!(scene_id: 0)
>>>>>>> add scenes

questions = [ 
              {text: "Question 1", scene_id: 1},
              {text: "Question 2", scene_id: 2},
              {text: "Question 3", scene_id: 3},
              {text: "Question 4", scene_id: 4}
=======
              {text: "Question 9", scene_id: 9}
>>>>>>> scenes 1-9
=======
>>>>>>> merged
            ]
<<<<<<< HEAD
answers = [ ["answer 1", "answer 2"],
  ["answer 1", "answer 2", "answer 3"]]
>>>>>>> backend part
=======
answers = [ {"snooze" => 2, "gising" => 3},
<<<<<<< HEAD
  {"answer 1" => 1, "answer 2" => 2, "answer 3" => 3},
  {"fb (5 minutes)" => 4, "ligo na" => 2} ]
>>>>>>> add scenes
=======
  {"sabay sa magulang" => 7, "commute" => 6},
  {"fb (5 minutes)" => 4, "ligo na" => 2},
  {"di siya naligo" => 5, "nag-igib ng tubig" => 2},
  {"sabay sa magulang" => 7, 'commute' => 6},
  {},
  {"tuloy lang" => 8, "MRT" => 8},
  {"help cram" => 9, "No help" => 10},
  {"dinibdib" => 10, "nagpakopya siya" => 10},
  {"minsan lang kumain" => 11, "tabi tabi" => 11},
  {"stay because it is important" => 12, "go early but matutulog lang" => 11},
  {"uwi ng maaga" => 13, "attend ng meeting" => 14},
  {"meeting, uwi" => 15},
  {"dukutan sa mrt" => 16},
  {"fb" => 17},
  {"answer" => 17, "ignore scold" => 17}
  ]
>>>>>>> scenes 1-9

set = questions.zip(answers).to_h

set.each do |q,a|
<<<<<<< HEAD
<<<<<<< HEAD
  question = Question.create!(q)
<<<<<<< HEAD
  a.each do |text, scene_id|
    question.answers.create!(text: text, scene_id: scene_id)
<<<<<<< HEAD
  end
end

# a = {
#   question: {
#     text: 'hello',
#     answers: {
#       answer_1: ['scene_2', 'scene_4'],
#       answer_2: ['scene_3']
#     }
#   }
# }

# json = ActiveSupport::JSON.decode(a)
# json.each do |a|
#   p a
# end
=======
  question = Question.create!(text: q)
=======
  question = Question.create!(q)
>>>>>>> add scene1
  a.each do |answer|
    question.answers.create!(text: answer)
=======
>>>>>>> add scenes
=======
  unless a.empty?
    a.each do |text, scene_id|
      question.answers.create!(text: text, scene_id: scene_id)
    end
>>>>>>> merge
  end
<<<<<<< HEAD
end

# a = {
#   question: {
#     text: 'hello',
#     answers: {
#       answer_1: ['scene_2', 'scene_4'],
#       answer_2: ['scene_3']
#     }
#   }
# }

<<<<<<< HEAD
json = ActiveSupport::JSON.decode(a)
json.each do |a|
  p a
end
>>>>>>> backend part
=======
# json = ActiveSupport::JSON.decode(a)
# json.each do |a|
#   p a
# end
>>>>>>> add scene1
=======
end
>>>>>>> merge
