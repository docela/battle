feature "Enter names" do
  scenario "submitting names" do
    visit("/")
    fill_in :player1, with: "Ash"
    fill_in :player2, with: "Team Rocket"
    click_button "Submit"
    expect(page).to have_content "Ash vs. Team Rocket"
  end
end
