# Preprocessing-CMU-Pronouncing-Dic
The CMU Pronouncing Dictionaryを前処理するレポジトリ

## データ元
https://github.com/cmusphinx/cmudict

## output.jsonの作成方法
preprocess.shを実行し、output.txtを作成。
index.jsを実行することで、output.jsonを書き出せる。

## preprocess.sh内のsed一覧作成方法
cat table.txt | awk '{printf("| sed \"s/ %s / %s /g\"\n",$1,$2)}'