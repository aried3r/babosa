require "spec_helper"

describe Babosa::Transliterator::Ukrainian do
  let(:t) { described_class.instance }
  it_behaves_like "a cyrillic transliterator"

  it "should transliterate Cyrillic characters" do
    examples = {
      "Алушта"      => "Alushta",
      "Андрій"      => "Andrii",
      "Борщагівка"  => "Borshchahivka",
      "Борисенко"   => "Borysenko",
      "Вінниця"     => "Vinnytsia",
      "Володимир"   => "Volodymyr",
      "Гадяч"       => "Hadiach",
      "Богдан"      => "Bohdan",
      "Ґалаґан"     => "Galagan",
      "Ґорґани"     => "Gorgany",
      "Донецьк"     => "Donetsk",
      "Дмитро"      => "Dmytro",
      "Рівне"       => "Rivne",
      "Олег"        => "Oleh",
      "Есмань"      => "Esman",
      "Єнакієве"    => "Yenakiieve",
      "Гаєвич"      => "Haievych",
      "Короп'є"     => "Koropie",
      "Житомир"     => "Zhytomyr",
      "Жанна"       => "Zhanna",
      "Жежелів"     => "Zhezheliv",
      "Закарпаття"  => "Zakarpattia",
      "Казимирчук"  => "Kazymyrchuk",
      "Медвин"      => "Medvyn",
      "Михайленко"  => "Mykhailenko",
      "Іванків"     => "Ivankiv",
      "Іващенко"    => "Ivashchenko",
      "Їжакевич"    => "Yizhakevych",
      "Кадиївка"    => "Kadyivka",
      "Мар'їне"     => "Marine",
      "Йосипівка"   => "Yosypivka",
      "Стрий"       => "Stryi",
      "Олексій"     => "Oleksii",
      "Київ"        => "Kyiv",
      "Коваленко"   => "Kovalenko",
      "Лебедин"     => "Lebedyn",
      "Леонід"      => "Leonid",
      "Миколаїв"    => "Mykolaiv",
      "Маринич"     => "Marynych",
      "Ніжин"       => "Nizhyn",
      "Наталія"     => "Nataliia",
      "Одеса"       => "Odesa",
      "Онищенко"    => "Onyshchenko",
      "Полтава"     => "Poltava",
      "Петро"       => "Petro",
      "Решетилівка" => "Reshetylivka",
      "Рибчинський" => "Rybchynskyi",
      "Суми"        => "Sumy",
      "Соломія"     => "Solomiia",
      "Тернопіль"   => "Ternopil",
      "Троць"       => "Trots",
      "Ужгород"     => "Uzhhorod",
      "Уляна"       => "Uliana",
      "Фастів"      => "Fastiv",
      "Філіпчук"    => "Filipchuk",
      "Харків"      => "Kharkiv",
      "Христина"    => "Khrystyna",
      "Біла Церква" => "Bila Tserkva",
      "Стеценко"    => "Stetsenko",
      "Чернівці"    => "Chernivtsi",
      "Шевченко"    => "Shevchenko",
      "Шостка"      => "Shostka",
      "Кишеньки"    => "Kyshenky",
      "Щербухи"     => "Shcherbukhy",
      "Гоща"        => "Hoshcha",
      "Гаращенко"   => "Harashchenko",
      "Юрій"        => "Yurii",
      "Корюківка"   => "Koriukivka",
      "Яготин"      => "Yahotyn",
      "Ярошенко"    => "Yaroshenko",
      "Костянтин"   => "Kostiantyn",
      "Знам'янка"   => "Znamianka",
      "Феодосія"    => "Feodosiia"
    }
    examples.each { |k, v| expect(t.transliterate(k)).to eql(v) }
  end
end
