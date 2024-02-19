require "spec_helper"

RSpec.describe Customer do
  before do
    @customer1 = Customer.new("Joel", 2)
    @pet1 = Pet.new({name: "Samson", type: :dog, age: 3})
    @pet2 = Pet.new({name: "Lucy", type: :cat, age: 12}) 
  end

  it "exists and has readable attributes" do
    expect(@customer1).to be_a Customer
    expect(@customer1.name).to eq("Joel")
    expect(@customer1.id).to eq(2)
  end

  it "has no pets by default" do
    expect(@customer1.pets).to eq([])
  end
  
  it "can add pets by the #adopt(pet) method" do
    expect(@customer1.pets).to eq([])
    @customer1.adopt(@pet1)
    @customer1.adopt(@pet2)

    expect(@customer1.pets).to eq([@pet1, @pet2])
  end

  it "has no outstanding balance by default" do
    expect(@customer1.outstanding_balance).to eq(0)
  end
  
  it "can be charged which raises the outstanding balance" do
    expect(@customer1.outstanding_balance).to eq(0)
    @customer1.charge(15)
    @customer1.charge(7)
    
    expect(@customer1.outstanding_balance).to eq(22)
  end
end