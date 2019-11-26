# frozen_string_literal: true

# Handling all exception
module FormatHandler
  extend ActiveSupport::Concern

  def format(url, format)
    url.sub /\.[^\.]+$/, ".#{format}"
  end

  def valid_format?(format)
    %w(JPEG GIF TIFF PNG JPG GIF).include? format.upcase
  end  
end
  