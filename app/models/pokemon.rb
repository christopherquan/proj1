# == Schema Information
#
# Table name: pokemons
#
#  id         :integer          not null, primary key
#  name       :string
#  level      :integer
#  trainer_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Pokemon < ActiveRecord::Base
	belongs_to :trainer
	validates :name, presence: true, :uniqueness => true
end
