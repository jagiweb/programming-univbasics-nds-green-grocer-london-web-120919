def find_item_by_name_in_collection(name, collection)
  i=0
  while i < collection.length do
    if collection[i][:item] == name
      return collection[i]
    else
      nil
    end
    i += 1
  end
end

def consolidate_cart(cart)
  collection_item = []
  i = 0
  while i < cart.length
    new_item = find_item_by_name_in_collection(cart[i][:item], collection_item)
    if new_item != nil
      new_item[:count] += 1
    else
      #new_item[:count] = 1
      new_item = cart[i]
      new_item[:count] = 1
      #  new_item = {
      #    item: cart[i][:item],
      #    price: cart[i][:price],
      #    clearance: cart[i][:clearance],
      #    count: 1
      #  }
       collection_item << new_item
    end
    i += 1
  end
  collection_item
end

def apply_coupons(cart, coupons)
  new_cart_with_coupons = []
  i = 0
  while i < coupons.length
    new_cart = find_item_by_name_in_collection(coupons[i][:item], cart)
    y = 0
    while y < new_cart.length
      if new_cart[i][:item] == coupons[y][:item]
        if new_cart[i][:count] >= coupons[y][:num]
          new_cart[i][:count] - coupons[y][:num]
          new_cart_with_coupons << new_cart[i]
          new_cart_with_coupons[i + 1] = new_cart[i]
          new_cart_with_coupons[i + 1][:item] = new_cart[i][:item] + " W/COUPON"
          new_cart_with_coupons[i + 1][:num] = coupons[y][:num]
        end
      end
    end
    i +=1
  end
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
