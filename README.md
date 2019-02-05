# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


・nicknameとemail、passwordとpassword_confirmationが存在すれば登録できること ⇦クリア
・nicknameが空では登録できないこと ←クリア
・emailが空では登録できないこと ←クリア
・passwordが空では登録できないこと ←クリア
・passwordが存在してもpassword_confirmationが空では登録できないこと ←クリア
・nicknameが7文字以上であれば登録できないこと ⇦クリア
・nicknameが6文字以下では登録できること
・重複したemailが存在する場合登録できないこと ⇦クリア
・passwordが8文字以上であれば登録できること
・passwordが7文字以下であれば登録できないこと
