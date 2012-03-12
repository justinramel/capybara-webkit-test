require_relative '../spec_helper'

describe 'google', :type => :request do
  it "shoul open google" do
    visit('/')
    fill_in 'q', :with => 'newcastle university'
    click_button 'Google Search'
    page.body.should include('www.ncl.ac.uk')
  end
end