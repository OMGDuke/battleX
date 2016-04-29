feature "select character" do
  scenario "P1 enter char name" do
    visit '/'
    click_button 'Player One'
    expect(page).to have_content "Player 1 select your name"
  end

  scenario "P2 enter char name" do
    visit '/'
    click_button 'Player Two'
    expect(page).to have_content "Player 2 select your name"
  end
  scenario 'Can select different names' do
    p1_sign_in
    visit '/'
    p2_sign_in
    click_button 'Attack'
    expect(page).to have_content 'Alex has attacked Fergus'
  end

end
