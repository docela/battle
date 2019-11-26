feature "Attacks" do
  scenario "Attacks the other player" do
    sign_in_and_play
    click_link "Attack"
    expect(page).to have_content("Pow! Ash just attacked Team Rocket!")
  end
end
