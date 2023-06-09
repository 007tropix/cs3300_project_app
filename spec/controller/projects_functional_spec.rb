require "rails_helper"

RSpec.describe ProjectsController, :type => :controller do
    describe "test web requests" do
        context "GET #index" do
            it "returns a success response" do
            get :index
            expect(response).to have_http_status(:ok)
            end
        end

        context "GET #show" do
            let!(:project) { Project.create(title: "Test title", build_item: "Test build item") }
            it "returns a success response" do
                expect(response).to have_http_status(:ok)
            end
        end
        
        context "DELETE #index" do
        let!(:project) { Project.create(title: "Test title", build_item: "Test build item") }
        it "returns a success response" do
            delete :index
            expect(response).to have_http_status(:ok)
        end
    end

        
    end
end

