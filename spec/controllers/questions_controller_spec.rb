require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do
  let(:my_question) do
    Question.create!(
      title: RandomData.random_sentence,
      body: RandomData.random_paragraph,
      resolved: true
    )
  end
  #   describe "GET #index" do
  #     it "returns http success" do
  #       get :index
  #       expect(response).to have_http_status(:success)
  #     end
  #   end
  #
  #     it "assigns [:my_question] to @questions" do
  #       get :index
  #       expect(assigns(:questions)).to eq([my_question])
  #     end
  #
  #   describe "GET new" do
  #     it "returns http success" do
  #       get :new
  #       expect(response).to have_http_status(:success)
  #     end
  #
  #     it "renders the #new view" do
  #       get :new
  #       expect(response).to render_template :new
  #     end
  #
  #     it "instantiates @question" do
  #       get :new
  #       expect(assigns(:question)).not_to be_nil
  #   end
  # end

  # describe "GET edit" do
  #      it "returns http success" do
  #        get :edit, params: { id: my_question.id }
  #        expect(response).to have_http_status(:success)
  #      end
  #
  #      it "renders the #edit view" do
  #        get :edit, params: { id: my_question.id }
  #  # #1
  #        expect(response).to render_template :edit
  #      end
  #
  #      it "assigns post to be updated to @question" do
  #             get :edit, params: { id: my_question.id }
  #
  #             question_instance = assigns(:question)
  #
  #             expect(question_instance.id).to eq my_question.id
  #             expect(question_instance.title).to eq my_question.title
  #             expect(question_instance.body).to eq my_question.body
  #           end

  describe "PUT update" do
    it "updates question with expected attributes" do
      new_title = RandomData.random_sentence
      new_body = RandomData.random_paragraph

      put :update, params: { id: my_question.id, question: {title: new_title, body: new_body } }

      # #3
      updated_question = assigns(:question)
      expect(updated_question.id).to eq my_question.id
      expect(updated_question.title).to eq new_title
      expect(updated_question.body).to eq new_body
    end

  #   it "redirects to the updated question" do
  #     new_title = RandomData.random_sentence
  #     new_body = RandomData.random_paragraph
  #
  #     # #4
  #     put :update, params: { id: my_question.id, question: {title: new_title, body: new_body } }
  #     expect(response).to redirect_to my_question
  #   end
  # end

  #     it "renders the #edit view" do
  #       get :edit, params: { id: my_post.id }
  # # #1
  #       expect(response).to render_template :edit
  #     end
  #
  # # #2
  #     it "assigns post to be updated to @post" do
  #       get :edit, params: { id: my_post.id }
  #
  #       post_instance = assigns(:post)
  #
  #       expect(post_instance.id).to eq my_post.id
  #       expect(post_instance.title).to eq my_post.title
  #       expect(post_instance.body).to eq my_post.body
  #     end
end





# describe "GET show" do
#    it "returns http success" do
#      get :show
#      expect(response).to have_http_status(:success)
#    end
#  end


#  describe "GET edit" do
#    it "returns http success" do
#      get :edit
#      expect(response).to have_http_status(:success)
#    end
#  end

end
