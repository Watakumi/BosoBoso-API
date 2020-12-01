module Types
  class ExtendedTimeType < Types::BaseObject
    field :id, ID, null: false
    field :post_id, ID, null: false
    field :count, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
