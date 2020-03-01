
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
  # code here
  consolidated_cart = {}
  cart.each do |item|
    item.each do |food_item, price_hash|
      if consolidated_cart[food_item]
        consolidated_cart[food_item][:count] +=1 
      else
        consolidated_cart[food_item] = price_hash
        consolidated_cart[food_item][:count] = 1
      end
  end
end
   consolidated_cart   
end
