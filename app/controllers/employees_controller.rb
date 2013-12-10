class EmployeesController < ApplicationController
  def index
    # make your employee objects available to the correlating view here
    Employee.loadfile('db/data/employees.csv')
    Sale.read_info('db/data/sale.csv')
    @employees = Employee.all_employees
  end
end
