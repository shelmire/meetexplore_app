module ApplicationHelper
	  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Meet Explore - Make New Friends!"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
  def notice
    flash[:notice]
  end

  def alert
    flash[:alert]
  end
  def page_header(text)
    content_for(:page_header) { text.to_s }
  end
  def gravatar_for(user, size = 30, title = user.name)
    image_tag gravatar_image_url(user.email, size: size), title: title, class: 'img-rounded'
  end
end
