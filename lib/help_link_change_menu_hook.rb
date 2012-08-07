class ViewLayoutsBaseHtmlHeadHook < Redmine::Hook::ViewListener
  def view_layouts_base_html_head(context={})
    Redmine::MenuManager.map :top_menu do |menu|
        menu.delete :help
        menu.push :help, Setting.plugin_redmine_help_link['help_link_url'], :last => true
    end
    return ''
  end
end
