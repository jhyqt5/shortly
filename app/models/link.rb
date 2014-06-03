require 'open-uri'

class Link < ActiveRecord::Base
  attr_accessible :long_url, :short_url
  validates :long_url, presence: true
  validates_format_of :long_url, with: URI::regexp(%w(http https))
  before_save :shortener

  private
  def shortener
    self.short_url = SecureRandom.urlsafe_base64(4)
  end
end

