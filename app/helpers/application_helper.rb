module ApplicationHelper
  def page_title
    'Improv Blender' + ( content_for(:page_title) ? " | #{content_for(:page_title)}" : '' )
  end
end
