class Student

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(instructor_name, test_name, test_status)
    BoatingTest.new(self, instructor_name, test_name, test_status)
  end

  def self.find_student(name)
    @@all.find do |student| # iterate through @@all because its just a data set - self.all could have other stuff in it
      student.name == name
    end
  end

end
