# zeitwerk と gem/rails engine の相性を見るためのテストアプリ

* gem で使ってる定数名は使えない
    * config gem が提供する Settings と競合する app/models/settings/foo.rb を用意した
    * rails の起動もできない
* rails engine で定義されてるクラスを素朴にオーバーライドしようと思うと怪しい動きをする
    * rails engine のクラスをオーバーライドしたい時は rails guide に沿ってやる https://guides.rubyonrails.org/engines.html#improving-engine-functionality

```
$ rm app/models/settings/foo.rb
$ rails c
> DeviseController
> reload!
> DeviseController # <= watch what happens
```
