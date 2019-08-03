require 'fastlane/action'
require_relative '../helper/source_env_from_file_helper'

module Fastlane
  module Actions
    class SourceEnvFromFileAction < Action
      def self.run(params)
        filepath = params[:filepath]

        IO.foreach(filepath) {|line|
          aline = line.gsub('export', '')
          # UI.important "aline: #{aline}"

          # key='value'
          mach_result = /(.*)=\"(.*)\"/.match(aline)
          
          # key=value
          unless mach_result
            mach_result = /(.*)=(.*)/.match(aline)
          end
          
          # key=value
          unless mach_result
            mach_result = /(.*)=(.*)/.match(aline)
          end
          next unless mach_result

          key = mach_result[1]
          value = mach_result[2]

          if key && value
            key.strip!
            value.strip!
            # UI.important "#{key}=#{value}"
            ENV[key] = value
          end
        }
      end

      def self.description
        "set ENV['key']=value from file like key=value"
      end

      def self.authors
        ["xiongzenghui"]
      end

      def self.details
        "set ENV['key']=value from file like key=value"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(
            key: :filepath,
            description: "filepath for env key=value file",
            verify_block: proc do |value|
              UI.user_error!("No filepath given") unless (value and not value.empty?)
              UI.error("file not exist: #{value}") unless File.exist?(value)
            end
          )
        ]
      end

      def self.is_supported?(platform)
        true
      end

      def self.example_code
        [
          'source_env_from_file(filepath: "/Users/xiongzenghui/Desktop/env_data")
          pp ENV["XXX"]'
        ]
      end
    end
  end
end
