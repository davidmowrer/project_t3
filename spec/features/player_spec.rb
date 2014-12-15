require 'rails_helper'

feature 'Player Signup' do
  scenario 'allows a player to signup' do
    @user = FactoryGirl.create(:user,password: 'test', password_confirmation: 'test')

    visit '/'

    click_link('Login')

    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password

    click_button 'Login'

    click_link 'Play_Game'

    click_link 'Player_Signup'

    fill_in 'Name', with: 'Space'

    click_button 'Signup Player'

    expect(page).to have_text("#{@user.players.find_by(name: 'Space').name} was successfully created.")

  end

  scenario 'allows an existing player to login' do
    @user = FactoryGirl.create(:user,password: 'test', password_confirmation: 'test')

    visit '/'

    click_link('Login')

    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password

    click_button 'Login'

    click_link 'Play_Game'

    click_link 'Player_Login'

    fill_in 'Name', with: 'Space'

    click_button 'Login Player'

    expect(page).to have_text("#{@user.players.find_by(name: 'Space').name} was successfully created.")

  end


end
