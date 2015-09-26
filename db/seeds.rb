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
              {text: "Question 1", scene_id: 1},
              {text: "Question 2", scene_id: 2},
              {text: "Question 3", scene_id: 3},
              {text: "Question 4", scene_id: 4},
              {text: "Question 5", scene_id: 5},
              {text: "Question 6", scene_id: 6},
              {text: "Question 7", scene_id: 7},
              {text: "Question 8", scene_id: 8},
              {text: "Question 9", scene_id: 9}
            ]
answers = [ {"snooze" => 2, "gising" => 3},
  {"sabay sa magulang" => 7, "commute" => 6},
  {"fb (5 minutes)" => 4, "ligo na" => 2},
  {"di siya naligo" => 5, "nag-igib ng tubig" => 2},
  {"sabay sa magulang" => 7, 'commute' => 6},
  {},
  {"tuloy lang" => 8, "MRT" => 8},
  {"help cram" => 9, "No help" => 10},
  {"dinibdib" => 10, "nagpakopya siya" => 10}
  ]

set = questions.zip(answers).to_h

set.each do |q,a|
  question = Question.create!(q)
  a.each do |text, scene_id|
    question.answers.create!(text: text, scene_id: scene_id)
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