module Types
  class UserType < Types::BaseObject
    field :id, Integer, null: true
    field :username, String, null: true
  end
end
