$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', 'lib')
require 'gir_ffi'
require 'ffi-gtk2'
require 'ffi-webkit-js'

Gtk.init

win = Gtk::Window.new :toplevel
wv = WebKit::WebView.new
win.add(wv)
win.show_all

ctx = wv.get_main_frame.get_global_context
JS.execute_script(ctx, "alert('Hello from JavaScript')")

GObject.signal_connect(win, "destroy") { Gtk.main_quit }
Gtk.main
