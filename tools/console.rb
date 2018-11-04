require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

student1 = Student.new("Bob")
student2 = Student.new("Tim")
student3 = Student.new("Steve")

instructor1 = Instructor.new("Mr. A")
instructor2 = Instructor.new("Mr. B")
instructor3 = Instructor.new("Mr. C")

boatingtest1 = BoatingTest.new(student1, instructor1, "Test1", "pending")
boatingtest2 = BoatingTest.new(student1, instructor2, "Test2", "pending")
boatingtest3 =
BoatingTest.new(student2, instructor3, "Test2", "pending")
boatingtest4 =
BoatingTest.new(student1, instructor1, "Test3", "pending")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
