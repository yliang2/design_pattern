require './Employee.rb'
describe "Employee" do
    before(:each) do
        @employee = Employee.new('mat','1347',1300)
        @payroll = double('payroll',:update => 'Payroll Updated')
    end
    
    context 'with an observer' do
        before(:each) do
           @employee.add_observer(@payroll) 
        end

        it '#add_one_observer' do 
            expect{ @employee.all_observers.size}.== 1
        end
        
        it '#notify_all_observers' do
            @employee.should_receive(:notify_observers).and_return(/Payroll Updated/)
            @employee.salary=120
            @employee.changed
        end
        
        it 'delete_one_observer' do
            @employee.delete_observer(@payroll)
            @employee.all_observers.should be_empty
        end
    end
    
    context 'with no observer' do
        it '#add_one_observer' do 
            @employee.all_observers.size == 1
        end
        
        it 'delete_one_observer' do
            expect {@employee.delete_observer( @payroll)}.to raise_error(RuntimeError)
        end
    end
    
end