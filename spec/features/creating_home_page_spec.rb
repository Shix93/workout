require 'rails_helper'

RSpec.feature 'Creating home page' do
	scenario 'hope page' do
		visit '/'
		expect(page).to have_link('Home')
		expect(page).to have_link('Athlets Den')
		expect(page).to have_content('Workout Lounge!')
		expect(page).to have_content('Show off your workout')
	end
end