module UserFormsHelper
  def image_generator(height:, width:)
    "http://via.placeholder.com/#{height}x#{width}"
  end

  def form_img img, type
    if img.model.main_image? 
      img
    elsif type == 'main'
      image_generator(height: '600', width: '400')
    end
  end
end
