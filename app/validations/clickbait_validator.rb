class ClickbaitValidator < ActiveModel::Validator
  def validate(record)
    unless record.title =~ /Won't Believe|Secret|Top \d|Guess/
      record.errors[:title] << "Your title needs to be more exciting!"
    end
  end
end
