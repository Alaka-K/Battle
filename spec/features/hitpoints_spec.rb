feature 'hitpoints' do
  scenario "view player 2 hitpoints" do
    visit('/')
    sign_in_and_play
    expect(page).to have_content("Player 2 - 100HP")
  end
end