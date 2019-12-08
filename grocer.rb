def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  i=0
  while i < collection.length do
    if collection[i][:item] == name
      return collection[i]
    else
      nil
    end
    i += 1
  end
  #
  # Consult README for inputs and outputs
end

def consolidate_cart(cart)
  collection_item = []
  i = 0
  while i < cart.length
    new_item = def find_item_by_name_in_collection(cart[i][:item], collection_item)
    collection_item[i] = cart[i]
    if collection_item[i][:count] == 1
       collection_item[i][:count] += 1
     else
       collection_item[i][:count] = 1
    end

    i += 1
  end
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
