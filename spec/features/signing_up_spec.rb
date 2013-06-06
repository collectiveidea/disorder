require 'spec_helper'

describe "A user signing up" do
  it "saves a user and company on signup" do
    visit "/signups/new"
    
    fill_in "Company name", :with => "Acme Corporation"
    fill_in "First name", :with => "Wile E."
    fill_in "Last name", :with => "Coyote"
    fill_in "Email", :with => "coyote@example.com"
    # fill_in "City", :with => "Anytown"
    # fill_in "State", :with => "CA"
    
    click_button "Sign Up!"
    
    page.should have_text "Thanks for signing up!"
    page.should have_text "Acme Corporation"
    page.should have_text "Wile E. Coyote"
    # page.should have_text "Anytown, CA"
  end
end