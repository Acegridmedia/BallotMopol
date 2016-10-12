Comment.destroy_all
Report.destroy_all

# states = {
#   "AB"=> "Abia",
#   "AJ"=> "Abuja",
#   "AN"=> "Anambra",
#   "AD"=> "Adamawa",
#   "AK"=> "AkwaIbom",
#   "BA"=> "Bauchi",
#   "BY"=> "Bayelsa",
#   "BE"=> "Benue",
#   "BO"=> "Borno",
#   "CR"=> "CrossRiver",
#   "DE"=> "Delta",
#   "ED"=> "Edo",
#   "EK"=> "Ekiti",
#   "EB"=> "Ebonyi",
#   "EN"=> "Enugu",
#   "GO"=> "Gombe",
#   "IM"=> "Imo",
#   "KN"=> "Kano",
#   "LA"=> "Lagos",
#   "NS"=> "Nassarawa",
#   "JI"=> "Jigawa",
#   "KB"=> "Kebbi",
#   "KD"=> "Kaduna",
#   "KG"=> "Kogi",
#   "KT"=> "Katsina",
#   "KW"=> "Kwara",
#   "NR"=> "Niger",
#   "OG"=> "Ogun",
#   "ON"=> "Ondo",
#   "OS"=> "Osun",
#   "OY"=> "Oyo",
#   "PL"=> "Plateau",
#   "RV"=> "Rivers",
#   "SO"=> "Sokoto",
#   "TA"=> "Taraba",
#   "YB"=> "Yobe",
#   "ZM"=> "Zamfara"
# }

# states.each do |key, value|
#   State.create(code: key, name: value)
# end

# years = ["2011", "2015", "2019"]

# typ = ["Presidential", "Governorship", "National House of Representative", "Senatorial", "State House of Assembly", ]

# typ.each do |e|
#   Election.create(name: e, year: years.sample)
# end

num = "0802"

10.times do
  tail = Faker::Number.number(7)
  number = "#{num}#{tail}"
  User.create(username: Faker::Internet.user_name, phone_number: number, password_digest: Faker::Internet.password)
end

users = User.all
elections = Election.all
states = State.all

# reports = Report.all

# reports.each do |report|
#   report.update!(user: users.sample)
# end
# states = State.all
# elections = Election.all
# users = User.all


100.times do
  Report.create(content: Faker::Lorem.paragraph(4), user: users.sample, election: elections.sample, state: states.sample)
end

reports = Report.all
# reports = Report.last(100)

550.times do
  Comment.create(content: Faker::Lorem.paragraph(3), user: users.sample, report: reports.sample)
end



# comments = Comment.last(50)

# comments.each do |comment|
#   comment.update!(report: reports.sample)
# end


# reports.each do |report|
#   report.update(user: users.sample)
# end
