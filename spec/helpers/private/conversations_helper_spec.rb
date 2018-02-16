require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the Private::ConversationsHelper. For example:
#
# describe Private::ConversationsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe Private::ConversationsHelper, type: :helper do
  pending "add some examples to (or delete) #{__FILE__}"
  context 'Scopes' do
    it 'gets a conversation between users' do
      user1 = create(:user)
      user2 = create(:user)
      create(:private_conversation, recipient_id: user1.id, sender_id: user2.id)
      conversation = Private::Conversation.between_users(user1.id, user2.id)
      expect(conversation.count).to eq 1
    end
  end
end
