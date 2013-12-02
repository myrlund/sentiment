require 'spec_helper'

shared_examples_for Sentimental do
  let(:model) { described_class }
  let(:model_symbol) { model.to_s.underscore.to_sym }

  it 'should consist of two polarities, and neutral' do
    model.classes.length.should == 3
  end

  it 'should be represented as Symbol' do
    model.classes.first.should be_a(Symbol)
  end

  describe :sentiment do
    it 'should default to the auto_sentiment' do
      object = create(model_symbol, auto_sentiment: :positive, sentiment: nil)
      object.sentiment.should == :positive
    end
  end

  describe :polarity do
    let(:positive)  { create(model_symbol, sentiment: :positive) }
    let(:neutral)   { create(model_symbol, sentiment: :neutral) }
    let(:negative)  { create(model_symbol, sentiment: :negative) }
    let(:undefined) { create(model_symbol, sentiment: nil) }

    it 'should return either -1, 0, or 1' do
      positive.polarity.should == 1
      neutral.polarity.should == 0
      negative.polarity.should == -1
      undefined.polarity.should be_nil
    end
  end
end
