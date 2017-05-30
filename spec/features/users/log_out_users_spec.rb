require 'rails_helper'

RSpec.feature 'Log out user' do
	
	before do
		@siki = User.create(:email => "petarsijan993@gmail.com", :password => "123456")
		
	end
	scenario 'sign in user' do
		login_as(@siki)
		visit '/'
		click_link "Log out"

		expect(page).to have_content("Signed out successfully.")
	end
end