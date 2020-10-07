class TasksController < ApplicationController
  def index
    @shelters = ['Shelter 1', 'Shelter 2', 'Shelter 3']
  end
end

require 'minitest/autorun'
require 'minitest/pride'
require './lib/hello'

helloclass Test < Minitest::Test
def setup
hello
end

def test_it_exists
hello
end

def test_it_has_attributes
hello
end
end