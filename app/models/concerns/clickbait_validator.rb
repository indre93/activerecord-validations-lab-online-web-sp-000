class clickbaitValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    if value != "Won't Believe" || value != "Secret" || value != "Top" || value != "Guess"
      record.errors
    end
  end
end
