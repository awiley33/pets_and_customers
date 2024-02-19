require "spec_helper"

RSpec.describe Veterinarian do
  before do
    @vet1 = Veterinarian.new("Dr. Melfie")
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
    expect(@vet1).to be_a Veterinarian
    expect(@vet1.name).to eq("Dr. Melfie")
    expect(@vet1.customers).to eq([])
  end

  it "can add customers to a veterinarian" do
    expect(@vet1.customers).to eq([])
    @vet1.add_customer(@customer1)
    @vet1.add_customer(@customer2)

    expect(@vet1.customers).to eq([@customer1, @customer2])
  end

  it "can list all pets sorted by age" do
    @vet1.add_customer(@customer1)
    @vet1.add_customer(@customer2)

    expect(@vet1.list_pets).to eq("Lucy, Fluffy, Samson")
  end

  it "can count pets of a given customer" do
    @vet1.add_customer(@customer1)
    @vet1.add_customer(@customer2)

    expect(@vet1.count_pets(@customer1)).to eq(2)
    expect(@vet1.count_pets(@customer2)).to eq(1)
  end
end