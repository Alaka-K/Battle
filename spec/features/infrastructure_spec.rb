feature 'testing infrastructure' do
  scenario "can run app and check page content" do
    visit('/')
    expect(page).to have_field("name")
  end
end
