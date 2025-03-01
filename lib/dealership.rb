class Dealership
  attr_reader :name, :address, :inventory

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
  end

  def inventory_count
    @inventory.size
  end

  def add_car(car)
    @inventory << car
  end

  def has_inventory?
    @inventory.size > 0
  end

  def cars_by_make(make)
    @inventory.select do |car|
      car.make == make
    end
  end

  def total_value
    @inventory.map do |car|
      car.total_cost
    end.sum
  end

  def average_price_of_car
    (total_value / inventory.size).to_s.insert(-4, ",")
  end
  # 
  # def cars_sorted_by_price
  #   @inventory.sort_by do |car|
  #     car.total_cost
  # end
end
