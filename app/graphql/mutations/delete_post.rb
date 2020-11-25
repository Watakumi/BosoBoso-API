module Mutations
  class DeletePost < BaseMutation
    graphql_name 'DeletePost'

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
