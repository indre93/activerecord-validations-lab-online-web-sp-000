class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: {in: ["Fiction", "Non-Finction"]}
  validate :clickbait

  def clickbait
    if self.title.include?("Won't Believe")
      errors
    end
  end


end
