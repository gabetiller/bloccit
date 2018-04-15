require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the PostsHelper. For example:
#
# describe PostsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe PostsHelper, type: :helper do
  describe ".has_comments?" do
    it "returns true if a post has comments" do
      post = create(:post)
      create(:comment, post: post)

      expect(helper.has_comments?(post)).to eq true
    end

    it "returns false if a post has no comments" do
      post = create(:post)

      expect(helper.has_comments?(post)).to eq false
    end
  end
end
