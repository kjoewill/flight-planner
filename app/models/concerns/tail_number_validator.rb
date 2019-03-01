class TailNumberValidator < ActiveModel::Validator
  def validate(record)
    if !(record.tail_number.starts_with?('N') && record.tail_number.size == 6)
      record.errors.add(:tail_number, 'must start with N and be 6 characters long')
    end
  end
end
