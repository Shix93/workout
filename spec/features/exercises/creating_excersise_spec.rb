require 'rails_helper'

RSpec.feature 'creating exercise' do
	
	before do
		@siki = User.create(:email => "petarsijan993@gmail.com", :password => "1234567")
	end

	scenario 'with valid inputs' do
		login_as(@siki)
		visit "/"

		click_link "My Lounge"
		click_link "New Workout"
		expect(page).to have_link("Back")

		fill_in "Duration", with: 70
		fill_in "Workout Details", with: "Weight lifting"
		fill_in "Activity date", with: "2016-07-26"
		click_button "Create exercise"

		expect(page).to have_content("Exercise has been created")
		exercise = Exercise.last
		expect(current_path).to eq(user_exercise_path(@siki, exercise))
		expect(exercise.user_id).to eq(@siki.id)	
	end
end