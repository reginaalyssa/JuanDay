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
              {text: "Question 9", scene_id: 9},
              {text: "Question 10", scene_id: 10},
              {text: "Question 11", scene_id: 11},
              {text: "Question 12", scene_id: 12},
              {text: "Question 13", scene_id: 13},
              {text: "Question 14", scene_id: 14},
              {text: "Question 15", scene_id: 15},
              {text: "Question 16", scene_id: 16},
              {text: "Question 17", scene_id: 17},
              {text: "Question 18", scene_id: 18},
              {text: "Question 19", scene_id: 19}
            ]

answers = [ {"May 5 minutes pa, sobrang laki ng matutulong nun sa energy stored ng katawan mo kaya matutulog ka munang butaw ka." => 2, "Gigising ako malamang." => 3},
  {"sabay sa magulang" => 7, "commute" => 6},
  {"fb (5 minutes)" => 2, "ligo na" => 4},
  {"di siya naligo" => 5, "nag-igib ng tubig" => 2},
  {"sabay sa magulang" => 7, 'commute' => 6},
  {"next" => 8},
  {"tuloy lang" => 8, "MRT" => 8},
  {"help cram" => 9, "No help" => 10},
  {"dinibdib" => 10, "nagpakopya siya" => 10},
  {"minsan lang kumain" => 11, "tabi tabi" => 11},
  {"stay because it is important" => 12, "go early but matutulog lang" => 19},
  {"uwi ng maaga" => 13, "attend ng meeting" => 14},
  {"meeting, uwi" => 15},
  {"dukutan sa mrt" => 16},
  {"fb" => 17, "acads" => 18},
  {"answer" => 17, "ignore scold" => 17},
  {},
  {"yes" => 17},
  {"next" => 12}
  ]

set = questions.zip(answers).to_h

set.each do |q,a|
  question = Question.create!(q)
  unless a.empty?
    a.each do |text, scene_id|
      question.answers.create!(text: text, scene_id: scene_id)
    end
  end
end