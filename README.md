# kids-web-apps

子ども向けWebアプリを1つの静的サイトで公開するためのリポジトリです。

- `/dobutsu-touch/` — どうぶつタッチ
- `/ponpon-touch/` — ぽんぽんタッチ

## Cloudflare Pages

- Production branch: `main`
- Build command: `bash build.sh`
- Build output directory: `public`
- Root directory: repository root

通常アクセス時はCloudflare Pagesから配信されます。`build.sh` は既存Railwayからアイコン・動物音声をビルド時にコピーします。