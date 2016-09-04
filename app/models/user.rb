class User < ApplicationRecord
  has_many :microposts
  
  validates :name, :email, presence: true
  validates :email, format: { with: /.@/ && /(.com|.net|.edu|.gov)/}
  validates :email, format: {without: /\s/}

end
