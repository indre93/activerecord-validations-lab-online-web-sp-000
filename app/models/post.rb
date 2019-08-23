class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: {in: ["Fiction", "Non-Finction"]}
  validate :non_clickbait

  def non_clickbait
    if self.title != "Won't Believe" || self.title != "Secret" || self.title != "Top" || self.title != "Guess"
      record.errors
    end
  end


end
