require "thor"

class MyCLI < Thor
  package_name "Weixin"



  option :appid, banner: "测试信息"
  desc "code2Session", "登录凭证校验"
  def code2Session(appid)
    puts "sdfsdf "
  end
end

MyCLI.start(ARGV)