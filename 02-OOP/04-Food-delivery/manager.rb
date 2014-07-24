require_relative 'restaurant'

class Manager < Employee

  def create_customer(name, address)
    customer = Customer.new(name, address)
  end

  def add_order(id, order_meals)
    @order = Order.new

  end

end