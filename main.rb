require 'date'

zodiac = {
    :aquarius => {
        :element => "Air",
        :start_date => "January 20",
        :end_date => "February 18"
    },
    :pisces => {
        :element => "Water",
        :start_date => "February 19",
        :end_date => "March 20"
    },
    :aries => {
        :element => "Fire",
        :start_date => "March 21",
        :end_date => "April 19"
    },
    :taurus => {
        :element => "Earth",
        :start_date => "April 20",
        :end_date => "May 20"
    },
    :gemini => {
        :element => "Air",
        :start_date => "May 21",
        :end_date => "June 20"
    },
    :cancer => {
        :element => "Water",
        :start_date => "June 21",
        :end_date => "July 22"
    },
    :leo => {
        :element => "Fire",
        :start_date => "July 23",
        :end_date => "August 22"
    },
    :virgo => {
        :element => "Earth",
        :start_date => "August 23",
        :end_date => "September 22"
    },
    :libra => {
        :element => "Air",
        :start_date => "September 23",
        :end_date => "October 22"
    },
    :scorpio => {
        :element => "Water",
        :start_date => "October 23",
        :end_date => "November 21"
    },
    :sagittarius => {
        :element => "Fire",
        :start_date => "November 22",
        :end_date => "December 21"
    },
    :capricorn => {
        :element => "Earth",
        :start_date => "December 22",
        :end_date => "January 19"
    }
}

chinese_animal_zodiac = ["Rat", "Ox", "Tiger", "Rabbit", "Dragon", "Snake", "Horse", "Goat", "Monkey", 
"Rooster", "Dog", "Pig"]



# Print out an array of just the 12 zodiac signs.
hippie_array = zodiac.keys
# puts hippie_array

#Convert all the dates from class String to class Date.
zodiac.each do |key, value|
    newStartDate = Date.parse(value[:start_date])
    newEndDate =Date.parse(value[:end_date])
    puts newStartDate.class
    puts newEndDate.class
end


# Create a new hash where the keys are the elements and the value is an array of the signs of each element. Print this out.

# COME BACK TO!
summary = Hash.new

zodiac.each do |key, value|
    if summary.has_key?(value[:element])
        summary[value[:element]].push(key)
    else 
        summary[value[:element]] = []
        summary[value[:element]].push(key)
    end
    puts summary
end



# Go through the new hash and convert all zodiac sign names to all capital letters.
zodiac_elements = {
    :water => ["scorpio", "cancer", "pisces"]
}

zodiac_elements.each do |key, value|
    value.each do |sign|
        sign.upcase!
    end
    puts zodiac_elements
end


# With the hash zodiac, for each sign, print out a sentence that has the following format: "The [name of sign], from [start date] to [end date] is a [element] sign."

zodiac.each do |key, value|
    sentence = "The #{key}, from #{value[:start_date]} to #{value[:end_date]} is a #{value[:element]} sign."
    puts sentence
end

# Select and print out the name of the signs which have start dates in the second and third quarter of the year(April to September).

zodiac.each do |key, value|
    start_date = Date.parse(value[:start_date])
    # puts start_date

    if start_date > Date.parse('March 31') && start_date < Date.parse('October 1')
        # puts key
    end
    puts newStartDate.class
    puts newEndDate.class
end


# Partition the array chinese_animal_zodiac into two arrays. One should contain the strings that start with letters A-M. The other should contain strings that start with letters N-Z.

new_array = chinese_animal_zodiac.partition { |sign| sign[0] <= "M"}
print new_array


# Create a new array of numbers where each number is a length of the strings in chinese_animal_zodiac. Add all these numbers to get the total.
numbers = Array.new

chinese_animal_zodiac.each { |sign| 
    numbers.push(sign.length)
    print numbers
    print numbers.sum
}

# Sort the array chinese_animal_zodiac so that the shortest word is the first element and the longest word is the last element.
sorted_array = chinese_animal_zodiac.sort_by { |animal| animal.length }
print sorted_array

# Print out all words that start with the letter "R".
chinese_animal_zodiac.each do |animal| 
    if animal[0] == "R"
        puts animal
    end
end



