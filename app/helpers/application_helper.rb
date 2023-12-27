# frozen_string_literal: true

module ApplicationHelper
    def set_meta_tags(title: nil, description: nil, keywords: nil)
        content_for :title, title || 'Magellan Rewards'
        content_for :meta_tags do
          safe_join([
            tag.meta(name: 'description', 
content: description || 'An application for local rewards, discounts, and information for the Magellan communities.'),
            tag.meta(name: 'keywords', content: keywords || 'Magellan Rewards')
          ], "\n")
        end
      end
end
