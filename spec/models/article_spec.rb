require 'rails_helper'

  RSpec.describe Article, type: :model do
    before(:all)do
      @article = Article.new(content:"My Article", title:"My Title")
    end
    it "should have matching content" do
      expect(@article.content).to eq("My Article")
    end
    it "should have a matching title" do
      expect(@article.title).to eq("My Title")
    end
  end
