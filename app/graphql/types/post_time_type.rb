module Types
  class PostTimeType < Types::BaseObject
    field :id, ID, null: false
    field :post_id, Integer, null: false
    field :extended_time, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :id, ID, null: false
    field :extended_time, Integer, null: false
  end
end
