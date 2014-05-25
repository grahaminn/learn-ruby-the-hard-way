## Animal is-a object look at the extra credit
class Animal
end

## Dog is-a Animal, has-a name
class Dog < Animal

    def initialize(name)
        ## ??
        @name = name
    end
end

## Cat is-a Animal, has-a name
class Cat < Animal

    def initialize(name)
        ## ??
        @name = name
    end
end

## Person has-a name, has-a pet
class Person

    def initialize(name)
        ## ??
        @name = name

        ## Person has-a pet of some kind
        @pet = nil
    end

    attr_accessor :pet 
end

## Employee is-a Person, has-a name and salary
class Employee < Person

    def initialize(name, salary)
        ## ?? hmm what is this strange magic?
        super(name)
        ## ??
        @salary = salary
    end

end

## Fish parent class
class Fish
end

## Salmon is-a fish
class Salmon < Fish
end

## Halibut is-a fish
class Halibut < Fish
end


## rover is-a Dog
rover = Dog.new("Rover")

## satan is-a Cat
satan = Cat.new("Satan")

## mary is-a Person
mary = Person.new("Mary")

## satan is mary's pet
mary.pet = satan

## frank is an Employee
frank = Employee.new("Frank", 120000)

## rover is frank's pet
frank.pet = rover

## flipper is-a Fish
flipper = Fish.new()

## crouse is-a Salmon
crouse = Salmon.new()

## harry is-a Halibut
harry = Halibut.new()
