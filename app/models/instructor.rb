class Instructor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.pass_student(student, test_name)
    correct_test = BoatingTest.all.find do |test_instance|
      test_instance.student == student && test_instance.test_name == test_name
    end
    correct_test.test_status = "passed"
  end

  def self.fail_student(student, test_name)
    correct_test = BoatingTest.all.find do |test_instance|
      test_instance.student == student && test_instance.test_name == test_name
    end
    correct_test.test_status = "failed"
  end

  def self.student_grade_percentage(student)
    passed_tests = 0
    total_tests = 0
    BoatingTest.all.each do |test_instance|
      if test_instance.student == student && test_instance.test_status == "passed"
        passed_tests += 1
        total_tests += 1
      elsif test_instance.student == student && test_instance.test_status == "failed"
        total_tests += 1
      end
    end
    percent_passed = (passed_tests.to_f / total_tests.to_f) * 100
    percent_passed
  end

end
