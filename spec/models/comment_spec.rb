require 'rails_helper'

RSpec.describe Comment, type: :model do

  describe "Comment has db columns" do
    it { is_expected.to have_db_column :body }
  end  

  describe "Assocciations" do
    it { is_expected.to belong_to :article }
  end  
end