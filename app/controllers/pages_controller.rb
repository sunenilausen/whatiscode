class PagesController < ApplicationController
  layout 'frontpage', only: :welcome
  # layout 'application', only: :htmlpage

  def welcome
    @js_example ="\n ```javascript \nif (confirm('Vil du lære JavaScript?')) { \n  window.location.href = 'http://hvaderkode.dk/javascript'\n} else {\n  window.location.href = 'http://hvaderkode.dk/workshops'\n}\n```"

    @css_example="\n```css\n.flyt-musen-her {\n  padding: 24px;\n  border-radius: 2px;\n  width: 70%;\n  background-color: white;\n  box-shadow: 0 2px 6px 0 rgba(0,0,0,0.4);\n}\n.flyt-musen-her:hover {\n  transition: 3s;\n  margin-left: 30%;\n}\n```"

    set_renderer
  end
end
