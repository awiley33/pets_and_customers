require "spec_helper"

RSpec.describe Groomer do
  before do
    @groomer1 = Groomer.new("Regina")
    @customer1 = Customer.new("Joel", 2)
    @customer2 = Customer.new("Anna", 3)
    @pet1 = Pet.new({name: "Samson", type: :dog, age: 3})
    @pet2 = Pet.new({name: "Lucy", type: :cat, age: 12}) 
    @pet3 = Pet.new({name: "Fluffy", type: :dog, age: 7})

    @customer1.adopt(@pet1)
    @customer1.adopt(@pet2)
    @customer2.adopt(@pet3)
  end

  it "exists and has readable attributes" do
    expect(@groomer1).to be_a Groomer
    expect(@groomer1.name).to eq("Regina")
  end

  it "can add customers and can have multiple" do
    expect(@groomer1.customers).to eq([])
    @groomer1.add_customer(@customer1)
    @groomer1.add_customer(@customer2)

    expect(@groomer1.customers).to eq([@customer1, @customer2])
  end

  it "can find all customers with an outstanding balance" do
    @groomer1.add_customer(@customer1)
    @groomer1.add_customer(@customer2)
    expect(@groomer1.customers_with_balances).to eq([])
    
    @customer1.charge(15)
    expect(@groomer1.customers_with_balances).to eq([@customer1])
    
    @customer2.charge(75)
    expect(@groomer1.customers_with_balances).to eq([@customer1, @customer2])
  end

  it "can count all pets of a given type" do
    @groomer1.add_customer(@customer1)
    @groomer1.add_customer(@customer2)

    expect(@groomer1.pet_type_count(:dog)).to eq(2)
    expect(@groomer1.pet_type_count(:cat)).to eq(1)
  end
end