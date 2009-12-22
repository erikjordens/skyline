# @private
class Skyline::Sections::WysiwygSection < ActiveRecord::Base
  include Skyline::SectionItem
  include Skyline::HasManyReferablesIn
  
  self.default_interface = false
  
  has_many_referables_in :body
  
  def to_text
    HTML::FullSanitizer.new.sanitize(self.body)
  end
end
