require "git/info/version"

module Git
  module Info
    def self.get_tags(ref = 'HEAD')
      raw_result = `git show-ref | grep #{get_ref(ref, false)}` rescue ''
      all = raw_result.split(/[^\w\/\-]+/).select { |entry| (entry =~ /tags/).present? }
      {
        all: all,
        uat: all.select { |entry| (entry =~ /uat/).present? }.first || '',
        staging: all.select { |entry| (entry =~ /staging/).present? }.first || '',
        demo: all.select { |entry| (entry =~ /demo/).present? }.first || '',
        production: all.select { |entry| (entry =~ /production/).present? }.first || '',
      }
    end

    def self.get_ref(ref='HEAD', short_ref=true)
      (`git rev-parse #{ref}`.strip || '')[0,7] rescue ''
    end
  end
end
