require 'google/apis/youtube_v3'

# 動画データを取得できるオブジェクトを生成
youtube = Google::Apis::YoutubeV3::YouTubeService.new
# 先ほど作成したAPIキーをオブジェクトのプロパティーに代入
youtube.key = "AIzaSyCGMXxliUT3-0PUjQ7VMB8yXS_BfBYrVUg"
# q: 検索キーワード
# max_results：検索数
youtube_search_list=youtube.list_searches("id,snippet",type:  "video",q: "onedirection",max_results: 10)
puts 
# ヒアドキュメントを格納する変数

array={}
Arrays=[]
youtube_search_list.items.each do |item|
  # チャンネル名を取得
  channel_title= item.snippet.channel_title
  # 動画タイトルを取得
  video_title= item.snippet.title
  # 動画IDを取得（URLの生成に使う）
  video_id= item.id.video_id

  array["channel_title"]=channel_title
  array["video_title"]=video_title
  array["video_id"]=video_id

Arrays<<array
end


p Arrays