require 'rest-client'
class APIClient
  BASE_URL = "https://jsonplaceholder.typicode.com"  # Example API

  def get_users
    response = RestClient.get("#{BASE_URL}/users")
  end

  def get_user_by_id(user_id)
    response = RestClient.get("#{BASE_URL}/users/#{user_id}")
    JSON.parse(response.body)
  end
end 