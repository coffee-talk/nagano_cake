
# Welcome to  NAGANO CAKE

2ヶ月目のチーム開発で制作する長野県にある小さなな洋菓子店「ながのCAKE」の商品を通販するためのECサイトです。
チーム名はCoffeeTalkです。CoffeeTalkの由来はチームの一員がコーヒー好きなのとCoffeeTalkというアプリがある？？といることでCoffeeTalkという由来のチーム名になりました。

# 依頼背景
元々近隣住民が顧客だったが、昨年始めたInstagramから人気となり、全国から注文が来るよう になった。 InstagramのDMやメールで通販の注文を受けていたが、情報管理が煩雑になってきたため、管 理機能を含んだ通販サイトを開設しようと思い至った。

# 「CoffeeTalk」チームメンバー
リーダー　金山りさ（リサ）
	
	・高田知来（とも）
	・松橋優希（ゆう）
	・金子洋平（ヤン）
## ER図
(![Coffee Talk's ER](https://user-images.githubusercontent.com/85179281/130900600-932b6cc0-e9b6-4170-b045-497c24887fc0.png)

## # 使い方

    git clone https://github.com/coffee-talk/nagano_cake.git(HTTPS)
    $ bundle install
    $ rails db:migrate
    $ rails db:seed

 - 管理者用アカウント
	 
	 1.　メールアドレス :　admin@example.jp
	 
	 2.	パスワード：123456
 - 顧客用アカウント
	 
	 1.　メールアドレス :　customer1@custmer.jp
	 
	 2.	パスワード：123456


## # 要件

[会員側実装機能]
● 顧客は会員登録、ログイン・ログアウト、退会ができること
● 会員のログインはメールアドレスとパスワードで行うこと
● 会員がログインしている状態かどうか、ページのヘッダーにユーザ名を表示するなどして
判断できるようにすること
● サイトの閲覧はログインなしで行えること
● 商品をカートに入れ、1度に複数種類、複数商品の購入ができること。また、カート内の商
品は個数変更・削除ができること
● カートへの商品追加はログインなしでは行えないこと
● クレジットカード情報はシステム上保持しないこと
● 会員は配送先を複数登録しておくことが可能であること
● 会員はマイページから下記が行えること
○ ユーザ情報の閲覧・編集
○ 注文履歴の閲覧
○ 配送先の閲覧・編集
● 注文履歴一覧には下記の情報が表示されること
○ 注文日
○ 配送先
○ 支払金額（商品合計＋送料）
○ 注文ステータス
● 注文履歴詳細には下記の情報が表示されること
○ 注文日
○ 配送先
○ 支払方法
○ 注文ステータス
○ 商品の注文内容詳細（商品名、単価、個数、小計）
○ 請求情報（商品合計、送料、支払金額）
● 会員登録時、下記の情報をユーザ情報として入力できること
○ 名前（姓・名）
○ 名前（カナ姓・カナ名）
○ 郵便番号
○ 住所
○ 電話番号
○ メールアドレス
○ パスワード
● 商品は税込価格で表示されること
● ヘッダには検索窓を配置するが、実際には検索できなくてもよい。（余裕があれば
商品名で商品情報を検索できるとよいが、必須ではないので優先度を下げて欲しい）
● ジャンルごとに商品が表示できる機能があればよいが、必須ではないので優先度を下げ
て欲しい

[管理者側(店側)実装機能]
● 管理者用メールアドレスとパスワードでログインできること（管理者用メールアドレスとパ
スワードは事前にデータベースへ登録できていれば良い）
● 商品について、下記が行えること
○ 新規追加、編集、閲覧
○ 販売停止（売切表示）
● 商品情報は下記のものを持つこと
○ 商品名
○ 商品説明文
○ ジャンル
○ 税抜価格
○ 商品画像
○ 販売ステータス
● 会員登録されているユーザ情報の閲覧、編集、退会処理が行えること
● 顧客の注文履歴が一覧・詳細表示できること
● 顧客ごとの注文一覧が表示できるとよいが、必須ではないので優先度をさげてほしい
● 注文履歴には注文ごとに下記の情報が表示されること
○ 購入者
○ 購入日
○ 購入内容
○ 請求額合計
○ 配送先
○ 注文ステータス
○ 各注文商品の製作ステータス
● 注文ごとに注文ステータスの更新、注文商品ごとに製作ステータスの更新ができること
● ヘッダには検索窓を配置するが、実際に検索はできなくてもよい。（余裕があれば
商品名で商品情報を検索できるか、会員氏名で会員情報を検索できるとよいが、
必須ではないので優先度を下げてほしい）

### 開発環境
| gem  | 用途 |
|--|--|
| ImageMagick(7.0.11) |画像処理のためのソフトウェア|
|"refile", require: "refile/rails", github: 'manfe/refile'　(0.6.2)|ファイルをアップロードできるようにするgem|
|refile-mini_magick (0.2.0)|アップロードした画像のリサイズを行えるgem|
|kaminari','~> 1.2.1|ページング機能の実装gem|
|pry-byebug (3.9.0)|pryでデバッグするためのプラグイン|
|devise (4.8.0)|ログイン、ログアウト機能実装|
|bootstrap' (4.6.0)|webページデザイン|
|font-awesome-sass', '~> 5.13'|フォントアイコン使用|
|jquery-rails (4.4.0)|JavaScriptライブラリ|
|Rails 5.2.6|Rails のバージョン|
ruby 2.6.3p62 (2019-04-16 revision 67580) [x86_64-linux]|Rubyのバージョン|


# 　URL　routes.rb

![無題](https://user-images.githubusercontent.com/85179281/130906713-987338fe-d417-4353-a6f0-e601882d9de2.png)
![adminURL](https://user-images.githubusercontent.com/85179281/130906770-19d97fe3-28ed-41c5-ac91-5eebc74786c9.png)

