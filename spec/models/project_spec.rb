require 'rails_helper'

  RSpec.describe Project, type: :model do
    before(:all)do
      @project = Project.new(description:"My Project", title:"My Title", link:"www.mylink.nl")
    end
    it "should have matching description" do
      expect(@project.description).to eq("My Project")
    end
    it "should have a matching title" do
      expect(@project.title).to eq("My Title")
    end
    it "should have a matching link" do
      expect(@project.link).to eq("www.mylink.nl")
    end
  end
