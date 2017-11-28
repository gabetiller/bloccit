require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let(:advertisement) { Advertisement.create!(title: "New ad Title", copy: "New ad copy", price: 10) }

 # #2
   describe "attributes" do
     it "has title and body attributes" do
       expect(advertisement).to have_attributes(title: "New ad Title", copy: "New ad copy", price: 10)
     end
   end
end
