require 'app'
require 'rack/test'

describe "A Padrino application using erb templates" do

  include Rack::Test::Methods

  let(:app) { APP }

  subject { get "/example"; last_response }

  context "with no Tilt config" do
    it "should not escape the HTML, but it does" do
      expect(subject.body).to include "<html"
      expect(subject.body).to_not include "&lt;html"
    end
  end

  context "with Tilt.prefer Tilt::ERBTemplate, :erb" do
    before do
      Tilt.prefer Tilt::ERBTemplate, :erb
    end

    it "does not escape the HTML" do
      expect(subject.body).to include "<html"
      expect(subject.body).to_not include "&lt;html"
    end
  end
end
