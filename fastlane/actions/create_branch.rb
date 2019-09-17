module Fastlane
  module Actions
    class CreateBranchAction < Action
      def self.run(params)        # fastlane will take care of reading in the parameter and fetching the environment variable:
        UI.message "Parameter branch name: #{params[:branch]}"
        branch = params[:branch]
        branch_expr = /#{branch}/
        if Actions.git_branch =~ branch_expr
          UI.success("Git branch match `#{branch}`, all good! ")
        else
          result = Actions.sh("git", "checkout", "-b", "#{branch}")
          if result =~ /error:(.)/
              UI.error("Git is not on a branch matching `#{branch}`. Current branch is `#{now_branch}`! Reasoin: #{result}.")
          else 
              UI.success("Git branch match `#{branch}`, all good! ")
          end
        end
      end

      #####################################################
      # @!group Documentation
      #####################################################

      def self.description
        "Create and chechout branch"
      end

      def self.available_options
        # Define all options your action supports. 
        
        # Below a few examples
        [
          FastlaneCore::ConfigItem.new(key: :branch,
                                       env_name: "FL_CREATE_GIT_BRANCH_NAME",
                                       description: "The branch that should be checked for. String that can be either the full name of the branch or a regex to match",
                                       is_string: false, # true: verifies the input is a string, false: every kind of value
                                       default_value: 'develop') # the default value if the user didn't provide one

        ]
      end

      def self.authors
        # So no one will ever forget your contribution to fastlane :) You are awesome btw!
        ["Mr.Helloween"]
      end

      def self.is_supported?(platform)
        # you can do things like
        # 
        #  true
        # 
        #  platform == :ios
        # 
        #  [:ios, :mac].include?(platform)
        # 

        platform == :ios
      end
    end
  end
end
