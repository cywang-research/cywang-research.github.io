# frozen_string_literal: true

require "jekyll-socials"

old_urls = Jekyll::SocialLinksTag::SOCIAL_URLS.dup
Jekyll::SocialLinksTag.send(:remove_const, :SOCIAL_URLS)

old_urls["scholar_userid"] =
  "https://scholar.google.com/citations?hl=en&user=%s&view_op=list_works&sortby=pubdate"

Jekyll::SocialLinksTag.const_set(:SOCIAL_URLS, old_urls.freeze)
