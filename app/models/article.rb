# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#

class Article < ActiveRecord::Base

	has_many :comments, dependent: :destroy
	has_many :tags
	#accepts_nested_attributes_for :comments

	accepts_nested_attributes_for :tags, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }

end
