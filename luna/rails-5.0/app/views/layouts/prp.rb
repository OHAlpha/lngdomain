<!DOCTYPE html>
<html>
  <head>
    <title>MyDomain</title>
    <%= csrf_meta_tags %>

    <%= stylesheet_link_tag    'prp', media: 'all', 'data-turbolinks-track': 'reload' %>
    <%= javascript_include_tag 'prp', 'data-turbolinks-track': 'reload' %>
  </head>

  <body>
    <%= yield %>
  </body>
</html>
