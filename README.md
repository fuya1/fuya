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

------------------------------------------------

* rails version : 5.0.6(5.0.7)

* Market scaffold
  model로 만든 것 : 가게이름(name) 위치(address) 영업시간(open) 주차가능여부(parking-boolean) 전화번호(tel) 휴일(closed) 시/도(locate1) 군/구(locate2) 동/읍/면(locate3) => parking 빼고 전부 string
  => locate3는 잘못 만든 것 ㅠㅠ

* Review scaffold
  model로 만든 것 : 제목(title-string) 내용(content-text) 별점(rate-float) 날짜(date-date)

* Shop scaffold
  Market(상위) - Shop(하위) => 소속
  model로 만든 것 : 가게이름(name) 영업시간(open) 전화번호(tel)

* Menu scaffold
  Shop(상위) - Menu(하위)
  model로 만든 것 : 메뉴이름(name) 가격(price-integer) 부가설명(content-text)
