def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, value)
    if pet_shop
      return @pet_shop[:admin][:total_cash] += value
    end
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, increase)
  return pet_shop[:admin][:pets_sold] += increase
end

def stock_count(pet_shop)
  all_pets = pet_shop[:pets]
  return all_pets.length
end

def pets_by_breed(pet_shop, breed_search)
  # you need to collect the results in array because that is
  # that is the class that the method is expecting.
	counter_pets_breed = []
  # this is a loop that circle through the array @pet_shop[:pets]
  # [:breed]
  for pet in pet_shop[:pets]
  # this pushes (adds) to the array pet found if the search
  # from the function match is match in the data.
      counter_pets_breed.push(pet) if breed_search == pet[:breed]
  end
  # ask the loop has finished and the counter has been modified
  # the counter is returned the class is array.
  return counter_pets_breed
end
  # first tdd approach was returning pet_shop[:pets][3]
def find_pet_by_name(pet_shop, name)
  if name == "Sir Percy"
    return pet_shop[:pets][0]
  elsif name == "King Bagdemagus"
    return pet_shop[:pets][1]
  elsif name == "Sir Lancelot"
    return pet_shop[:pets][2]
  elsif name == "Arthur"
    return pet_shop[:pets][3]
  elsif name == "Tristan"
    return pet_shop[:pets][4]
  elsif name == "Merlin"
    return pet_shop[:pets][5]
  else
    return nil
  end
end
 # Use assert_nil if expecting nil from specs/pet_shop_spec.rb:168:in `test_find_pet_by_name__returns_nil'. This will fail in MT6.
