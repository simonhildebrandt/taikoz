module ProductionsHelper

  def video_embed_url(video_link)
    return '' if video_link.blank?
    if video_link =~ /vimeo.com/
      vimeo_embed_url(video_link)
    else
      youtube_embed_url(video_link)
    end
  end

  def youtube_embed_url(video_link)
    if video_link[/youtu\.be\/([^\?]*)/]
      youtube_id = $1
    else
      # Regex from # http://stackoverflow.com/questions/3452546/javascript-regex-how-to-get-youtube-video-id-from-url/4811367#4811367
      video_link[/^.*((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?]*).*/]
      youtube_id = $5
    end
    "http://www.youtube.com/embed/#{ youtube_id }"
  end

  def vimeo_embed_url(video_link)
    video_link[/^.*vimeo.com\/([0-9]*)/]
    vimeo_id = $1
    "https://player.vimeo.com/video/#{vimeo_id}?title=0&byline=0&portrait=0"
  end


end
