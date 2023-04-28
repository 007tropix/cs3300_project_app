require "rails_helper"

describe "Project Attribute Requirements on Create", :type => :model do
  context "validation tests" do
    it "ensures project can't be created without title" do
      project = Project.new(build_item: "Content of the description")
      expect(project.valid?).to eq(false)
    end
    it "ensures project can't be created without build item" do
        project = Project.new(title: "Title")
        expect(project.valid?).to eq(false)
    end
    it "should not be able to save project when title missing" do
      project = Project.new(build_item: "Test build item")
      expect(project.save).to eq(false)
    end
    it "should not be able to save project when build item missing" do
        project = Project.new(title: "Title")
        expect(project.save).to eq(false)
      end
    it "should be able to save project when have title and build item" do
      project = Project.new(title: "Title", build_item: "Test build item")
      expect(project.save).to eq(true)
    end
  end
end

describe "Project Attribute Requirements on Edit", :type => :model do
    context "Edit project" do  
      before (:each) do
        @project = Project.create(title: "Title", build_item: "Test build item")
   
        end
      it "ensures the title is present when editing project" do
        @project.update(:title => "New Title")
        expect(@project.title == "New Title")
      end
      it "ensures the build item is present when editing project" do
          @project.update(:build_item => "New build item")
          expect(@project.build_item == "New build item")
        end
    end
  end
  
