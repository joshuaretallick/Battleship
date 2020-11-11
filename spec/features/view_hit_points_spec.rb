feature 'View hit points' do
  scenario 'view player 2 hitpoints' do
    visit('/')
    fill_in :player_1_name, with: 'Dave'
    fill_in :player_2_name, with: 'Mittens'
    click_button 'Submit'
    visit ('/play')
    expect(page).to have_content 'Health'
  end
end
