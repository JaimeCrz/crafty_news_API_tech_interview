require 'rails_helper'

RSpec.describe Comment, type: :model do

  it 'should have valid factory' do
    expect(create(:comment)).to be_valid
  end

  describe "Comment has db columns" do
    it { is_expected.to have_db_column :body }
  end  

  describe "Validations" do
    it { is_expected.to validate_presence_of :body }
  end


  describe "Assocciations" do
    it { is_expected.to belong_to :article }
    it { is_expected.to belong_to :user }
  end  
end