package animebestapp.com.menu;

import animebestapp.com.ui.nav.h.a.f;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.material.R;
import com.google.firebase.storage.internal.ExponentialBackoffSender;
import g.m.l;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static final b x = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final f f1573a = new f("Новости про:", l.b(new g.f(335, "Режиссёров"), new g.f(291, "Авторов"), new g.f(280, "Композиторов"), new g.f(280, "Сэйю")));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final f f1574b = new f("Новости про:", l.b(new g.f(285, "Важную информацию"), new g.f(291, "Обновления"), new g.f(280, "Конкурсы"), new g.f(280, "Жизнь проекта")));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final f f1575c = new f("Новости про:", l.b(new g.f(57, "Историю"), new g.f(58, "Японскую Кухню"), new g.f(280, "Японские традиции"), new g.f(280, "Японские мероприятия")));

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final f f1576d = new f("Новости про:", l.b(new g.f(334, "Анонсы аниме"), new g.f(291, "Анонсы манги"), new g.f(280, "Топ аниме"), new g.f(280, "Аниме что мы озвучиваем")));

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final f f1577e = new f("ЭПОХИ В АНИМЕ", l.b(new g.f(285, "1 половина 20 века"), new g.f(291, "2 половина 20 века"), new g.f(280, "Наше время"), new g.f(287, "Период Сэнгоку"), new g.f(286, "Период Ямато"), new g.f(289, "Период Нара"), new g.f(282, "Период Мэйдзи"), new g.f(290, "Период Эдо"), new g.f(283, "Будущее"), new g.f(292, "Период Хэйан"), new g.f(284, "Период Муромати"), new g.f(293, "Период Бакумацу"), new g.f(281, "Период Камакура"), new g.f(288, "2 мировая война"), new g.f(294, "Викторианская эпоха")));

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final f f1578f = new f("ХАРАКТЕРЫ В АНИМЕ", l.b(new g.f(174, "Готическая лолита"), new g.f(175, "Раздвоение личности"), new g.f(168, "Отаку"), new g.f(176, "Хикикомори"), new g.f(169, "Антигерой"), new g.f(177, "Цундурэ"), new g.f(170, "Андрогин"), new g.f(178, "Дандэре"), new g.f(171, "Хулиганы"), new g.f(179, "Бисёнэны"), new g.f(181, "Генки"), new g.f(180, "Кудэрэ"), new g.f(173, "Супергерой"), new g.f(172, "Сильная героиня"), new g.f(296, "Сильный герой")));

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final f f1579g = new f("ВОЗРАСТ И РОДСТВЕННЫЕ СВЯЗИ", l.b(new g.f(160, "Ребёнок и взрослый"), new g.f(163, "Дети во взрослом мире"), new g.f(162, "Школьница"), new g.f(164, "Школьник"), new g.f(157, "Студенты"), new g.f(165, "Братья"), new g.f(158, "Близцены"), new g.f(166, "Брат и сестра"), new g.f(167, "Сёстры"), new g.f(161, "Сироты"), new g.f(156, "Взрослый герой"), new g.f(159, "Взрослая героиня")));

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final f f1580h = new f("ВИДЫ СПОРТА", l.b(new g.f(104, "Футбол"), new g.f(Integer.valueOf(R.styleable.AppCompatTheme_windowFixedHeightMinor), "Баскетбол"), new g.f(108, "теннис"), new g.f(Integer.valueOf(R.styleable.AppCompatTheme_windowFixedWidthMajor), "Велоспорт"), new g.f(Integer.valueOf(R.styleable.AppCompatTheme_viewInflaterClass), "Мотогонки"), new g.f(Integer.valueOf(R.styleable.AppCompatTheme_windowFixedWidthMinor), "Регби"), new g.f(Integer.valueOf(R.styleable.AppCompatTheme_windowActionBar), "Автогонки"), new g.f(Integer.valueOf(R.styleable.AppCompatTheme_windowFixedHeightMinor), "Бейсбол"), new g.f(Integer.valueOf(R.styleable.AppCompatTheme_windowActionBarOverlay), "Волейбол"), new g.f(Integer.valueOf(R.styleable.AppCompatTheme_windowMinWidthMinor), "Маджонг"), new g.f(Integer.valueOf(R.styleable.AppCompatTheme_windowActionModeOverlay), "Сёги"), new g.f(121, "Бокс"), new g.f(Integer.valueOf(R.styleable.AppCompatTheme_windowFixedHeightMajor), "Плаванье"), new g.f(123, "Кэндо"), new g.f(109, "Карточные игры"), new g.f(Integer.valueOf(R.styleable.AppCompatTheme_windowNoTitle), "Спортивная борьба"), new g.f(122, "Фигурное катание")));

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final f f1581i = new f("ГЕОГРАФИЯ В АНИМЕ", l.b(new g.f(270, "Европа: Россия"), new g.f(277, "Китай"), new g.f(274, "Европа: Италия"), new g.f(278, "Европа: Греция"), new g.f(276, "Европа: Англия"), new g.f(275, "Америка"), new g.f(279, "Марс"), new g.f(273, "Европа: вымышленная страна"), new g.f(272, "Европа: Франция"), new g.f(271, "Европа: Германия")));

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final f f1582j = new f("ТИПЫ МИРОВ В АНИМЕ", l.b(new g.f(266, "Параллельные миры"), new g.f(265, "Вымышленный мир"), new g.f(264, "Вестерн"), new g.f(268, "Антиутопия"), new g.f(267, "Альтернативная история"), new g.f(263, "Постапокалиптика"), new g.f(269, "Ммо-рпг")));

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final f f1583k = new f("МЕСТА ДЕЙСТВИЯ", l.b(new g.f(253, "Глубинка"), new g.f(259, "Театр кабуки"), new g.f(254, "Университет"), new g.f(256, "Тюрма"), new g.f(255, "А-индустрия"), new g.f(257, "Море"), new g.f(261, "Космический корабль"), new g.f(260, "Под одной крышей"), new g.f(258, "Школьный совет"), new g.f(251, "Академия магии"), new g.f(258, "школьный клуб"), new g.f(252, "Музыкальная группа")));
    private static final f l = new f("ТЕМАТИЧЕСКИЕ ЭЛЕМЕНТЫ", l.b(new g.f(198, "Суперсила"), new g.f(206, "Comicfesta"), new g.f(199, "Гендерная интрига"), new g.f(207, "Достижение цели"), new g.f(200, "3D-графика"), new g.f(208, "Битва Умов"), new g.f(201, "Выживание"), new g.f(209, "Дилемма"), new g.f(202, "Животные и Люди"), new g.f(210, "Семейные отношения"), new g.f(203, "Трагические сцены"), new g.f(212, "Жестокие сцены"), new g.f(204, "Кукольная анимация"), new g.f(214, "Разница в возрасте"), new g.f(236, "Турнир"), new g.f(215, "Супердеформ"), new g.f(237, "Королевская битва"), new g.f(217, "Работа и карьера"), new g.f(238, "Роуд-муви"), new g.f(218, "Потеря памяти"), new g.f(239, "Только парни"), new g.f(221, "Хэнсин"), new g.f(Integer.valueOf(PsExtractor.VIDEO_STREAM_MASK), "Садомазохизм"), new g.f(222, "Прокси-битвы"), new g.f(241, "Noitamina"), new g.f(223, "Взросление"), new g.f(213, "Маньяки"), new g.f(224, "Кроссовер"), new g.f(216, "Кулинария"), new g.f(225, "Травля"), new g.f(211, "Месть"), new g.f(226, "Wmt"), new g.f(231, "Моэ-кавай"), new g.f(227, "Дружба"), new g.f(229, "Обмен телами"), new g.f(228, "Восстание"), new g.f(245, "Западная литература"), new g.f(230, "Сплошной позитив"), new g.f(247, "Несколько сюжетных линий"), new g.f(232, "Внутренние монологи"), new g.f(220, "Классическая музыка"), new g.f(234, "Откровенные сцены"), new g.f(242, "Политические интриги"), new g.f(243, "Преступные организации"), new g.f(Integer.valueOf(ExponentialBackoffSender.RND_MAX), "Депрессивная атмосфера"), new g.f(249, "Компьютерные технологии"), new g.f(244, "Путешествие в другой мир"), new g.f(246, "Японская литература"), new g.f(219, "Спасение мира"), new g.f(235, "Поиск родителей"), new g.f(205, "Тяжелая болезнь"), new g.f(233, "только девушки")));
    private static final f m = new f("МИСТИЧЕСКИЕ СУЩНОСТИ", l.b(new g.f(20, "Вампиры"), new g.f(325, "Ведьмы"), new g.f(Integer.valueOf(PsExtractor.PRIVATE_STREAM_1), "Инопланетяне"), new g.f(183, "Андроиды"), new g.f(190, "Демоны"), new g.f(184, "Божества"), new g.f(191, "Ангелы"), new g.f(185, "Кентавры"), new g.f(Integer.valueOf(PsExtractor.AUDIO_STREAM), "Призраки"), new g.f(186, "Драконы"), new g.f(193, "Зверолюди"), new g.f(187, "Киборги"), new g.f(194, "Ёкаи"), new g.f(Integer.valueOf(TsExtractor.TS_PACKET_SIZE), "Русалки"), new g.f(195, "Зомби"), new g.f(197, "Феи"), new g.f(196, "Эльфы")));
    private static final f n = new f("ПОДЖАНРЫ АНИМЕ", l.b(new g.f(295, "Гарем"), new g.f(133, "Гарем для девочек"), new g.f(124, "Паропанк"), new g.f(136, "Дизельпанк"), new g.f(128, "Сюрриализм"), new g.f(137, "Технофэнтези"), new g.f(Integer.valueOf(TsExtractor.TS_STREAM_TYPE_AC3), "Тёмное фэнтези"), new g.f(Integer.valueOf(TsExtractor.TS_STREAM_TYPE_E_AC3), "Экзоскелет"), new g.f(Integer.valueOf(TsExtractor.TS_STREAM_TYPE_DTS), "Притча"), new g.f(131, "Сатира"), new g.f(139, "Нуар"), new g.f(132, "Кайдан"), new g.f(25, "Киберпанк"), new g.f(30, "Пародия"), new g.f(125, "Космическая опера"), new g.f(127, "Пилотируемые роботы"), new g.f(Integer.valueOf(TsExtractor.TS_STREAM_TYPE_HDMV_DTS), "Любовный треугольник"), new g.f(126, "Классическое фэнтези")));
    private static final f o = new f("ПРОФЕССИИ В АНИМЕ", l.b(new g.f(140, "Лётчики"), new g.f(147, "Военные"), new g.f(142, "Самураи"), new g.f(148, "Шпионы"), new g.f(143, "Фермеры"), new g.f(149, "Оммёдзи"), new g.f(144, "Полицейские"), new g.f(150, "Айдолы"), new g.f(145, "Мангаки"), new g.f(151, "Учителя"), new g.f(146, "Врачи"), new g.f(152, "Горничная"), new g.f(155, "Рыцари"), new g.f(154, "Ниндзя"), new g.f(141, "Космические авантюристы"), new g.f(153, "Морские пираты")));
    private static final f p = new f("ЯПОНСКИЕ", l.b(new g.f(179, "Бисёнэн"), new g.f(199, "Гендерная интрига"), new g.f(310, "Исэкай"), new g.f(44, "Меха"), new g.f(127, "Пилотируемые роботы"), new g.f(37, "Сёнэн"), new g.f(49, "Сёнэн-ай"), new g.f(35, "Сёдзё"), new g.f(36, "Сёдзё-ай"), new g.f(27, "Махо-сёдзё")));
    private static final f q = new f("Китайские", l.b(new g.f(299, "Дунхуа"), new g.f(277, "Все китайские")));
    private static final f r = new f("КЛАССИЧЕСКИЕ", l.b(new g.f(33, "Приключения"), new g.f(21, "Детектив"), new g.f(23, "Драма"), new g.f(24, "История"), new g.f(26, "Комедия"), new g.f(28, "Мистика"), new g.f(29, "Музыкальный"), new g.f(34, "Романтика"), new g.f(32, "Повседневность"), new g.f(39, "Спорт"), new g.f(40, "Ужасы"), new g.f(41, "Фантастика"), new g.f(42, "Триллер"), new g.f(43, "Фэнтези"), new g.f(45, "Школа")));
    private static final f s = new f("ДРУГОЙ ЖАНР", l.b(new g.f(328, "Чиби"), new g.f(19, "Боевые искусства"), new g.f(38, "Самурайский боевик"), new g.f(30, "Пародия"), new g.f(50, "Сказка"), new g.f(31, "Стимпанк"), new g.f(22, "Для детей"), new g.f(47, "Этти")));
    private static final f t = new f("2020-ые", l.b(new g.f(100, "2020"), new g.f(102, "2021"), new g.f(327, "2022"), new g.f(331, "2023"), new g.f(332, "2024"), new g.f(336, "2025")));
    private static final f u = new f("2010-ые", l.b(new g.f(16, "2010"), new g.f(15, NativeAppInstallAd.ASSET_MEDIA_VIDEO), new g.f(14, "2012"), new g.f(13, "2013"), new g.f(12, "2014"), new g.f(11, "2015"), new g.f(59, "2016"), new g.f(63, "2017"), new g.f(80, "2018"), new g.f(87, "2019")));
    private static final f v = new f("2000-ые", l.b(new g.f(81, "2000"), new g.f(82, NativeAppInstallAd.ASSET_HEADLINE), new g.f(85, NativeAppInstallAd.ASSET_CALL_TO_ACTION), new g.f(86, NativeAppInstallAd.ASSET_ICON), new g.f(61, NativeAppInstallAd.ASSET_BODY), new g.f(55, NativeAppInstallAd.ASSET_STORE), new g.f(54, NativeAppInstallAd.ASSET_PRICE), new g.f(53, NativeAppInstallAd.ASSET_IMAGE), new g.f(52, NativeAppInstallAd.ASSET_STAR_RATING), new g.f(51, NativeAppInstallAd.ASSET_ATTRIBUTION_ICON_IMAGE)));
    private static final f w = new f("70-ые, 80-ые, 90-ые", l.b(new g.f(99, "1977"), new g.f(98, "1980"), new g.f(330, "1982"), new g.f(97, "1984"), new g.f(329, "1987"), new g.f(96, "1991"), new g.f(95, "1992"), new g.f(94, "1993"), new g.f(93, "1994"), new g.f(92, "1995"), new g.f(91, "1996"), new g.f(90, "1997"), new g.f(89, "1998"), new g.f(88, "1999")));

    private b() {
    }

    public final f a() {
        return f1579g;
    }

    public final f b() {
        return f1578f;
    }

    public final f c() {
        return u;
    }

    public final f d() {
        return s;
    }

    public final f e() {
        return v;
    }

    public final f f() {
        return t;
    }

    public final f g() {
        return l;
    }

    public final f h() {
        return m;
    }

    public final f i() {
        return f1577e;
    }

    public final f j() {
        return r;
    }

    public final f k() {
        return f1581i;
    }

    public final f l() {
        return p;
    }

    public final f m() {
        return q;
    }

    public final f n() {
        return f1573a;
    }

    public final f o() {
        return f1576d;
    }

    public final f p() {
        return f1575c;
    }

    public final f q() {
        return f1574b;
    }

    public final f r() {
        return f1583k;
    }

    public final f s() {
        return o;
    }

    public final f t() {
        return w;
    }

    public final f u() {
        return f1580h;
    }

    public final f v() {
        return n;
    }

    public final f w() {
        return f1582j;
    }
}
