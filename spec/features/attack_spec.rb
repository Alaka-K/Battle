feature 'attacking' do
  scenario 'attack with confirmation' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content('Player 2 - 90HP')
  end
end