require "rails_helper"

def sign_up_with(email, password)
  visit sign_up_path
  fill_in "user_email", with: email
  fill_in "user_password", with: password
  click_button I18n.t("helpers.submit.user.create")
end

feature "User records workout spec" do
  scenario "successfully" do
    # TODO: note, this is duplication of clearance spec
    visit sign_in_path
    click_link I18n.t("sessions.form.sign_up")
    sign_up_with "user@example.com", "password"

    # use a factory to sign in
    click_on "Track your workout"
    fill_in "Exercise", with: "Squat"
    fill_in "Sets", with: 5
    fill_in "Reps", with: 5
    fill_in "Weight", with: 315

    click_on "Submit"

    expect(page).to have_content("Your Workouts")
    expect(page).to have_content("Exercise: Squat")
    expect(page).to have_content("Sets: 5")
    expect(page).to have_content("Reps: 5")
    expect(page).to have_content("Weight: 315")
  end

  scenario "with empty exercise field" do
    visit root_path

    click_on "Track your workout"
    fill_in "Sets", with: 5
    fill_in "Reps", with: 5
    fill_in "Weight", with: 315
    
    click_on "Submit"

    expect(page).to have_content("Exercise can't be blank")
  end
end
