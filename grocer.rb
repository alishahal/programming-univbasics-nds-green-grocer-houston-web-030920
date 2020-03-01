
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

def apply_coupons(cart, coupons)
  
  coupons.each do |coupon|
  name = coupon[:item]
  if cart.include?(name) && cart[name][:count] >= coupon[:num]
      cart[name][:count] -= coupon[:num]
      if cart["#{name} W/COUPON"]
        cart["#{name} W/COUPON"][:count] += coupon[:num]
      else
        cart["#{name} W/COUPON"] = {
          :price => coupon[:cost] / coupon[:num],
          :clearance => cart[name][:clearance],
          :count => coupon[:num]
        }
      end
    end
  end
  cart
end

