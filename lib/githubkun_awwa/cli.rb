module GithubkunAwwa
  class CLI < Thor
    desc "list GITHUB_TOKEN", "List repositories"
    option :github_token
    def list
      github = GithubkunAwwa::Github.new(options[:github_token])

      github.repositories.each do |repository|
        puts repository
      end
    end
  end
end
