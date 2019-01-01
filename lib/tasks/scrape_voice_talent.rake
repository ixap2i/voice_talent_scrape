# encoding: utf-8
require 'open-uri'
namespace :scrape_voice_talent do
  desc "声優スクレイピング"
  
  task :scrape_voice_talent => :environment do
    # you can get "浪川大輔", "小倉唯", "中村悠一" information by default
    voice_talents = ['%E6%B5%AA%E5%B7%9D%E5%A4%A7%E8%BC%94#%E5%87%BA%E6%BC%94', '%E5%B0%8F%E5%80%89%E5%94%AF#%E5%87%BA%E6%BC%94', '%E4%B8%AD%E6%9D%91%E6%82%A0%E4%B8%80#%E5%87%BA%E6%BC%94']  
    	  
  url = "https://ja.wikipedia.org/wiki/"
  charset = nil
   voice_talents.each do |opt|
      html = open(url + opt) do |strs|
        charset = strs.charset
        strs.read
      end  

      doc = Nokogiri::HTML.parse(html, nil, charset)
      puts doc.title

      title_arr = []
      doc.xpath('//*[@id="mw-content-text"]/div/dl/dd/ul/li').each do |child|
        title_arr << child
      end

      title_arr.each do |title|
	if title.to_s.include?('<b>')
	  p title.text
        end
      end
   end
  end
end
