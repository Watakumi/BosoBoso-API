module Types
  class QueryType < Types::BaseObject

    field :extended_times, [Types::ExtendedTimeType], null: false
    def extended_times
      ExtendedTime.all
    end

    field :extended_time, Types::ExtendedTimeType, null: false do
      argument :id, ID, required: true
    end
    def extended_time(id:)
      ExtendedTime.find(id)
    end

    field :posts, [Types::PostType], null: false
    def posts
      Post.all.reject{ |post| post.finished? }
    end

    field :post, Types::PostType, null: false do
      argument :id, Int, required: false
    end
    def post(id:)
      Post.find(id)
    end
  end
end
