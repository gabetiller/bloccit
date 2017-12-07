require 'rails_helper'

RSpec.describe SponsoredPostsController, type: :controller do

  let(:my_topic) { Topic.create!(name:  RandomData.random_sentence, description: RandomData.random_paragraph) }
  let(:my_sponsored_post) { my_topic.sponsored_posts.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph) }

  describe "GET #show" do
    it "returns http success" do
      get :show, params: { topic_id: my_topic.id, id: my_sponsored_post.id }
      expect(response).to have_http_status(:success)
    end

    it "renders the #show view" do
       get :show, params: { topic_id: my_topic.id, id: my_sponsored_post.id }
       expect(response).to render_template :show
     end

     it "assigns my_sponsored_post to @sponsored_post" do
       get :show, params: { topic_id: my_topic.id, id: my_sponsored_post.id }
       expect(assigns(:sponsored_post)).to eq(my_sponsored_post)
     end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new, params: { topic_id: my_topic.id }
      expect(response).to have_http_status(:success)
    end

    it "initializes @sponsored_post" do
       get :new, params: { topic_id: my_topic.id }
       expect(assigns(:sponsored_post)).not_to be_nil
     end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit, params: { topic_id: my_topic.id, id: my_sponsored_post.id}
      expect(response).to have_http_status(:success)
    end
  end

end
