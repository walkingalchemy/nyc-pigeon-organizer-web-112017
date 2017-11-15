require 'pry'

pigeon_data = {
  # {attributes} => {values} => [pigeons]
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

pigeon_list = {
  # {pigeons} => {attributes} => [values]
  "Theo" => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Subway"]
  },
  "Peter Jr." => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Library"]
  },
  "Lucky" => {
    :color => ["purple"],
    :gender => ["male"],
    :lives => ["Central Park"]
  },
  "Ms. K" => {
    :color => ["grey", "white"],
    :gender => ["female"],
    :lives => ["Central Park"]
  },
  "Queenie" => {
    :color => ["white", "brown"],
    :gender => ["female"],
    :lives => ["Subway"]
  },
  "Andrew" => {
    :color => ["white"],
    :gender => ["male"],
    :lives => ["City Hall"]
  },
  "Alex" => {
    :color => ["white", "brown"],
    :gender => ["male"],
    :lives => ["Central Park"]
  }
}

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeons_tagged = {}
  data.each do |attribute, values|
    values.each do |value, pigeons|
      pigeons.each do |pigeon|
        binding.pry
        if pigeons_tagged.has_key?(pigeon)
          pigeons_tagged[pigeon][attribute].push(values)
        else
          pigeons_tagged[pigeon][attribute] = values
        end
      end
    end
  end
end

nyc_pigeon_organizer(pigeon_data)

# def reformat_languages(langs)
#   # your code here
#   languages_tagged = {}
#   langs.each do |style, languages|
#     languages.each do |language, type|
#       if languages_tagged.has_key?(language)
#         languages_tagged[language][:style].push(style)
#       else
#         languages_tagged[language] = type
#         languages_tagged[language][:style] = []
#         languages_tagged[language][:style].push(style)
#       end
#     end
#   end
#   languages_tagged
# end
