# Pets and Customers
The purpose of this repo is to practice my plain old Ruby. The code contained here satisfies the iterations below, which come from [an exercise by Turing School of Software and Design](https://github.com/turingschool-examples/mod-1-be-exercises/tree/main/practice_independent_challenges/week3/pets_and_customers).

## Iteration 1

Use TDD to create a `Pet` class that repsonds to the following interaction pattern:

```ruby
pry(main)> require './lib/pet'
# => true

pry(main)> samson = Pet.new({name: "Samson", type: :dog, age: 3})    
# => #<Pet:0x00007fb68d9f99f8...>

pry(main)> samson.name
# => "Samson"

pry(main)> samson.type
# => :dog

pry(main)> samson.age
# => 3

pry(main)> samson.fed?
# => false

pry(main)> samson.feed

pry(main)> samson.fed?
# => true
```

## Iteration 2

Use TDD to create a `Customer` class that responds to the following interaction pattern:

```ruby
pry(main)> require './lib/customer'
# => true

pry(main)> require './lib/pet'
# => true

pry(main)> joel = Customer.new("Joel", 2)    
# => #<Customer:0x00007ff8dd986e70...>

pry(main)> joel.name
# => "Joel"

pry(main)> joel.id
# => 2

pry(main)> joel.pets
# => []

pry(main)> samson = Pet.new({name: "Samson", type: :dog, age: 3})
# => #<Pet:0x00007ff8dc1f86a0...>

pry(main)> lucy = Pet.new({name: "Lucy", type: :cat, age: 12})    
# => #<Pet:0x00007ff8dc93e108...>

pry(main)> joel.adopt(samson)

pry(main)> joel.adopt(lucy)    

pry(main)> joel.pets
# => [#<Pet:0x00007ff8dc1f86a0...>, #<Pet:0x00007ff8dc93e108...>]

pry(main)> joel.outstanding_balance
# => 0

pry(main)> joel.charge(15)

pry(main)> joel.charge(7)    

pry(main)> joel.outstanding_balance
# => 22
```

---
 
## Iteration 3 (Veterinary Clinic)

You have been contracted to build a software application for a veterinary clinic. This clinic has many veterinarians and would like to be able to track data on each one of them. Specifically, they would like you to implement the following features:

* Each Veterinarian has a name, as well as a way to read that data.
* Each Veterinarian has multiple customers, and each of those customers can have multiple pets.
* A Veterinarian can list all pets under their care; sorted by age (oldest to youngest)
* A Veterinarian can count the number of pets of a given customer.

Build upon your code from the first two iterations to complete this task.

---

## Iteration 3 (Groomer)

You have been contracted to build a software application for a pet grooming company. This company has many grooming centers and would like to be able to track data on each one of them. Specifically, they would like you to implement the following features:

* Each Groomer has a unique name, as well as a way to read that data.
* Each Groomer has multiple customers, and each of those customers can have multiple pets.
* A Groomer can find all the customers with outstanding balances.
* A Groomer can count the number of pets of a given type. For example the groomer can count the number of cats, the number of dogs, etc. This should work for any pet type.

Build upon your code from the first two iterations to complete this task.

## Iteration 4 (Groomer)

The pet grooming company would like to be able to track more information on charges. They want to be able to track what the charge was for, for example washing, hair cut, etc. They also want to know which customer the charge applies to, which pet the charge applies to, and the amount of the charge. 

---

## Iteration 3 (Day Care)

You have been contracted to build a software application for a pet day care company. This company has many day care centers and would like to be able to track data on each one of them. Specifically, they would like you to implement the following features:

* Each Day Care has a unique name, as well as a way to read that data.
* Each Day Care has multiple customers, and each of those customers can have multiple pets.
* A Day Care can find a customer by the customer's id
* A Day Care can list all pets that are unfed


## Iteration 4 (Day Care)

The day care company would like to be able to feed all of its unfed pets and charge customers for feeding their pets. Each day care has its own price that it charges to feed a pet, and this price should vary depending on what type of pet it is (dog, cat, etc.). 
