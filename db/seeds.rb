states = {
  "AB"=> "Abia",
  "AJ"=> "Abuja",
  "AN"=> "Anambra",
  "AD"=> "Adamawa",
  "AK"=> "Akwa Ibom",
  "BA"=> "Bauchi",
  "BY"=> "Bayelsa",
  "BE"=> "Benue",
  "BO"=> "Borno",
  "CR"=> "Cross River",
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

