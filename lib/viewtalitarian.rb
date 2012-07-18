require "viewtalitarian/version"
require "sprockets/helpers"
require "active_support/core_ext"

module Viewtalitarian
  class NoScriptsForYou < StandardError; end
end

if defined?(Rails)
  module Sprockets
    module Helpers
      module RailsHelper
        def javascript_include_tag_with_constraints(*sources)
          if sources.length > 1 && Rails.env.development?
            raise Viewtalitarian::NoScriptsForYou.new(
              "You've attempted to include more than one JavaScript file. " +
              "Perhaps you should create a manifest instead?"
            )
          end

          javascript_include_tag_without_constraints(*sources)
        end

        alias_method_chain :javascript_include_tag, :constraints
      end
    end
  end
end

