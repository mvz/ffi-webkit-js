require File.expand_path('test_helper.rb', File.dirname(__FILE__))
require 'ffi-gtk2'

Gtk.init

describe WebKit::WebFrame do
  describe "#get_global_context" do
    it "returns a JS::GlobalContext object" do
      wv = WebKit::WebView.new
      wf = wv.get_main_frame
      ctx = wf.get_global_context
      assert_instance_of JS::GlobalContext, ctx
    end
  end
end
