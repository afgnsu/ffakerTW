# FfakerTW 快速生成假資料 (繁體中文版)

* 修改自 [https://rubygems.org/gems/ffaker](https://rubygems.org/gems/ffaker)

```bash
gem install FfakerTW

rails c

include FfakerTW
10.times do
  puts FFakerTW::NameTW.last_first
end
```

![範例](sample.jpg)

還有
- FFakerTW::AnimalTW.name (動物)
- FFakerTW::CompanyTW.name (公司)
- FFakerTW::EducationTW.name (大學)
- FFakerTW::GenderTW.sample (性別)
- FFakerTW::LoremTW.word、words、sentence、sentences、paragraph、paragraphs (亂數假文)
- FFakerTW::NameTW (姓名) => 有 name、first_name、last_name、last_first 四種
- FFakerTW::PhoneNumberTW.phone_number、mobile_phone_number、home_work_phone_number (電話號碼)
等等。
