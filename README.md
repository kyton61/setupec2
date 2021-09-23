# setupec2
## 事前準備
変数定義用tfファイルを修正してください。
```
cp -p variable.tf.org variable.tf
vi variable.tf
```
AWS access key情報およびプロジェクト名を指定してください。
```
project_name = "XXX"
aws_access_key  = "XXXXXXXXXXXXX"
aws_sercret_key = "XXXXXXXXXXXXX"
```

terraformのインストール後、下記コマンドを実行してください。
```
terraform init
terraform workspace new stg
terraform workspace new prd
terraform workspace select stg
terraform workspace show
## workspaceがstgであることを確認する
```

## terraform実行
```
terraform validate
## エラーが発生しないこと
terraform plan
```

terrafrom planを実行するとIPアドレスの入力が求められます。
terraform実行端末のグローバルIPアドレスを入力してください。
EC2インスタンスへのSSHを許可する接続元IPアドレスとなります。
```
var.local_global_ip
  Enter a value: 111.11.11.111
```

問題なければ、実行
```
terraform apply
```
