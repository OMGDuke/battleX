feature 'Player Two Turn One' do
  scenario 'Starts minding own business' do
    p2_sign_in
    expect(page).to have_content 'Fergus is minding his own business'
  end

  scenario "has a 'whistling' button" do
    p2_sign_in
    find_button('whistling').click
  end

  context "press whisteling button" do
    xscenario "show attacked msg" do

    end

    xscenario "show current hp" do

    end

    xscenario "gives oppertunity to attack back" do

    end
  end


  # scenario 'Has an attack button' do
  #   p2_sign_in
  # end
  #
  # scenario 'Attack button launches attack' do
  #   p2_sign_in
  #   click_button 'Attack'
  #   expect(page).to have_content 'Alex has attacked Fergus '
  # end
end
