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
    Student.all.find do |student|
      student.name == name
    end
  end

end
