require 'rails_helper'

describe "User Update" do
  it "Updates a user based on ID" do
    user =  User.create!(username: 'test')
    user_id = user.id
    query_string = <<-GRAPHQL
      mutation {
        updateUser(input:{
          id: #{user_id},
          username: "Albus Dumbledore"
        }) {
          updateUser {
            username
          }
        }
      }
      GRAPHQL

      post graphql_path, params: {query: query_string}
      result = JSON.parse(response.body)
      expect(result).to eq({
        "data" => {
          "updateUser" => {
            "updateUser"=> {
              "username" => "Albus Dumbledore"
            }
          }
        }
      }
    )
  end
end

