feature "Attack Player 2" do
  scenario "Confirmation of Attack" do
    sign_in_and_play
    click_button(name: 'attack_player_2')
    expect(page).to have_text("Jasmine has 89 hitpoints")
  end
end