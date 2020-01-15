# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :travelers
  resources :travels, only: %i[new create index destroy]
  root 'travels#new'
end
