require 'test/unit'
require 'girlfriend'

class GirlfriendTest < Test::Unit::TestCase
  def test_version
    assert_equal Girlfriend::VERSION, '0.1.0'
  end

  def test_config
    assert_equal Girlfriend.name, 'Ruby'
	  assert_equal Girlfriend.age, 21
	  assert_equal Girlfriend.hometown, 'New York'
  	assert_equal Girlfriend.school, 'Florida State University'
	  assert_equal Girlfriend.hobbies, ['gaming','cooking','photography','blogging']
  	assert_equal Girlfriend.reply, 'LOL Z DUDE YOU MAD?'
  end

  def test_abilities
    assert_equal Girlfriend.abilities.size, 3
    assert_equal Girlfriend.can?(:talk), true
    assert_equal Girlfriend.can?(:finger), true
    assert_equal Girlfriend.can?(:cook), true
    assert_equal Girlfriend.can?(:eat), false
  end

  def test_talk
    assert_equal Girlfriend.interact?(:eat), Girlfriend.reply
    assert_equal Girlfriend.interact?(:talk, 'hello'), 'How do you do. Please state your problem'
  end
  
  def test_cook
    assert_equal "You need to tell me what to cook", Girlfriend.interact?(:cook)
    assert_equal "I'll cook you some eggs", Girlfriend.interact?(:cook, "eggs")
    assert_equal "I'll cook you some burgers", Girlfriend.interact?(:cook, "burgers")
  end

end
