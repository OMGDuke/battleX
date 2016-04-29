feature "select character" do
  scenario "P1 enter char name" do
    visit '/'
    click_button 'Player One'
    expect(page).to have_content "Player one select your name"
  end

  scenario 'Can select different names' do
    p1_alt_sign_in
    click_button 'Attack'
    expect(page).to have_content 'Fergus has attacked'
  end
  
end
