module Kms
  module Seo
    class RedirectsController < ApplicationController
      def index
        render json: Redirect.all, root: false
      end

      def create
        @redirect = Redirect.new(redirect_params)
        if @redirect.save
          render json: @redirect, root: false
        else
          render json: @redirect.to_json(methods: :errors), status: :unprocessable_entity
        end
      end

      def update
        @redirect = Redirect.find(params[:id])
        if @redirect.update(redirect_params)
          render json: @redirect, root: false
        else
          render json: @redirect.to_json(methods: :errors), status: :unprocessable_entity
        end
      end

      def destroy
        @redirect = Redirect.find(params[:id])
        @redirect.destroy
        render json: @redirect, root: false
      end

      protected

      def redirect_params
        params.require(:redirect).permit!
      end
    end
  end
end
