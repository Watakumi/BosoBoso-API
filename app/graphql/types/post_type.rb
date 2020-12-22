module Types
  class PostType < Types::BaseObject
    description 'Post'

    field :id, ID, null: false
    field :description, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :extended_times, [Types::ExtendedTimeType], null: false
    field :sum_extended_times, Int, null: false
  end
end
