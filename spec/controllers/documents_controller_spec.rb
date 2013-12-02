require 'spec_helper'

describe DocumentsController do
  render_views

  before :each do
    request.env["HTTP_ACCEPT"] = 'application/json'
  end

  describe :index do
    it "should have the relevant JSON nodes" do
      create(:document, content: 'Hello specs', sentiment: :positive)

      get :index

      response.should be_ok
      response.should be_in_json

      response.body.should have_node(:content).with('Hello specs')
      response.body.should have_node(:sentiment).with('positive')
    end
  end

  describe :show do
    it "should have the relevant JSON nodes" do
      doc = create(:document, content: 'Hello again specs', sentiment: :negative)

      get :show, id: doc.id

      response.should be_ok
      response.should be_in_json

      response.body.should have_node(:content).with('Hello again specs')
      response.body.should have_node(:sentiment).with('negative')
    end
  end
end
