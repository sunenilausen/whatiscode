class PagesController < ApplicationController
  layout 'frontpage'

  def welcome
    @jsexample ="\n ```javascript \nif (confirm('Vil du lære JavaScript?')) { \n  window.location.href = 'http://carlsbergpirates.dk/javascript'\n} else {\n  window.location.href = 'http://carlsbergpirates.dk/workshops'\n}\n```"
    set_renderer
  end

  def set_renderer
    render_options = {hard_wrap: true, link_attributes: {rel: 'nofollow'}}
    engine_options = {fenced_code_blocks: true, autolink: true}
    renderer = RougeHTML.new render_options
    @markdown = Redcarpet::Markdown.new renderer, engine_options
  end
end
