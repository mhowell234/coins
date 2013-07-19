module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Coins"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def show_photos(thumbs, args={})
  
    if not args.has_key?(:size) then
      size = 300
    else
      size = args[:size]
    end
  
    if not args.has_key?(:class) then
      classType = 'align-right'
    else
      classType = args[:class]
    end
    
    data = "<p class='#{classType} photo-section'>"
    thumb = thumbs.first

    data << "<a href='#{thumb[:parent_path]}' class='lightview' data-lightview-group='coins' data-lightview-type='image' data-lightview-group-options='controls: \"thumbnails\"'>"
    data << "<img src='#{thumb[:path]}' width='#{size}' title='#{thumb[:caption]}' alt='#{thumb[:caption]}' />"
    
    data << "</a>"
    
    if thumbs.size > 1 then
      data << "<span class='hide'>"
      is_first = true
      for thumb in thumbs do
        if is_first then
          is_first = false
          next
        end
          
        data << "<a href='#{thumb[:parent_path]}' class='lightview' data-lightview-group='coins' data-lightview-type='image' data-lightview-group-options='controls: \"thumbnails\"'>"
        data << "<img src='#{thumb[:path]}' width='#{size}' title='#{thumb[:caption]}' alt='#{thumb[:caption]}' />"
        data << "</a>"
      end
      data << "</span>"
    end
    data << "</p>"
    
    return data
  end

end
