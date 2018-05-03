require ".employee.rb"
require ".email_reportable.rb"  

Module Actualize
  class Manager < Employee
    include EmailReportable


    attr_reader :employees
    def initialize(input_options)
      super(input_options)
      @employees = input_options[:employees]
    end


    
    def give_all_raises
        @employees.each do |employee|
          employee.give_annual_raise
        end

      def fire_all_employees

      employes.each  do |turnip|
        turnip.active = false
      end
        
      end         
    end

  end
end

require "./employee.rb"
require "./manager.rb"
reqire "./intern.rb"


employee_1 = Actualize::Employee.new(
                          first_name: "Tim", 
                          last_name: "Taylor", 
                          salary: 70000, 
                          active: true
                          )

employee_2 = Actualize::Employee.new(
                          first_name: "Walter", 
                          last_name: "Cronkite", 
                          salary: 80000, 
                          active: true
                          )

manager = Actualize::Manager.new(
                      first_name: "Betty",
                      last_name: "Crocker",
                      salary: 100000,
                      active: true,
                      employees: [employee_1, employee_2]
                      )


intern = Actualize::Intern.new(
                    first_name: "Jimmy",
                    last_name: "Olsen",
                    salary: 25000,
                    active: true
                     )

intern.print_info
intern.send_report
p intern.employees


