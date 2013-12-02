require 'spec_helper'

describe Document do
  describe :sentimentality do
    it_behaves_like Sentimental
  end
end
