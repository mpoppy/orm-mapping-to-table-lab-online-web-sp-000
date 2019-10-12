class Student

  attr_accessor :name, :grade
  attr_reader :id

  @@all

  def initialize (name, grade, id=nil)
    @name = name
    @grade = grade
    @id = id
  end

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

#class method create

#save method to save attributes to the db

end
