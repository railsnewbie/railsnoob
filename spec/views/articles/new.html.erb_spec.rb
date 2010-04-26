require 'spec_helper'

describe "/articles/new.html.erb" do
  include ArticlesHelper

  before(:each) do
    assigns[:article] = stub_model(Article,
      :new_record? => true,
      :title => "value for title",
      :author => "value for author",
      :published => false,
      :brief => "value for brief",
      :content => "value for content"
    )
  end

  it "renders new article form" do
    render

    response.should have_tag("form[action=?][method=post]", articles_path) do
      with_tag("input#article_title[name=?]", "article[title]")
      with_tag("input#article_author[name=?]", "article[author]")
      with_tag("input#article_published[name=?]", "article[published]")
      with_tag("textarea#article_brief[name=?]", "article[brief]")
      with_tag("textarea#article_content[name=?]", "article[content]")
    end
  end
end
