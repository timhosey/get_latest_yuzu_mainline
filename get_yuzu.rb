require 'httparty'

url = 'https://api.github.com/repos/yuzu-emu/yuzu-mainline/releases/latest'
response = HTTParty.get(url)
response.parsed_response

response['assets'].each do |a|
  if a['browser_download_url'] =~ /https\:\/\/\w+\.{1}\w+\/yuzu-emu\/yuzu-mainline\/releases\/download\/mainline-\d-\w+\/yuzu-windows-msvc-[0-9]{8}-\w+\.zip/
    puts "Found latest version: #{a['name']}"
    puts "Downloading file."
    File.open(a['name'], "wb") do |f| 
      f.write HTTParty.get(a['browser_download_url']).parsed_response
    end
    puts "Download complete. Opening file... Enjoy!"
    system %{cmd /c "start #{a['name']}"}
  end
end