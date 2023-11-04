+++
title = 'Как устроен Интернет (Часть 1)'
date = 2022-07-02
draft = false
+++

![The Internet map](/images/how-internet-works/internet-13-small.png)

## Введение
Я работаю веб-разработчиком, и моя работа вплотную связана с Интернетом. 
Тем не менее, даже я часто ловлю себя на том, что не знаю как устроены какие-то вещи в этом самом Интернете. В этой статье попробуем разобраться что там и как.
Начнем с того, что такое Интернет для нас всех как для пользователей.

- [Что такое Интернет?](#что-такое-интернет)
- [Интернет у нас дома](#интернет-у-нас-дома)
- [Интернет в шкафу](#интернет-в-шкафу)
- [Интернет в ещё одном шкафу](#интернет-в-ещё-одном-шкафу)
- [Иерархия провайдеров](#иерархия-провайдеров)
- [Опорная сеть Интернета](#опорная-сеть-интернета)
- [Соединяем всё](#соединяем-всё)

## Что такое Интернет?
Для нас как для пользователей Интернет — это такой ящик, белый прямоугольник с надписью "Интернет".

![Очень упрощенная схема подключения к YouTube](/images/how-internet-works/internet-1.png)

В этом прямоугольнике можно найти много всего интересного, и мы к этому прямоугольнику как-то подключаемся и идём, например, смотреть видео на YouTube (не знаю, как вы, а я подключаюсь к YouTube всегда именно с таким выражением лица).

Мы пользуемся Интернетом каждый день по много часов. По статистике средний пользователь проводит онлайн больше 6 часов в день [[источник](https://wearesocial.com/uk/blog/2022/04/more-than-5-billion-people-now-use-the-internet/)].
Однако, обычно мы мало знаем и редко задумываемся, что там внутри. Эта статья — это моя попытка разобраться, что же там внутри этого прямоугольника.

## Часть 1 (физическая)

Для начала разберемся как Интернет устроен чисто физически, на уровне "куда какой кабель втыкается". Для этого вспомним, как мы обычно подключаемся к Интернету. 

![Схема подключения к YouTube уже с домашним роутером](/images/how-internet-works/internet-2.png)

### Интернет у нас дома

У нас всегда есть какое-то устройство — физическая вещь - компьютер, ноутбук, смартфон, в общем всё то, что иногда называют "железом". И вот внутри нашего железа обычно есть специальная микросхема (или кусок большой микросхемы), который называется сетевая плата и отвечает за подключение к сети. Сетевые платы бывают тысяч разных видов, они могут подключаться к сети по проводу или без провода. Сейчас чаще всего это именно беcпроводное подключение, по всем знакомому WiFi. Вот для примера сетевая плата, а точнее беспроводной модуль, в ноутбуке компании Apple. [[источник](https://www.ifixit.com/Guide/MacBook+Pro+15-Inch+Retina+Display+Mid+2015+AirPort+Board+Replacement/55921)]

![WiFi-модель MacBook Pro 2015](/images/how-internet-works/ifixit_wifi_card.png "Сетевая плата (беспроводной модуль) в MacBook Pro 2015")

Этот беспроводной модуль умеет подключаться через радиосигнал к другому устройству, и это называется "подключился к WiFi".

Устройство, к которому подключается наша сетевая плата, — это, чаще всего, роутер. Выглядит роутер примерно так: 

![Домашний роутер](/images/how-internet-works/internet-3.png)

Это такое специальное устройство, в которое с одной стороны Интернет приходит, а с другой стороны Интернет уходит. Уходит он клиентам (то есть устройствам), подключенным к этому роутеру по кабелю или через WiFi.

В основном, для нас как для пользователей подключение к Интернету на этом и заканчивается. Самое последнее, что мы видим — это кабель провайдера, который уходит через стену квартиры куда-то в подъезд. Давайте посмотрим, что там на другом конце этого кабеля и откуда там Интернет.

### Интернет в шкафу

Если вы живете в многоквартирном доме, как я, то скорее всего в вашем подъезде, в подвале, на чердаке или где-то рядом стоит или висит шкаф с большим количеством проводов. В лучшем случае этот шкаф выглядит примерно, как на этих фото.

![Стойки с роутерами в подъездах](/images/how-internet-works/internet-4.png)

Но бывает и вот так. 

![Роутер висит на мотке из проводов](/images/how-internet-works/internet-5.jpg)

Тут всё зависит от вашего провайдера и специалистов, которые подключали ваш подъезд. 

В независимсти от того, как это выглядит, в этих шкафах стоят роутеры (или ещё по-другому маршрутизаторы) провайдера. Проводов так много, потому что сюда приходят подключения от всех квартир в доме или подъезде. В один роутер можно воткнуть от 8 до 48 кабелей. Поэтому, если квартир в доме много, то нужно несколько роутеров, для которых удобно сделать такой вот общий шкаф. В домах поменьше вполне можно обойтись и одним роутером.

![Роутер из шкафа в подъезде](/images/how-internet-works/internet-6.png "Роутер из шкафа в подъезде")

Выглядят эти роутеры более серьёзно, чем наша белая коробочка с жёлтыми гнёздами, но в общем и целом с этим роутером такая же история, как с роутером в квартире. С одной стороны в роутер Интернет приходит, а с другой — уходит клиентам. Клиенты для этого роутера — это те самые роутеры в наших квартирах.

Конечно, если погружаться в детали, то можно найти довольно много отличий роутеров в шкафах от наших "квартирных" роутеров, но сейчас нам это не очень важно. Пока нам бы разобраться откуда Интернет в этом шкафу, откуда он туда приходит.


### Интернет в ещё одном шкафу

Шкаф в подъезде получает Интренет по кабелю, чаще всего оптоволоконному. Этот кабель тянется в центр обработки данных провайдера, где втыкается (сюрприз!) в еще один роутер.

![Шкаф с роутерами в Дата-центре](/images/how-internet-works/internet-7.webp "Ещё один шкаф с роутерами")

К провайдеру подключено обычно довольно много домов, поэтому и на этом уровне подключения тоже нужно много роутеров, и они тоже вставляются в специальные шкафы. Только эти шкафы уже стоят не где-то в подъезде, а в специальном помещении, и в эти роутеры уже подключены целые дома. Например, каждый жёлтый проводок оптики на картинке выше — это один многоквартирный дом.

Итак, у нас пока получается такая схема для сети нашего провайдера:

![Упрощенная схема сети провайдера](/images/how-internet-works/internet-8.png)

 - у каждого клиента в квартире стоит роутер
 - этот роутер подключается к другому роутеру в шкафу в подъезде
 - шкаф в подъезде подключается к еще более крутому роутеру в дата центре провайдера

Эта система нужна провайдеру, чтобы распределять и управлять доступом клиентов в Интернет. Но провайдер не владеет Интернетом. Значит провайдер этот Интернет получает ещё откуда-то? Откуда всё-таки трафик у самого провайдера?

### Иерархия провайдеров

Провайдер получает трафик от других провайдеров, или если чуть шире — от операторов связи. Весь Интернет — это и есть все операторы связи и передача трафика между ними. Если мы возмём двух любых операторов связи, то между ними может быть 3 варианта взаимодействия:
 1. операторы никак не связаны
 2. один оператор продаёт трафик другому
 3. операторы обмениваются трафиком друг с другом (это называется пиринг)

С первым пунктом всё понятно, а на пунктах 2 и 3 как раз и основана иерархия операторов связи. Это иерархия условная, там нет каких-то строгих критериев, но деление довольно часто используемое. Есть Tier 1, Tier 2 и Tier 3 операторы.

![Мем для демонстрации уровней операторов связи](/images/how-internet-works/internet-9.png)

**Tier 3** операторы имеют доступ к Интернету только через покупку трафика у других операторов.

**Tier 2** операторы имеют доступ к части сети через пиринг (обмен трафиком) с другими операторами, а доступ к остальному Интернету покупают у других операторов.

**Tier 1** операторы никому не платят за трафик, они только обмениваются трафиком друг с другом и продают его другим операторам.

В мире около 10-15-ти Tier 1 операторов, и каждый из них имеет доступ ко всему Интернету. Tier 1 провайдеры имеют возможность передавать трафик между разными странами и континентами за счёт того, что владеют или арендуют магистральные кабели. 

### Опорная сеть Интернета

Магистральные кабели (они же магистральные сети, они же опорная сеть Интернета) физически соединяют участки Интернета, расположенные в разных странах и на разных континентах. На карте магистральные сети выглядят примерно вот так. [[Infrapedia](https://www.infrapedia.com/app)]

![Карта опорных сетей Интернета](/images/how-internet-works/internet-10.png "Карта опорных сетей Интернета")

Примерно — потому что никто точно не знает как они выглядят, нет какого-то центрального хранилища информации о всех магистральных кабелях. Опорная сеть позволяет передавать трафик по всему миру.
Например, если вы, находясь в России, захотите открыть сайт, расположенный на сервере в США, то ваш трафик пойдёт через магистральную сеть.
А точнее через один из магистральных кабелей, проложенных по дну Атлантического океана.

![Трансантлантические кабели](/images/how-internet-works/internet-11.png "Трансантлантические кабели")

А вот как выглядят подводные кабели [ [Статья на Wired](https://www.wired.com/story/google-cramming-more-data-new-atlantic-cable/) ]. У них несколько разных слоёв защиты и внутри — оптоволокно. Пропускная способность у современных кабелей измеряется десятками Тбит/с. Магистральные кабели идут не только по дну океана, есть также и наземные магистральные сети. Например, в России сеть магистральных кабелей выглядит так.

![Карта магистральных сетей России](/images/how-internet-works/internet-12.png "Карта магистральных сетей России")

[[Полная карта в PDF](https://www.comnews.ru/sites/default/files2019/vision-files/mapmagistr2020-2.pdf)]

Этими сетями управляют основные Интернет-провайдеры, их ещё иногда называют региональными Tier 1 операторами. Это операторы, которые не являются Tier 1 операторами на глобальном уровне и покупают транзитный трафик, но внутри своего региона они никому за трафик не платят. В России региональные Tier 1 операторы — это как минимум Ростелеком, ТрансТелеком и большая тройка операторов сотовой связи.


### Соединяем всё

Хорошо, допустим, мы немного разобрались, как выглядят магистральные сети. А теперь вернемся к началу нашего разговора и попробуем соединить вместе всё, что мы пока что узнали.

Мы увидели, как устроена сеть провайдера внутри — у каждого клиента дома есть роутер, этот роутер подключается к шкафу с роутерами в подъезде, шкафы в подъезде — к роутеру в ЦОД.

Провайдеры (а точнее операторы связи) бывают разных уровней. Они покупают, продают и обмениваются трафиком. 

Самые большие операторы первого уровня передают трафик между странами и континентами по магистральным сетям, иногда по кабелю на дне океана.

Так откуда в итоге берётся Интернет? Где его источник? Весь смысл в том, что нигде. Нет какого-то источника Интернета, где его добывают и потом отправляют потребителям. Спрашивать где источник Интернета — это как спрашивать где источник почты или телефонной связи. Интернет — это набор устройств, которые хотят связываться между собой, огромная инфраструктура для обеспечения связи и большой набор технологий, которые позволяют эту инфраструктуру использовать.

Чтобы понять насколько большая и сложная штука Интернет, вспомним нашу схему сети провайдера. Там было всего 8 клиентов. В реальности у каждого провайдера от нескольких тысяч до десятков миллионов клиентов. И провайдеров во всём мире десятки тысяч. А Интернет нужен не только нам с вами в наших домах и квартирах, он нужен еще и компаниям и организациям. Крупные IT-компании очень часто строят вообще целые отдельные дата-центры только для себя, и там тоже нужен Интернет. И это мы еще даже не начинали про [IoT](https://en.wikipedia.org/wiki/Internet_of_things). В итоге это всё соединяется в огромную сеть, которая охватывает всю планету. 

![Карта Интернета от The Opte Project](/images/how-internet-works/internet-13.png "Карта Интернета от The Opte Project")

[[Оригинал (10000х8000)](http://renderbot.nyc1.opte.org/20210116.1200.attempt_1/attempt_1_run_20210116.1200.coords_10000x8000_light.png)]

[[The Opte Project](https://www.opte.org/the-internet)]

И в этой сети сейчас уже примерно 28 000 000 000 устройств онлайн, и это число продолжает расти. 

Так, 28 млрд. устройств это конечно хорошо, но как нам среди всех этих устройств найти, например, тот самый YouTube?

С этим мы попробуем разобраться во второй части.