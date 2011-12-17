# -*- coding: utf-8 -*-
require 'test_helper'

class EntryTest < ActiveSupport::TestCase
  test "Empty body" do
    entry = Entry.new(:user_name => "太郎", :body => "")
    assert_equal false, entry.save
  end
end
