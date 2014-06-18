require_relative "testing_library"

def how_many_dogs(dogs)
  dogs.count
end

def name_lengths(dogs)
  new_dogs_array_with_lengths = []

  dogs.each do |dog_name|
    new_dogs_array_with_lengths.push(dog_name.length)
  end

  new_dogs_array_with_lengths
end

def reverse_dog_names(dogs)
  reversed_dog_names = []

  dogs.each do |dog|
    the_new_dog_name = dog.reverse

    reversed_dog_names.push(the_new_dog_name)
  end

  reversed_dog_names
end

def first_three_dogs_with_each(dogs)
  first_three_dogs = []

  dogs.each_with_index do |dog, index|
    if index == 3
      return first_three_dogs
    end

    first_three_dogs.push(dog)
  end
end

def first_three_dogs_without_each(dogs)
  dogs[0..2] # slicing an array
end

def reverse_case_dog_names(dogs)
  inverse_dog_names = []

  dogs.each do |dog|
    new_dog_name = dog.swapcase
    inverse_dog_names.push(new_dog_name)
  end

  inverse_dog_names
end

def sum_of_all_dog_name_lengths(dogs)
  # this is called reduce

  total_length = 0

  dogs.each do |dog_name|
    total_length = total_length + dog_name.length
  end

  total_length
end

def dogs_with_long_names(dogs)
  dogs.map {|dog_name| dog_name.length > 4}
end

puts "*"*80
puts "Make each method return the correct value"
puts "The check method will run and tell you if the answer is correct"
puts "*"*80

my_awesome_dog_array = ["Fido", "Harleigh", "Mali", "Trixie", "Snow", "Victory"]
another_dog_array = ["Fido"]

check("how_many_dogs", how_many_dogs(my_awesome_dog_array) == 6)
check("how_many_dogs", how_many_dogs(another_dog_array) == 1)
check("how_many_dogs", how_many_dogs(["Fido", "Trixie"]) == 2)

check("name_lengths", name_lengths(my_awesome_dog_array) == [4, 8, 4, 6, 4, 7])
check("reverse_dog_names", reverse_dog_names(my_awesome_dog_array) == ["odiF", "hgielraH", "ilaM", "eixirT", "wonS", "yrotciV"])
check("first_three_dogs_with_each", first_three_dogs_with_each(my_awesome_dog_array) == ["Fido", "Harleigh", "Mali"])
check("first_three_dogs_without_each", first_three_dogs_without_each(my_awesome_dog_array) == ["Fido", "Harleigh", "Mali"])
check("reverse_case_dog_names", reverse_case_dog_names(my_awesome_dog_array) == ["fIDO", "hARLEIGH", "mALI", "tRIXIE", "sNOW", "vICTORY"])
check("sum_of_all_dog_name_lengths", sum_of_all_dog_name_lengths(my_awesome_dog_array) == 33)
check("dogs_with_long_names", dogs_with_long_names(my_awesome_dog_array) == [false, true, false, true, false, true])

