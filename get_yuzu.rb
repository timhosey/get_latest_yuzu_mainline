require 'httparty'
require 'zip'

url = 'https://api.github.com/repos/yuzu-emu/yuzu-mainline/releases/latest'
response = HTTParty.get(url)
response.parsed_response

response['assets'].each do |a|
  if a['browser_download_url'] =~ /https\:\/\/\w+\.{1}\w+\/yuzu-emu\/yuzu-mainline\/releases\/download\/mainline-\d-\w+\/yuzu-windows-msvc-[0-9]{8}-\w+\.zip/
    puts "Found latest version: #{a['name']}"
    puts "Downloading file."
    File.open(a['name'], "wb") do |f| 
      f.write HTTParty.get(url).body
    end
  end
end


# File.open(yourfile, 'w') { |file| file.write("your text") }
# href="/yuzu-emu/yuzu-mainline/releases/download/mainline-0-1176/yuzu-windows-msvc-20220922-525d31615.zip"