require File.expand_path('test_helper.rb', File.dirname(__FILE__))

describe "Upon load" do
  it "WebKit and JS should be loaded" do
    WebKit
    JS
  end
end
