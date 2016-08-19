Pakyow::App.view "posts/index" do
  # auto-subscribed :-)
  # auto-applies data to view (b/c no block)
  render :post, query: -> { post.all }
end
