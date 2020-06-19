# frozen_string_literal: true

require 'selenium-webdriver'

# Chrome用のドライバ
driver = Selenium::WebDriver.for :chrome

# Googleにアクセスする
driver.get 'https://google.com'

# テキストボックスの要素をname属性から取得
element = driver.find_element(:name, 'q')

# 取得したテキストボックスの要素に"test"を入力
element.send_keys 'test'

# 実行キーの押下
element.submit

sleep 30
