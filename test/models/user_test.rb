require 'test_helper'

class UserTest < ActiveSupport::TestCase
  describe User do
    let(:user_params) { {email: "a@a.com", password: "password", password_confirmation: "password"} } 
    let(:user) {User.new user_params}

    it "is valid new user with valid params" do 
      user.must_be :valid?
    end

    it "is invalid without an email" do 
      user_params.delete :email
      user.wont_be :valid?
      user.errors[:email].must_be :present?
    end
  end
end
