<form action="/posts/<%= @post.id %>" method="post">

  <input type="hidden" name="utf8" value="✓">
  <input type="hidden" name="authenticity_token" value="<%= form_authenticity_token %>"

  <input type="text" name="post[title]">
  <input type="text" name="post[body]">

  <input type="checkbox" name="post[tag_ids][]" value="1">
  <input type="checkbox" name="post[tag_ids][]" value="2">
  <input type="checkbox" name="post[tag_ids][]" value="3">
  <input type="checkbox" name="post[tag_ids][]" value="4">
  <input type="checkbox" name="post[tag_ids][]" value="5">
  <input type="hidden" name="post[tag_ids]" value="">

  <input type="submit" name="commit" value="Update Post">

</form>