require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  # test "the truth" do
  #   assert true
  # end
 
  def setup
    @user = User.new(first_name: 'John François', last_name: 'Begood', email: 'john@example.com', password:'huzefznpzef')
  	@user.valid?
  end

  test 'valid user' do
    assert @user.valid?
  end

  test 'invalid without first name' do
    @user.first_name = nil
    refute @user.valid?, 'saved user without a name'
    #assert_not_nil @user.errors[:first_name], 'no validation error for name present'
  end

  test 'invalid without blanks' do
    @user.first_name = '       '
    refute @user.valid?, 'saved user without a name'
    #assert_not_nil @user.errors[:first_name], 'no validation error for name present'
  end

  test 'invalid without last name' do
    @user.last_name = nil
    refute @user.valid?, 'saved user without a name'
    #assert_not_nil @user.errors[:last_name], 'no validation error for name present'
  end

  test 'invalid without email' do
    @user.email = nil
    refute @user.valid?
    #assert_not_nil @user.errors[:email]
  end

  test 'email already taken' do
    @user.email = User.exists?(:email => @user.email)
    refute @user.valid?
    #assert_not_nil @user.errors[:email]
  end

  test 'invalid without password' do
    @user.password = nil
    refute @user.valid?
    #assert_not_nil @user.errors[:email]
  end

end