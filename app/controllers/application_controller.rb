class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def set_renderer
    render_options = {hard_wrap: true, link_attributes: {rel: 'nofollow'}}
    engine_options = {fenced_code_blocks: true, autolink: true}
    renderer = RougeHTML.new render_options
    @markdown = Redcarpet::Markdown.new renderer, engine_options
  end
end
