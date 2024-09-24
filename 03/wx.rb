#!/usr/bin/env ruby


# https://developers.weixin.qq.com/miniprogram/dev/OpenApiDoc/user-login/code2Session.html
# https://developers.weixin.qq.com/miniprogram/dev/api/open-api/login/wx.login.html

require 'optparse'

options = {}
OptionParser.new do |opts|

  opts.on("--appid APPID", "小程序 appId") do |appid|
    options[:appid] = appid
  end

  opts.on("--secret SECRET", "小程序 appSecret") do |secret|
    options[:secret] = secret
  end

  opts.on("--js_code CODE", "登录时获取的 code，可通过wx.login获取") do |code|
    options[:js_code] = code
  end

  opts.on("--grant_type TYPE", "授权类型，此处只需填写 authorization_code") do |type|
    options[:grant_type] = type
  end

end.parse!

puts options.inspect