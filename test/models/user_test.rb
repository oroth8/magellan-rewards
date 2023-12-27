# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'should not save user without first_name' do
    user = User.new(last_name: 'Doe', email: 'example@gmail.com', password: 'password', 
password_confirmation: 'password')

    assert_not user.save
  end

  test 'should not save user without last_name' do
    user = User.new(first_name: 'John', email: 'example.gmail.com', password: 'password', 
password_confirmation: 'password')

    assert_not user.save
  end

  test 'should not save user without email' do
    user = User.new(first_name: 'John', last_name: 'Doe', password: 'password', password_confirmation: 'password')

    assert_not user.save
  end

  test 'should not save user without password' do
    user = User.new(first_name: 'John', last_name: 'Doe', email: 'example@gmail.com', password_confirmation: 'password')

    assert_not user.save
  end

  test 'should save user without password_confirmation' do
    user = User.new(first_name: 'John', last_name: 'Doe', email: 'example@gmail', password: 'password')

    assert user.save
  end

  test 'should create a user with valid attributes' do
    user = User.new(first_name: 'John', last_name: 'Doe', email: 'example@gmail.com', password: 'password')

    assert user.save
  end
end
