---
title: micro_test
layout: main
forkme_url: https://github.com/hopsoft/micro_test
---
# MicroTest {#microtest}

### Testing should be simple. {#testing-should-be-simple.}

Testing frameworks never seem to resist the slippery slope of feature creep and eventually become an end unto themselves.
MiniTest is a step in the right direction, but still feels bigger than it should.

#### MicroTest is an experiment to see just how simple a testing "framework" can be. {#microtest-is-an-experiment-to-see-just-how-simple-a-testing-"framework"-can-be.}

## Features {#features}

* __Opinionated & small__ - _only 100 lines of code_
* __Only one assert method: `assert`__ - _since this is the heart of testing_
* __Tests run in random order__ - _to prevent the bad practice of run order depenencies_
* __Plays nice with others__ - _easy to introduce to an existing codebase_

## Install {#install}

{% highlight bash %}
gem install micro_test
{% endhighlight %}

## API {#api}

* Tests should subclass `MicroTest::Test`
* Define tests with `test "description" do ...`
* Setup with `before [:all|:each] do ...`
* Teardown with `after [:all|:each] do ...`
* Assert statements with `assert [statement]`
* Run tests from the terminal with `$ mt`
* Run tests from Ruby with `MicroTest::Runner.run`

That's all there is to learn.

## Examples {#examples}

Define a test.

{% highlight ruby %}
# /example/test/math_test.rb
class MathTest < MicroTest::Test

  before :all do
    # runs once before all tests
  end

  before :each do
    # runs before each test
  end

  test "addition" do
    assert 2 + 2 == 4
  end

  test "subtraction" do
    assert 2 - 2 == 0
  end

  test "multiplication" do
    assert 2 * 2 == 4
  end

  test "division" do
    assert 2 / 2 == 1 # add a trailing comment if you want a message
  end

  # and one failing test
  test "fail" do
    assert 2 + 2 == 5
  end

  after :each do
    # runs after each test
  end

  after :all do
    # runs once after all tests
  end

end
{% endhighlight %}

Run all tests in the "test" dir, _relative to the current dir_.

{% highlight bash %}
$ mt
{% endhighlight %}

Run all tests in a directory.

{% highlight bash %}
$ mt /example/test
{% endhighlight %}

Run all tests in a file.

{% highlight bash %}
$ mt /example/test/math_test.rb
{% endhighlight %}

Test output.

![MicroTest output](http://hopsoft.github.com/micro_test/images/micro_test.png)

---

{% include forkme.html %}
{% include disqus.html %}
