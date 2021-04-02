module ArticlesHelper

  def raspberry_markdown_to_html(s)
    s = replace_collapsibles(s)
    s = remove_target_blanks(s)
    #s = replace_attributes(s)
    s = remove_tasks(s)
    #s = replace_tasks(s)
    #s = replace_hints(s)

  end

  def remove_tasks(s)
    s = s.gsub("--- task ---", "")
    s.gsub("--- /task ---", "")
  end

  def remove_target_blanks(s)
    s.gsub("{:target=\"_blank\"}", "")
  end

  def replace_collapsibles(s)
    collapsible_regex = /--- collapse ---.*--- \/collapse ---/m
    collapsibles = collapsible_regex.match(s).to_a

    collapsibles.each do |collapsible|
      s = s.gsub(collapsible, collapsible_to_html(collapsible))
    end
    s
  end

  private

  def collapsible_to_html(s)
    collapsible_tag_start = "<ul class='collapsible'><li>"
    collapsible_title_tag_start = "<div class='collapsible-header'><i class='material-icons'>Info</i>"
    collapsible_title_tag_end = "</div><div class='collapsible-body'><span>"
    collapsible_tag_end = "</span></div></li></ul>"

    s = s.gsub("--- collapse ---", collapsible_tag_start)
    s = s.gsub("--- /collapse ---", collapsible_tag_end)

    #title_regex = /---\ntitle:\s(.*)\n---/
    #title = title_regex.match(s)

    title_start =
"""
---
title:"""

    s = s.gsub(title_start, collapsible_title_tag_start)
    s.gsub("---", collapsible_title_tag_end)
  end
end
