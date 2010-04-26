require 'spec_helper'

describe "/articles/show.html.erb" do
  include ArticlesHelper
  before(:each) do
    assigns[:article] = @article = stub_model(Article,
      :title => "value for title",
      :author => "value for author",
      :published => false,
      :brief => "value for brief",
      :content => "value for content"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ title/)
    response.should have_text(/value\ for\ author/)
    response.should have_text(/false/)
    response.should have_text(/value\ for\ brief/)
    response.should have_text(/value\ for\ content/)
  end
end
