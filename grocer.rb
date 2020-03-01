
def find_item_by_name_in_collection(name, collection)
  
  counter=0
  while counter<collection.length do
    if 
      collection[counter][:item] == name
      return collection[counter]
    end
    counter+=1
  end
end

def consolidate_cart(cart)
  updated_cart = []
  cart.each do |hash|
    hash.each do |key, value|
      if updated_cart[key]
        updated_cart[key][:count] += 1
      else
        updated_cart[key] = value
        updated_cart[key][:count] = 1
      end
    end
  end
  updated_cart
  
end
