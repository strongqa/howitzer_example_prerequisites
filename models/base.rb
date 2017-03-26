class Base < Spyke::Base
  BadRequestError = Class.new(StandardError)

  include_root_in_json true

  def self.create(attrs = {})
    new(attrs).tap(&:save!)
  end

  def save
    errors.clear
    super
    errors.none?
  end

  def save!
    return self if save
    error_msg = "Impossible to save #{self.class}(#{attributes.except('errors').to_s[/\A\{(.*)\}\z/, 1]}):\n" \
                "\t\tURI: #{scope.uri}\n" \
                "\t\tError details: #{errors.details}"
    raise BadRequestError, error_msg
  end
end
