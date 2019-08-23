class Post < ActiveRecord::Base
  validates :title, presence: true, if: :clickbait
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: {in: ["Fiction", "Non-Finction"]}

  def clickbait
    if self.title != "Won't Believe"
      errors[:title]
    end
  end


end
