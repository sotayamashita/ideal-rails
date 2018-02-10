# frozen_string_literal: true
class UsernameValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless IdealRails =~ IdealRails::PathRegex::BLACK_LIST
      record.errors.add(attribute, "some error message")
    end
  end
end
