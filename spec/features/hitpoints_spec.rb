feature 'hitpoints' do
  scenario "view player 2 hitpoints" do
    visit('/')
    fill_in 'name', with: 'Player 1'
    fill_in 'name2', with: 'Player 2'
    click_button 'Submit'
    expect(page).to have_content("Player 2 - 100HP")
  end
end