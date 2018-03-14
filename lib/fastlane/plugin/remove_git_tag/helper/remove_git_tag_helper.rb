require 'fastlane_core/ui/ui'

module Fastlane
  UI = FastlaneCore::UI unless Fastlane.const_defined?("UI")

  module Helper
    class RemoveGitTagHelper
      # class methods that you define here become available in your action
      # as `Helper::RemoveGitTagHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the remove_git_tag plugin helper!")
      end
    end
  end
end
