module Mutations
  class UpdateUser < Mutations::BaseMutation
    description "Update a User"

    argument :id, ID, required: true
    argument :username, String, required: false

    field :update_user, Types::UserType, null: true

    def resolve(args)
      user = User.find(args[:id])
      user.update(args)
      {update_user: user}
    end
  end
end
