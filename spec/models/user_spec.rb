require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#add_role' do
    it 'add a new role for a user' do
      user = User.create
      user.add_role('student')
      expect(user.roles.count).to eq(1)
    end
    it 'doesnt add already existing role' do
      user = User.create
      user.add_role('student')
      user.add_role('student')
      expect(user.roles.count).to eq(1)
    end
    it 'does not add not existing role' do
      user = User.create
      user.add_role('choosen')
      expect(user.roles.count()).to eq(0)
    end
  end

  describe '#remove_role' do
    context 'role exists for user' do
      it 'removes existing role' do
        user = User.create
        user.add_role('student')
        user.remove_role('student')
        expect(user.roles.count).to eq(0)        
      end
    end
    context 'role does not exists for user' do
      it 'does nothing' do
        user = User.create
        user.remove_role('student')
        expect(user.roles.count).to eq(0)   
      end
    end
  end


  describe '#full_name' do
    it 'return full name of user' do
      user = User.new(first_name: 'Harry', 
                      last_name: 'Potter', 
                      middle_name: 'James'
      )
      expect(user.full_name).to eq('Potter Harry James')
    end
  end
end
