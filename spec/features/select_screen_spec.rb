feature 'Select Player' do
  scenario 'contains player 1 buttons' do
    visit "/"
    find_button('Player One').click
  end

  scenario 'contains player 2 buttons' do
    visit "/"
    find_button('Player Two').click
  end

  # scenario 'select player names' do
  #   visit "/"
  #   expect(page).to have_content "Player one select your name"
  #   expect(page).to have_content "Player two select your name"
  # end

end
