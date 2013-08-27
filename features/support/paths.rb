module NavigationHelpers
  def path_to(page_name, element_id = nil)
    case page_name
      when /the tables page/
        tables_path
      when /the table page/
        table_path(element_id)
      else
        raise "Can't find mapping from \"#{page_name}\" to a path.\n"
    end
  end
end

World(NavigationHelpers)
