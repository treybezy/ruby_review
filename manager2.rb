class Employee
  attr_reader :first_name, :salary, :active
  attr_writer :first_name, :last_name, :salary

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end

class Manager < Employee
  attr_reader :employees
  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end

  def send_report
    puts "Sending Email..."
    # the code to send email
    puts "Email sent."
  end
  
  def give_all_raises
      @employees.each do |employee|
        employee.give_annual_raise
      end

    def fire_all_employees

    employes.each  do |turnip|
      turnip.active = false
    end

      p employees
      
    end         
  end

end

# runner code

employee_1 = Employee.new(
                          first_name: "Tim", 
                          last_name: "Taylor", 
                          salary: 70000, 
                          active: true
                          )

employee_2 = Employee.new(
                          first_name: "Walter", 
                          last_name: "Cronkite", 
                          salary: 80000, 
                          active: true
                          )

manager = Manager.new(
                      first_name: "Betty",
                      last_name: "Crocker",
                      salary: 100000,
                      active: true,
                      employees: [employee_1, employee_2]
                      )


p employee_1.salary
p employee_2.salary
employee_1.salary = 5


