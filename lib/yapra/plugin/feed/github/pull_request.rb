require 'yapra/plugin/base'
require 'github_api'

module Yapra::Plugin::Feed
  module Github; end
  class Github::PullRequest < Yapra::Plugin::Base
    def run(data)
      ::Github.pull_requests({ user: config['user'], repo: config['repo'] }).all
    end
  end
end

