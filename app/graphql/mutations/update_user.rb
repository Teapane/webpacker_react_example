module Mutations
  class UpdateUser < Mutations::BaseMutation
    description "Update a User"
    argument :id, String, required: true
    argument :username, String, required: false

    field :user, Types::UserType, null: false

    def resolve(args)
      binding.pry
      user = User.find(args[:id])
      user.update(args)
    end
  end
end
