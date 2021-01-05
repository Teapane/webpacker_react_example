module Types
  class MutationType < Types::BaseObject
    field :updateUser, mutation: Mutations::UpdateUser
  end
end
