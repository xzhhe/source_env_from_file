require 'fastlane_core/ui/ui'

module Fastlane
  UI = FastlaneCore::UI unless Fastlane.const_defined?("UI")

  module Helper
    class SourceEnvFromFileHelper
      # class methods that you define here become available in your action
      # as `Helper::SourceEnvFromFileHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the source_env_from_file plugin helper!")
      end
    end
  end
end
