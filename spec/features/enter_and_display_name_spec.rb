feature 'Player entry form' do
  scenario 'Form is submitted and names appear on /play' do
    sign_in_and_play
    expect(page).to have_text("Hi Rob & Jasmine!")
  end
end