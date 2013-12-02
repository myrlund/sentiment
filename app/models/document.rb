class Document
  include Mongoid::Document
  include Mongoid::Timestamps
  include Sentimental

  field :content, type: String
  field :raw_content, type: String

  before_save :set_defaults

  def set_defaults
    self.raw_content ||= content
  end
end
