#
# ApplicationHelper
#
# @author aby
#
module ApplicationHelper
  # To convet nil values to empty string
  #
  # @param obj [nil|Hash|string|Array]
  #
  # @return converted value
  def nil_to_string(obj)
    return obj.to_s if obj.nil?
    if obj.is_a?(Hash)
      obj.each { |key, val| obj[key] = nil_to_string(val) }
    elsif obj.is_a?(Array)
      obj.each_with_index { |val, index| obj[index] = nil_to_string(val) }
    end
    obj
  end
end
