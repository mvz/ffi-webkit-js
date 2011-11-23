module WebKit
  load_class :WebFrame
  class WebFrame
    def get_global_context
      ptr = Lib.webkit_web_frame_get_global_context self
      JS::GlobalContext.new(:pointer => ptr)
    end
  end
end
