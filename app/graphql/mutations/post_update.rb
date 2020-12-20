module Mutations
  class PostUpdate < BaseMutation
    graphql_name 'PostUpdate'

    field :post, Types::PostType, null: true
    field :result, Boolean, null: true

    argument :id, ID, required: true
    argument :description, String, required: false

    def resolve(**args)
      post = Post.find(args[:id])
      post.update(description: args[:description])
      {
        post: post,
        result: post.errors.blank?
      }
    end
  end
end
