require "spec_helper"

RSpec.describe ActsAsAlertable::Alert, :type => :model do
  context "with 2 or more comments" do
    it "orders them in reverse chronologically" do
      post = ActsAsAlertable::Alert.create!
      comment1 = post.comments.create!(:body => "first comment")
      comment2 = post.comments.create!(:body => "second comment")
      expect(post.reload.comments).to eq([comment2, comment1])
    end
  end
end