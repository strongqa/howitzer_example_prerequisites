class BaseModel
  InvalidRecord = Class.new(StandardError)
  include ::Her::Model

  include_root_in_json true
  parse_root_in_json true, format: :active_model_serializers

  def save!(*args)
    save(*args)
    return self if response_errors.blank?
    raise InvalidRecord, "Impossible to save #{self.class} with attributes:\n#{attributes}\n\n" \
                     "Reasons: #{response_errors}"
  end
end
