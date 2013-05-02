# == Schema Information
#
# Table name: slogans
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Slogan < ActiveRecord::Base
end
