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
              {text: "Dahil sa mga bagay-bagay na maaaring 'di mo kasalanan, ikaw ay nalate umalis pauntang klase.", scene_id: 2},
              {text: "Nagising ka na. Pero may oras ka pang mag-Facebook.", scene_id: 3},
              {text: "Buti nalang at gusto mo maligo. Ngunit wala nanamang tubig sa iyong banyo.", scene_id: 4},
              {text: "Natapos ka nang maligo at nandyaan pa ang mga magulang mo. Gusto mo bang sumabay?", scene_id: 5},
              {text: "Hala! May bangaan sa EDSA. Late na na tuloy sa klase.", scene_id: 6},
              {text: "Natraffic nanaman kayo sa EDSA. Pero nasa medyong tapat na ng MRT kayo nahinto. Iiwanan mo nalang ba ang mga magulang mo?", scene_id: 7},
              {text: "Oops, may exam ka pala ngayon. Nagpapatulong ang kaibigan mo na magcram.", scene_id: 8},
              {text: "Yang bwisit na 'kaibigan' mo ay nangopya nalang sa iyo. Nahuli kayo ng prof. Magkaibigan pa ba kayo?", scene_id: 9},
              {text: "Bahala nalang. At least kakain ka na.", scene_id: 10},
              {text: "Math yung sunod na klase mo. Nakakaantok naman yun. Gusto mo na bang pumunta?", scene_id: 11},
              {text: "May meeting ka pagkatapos ng mga klase mo. Pero alam mo naman na malalate kang umuwi kung umattend ka.", scene_id: 12},
              {text: "Buti nalang naisip mo yun. Sige, uwi ka na.", scene_id: 13},
              {text: "Puno nanaman yung MRT pauwi. Tapos may bastos pa na dinukutan ka. Bwisit.", scene_id: 14},
              {text: "Buti nalang mainit pa yung pagkain sa bahay. Ano na gusto mong gawin pagkatapos?", scene_id: 15},
              {text: "Malamig na yung pagkain pagkauwi mo. Pinagalitan ka tuloy ng nanay mo.", scene_id: 16},
              {text: "Sa wakas, tulog.", scene_id: 17}
            ]
answers = [ {"snooze" => 2, "gising" => 3},
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