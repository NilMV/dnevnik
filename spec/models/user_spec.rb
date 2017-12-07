require 'rails_helper'

RSpec.describe User, type: :model do
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
