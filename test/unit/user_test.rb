require "test_helper"

class UserTest < ActiveSupport::TestCase
 	test "a user should enter a first name" do
 	user = User.new
 	assert !user.save
 	assert !user.errors[:first_name].empty?	
 	end

 	test "a user should enter a last name" do
 	user = User.new
 	assert !user.save
 	assert !user.errors[:last_name].empty?	
 	end

 	test "a user should enter a Profile name" do
 	user = User.new
 	assert !user.save
 	assert !user.errors[:profile_name].empty?	
 	end

 	test "a user should have a unique profile name" do
 	user = User.new
 	user.profile_name = 'jasonseifer'
 	user.first_name = "Jason"
 	user.last_name = "Seifer"
 	user.email = "jason@treehouse.com"
 	user.password = "password"
 	user.password_confirmation = "password"
 	
 	assert !user.save
 	assert !user.errors[:profile_name].empty?	
 	end
end
