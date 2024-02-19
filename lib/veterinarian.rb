class Veterinarian
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

  def list_pets
    sorted_pets = @pets.sort_by { |pet| -pet.age }
    sorted_pets.map! { |pet| pet.name }
    p sorted_pets.join(separator = ", ")
  end

  def count_pets(customer)
    customer.pets.count
  end
end