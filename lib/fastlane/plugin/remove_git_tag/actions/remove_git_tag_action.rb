require 'fastlane/action'
require_relative '../helper/remove_git_tag_helper'

module Fastlane
    module Actions
        # Adds a git tag to the current commit
        class RemoveGitTagAction < Action

            def self.run(options)
                # lane name in lane_context could be nil because you can just call $fastlane add_git_tag which has no context
                lane_name = Actions.lane_context[Actions::SharedValues::LANE_NAME].to_s.delete(' ') # no spaces allowed

                tag = options[:tag]
                cmd = ["git tag -d #{tag.shellescape}"]

                UI.message("Removing remote git tag '#{tag}' 🎯.")
                Actions.sh(cmd.join(' '))

                cmd = ["git push origin :refs/tags/#{tag.shellescape}"]

                UI.message("Removing remote git tag '#{tag}' 🎯.")
                Actions.sh(cmd.join(' '))
            end

            def self.description
                "This will remove a tag from the remote repository"
            end

            def self.details
                [
                    "This will automatically remove a tag from the remote repository, where:",
                    "- `tag` is the tag name"
                ].join("\n")
            end

            def self.available_options
                [
                    FastlaneCore::ConfigItem.new(key: :tag,
                                                 env_name: "FL_GIT_TAG_TAG",
                                                 description: "Define your own tag text. This will replace all other parameters",
                                                 optional: true)
                ]
            end

            def self.example_code
                [
                    'remove_git_tag(tag: "Beta")'
                ]
            end

            def self.category
                :source_control
            end

            def self.authors
                ["Marker Digital"]
            end

            def self.is_supported?(platform)
                true
            end
        end
    end
end

