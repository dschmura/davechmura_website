# == Schema Information
#
# Table name: posts
#
#  id         :bigint(8)        not null, primary key
#  title      :string
#  status     :integer
#  user_id    :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ApplicationRecord

  belongs_to :user

  enum status: {
    draft: 0,
    unpublished: 10,
    published: 20
  }

  has_rich_text :content
  acts_as_taggable_on :tags
  validates_presence_of :title
end
