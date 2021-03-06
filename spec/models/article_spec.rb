require 'spec_helper'

describe Article do
  before(:each) do
    @valid_attributes = {
      :title => "value for title",
      :author => "value for author",
      :published => false,
      :brief => "value for brief",
      :content => "value for content"
    }
  end

  it "should create a new instance given valid attributes" do
    Article.create!(@valid_attributes)
  end
end
