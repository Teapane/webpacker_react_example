module Types
  class QueryType < Types::BaseObject
   field :user, resolver: Queries::User
   field :allUsers, resolver: Queries::AllUsers
  end
end
