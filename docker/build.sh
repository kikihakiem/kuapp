#!/bin/sh

cd /kuapp/kuapp

gem install bundler

bundle update && bundle install
