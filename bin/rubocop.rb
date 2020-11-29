class RubocopRunner
  COMPARE_TO_BRANCH = 'master'
  def self.check_branch_validity
    current_branch = `git branch | grep \\* | cut -d ' ' -f2`.strip
    if current_branch.empty? || current_branch == COMPARE_TO_BRANCH
      puts "No git found, or you are still on #{COMPARE_TO_BRANCH} branch."
      exit 0
    end
  end

  def self.check_non_committed_changes
    system("git ls-files -m | xargs ls -1 2>/dev/null | grep '\.rb$' | xargs bundle exec rubocop #{ARGV.join(' ')}")
  end

  def self.check_committed_changes
    system("git diff-tree -r --no-commit-id --name-only head origin/master | xargs bundle exec rubocop #{ARGV.join(' ')}")
  end
end

RubocopRunner.check_branch_validity
RubocopRunner.check_non_committed_changes
RubocopRunner.check_committed_changes