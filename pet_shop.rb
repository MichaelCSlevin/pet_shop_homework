# Lookup key name in pet_shop
# Return value
#1
def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

# lookup key admin in pet_shop
# lookup key total_cash in that!
# perfect!
# Nested.

#2
def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

#3 & 4
def add_or_remove_cash(pet_shop, cheddar)
  return pet_shop[:admin][:total_cash] += cheddar
end

#5
def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, pets)
  return pet_shop[:admin][:pets_sold] += pets
end

def stock_count(pet_shop)
  return pet_shop[:pets].length
end

# Given pet_shop hash and specific breed, return all
# pets which have that breed.
def pets_by_breed(pet_shop, breed)
  # Initialise empty array which will store all the pets.
  pets = []
  # For each individual pet in the array of
  # pets for the shop
  for pet in pet_shop[:pets]
    # If that pet has the breed I want
    if pet[:breed] == breed
      # put that pet into my array.
      pets << pet
    end
  end
  # Finally, return the pets array.
  return pets
end

 # Rubyish way, following they way they do it on
 # Codecademy.
def pets_by_breed_ruby(pet_shop, breed)
  all_pets = pet_shop[:pets]
  pets = []
  all_pets.each {
    |pet| pets << pet if pet[:breed] == breed
  }
  return pets
end

def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

def find_pet_by_name_ruby(pet_shop, pet_name)
  all_pets = pet_shop[:pets]
  all_pets.each {
    |pet| return  pet if pet[:name] == pet_name
  }
  return nil
end

def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      pet_shop[:pets].delete(pet)
        # just putting nil in here to stop the loop
        return nil
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end

def customer_can_afford_pet(customer, new_pet)

# get customer cash
  cash = customer[:cash]
# get pet price
  price = new_pet[:price]
# if cash < price then return false
  if cash < price
    return false
  else
    # else return true
    return true
  end
end

def sell_pet_to_customer(pet_shop, pet, customer)

  if pet and customer_can_afford_pet(customer, pet)
    add_pet_to_customer(customer, pet)
    remove_pet_by_name(pet_shop, pet[:name])
    increase_pets_sold(pet_shop, 1)
    add_or_remove_cash(pet_shop, pet[:price])
  end

end



# array of hashes
# [ {1: 2}, {2: 3} ]
# e.g. customers is an array of customer hashes
# e.g. pets is an array of pet hashes


# hash whose values are arrays
# { 1: [1, 2], 2: [2, 3 ] }

# Function arguments represent arbitrary input.
# the function has to tell you what to do with what
# you plug into it. Arguments appear in orange in
# this editor.

# Variables are handy assignments you use to pass bits
# of code around.
def add_one(number)
  return number + 1
end


puts add_one(1)
puts add_one(2)
puts add_one(3)
puts add_one(4)


# x = 5
# puts x
# x += 1
# puts x
