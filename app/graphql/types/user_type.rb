module Types
  class UserType < Types::BaseObject
    field :id, Integer, null: true
    field :username, String, null: true
    field :created_at, String, null: true
    field :updated_at, String, null: true
  end
end
