require "byebug"

class Employee
  attr_reader :name, :salary
  attr_accessor :title, :boss

  def initialize(name)
    @title = []
    @salary = 10000
    @boss = ""
    @name = name
  end

  def get_salaries(employee)
    salaries = 0.0
    return salaries if @employees.nil?

    @employees.each do |employee|
      if employee.employees.nil?
        salaries += employee.salary
      else
        get_salaries(employee)
      end
    end
    return salaries
  end

  def bonus(percentage)
    #check if has employees
    if self.employees.nil?
      bonus_total = self.salary * (percentage * 1.0)
    else
    end
  end
end

class Manager < Employee
  attr_accessor :employees

  def initalize()
    @employees = []
  end
end
