module Queries
  class User < Queries::BaseQuery
    description "GET a User by their ID(Primary Key)"

    type Types::UserType, null: true

    argument :id, Integer, required: true

    def resolve(args)
      user = ::User.find_by(id: args[:id])
      if user
        user
      else
        @errors = {errors: "Some errors"}
      end
    end
  end
end
