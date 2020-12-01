module Mutations
  class ExtendedTimeCreate < BaseMutation
    graphql_name 'ExtendedTimeCreate'

    field :extended_time, Types::ExtendedTimeType, null: true
    field :result, Boolean, null: true

    argument :count, Integer, required: true
    argument :post_id, ID, required: true

    def resolve(**args)
      post = Post.find(args[:post_id])
      extended_time = post.extended_times.create(count: args[:count])
      {
        extended_time: extended_time,
        result: extended_time.errors.blank?
      }
    end
  end
end
