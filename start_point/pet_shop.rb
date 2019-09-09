#exercise1
def pet_shop_name(name)
  return (name)[:name]
end
# def pet_shop_name(pet_shop)
#   return pet_shop[:name]
# end
#exercise2
def total_cash(sum)
  return (sum)[:admin][:total_cash]
end
# def total_cash(pet_shop)
#   cash = pet_shop[:admin][:total_cash]
#   return cash
# end

#exercise3
def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] +=10
end
# def add_or_remove_cash(pet_shop, amount)
#   pet_shop[:admin][:total_cash] += amount
# end

#exercise4
def remove_or_add_cash(pet_shop, amount)
    pet_shop[:admin][:total_cash] -=10
end
# def add_or_remove_cash(pet_shop, amount)
#   pet_shop[:admin][:total_cash] += amount
# end
#exercise5
def pets_sold(sold)
  return (sold)[:admin][:pets_sold]
end
# def pets_sold(pet_shop)
#   return pet_shop[:admin][:pets_sold]
# end
#exercise6
def increase_pets_sold(sold, amount)
  sold [:admin][:pets_sold] +=2
end
# def increase_pets_sold(pet_shop, num_pets_sold)
#   pet_shop[:admin][:pets_sold] += num_pets_sold
# end

#exercise7
def stock_count(pet_shop)
   return pet_shop[:pets].count
end
# def stock_count(pet_shop)
#   return pet_shop[:pets].count
# end
#exercise8
def pets_by_breed(pet_shop, breed)
    number = 0
    breed_store = []
      for pet in pet_shop[:pets]
        if pet_shop[:pets][number][:breed] == breed
          breed_store.push(breed)
        end
          number +=1
        end
        return breed_store
      end
      # def pets_by_breed(pet_shop, breed)
      #   matches = []
      #   for pet in pet_shop[:pets]
      #     matches << pet if(pet[:breed] == breed)
      #   end
      #     return matches
      #   end

#exercise9
def pets_by_breed(pet_shop, breed)
    number = 0
    breed_store = []
      for pet in pet_shop[:pets]
        if pet_shop[:pets][number][:breed] == breed
          breed_store.push(breed)
        end
          number -=1
        end
        return breed_store
      end
#exercise10
def find_pet_by_name(pet_shop, pet_name)
    match = nil
    for pet in pet_shop[:pets]
      match = pet if(pet[:name] == pet_name)
    end
      return match
    end
#     # def find_pet_by_name(pet_shop, pet_name)
#     #     match = nil
#     #     for pet in pet_shop[:pets]
#     #     match = pet if(pet[:name] == pet_name)
#     # end
#         return match
#       end

#exercise11
def remove_pet_by_name(pet_shop, pet_name)
pet_to_delete = find_pet_by_name(pet_shop, pet_name)
pet_shop[:pets].delete(pet_to_delete)
end

#exercise12

def remove_pet_by_name(pet_shop, pet_name)
    pet_to_delete = find_pet_by_name(pet_shop, pet_name)
    pet_shop[:pets].delete(pet_to_delete)
end

#exercise13
def add_pet_to_stock(pet_shop, pet)
    pet_shop[:pets].push(pet)
end

#exercise14
def customer_cash(customer)
    return customer[:cash]
end

#exercise15
def remove_customer_cash(customer, amount)
    customer[:cash] -= amount
end

#exercise16
def customer_pet_count(customer)
    return customer[:pets].count
end

#exercise17
def add_pet_to_customer(customer, pet)
    customer[:pets] << pet
end

#exercise18
def customer_can_afford_pet(customer, pet)
    return customer[:cash] >= pet[:price]
end

#exercise19
def sell_pet_to_customer(pet_shop, pet, customer)
    return if (pet == nil)
    return if !(customer_can_afford_pet(customer, pet))

    add_pet_to_customer(customer,pet)
    add_or_remove_cash(pet_shop, pet[:price])
    remove_customer_cash(pet_shop, pet[:price])
    remove_pet_by_name(pet_shop, pet[:name])
    increase_pets_sold(pet_shop, 1)
end
