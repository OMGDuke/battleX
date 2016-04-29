def p1_sign_in
  visit '/'
  click_button 'Player One'
  fill_in :player_1, :with => "Alex"
  click_button 'Get ready to rumble'
end

def p1_alt_sign_in
  visit '/'
  click_button 'Player One'
  fill_in :player_1, :with => "Fergus"
  click_button 'Get ready to rumble'
end
