# == Schema Information
#
# Table name: pages
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  permalink  :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#

class Page < ActiveRecord::Base

  validates_uniqueness_of :permalink

  def to_param
  	permalink
  end
end
