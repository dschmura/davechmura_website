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

class Post < ApplicationRecord

  # enum status: [:draft, :unpublished, :published]

  enum status: {
    draft: 0,
    unpublished: 10,
    published: 20
  }

  # enum status: {
  #   draft: 'draft',
  #   unpublished: 'unpublished',
  #   published: 'published'
  # }

  validates_presence_of :title
end
