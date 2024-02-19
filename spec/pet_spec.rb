require "spec_helper"

RSpec.describe Pet do
  before do
    @pet1 = Pet.new({name: "Samson", type: :dog, age: 3})
  end

  it "exists and has readable attributes" do
    expect(@pet1).to be_a Pet
    expect(@pet1.name).to eq("Samson")
    expect(@pet1.type).to eq(:dog)
    expect(@pet1.age).to eq(3)
  end

  it "can check whether a pet has been fed, and is not fed by default" do
    expect(@pet1.fed?).to eq(false)
  end

  it "can record a feeding which updates the fed status" do
    expect(@pet1.fed?).to eq(false)
    @pet1.feed

    expect(@pet1.fed?).to eq(true)
  end
end