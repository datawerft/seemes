# coding: utf-8
# Thanks to comfy cms for this idea
class Seemes::Configuration

  # Where the admin should be reachable, default will be /admin/cms
  attr_accessor :admin_path
  # Define the Layout, with this you are able to use your own layout to integrate
  # Pages and Snippets into it
  attr_accessor :admin_layout

  attr_accessor :auth_module

end