class Question < ActiveRecord::Base
  has_many :options
  accepts_nested_attributes_for :options,
                                allow_destroy: true,
                                reject_if: proc { |attributes| attributes['text'].blank? }

  before_save :format_body

  def format_body
    self.formatted_body = markdown(self.body)
  end

  def markdown(text) #transforms the markdown text to html
		markdown_obj = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
    :autolink => true, :lax_spacing => true, :disable_indented_code_blocks => true)
		return markdown_obj.render(text)
	end
end
