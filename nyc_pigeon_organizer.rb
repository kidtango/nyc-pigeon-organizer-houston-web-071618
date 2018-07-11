def nyc_pigeon_organizer(data)
  # write your code here!
  data.each_with_object({}) do |(pigeon_key, hash), result|
    p "starting hash: #{result}"
    hash.each do |value, names|
      p "value:  #{value}"
      names.each do |name|
        p name
        result[name] ||= {}

        p "---------------add all names to new hash----------------"
        result[name][pigeon_key] ||= []
        p result
        p "---------pigeon_key--------------"
        result[name][pigeon_key] << value.to_s
        p result

        p "---------add attribute--------------"
        p "result: #{result}"
      end
    end
  end
end

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"],
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"],
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"],
  },
}

nyc_pigeon_organizer(pigeon_data)
