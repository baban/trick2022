# trick2022
trick2022に応募して落選したコードの墓標です

### Remarks

以下のコマンドで、引数で指定されたファイルにある数独の問題を解きます。

```
$ ruby -F" " -r ./suudoku.rb -W1 -a -n entry.rb problem.txt
```

また、オプションを指定することで、解いた問題を一部入れ替えて、新しい数独のパズルを生成します。

```
$ ruby -l -F" " -r ./suudoku.rb -W1 -a -n entry.rb problem.txt new_problem.txt
```

同じファイル名を指定すれば、問題を入れ替える事が出来ます

You can change questions by specifying the same file name

```
$ ruby -l -F" " -r ./suudoku.rb -W1 -a -n entry.rb problem.txt problem.txt
```

以下の実装/プラットフォームを用いて動作確認しています。

* ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x86_64-linux]
* ruby 3.0.4p208 (2022-04-12 revision 3fa771dded) [x86_64-linux]
* ruby 2.7.2p137 (2020-10-01 revision 5445e04352) [x86_64-linux]

### Description

このプログラムは、数独の問題を解きます。

また、オプションを指定することで、解いた問題の数値を一部入れ替えて新しい問題を生成します。

問題は`problem.txt`ファイルを中身を参考に、'-'で指定された部分を空欄にスペース区切りで記述します。

### Internals

* $で始まる1文字、または2文字の特殊変数を、すべて1回以上使用するプログラムにしました
  - entry.rbは、ファイルの読み込みと、関数の呼び出しに使用しています
	- 特殊変数は多少強引でも、意味を持たせて呼び出すようにしました
	- 特殊変数はなるべく少ない回数使う用にしましたが、$"、$-iだけは2回使用しています
* 数独を解くプログラムは、suudoku.rbという別ファイルに書いています。
* "suudoku"の綴りがローマ字である理由は、アスキーアートにしたときの文字数を増やすためですです。
* 数独を生成するプログラムはかなり荒い作りです。解決できない問題を生成する事があります。
