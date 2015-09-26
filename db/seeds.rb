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

questions = [ 
              {text: "Question 1", scene_id: 1},
              {text: "Question 2", scene_id: 2} 
            ]
answers = [ ["answer 1", "answer 2"],
  ["answer 1", "answer 2", "answer 3"]]

set = questions.zip(answers).to_h

set.each do |q,a|
  question = Question.create!(q)
  a.each do |answer|
    question.answers.create!(text: answer)
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