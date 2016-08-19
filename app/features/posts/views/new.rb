Pakyow::App.view "posts/new" do
  render form: :post do |view|
    view.create
  end
end
