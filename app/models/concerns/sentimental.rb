# For inclusion in content models that need sentiment functionality
module Sentimental
  extend ActiveSupport::Concern

  included do
    field :sentiment, type: Symbol
    field :auto_sentiment, type: Symbol

    validates_inclusion_of :sentiment,      in: classes + [nil]
    validates_inclusion_of :auto_sentiment, in: classes + [nil]
  end

  def sentiment
    self[:sentiment] || auto_sentiment
  end

  def polarity
    self.class.polarities.fetch(sentiment, nil)
  end

  module ClassMethods
    def classes
      [:positive, :neutral, :negative]
    end

    def polarities
      {
        positive: 1,
        neutral: 0,
        negative: -1,
      }
    end
  end
end
