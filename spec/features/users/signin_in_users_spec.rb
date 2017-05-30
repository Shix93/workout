require 'rails_helper'

RSpec.feature 'Sign in user' do
	
	before do
		@siki = User.create(:email => "petarsijan993@gmail.com", :password => "123456")
	end
	scenario 'sign in user' do
		visit '/'

		click_link "Log in"
		fill_in "Email", with: @siki.email
		fill_in "Password", with: @siki.password
		click_button "Log in"

		expect(page).to have_content("Signed in successfully.")
		expect(page).to have_content("Signed in as #{@siki.email}")
	end
end