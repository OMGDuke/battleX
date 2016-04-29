def p1_sign_in
  visit '/'
  click_button 'Player One'
  fill_in :player_name, :with => "Alex"
  click_button 'Get ready to rumble'
end

def p2_sign_in
  visit '/'
  click_button 'Player Two'
  fill_in :player_name, :with => "Fergus"
  click_button 'Get ready to rumble'
end
