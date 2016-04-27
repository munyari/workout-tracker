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
  end

  describe "with empty exercise field"

end
