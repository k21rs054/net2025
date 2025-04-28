class Person
  attr_writer :age
  
  def initialize name, age
    @name = name
    @age = age
  end

  def info
    @name + "," + @age.to_s
  end

  def set_age x
    @age = x
  end
end

p = Person.new "rikito",22
puts p.info

p.set_age 20
puts p.info

p.age = 10
puts p.info


