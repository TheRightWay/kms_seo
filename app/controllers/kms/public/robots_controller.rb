module Kms
  module Public
    class RobotsController < ActionController::Base
      def show
        render plain: Kms::Settings.instance.values['robots']
      end
    end
  end
end
