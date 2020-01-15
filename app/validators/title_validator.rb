class TitleValidator < ActiveModel::Validator
    def validate(record)
        unless record.title =~ /Won't Believe|Secret|Top|Guess/
            record.errors[:title] << "Not click bait"
        end
    end
end