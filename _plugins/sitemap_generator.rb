# frozen_string_literal: true

module Jekyll
  # Sitemap generator plugin for Jekyll
  # Automatically generates sitemap.xml with proper metadata
  class SitemapGenerator < Generator
    safe true
    priority :low

    def generate(site)
      # Add lastmod to pages if not present
      site.pages.each do |page|
        next if page.data['lastmod']
        
        # Set lastmod based on file modification time
        page.data['lastmod'] = File.mtime(page.path).strftime('%Y-%m-%d') if File.exist?(page.path)
      end

      # Add priority and changefreq defaults
      site.collections.each do |_, collection|
        collection.docs.each do |doc|
          doc.data['priority'] ||= 0.8
          doc.data['changefreq'] ||= 'monthly'
        end
      end
    end
  end
end
