Redmine::Plugin.register :redmine_draw_erd do
  name 'Redmine Draw Erd plugin'
  description 'Generate Entity Relationship Diagrams'
  version '0.1.0'
  url 'https://github.com/ogom/redmine_draw_erd'
  author_url 'http://ogom.github.io'
  author 'ogom'

  menu :application_menu, :draw_erd, controller: :draw_erd
end
