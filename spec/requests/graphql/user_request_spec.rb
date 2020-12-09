require 'rails_helper'

describe "User Query" do
  it "returns a user based on ID" do
    user =  User.create!(username: 'test')
    user_id = user.id
    query_string = <<-GRAPHQL
      query {
        user(id: #{user_id}) {
          id
          username
        }
      }
      GRAPHQL

      post graphql_path, params: {query: query_string}
      result = JSON.parse(response.body)
      expect(result).to eq({
        "data" => {
          "user" => {
            "id"=>1,
            "username"=>"test"
          }
        }
      }
                          )
  end
end
