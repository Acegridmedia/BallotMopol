

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

# num = "0802"

# 10.times do
#   tail = Faker::Number.number(7)
#   number = "#{num}#{tail}"
#   User.create(username: Faker::Internet.user_name, phone_number: number, password_digest: Faker::Internet.password)
# end

# users = User.all
# reports = Report.all

# reports.each do |report|
#   report.update!(user: users.sample)
# end


# comments = Comment.all

# comments.each do |comment|
#   comment.update!(user: users.sample)
# end


# reports.each do |report|
#   report.update(user: users.sample)
# end
