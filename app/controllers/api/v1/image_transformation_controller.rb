module Api::V1
    class ImageTransformationController < ApiController
      include FormatHandler
  
      def show
        @image = ProgImageManager::ImageProcessor.find_by_public_id(params[:public_id]) 
        if @image
          render json: { url: params[:image_format] && valid_format?(params[:image_format]) ? format(@image.url, params[:image_format]) : @image.url}
        else
          render json: {error: "Record having public id: #{params[:public_id]} is not FOUND"}
        end
      end
    end
  end