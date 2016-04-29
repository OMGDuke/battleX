feature 'Player One Attack' do
  scenario 'Attack message' do
    p1_sign_in
    expect(page).to have_content 'Time to attack'
  end

  scenario 'Has an attack button' do
    p1_sign_in
    find_button('Attack').click
  end

  scenario 'Attack button launches attack' do
    p1_sign_in
    click_button 'Attack'
    expect(page).to have_content 'Alex has attacked'
  end



end
