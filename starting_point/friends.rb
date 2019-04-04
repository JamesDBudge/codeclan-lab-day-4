def get_name(person)
  return person[:name]
end

def get_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, snack)
  return person[:favourites][:snacks].include?(snack) if true

end

def add_friend(new_friend, person)
  person[:friends].push(new_friend)
end

def remove_friend(person, ex_friend)
  person[:friends].delete(ex_friend)
end

def total_monies(group)
  total_monies = 0
  for person in group
    total_monies += person[:monies]
  end
  return total_monies
end

def loan(lender, borrower, amount)
  lender[:monies] -= amount
  borrower[:monies] += amount
end

def all_favourite_foods(people)
favourite_foods = []
  for person in people
    favourite_foods += person[:favourites][:snacks]
  end
  return favourite_foods.sort
end

def no_friends(group)
  no_mates = []
  for person in group
    if person[:friends].length == 0
      no_mates.push(person[:name])
    end
  end
  return no_mates
end
