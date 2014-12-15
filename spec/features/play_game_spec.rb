require 'rails_helper'

feature 'Play Game' do
  scenario 'allows a users to play game' do
    visit '/'

    expect(page).to have_link('Play_Game')

    click_link 'Play_Game'

    expect(page).to have_text('ARE YOUR READY TO PLAY BLASTOFF?')
  end

  scenario 'allows a player to signup' do
    visit 'play_game'

    expect(page).to have_link('Signup')

    click_link 'Signup'

  end

  scenario 'allows a player to select a crew' do
    visit 'play_game'

    expect(page).to have_link('Select_A_Crew')

    click_link 'Select_A_Crew'

  end

end
