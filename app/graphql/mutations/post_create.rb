module Mutations
  class PostCreate < BaseMutation
    graphql_name 'PostCreate'

    field :post, Types::PostType, null: true
    field :result, Boolean, null: true

    argument :description, String, required: false

    def resolve(**args)
      post = Post.create(description: args[:description])
      {
        post: post,
        result: post.errors.blank?
      }
    end
  end
end
