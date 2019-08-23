class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: {in: ["Fiction", "Non-Finction"]}

  def validate
    @record = Post.new
    if @record.title != "Won't Believe" || @record.title != "Secret" || @record.title != "Top" || @record.title != "Guess"
      @record.valid? == false
    end
    end
  end


end
