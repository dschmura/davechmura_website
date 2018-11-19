# == Schema Information
#
# Table name: posts
#
#  id         :bigint(8)        not null, primary key
#  title      :string
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Post, type: :model do

  let(:post) { FactoryBot.build(:post) }

  describe 'Valid Posts' do

    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:status) }
    # Posts must have a posts_status

  end

  describe 'New Posts' do
    # New posts have the status :draft
  end


end
