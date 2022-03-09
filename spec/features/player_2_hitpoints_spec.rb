feature "Display Player 2's hitpoints" do
  scenario "Display hitpoints" do
    sign_in_and_play
    expect(page).to have_text("Jasmine has 99 hitpoints")
  end
end