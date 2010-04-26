require 'spec_helper'

describe "/articles/edit.html.erb" do
  include ArticlesHelper

  before(:each) do
    assigns[:article] = @article = stub_model(Article,
      :new_record? => false,
      :title => "value for title",
      :author => "value for author",
      :published => false,
      :brief => "value for brief",
      :content => "value for content"
    )
  end

  it "renders the edit article form" do
    render

    response.should have_tag("form[action=#{article_path(@article)}][method=post]") do
      with_tag('input#article_title[name=?]', "article[title]")
      with_tag('input#article_author[name=?]', "article[author]")
      with_tag('input#article_published[name=?]', "article[published]")
      with_tag('textarea#article_brief[name=?]', "article[brief]")
      with_tag('textarea#article_content[name=?]', "article[content]")
    end
  end
end
