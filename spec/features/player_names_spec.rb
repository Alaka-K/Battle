feature 'player names' do
  scenario 'allow users to input names' do
    visit('/')
    fill_in 'name', with: 'Player 1'
    fill_in 'name', with: 'Player 2'
    click_button 'Submit'
    expect(page).to have_content 'Player 1 vs Player 2'
  end
end