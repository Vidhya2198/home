require_relative '../pages/api_client'
require 'rspec'

describe "GET API Tests" do
  before(:all) do
    @api_client = APIClient.new
  end

  it "verifies GET /users returns a 200 status" do
    response = @api_client.get_users
    expect(response.code).to eq(200)
  end

  it "verifies GET /users returns a list of users" do
    users = JSON.parse(@api_client.get_users)
    expect(users).not_to be_empty
    expect(users.first).to have_key("name")
  end

  it "verifies GET /users/1 returns a valid user" do
    user = @api_client.get_user_by_id(1)
    expect(user["id"]).to eq(1)
  end
end