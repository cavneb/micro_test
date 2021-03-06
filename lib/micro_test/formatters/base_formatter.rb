require File.join(File.dirname(__FILE__), "..", "color")

module MicroTest

  # The base class for formatters.
  # Defines the API that formatters can/should implement
  # to control test run output.
  class BaseFormatter
    include MicroTest::Color
    attr_accessor :passed, :failed, :duration

    def initialize
      @duration = 0
      @passed = 0
      @failed = 0
    end

    def before_suite(test_classes)
    end

    def before_class(test_class)
    end

    def before_test(test)
    end

    def after_test(test)
    end

    def after_class(test_class)
    end

    def after_results(runner)
      @duration = runner.duration
      @passed = runner.passed
      @failed = runner.failed
    end

    def after_suite(test_classes)
    end

  end
end
