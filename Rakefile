desc "Watch files and open site"
task :watch do
  jekyll = Process.spawn("bundle exec jekyll --auto")
  server = Process.spawn("bundle exec jekyll --server")
  sleep 3
  system "open http://localhost:4000"

  trap('INT') {
    [jekyll, server].each { |pid| Process.kill(9, pid) }
    exit 0
  }

  [jekyll, server].each { |pid| Process.wait(pid) }
end

desc "Generate site"
task :generate do
  system "bundle exec jekyll"
end

desc "Prep deploy to github pages"
task :deploy => :generate do
  Dir['_build/*'].each { |f| rm_rf(f) }
  cp_r '_site/.', '_build'
  cd '_build' do
    system "git checkout CNAME"
    system "git add ."
    system "git add -u"
    puts "## Commit"
    system "git commit -m 'Site updated at #{Time.now.utc}'"
    puts "## Rebase"
    system "git fetch origin"
    system "git rebase origin/gh-pages"
    puts "## Push"
    system "git push origin gh-pages"
    system "open http://constantcrawl.org"
  end
end

task :default => :watch
