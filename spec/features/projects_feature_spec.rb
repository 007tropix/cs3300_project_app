require "rails_helper"

RSpec.feature "Projects", type: :feature do
    context "Update project" do
      let(:project) { Project.create(title: "Test title", build_item: "Test build item") }
      before(:each) do
        visit edit_project_path(project)
      end
 
 
      scenario "should be successful" do
        within("form") do
          fill_in "Build item", with: "New build item"
        end
        click_button "Update Project"
        expect(page).to have_content("Project was successfully updated")
      end

      scenario "should fail" do
        within("form") do
            fill_in "Title", with: ""
        end
        click_button "Update Project"
        expect(page).to have_content("Title can't be blank")
    end
 
      scenario "should fail" do
        within("form") do
          fill_in "Build item", with: ""
        end
        click_button "Update Project"
        expect(page).to have_content("Build item can't be blank")
      end
    end
end
