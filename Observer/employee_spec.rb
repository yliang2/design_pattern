require '../employee.rb'
describe Employee do
    before(:each) do
        employee = Employee.new('mat','1347',1300)
        payroll = double('payroll', :update => "Payroll changed")
        employee.add_observer(payroll)
    end
    it '#changed' do
        employee.should_receive(:changed)
        employee.salary=120
    end
end