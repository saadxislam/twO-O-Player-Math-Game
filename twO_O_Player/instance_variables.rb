class Person
  attr_reader :name
  attr_writer :name

  def initialize(name)
    @name = name
  end

  
  # def get_name
  #   @name
  # end

  # def set_name(name)
  #   @name = name
  # end
end


p = Person.new("L. Ron")

p.name = "Saad"
puts p.get_name



    