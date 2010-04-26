require 'spec_helper'

describe "/articles/index.html.erb" do
  include ArticlesHelper

  before(:each) do
    assigns[:articles] = [
      stub_model(Article,
        :title => "value for title",
        :author => "value for author",
        :published => false,
        :brief => "value for brief",
        :content => "value for content"
      ),
      stub_model(Article,
        :title => "value for title",
        :author => "value for author",
        :published => false,
        :brief => "value for brief",
        :content => "value for content"
      )
    ]
  end

  it "renders a list of articles" do
    render
    response.should have_tag("tr>td", "value for title".to_s, 2)
    response.should have_tag("tr>td", "value for author".to_s, 2)
    response.should have_tag("tr>td", false.to_s, 2)
    response.should have_tag("tr>td", "value for brief".to_s, 2)
    response.should have_tag("tr>td", "value for content".to_s, 2)
  end
end
