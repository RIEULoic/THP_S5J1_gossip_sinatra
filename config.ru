require 'bundler'
Bundler.require

#require_relative 'controller'
$:.unshift File.expand_path("./../lib", __FILE__)
require 'controller'


run ApplicationController
