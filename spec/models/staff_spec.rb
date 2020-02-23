require 'rails_helper'

  RSpec.describe Staff, type: :model do  
    #let(:staff) { Staff.create(name: 'atsushi', email: 'atsushi@gmail.com', password: 'password', password_confirmation: 'password') }

    
    it '#name' do
      staff = create(:staff)
      expect(staff.name).to eq 'tokunaga'
    end
    
    it '#password' do
      staff = create(:staff)
      staff.password = ' ' 
      expect(staff).not_to be_valid
    end
    
    it '#password minimum 6 length' do 
      staff = build(:staff, password: 'aaaaa', password_confirmation: 'aaaaa')
      staff.valid?
      expect(staff).to be_invalid
    end
    
    it 'emailのvalidが正しく機能しているか' do
      expect(build(:staff, email: 'user@foo,com')).not_to be_valid
      
      expect(build(:staff, email: 'user@foo..com')).not_to be_valid
      
      expect(build(:staff, email: '@foo,com')).not_to be_valid
      
      expect(build(:staff, email: 'user@@foo.com')).not_to be_valid
    end
    
    it 'emailの一意性が保たれているか' do
      staff = build(:staff, name: 'atsushi', email: 'test@example.com')
      dupulicate_staff = staff.dup
      dupulicate_staff.email = staff.email.upcase
      staff.save!
      expect(dupulicate_staff).not_to be_valid
    end

  end
  