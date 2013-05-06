module ApplicationHelper
  def display_base_errors resource
    return '' if (resource.errors.empty?) or (resource.errors[:base].empty?)
    messages = resource.errors[:base].map { |msg| content_tag(:p, msg) }.join
    html = <<-HTML
    <div class="alert alert-error alert-block">
      <button type="button" class="close" data-dismiss="alert">&#215;</button>
      #{messages}
    </div>
    HTML
    html.html_safe
  end

  #Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Hamco Internet Solutions"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def recent_articles
    @recent_articles = Article.limit(3)
  end

  def american_date
    to_date.strftime("%m-%d-%Y")
  end
end
