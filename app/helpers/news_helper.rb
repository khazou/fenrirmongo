module NewsHelper
  def home_news(news)
    if news.content.length > 400
      display = news.content.truncate(400)
      display += '</p><p>'
      display += link_to('Lire la suite de la news', news_path(news))
      display += '</p>'
    else
      display = news.content
    end
    raw display
  end
  
  def comments_links(news)
    display = "<p>"
    comments_count = news.news_comments.valid.count.to_s + " commentaire"
    comments_count += news.news_comments.valid.count > 1 ? "s" : ""
    display += link_to comments_count, news_path(news)
    if current_user
      display += " - "
      display += link_to "Poster un nouveau commentaire", new_news_news_comment_path(news) if current_user
    end
    display += "</p>"
    raw display
  end
end