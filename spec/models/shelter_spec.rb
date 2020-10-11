require 'rails_helper'

describe Shelter, type: :model do
  describe "validations" do
    it { should validate_presence_of  :name
                                      :city
                                      :address
                                      :state
                                      :zip_code}
  end

  describe 'relationships' do
    it { should have_many :pets }
  end
end