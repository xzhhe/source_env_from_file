require 'fastlane/action'
require_relative '../helper/source_env_from_file_helper'

module Fastlane
  module Actions
    class SourceEnvFromFileAction < Action
      def self.run(params)
        UI.message("The source_env_from_file plugin is working!")
      end

      def self.description
        "set ENV['key']=value from file like key=value"
      end

      def self.authors
        ["xiongzenghui"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "set ENV['key']=value from file like key=value"
      end

      def self.available_options
        [
          # FastlaneCore::ConfigItem.new(key: :your_option,
          #                         env_name: "SOURCE_ENV_FROM_FILE_YOUR_OPTION",
          #                      description: "A description of your option",
          #                         optional: false,
          #                             type: String)
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://docs.fastlane.tools/advanced/#control-configuration-by-lane-and-by-platform
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
