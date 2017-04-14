require "rspec/core"
require "rspec/core/formatters/documentation_formatter"

module RSpec
  module Formatter
    class DocumentationTravisCIFormatter < RSpec::Core::Formatters::DocumentationFormatter
      RSpec::Core::Formatters.register self, :example_group_started, :example_group_finished,
                          :example_passed, :example_pending, :example_failed

      def example_group_started(notification)
        if ENV['TRAVIS'].present? && @group_level == 0
          safename = notification.group.description.gsub('::', '_')
          output.puts "travis_fold:start:#{safename}"
        end
        super
      end

      def example_group_finished(notification)
        super
        if ENV['TRAVIS'].present? && @group_level == 0
          safename = notification.group.description.gsub('::', '_')
          output.puts "travis_fold:end:#{safename}"
        end
      end
    end
  end
end
