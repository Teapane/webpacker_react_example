module Queries
  class Users < Queries::BaseQuery
    description "Get all the users"

    type Types::UserType, null: true

    def resolve
      user = User.all
      if user
        user
      else
        @errors = {errors: "Some errors"}
      end
    end
  end
end
