module Mutations
  class PostDelete < BaseMutation
    graphql_name 'PostDelete'

    field :post, Types::PostType, null: true
    field :result, Boolean, null: true

    argument :id, ID, required: true

    def resolve(**arg)
      post = Post.find(arg[:id])
      post.destroy
      {
        post: post,
        result: post.errors.blank?
      }
    end
  end
end
