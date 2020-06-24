module PostsHelper
  def post_params
    params.require(:post).permit(:title, :body, :tag_list)
  end
end

