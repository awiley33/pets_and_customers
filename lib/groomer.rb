class Groomer
  attr_reader :name,
              :customers

  def initialize(name)
    @name = name
    @customers = []
    @pets = []
  end

  def add_customer(customer)
    @customers << customer
    customer.pets.each do |pet|
      @pets << pet
    end
  end

  def customers_with_balances
    customers = []
    @customers.each do |customer| 
      if customer.outstanding_balance > 0
        customers << customer
      end
    end
    customers
  end

  def pet_type_count(type)
    pets = @pets.select { |pet| type == pet.type }
    pets.count
  end
end