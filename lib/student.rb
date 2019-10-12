class Student

  attr_accessor :name, :grade
  attr_reader :id

  @@all

  def initialize (:name=name, :grade=grade, id=nil)
    @name = name
    @grade = grade
    @id = id

    @@all << self
  end

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

#class method create
  def self.create_table
    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS students (
      id INTEGER PRIMARY KEY,
      name TEXT,
      grade TEXT
    )
    SQL
    DB[:conn].execute(sql)
  end

  def self.drop_table
    sql = <<-SQL
    DROP TABLE students
    SQL
    DB[:conn].execute(sql)
  end


#save method to save attributes to the db

end
