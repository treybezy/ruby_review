require ".employee.rb"
require ".email_reportable.rb"

Module Actualize
  class Intern < Employee
    include EmailReportable
  end
end