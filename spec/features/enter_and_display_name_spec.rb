feature 'Player entry form' do
  scenario 'Player 1 name field is visible' do
    visit('/')
    expect(page).to have_field(name: 'player_1')
  end
  scenario 'Player 2 name field is visible' do
    visit('/')
    expect(page).to have_field(name: 'player_2')
  end
  scenario 'Submit button visible' do
    visit('/')
    expect(page).to have_button('Submit')
  end
  scenario 'Form is submitted and names appear on /play' do
    visit('/')
    fill_in(name: 'player_1', with: 'Rob')
    fill_in(name: 'player_2', with: 'Jasmine')
    click_button("Submit")
    expect(page).to have_text("Hi Rob & Jasmine!")
  end
end