# require 'rails_helper'
# include RandomData
#
# RSpec.describe AdvertisementsController, type: :controller do
#   let (:my_ad) do
#     Advertisement.create(
#       id: 1,
#       title: RandomData.random_sentence,
#       copy: RandomData.random_paragraph,
#       price: 99
#     )
#   end
#
#   describe "GET #index" do
#     it "returns http success" do
#       get :index
#       expect(response).to have_http_status(:success)
#     end
#   end
#
#     it "assigns [my_ad] to @advertisements" do
#       get :index
#       expect(assigns(:advertisements)).to eq([my_ad])
#   end
#
#   describe "GET new" do
#       it "returns http success" do
#         get :new
#         expect(response).to have_http_status(:success)
#       end
#
#  # #2
#       it "renders the #new view" do
#         get :new
#         expect(response).to render_template :new
#       end
#
#  # #3
#       it "instantiates @advertisements" do
#         get :new
#         expect(assigns(:advertisement)).not_to be_nil
#       end
#     end
#
#  #    describe "POST create" do
#  # # #4
#  #      it "increases the number of Ads by 1" do
#  #        expect advertisement :create, params: {  { title: RandomData.random_sentence, body: RandomData.random_paragraph } }.to change(Post,:count).by(1)
#  #      end
#
#  # #5
#       it "assigns the new post to @post" do
#         post :create, params: { post: { title: RandomData.random_sentence, body: RandomData.random_paragraph } }
#         expect(assigns(:post)).to eq Post.last
#       end
#
#  # #6
#       it "redirects to the new post" do
#         post :create, params: { post: { title: RandomData.random_sentence, body: RandomData.random_paragraph } }
#         expect(response).to redirect_to Post.last
#       end
#     end
#
#   # describe "GET #show" do
#   #   it "returns http success" do
#   #     get :show
#   #     expect(response).to have_http_status(:success)
#   #   end
#   # end
#   #
#   # describe "GET #new" do
#   #   it "returns http success" do
#   #     get :new
#   #     expect(response).to have_http_status(:success)
#   #   end
#   # end
#   #
#   # describe "GET #create" do
#   #   it "returns http success" do
#   #     get :create
#   #     expect(response).to have_http_status(:success)
#   #   end
#   # end
#
# end
