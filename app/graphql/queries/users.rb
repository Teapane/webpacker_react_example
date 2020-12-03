module Queries
  class Users < Queries::BaseQuery
    description "Get all the users"

    type Types::UserType, null: true

    argument :id, Integer, required: true

    def resolve(args)
      users = User.find_by(id: args[:id])
      if users
        users
      else
        @errors = {errors: "Some errors"}
      end
    end
  end
end
