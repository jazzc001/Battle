def sign_in_and_play
  visit('/')
  fill_in(name: 'player_1', with: 'Rob')
  fill_in(name: 'player_2', with: 'Jasmine')
  click_button("Submit")
end