class SalesController < ApplicationController
  def index
    # make your sales objects available to the correlating view here
    Employee.loadfile('db/data/employees.csv')
    Sale.read_info('db/data/sale.csv')
    @employees = Employee.all_employees
    @sale_per_person = Sale.sales_per_person
  end
end
