def sign_in_and_play
  visit("/")
  fill_in :player1, with: "Ash"
  fill_in :player2, with: "Team Rocket"
  click_button "Submit"
end
