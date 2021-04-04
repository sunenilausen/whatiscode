require "rails_helper"

RSpec.feature "Printing", :type => :feature do
  scenario "Guest can open print view of a lecture" do
    expect(Lecture.count).to eq(1)
    visit lecture_url(id: Lecture.first.id)

    find('i', text: "insert_drive_file").click

    expect(page).to have_text("Article Body")
  end
end
