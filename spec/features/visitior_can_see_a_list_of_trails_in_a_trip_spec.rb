require 'rails_helper'

describe 'As a visitor' do
  describe 'when I am on trips index and click on a link to trip show' do
    scenario 'i see a list of trails included in the trip including name, address and length' do
      trail = Trail.create(name: "Happy trail", address: "memory lane", length: 1)
      visit trips_path
save_and_open_page

      expect(page).to have_content("Happy trail")


    end
  end
end

  # As a visitor,
  # when I visit the trips index,
  # and I click a link to a trip show,
  # I see a list of trails included in the trip,
  # I see the name, address, and length for each trail.