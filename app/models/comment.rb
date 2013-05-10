# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  commenter  :string(255)
#  body       :text
#  article_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class Comment < ActiveRecord::Base
  belongs_to :article

  validates :commenter, :body, presence: true
  #validates :commenter, format: { with: /\A[a-zA-Z]+\z/,
  #  :message => "Only letters allowed" }
  #validates :commenter, length: { in: 2..20 }
  #validates :body, length: { in: 2..500 }
end
