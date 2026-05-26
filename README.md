*This project has been created as part of the 42 curriculum by ksaotome.*

# get_next_line

# Description

get_next_line は、ファイルディスクリプタから1行ずつ読み込むC言語の関数です。繰り返し呼び出すことで、ファイル全体を1行ずつ読み進めることができます。

**関数プロトタイプ：**
```c
char *get_next_line(int fd);
```
 
### 戻り値
 
| 戻り値 | 説明 |
|--------|------|
| `文字列` | 読み込んだ1行（`\n` を含む） |
| `NULL` | 読むものがない、またはエラーが発生した |
 
### パラメータ
 
| 引数 | 説明 |
|------|------|
| `fd` | 読み込むファイルディスクリプタ（通常ファイル・標準入力どちらも可） |

# Instructions

```bash
make
```
`get_next_line.a` がリポジトリのルートに生成されます。

### Makefile ルール
 
| ルール    | 説明 |
|-----------|------|
| `make`    | ライブラリをビルド |
| `make all`| 同上 |
| `make clean` | オブジェクトファイルを削除 |
| `make fclean` | オブジェクトファイルと `get_next_line.a` を削除 |
| `make re` | リビルド |

# Resources

### 参考サイト

- https://github.com/Tripouille/gnlTester
	- テスター（テスト作業用）
- https://github.com/xicodomingues/francinette
	- テスター（テスト作業用）
- https://www.sejuku.net/blog/24205
	- staticの内容調査
- https://tools.m-bsys.com/ex/long_text_maker.php
	- test用txtファイル作成

### Used AI

- test, error箇所修正発見
- テスト用mainの作成