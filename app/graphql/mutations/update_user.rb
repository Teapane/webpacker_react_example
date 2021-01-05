module Mutations
  class UpdateUser < Mutations::BaseMutation
    description "Update a User"

    argument :id, ID, required: true
    argument :username, String, required: false

    type Types::UserType

    def resolve(args)
      user = User.find(args[:id])
      user.update(args)
      {user: user}
    end
  end
end
