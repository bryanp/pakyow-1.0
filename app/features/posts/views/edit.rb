Pakyow::App.view "posts/edit" do
  render form: :post, query: -> { post.find(params[:post_id]) } do |view, data|
    view.update(data)
  end
end
