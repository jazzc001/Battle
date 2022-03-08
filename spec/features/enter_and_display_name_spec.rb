feature 'Player entry form' do
  scenario 'Form is submitted and names appear on /play' do
    visit('/')
    fill_in(name: 'player_1', with: 'Rob')
    fill_in(name: 'player_2', with: 'Jasmine')
    click_button("Submit")
    expect(page).to have_text("Hi Rob & Jasmine!")
  end
end