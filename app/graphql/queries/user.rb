module Queries
  class User < Queries::BaseQuery
    description "Get all the users"

    type Types::UserType, null: true

    argument :id, Integer, required: true

    def resolve(args)
      user = User.find_by(id: args[:id])
      if user
        user
      else
        @errors = {errors: "Some errors"}
      end
    end
  end
end
