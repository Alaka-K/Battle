def sign_in_and_play 
  visit('/')
  fill_in 'name', with: 'Player 1'
  fill_in 'name2', with: 'Player 2'
  click_button 'Submit'
end