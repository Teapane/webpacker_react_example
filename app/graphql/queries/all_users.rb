module Queries
  class AllUsers < Queries::BaseQuery
    description "Get all the users"

    type [Types::UserType], null: true

    # argument :id, Integer, required: false

    def resolve
      users = User.all
      if users
        users
      else
        @errors = {errors: "Some errors"}
      end
    end
  end
end
