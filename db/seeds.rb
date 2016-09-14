State.destroy_all

Election.destroy_all

states = {
  "AB"=> "Abia",
  "AJ"=> "Abuja",
  "AN"=> "Anambra",
  "AD"=> "Adamawa",
  "AK"=> "AkwaIbom",
  "BA"=> "Bauchi",
  "BY"=> "Bayelsa",
  "BE"=> "Benue",
  "BO"=> "Borno",
  "CR"=> "CrossRiver",
  "DE"=> "Delta",
  "ED"=> "Edo",
  "EK"=> "Ekiti",
  "EB"=> "Ebonyi",
  "EN"=> "Enugu",
  "GO"=> "Gombe",
  "IM"=> "Imo",
  "KN"=> "Kano",
  "LA"=> "Lagos",
  "NS"=> "Nassarawa",
  "JI"=> "Jigawa",
  "KB"=> "Kebbi",
  "KD"=> "Kaduna",
  "KG"=> "Kogi",
  "KT"=> "Katsina",
  "KW"=> "Kwara",
  "NR"=> "Niger",
  "OG"=> "Ogun",
  "ON"=> "Ondo",
  "OS"=> "Osun",
  "OY"=> "Oyo",
  "PL"=> "Plateau",
  "RV"=> "Rivers",
  "SO"=> "Sokoto",
  "TA"=> "Taraba",
  "YB"=> "Yobe",
  "ZM"=> "Zamfara"
}

states.each do |key, value|
  State.create(code: key, name: value)
end

years = ["2011", "2015", "2019"]

typ = ["Presidential", "Governorship", "National House of Representative", "Senatorial", "State House of Assembly", ]

typ.each do |e|
  Election.create(name: e, year: years.sample)
end

20.times do
  Report.create(content: Faker::Hipster.sentences(1), state: State.all.sample, election: Election.all.sample)
end
