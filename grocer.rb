
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
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
new_cart = []
counter = 0 
while counter < cart.length 
new_cart_item = {
  :item => cart[counter][:item],
  :price => cart[counter][:price],
  :clearance => cart[counter][:clearance],
  :count => 1 
}
new_cart << new_cart_item
end
counter => 1 
end 
new_cart