# frozen_string_literal: true

Rails.application.routes.draw do
  # Api definition
  namespace :api do
    scope module: :v1, constraints: ProgImageManager::ApiConstraints.new(version: 1, default: true) do
      resources :image_transformation, only: %i[show], param: :public_id
    end
  end
end
