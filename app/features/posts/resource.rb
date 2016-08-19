Pakyow::App.resource :post, '/posts' do
  new do
    # nothing to do here
  end
  
  edit do
    # nothing to do here
  end

  create do
    data.post.create(params)
  end
  
  update do
    data.post.update(params)
  end
  
  delete do
    data.post.delete(params[:post_id])
  end
end
