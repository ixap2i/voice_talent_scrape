# README

1. bundle install --path vendor/bundle
2. you can edit voice_talents by using ascii strings, input talent_name#
出演
3. if you don't need edit talents or finish it, just type this
bundle exec rake scrape_voice_talent:scrape_voice_talent
4. you can get talent name and histories :crap


# 使い方
実質こちらのファイルで内容が完結しています。
https://github.com/ixap2i/voice_talent_scrape/blob/master/lib/tasks/scrape_voice_talent.rake
知人に頼まれて、Rubyを使ってwikiから声優さんのデータを抜くスクリプトを書きました。
※ 抜きたい声優名をエンコーディングして配列に指定する必要があります。
