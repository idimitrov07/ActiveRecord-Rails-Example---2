class Customer < Account
	has_paper_trail
	
	has_many :time_entries
	scope :premier, -> { where("employees > ?", 60) }
	scope :newest, -> { order("created_at DESC") }
	scope :starts_with, ->(letter) { where("name LIKE ?", letter + "%") }
	scope :hamptons, -> { where(name: "Hampton") }
end
