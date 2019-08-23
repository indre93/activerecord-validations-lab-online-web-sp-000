class Post < ActiveRecord::Base
  validates :title, presence: true, clickbait: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: {in: ["Fiction", "Non-Finction"]}

  def validate
    if !self.title.include?("Won't Believe")
      false
    end
  end


end
