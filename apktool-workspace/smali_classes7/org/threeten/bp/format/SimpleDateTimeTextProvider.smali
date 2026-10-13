.class final Lorg/threeten/bp/format/SimpleDateTimeTextProvider;
.super Lorg/threeten/bp/format/DateTimeTextProvider;
.source "SimpleDateTimeTextProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/format/SimpleDateTimeTextProvider$LocaleStore;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final cache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Map$Entry<",
            "Lorg/threeten/bp/temporal/TemporalField;",
            "Ljava/util/Locale;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Lorg/threeten/bp/format/SimpleDateTimeTextProvider$1;

    invoke-direct {v0}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider$1;-><init>()V

    sput-object v0, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .line 66
    invoke-direct {p0}, Lorg/threeten/bp/format/DateTimeTextProvider;-><init>()V

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x2

    const/16 v3, 0x10

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 0

    .line 66
    invoke-static {p0, p1}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/Comparator;
    .locals 1

    .line 66
    sget-object v0, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method private static createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;)",
            "Ljava/util/Map$Entry<",
            "TA;TB;>;"
        }
    .end annotation

    .line 387
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, p0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static createLocaleStore(Ljava/util/Map;)Lorg/threeten/bp/format/SimpleDateTimeTextProvider$LocaleStore;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/threeten/bp/format/TextStyle;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lorg/threeten/bp/format/SimpleDateTimeTextProvider$LocaleStore;"
        }
    .end annotation

    .line 392
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->FULL_STANDALONE:Lorg/threeten/bp/format/TextStyle;

    sget-object v1, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->SHORT_STANDALONE:Lorg/threeten/bp/format/TextStyle;

    sget-object v1, Lorg/threeten/bp/format/TextStyle;->SHORT:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->NARROW:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/threeten/bp/format/TextStyle;->NARROW_STANDALONE:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->NARROW_STANDALONE:Lorg/threeten/bp/format/TextStyle;

    sget-object v1, Lorg/threeten/bp/format/TextStyle;->NARROW:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    :cond_0
    new-instance v0, Lorg/threeten/bp/format/SimpleDateTimeTextProvider$LocaleStore;

    invoke-direct {v0, p0}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private createStore(Lorg/threeten/bp/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 113
    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    const-wide/16 v4, 0x7

    .line 122
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/16 v5, 0x6

    .line 121
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-wide/16 v6, 0x5

    .line 120
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-wide/16 v7, 0x4

    .line 119
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-wide/16 v8, 0x3

    .line 118
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-wide/16 v9, 0x2

    .line 117
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/16 v16, 0x7

    const-wide/16 v17, 0x1

    const/16 v19, 0x0

    .line 116
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/16 v17, 0x6

    if-ne v1, v3, :cond_0

    .line 114
    invoke-static {v2}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v1

    .line 115
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v20, 0x8

    const/16 v18, 0x5

    .line 123
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-wide/16 v20, 0x9

    const/16 v22, 0x4

    .line 124
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-wide/16 v20, 0xa

    const/16 v23, 0x3

    .line 125
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-wide/16 v20, 0xb

    const/16 v24, 0x2

    .line 126
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const-wide/16 v20, 0xc

    const/16 v25, 0x1

    .line 127
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 128
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v20

    move-object/from16 p1, v1

    .line 129
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 130
    aget-object v0, v20, v19

    invoke-interface {v1, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    aget-object v0, v20, v25

    invoke-interface {v1, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    aget-object v0, v20, v24

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    aget-object v0, v20, v23

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    aget-object v0, v20, v22

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    aget-object v0, v20, v18

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    aget-object v0, v20, v17

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    aget-object v0, v20, v16

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v21, 0x8

    .line 138
    aget-object v0, v20, v21

    invoke-interface {v1, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v26, 0x9

    .line 139
    aget-object v0, v20, v26

    invoke-interface {v1, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v27, 0xa

    .line 140
    aget-object v0, v20, v27

    invoke-interface {v1, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v28, 0xb

    .line 141
    aget-object v0, v20, v28

    invoke-interface {v1, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 145
    aget-object v1, v20, v19

    move-object/from16 v29, v3

    move-object/from16 v30, v11

    move/from16 v11, v25

    move-object/from16 v3, p0

    invoke-direct {v3, v11, v1, v2}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->narrowMonth(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    aget-object v1, v20, v11

    move/from16 v11, v24

    invoke-direct {v3, v11, v1, v2}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->narrowMonth(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    aget-object v1, v20, v11

    move/from16 v11, v23

    invoke-direct {v3, v11, v1, v2}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->narrowMonth(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    aget-object v1, v20, v11

    move/from16 v11, v22

    invoke-direct {v3, v11, v1, v2}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->narrowMonth(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    aget-object v1, v20, v11

    move/from16 v11, v18

    invoke-direct {v3, v11, v1, v2}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->narrowMonth(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    aget-object v1, v20, v11

    move/from16 v11, v17

    invoke-direct {v3, v11, v1, v2}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->narrowMonth(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    aget-object v1, v20, v11

    move/from16 v11, v16

    invoke-direct {v3, v11, v1, v2}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->narrowMonth(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    aget-object v1, v20, v11

    move/from16 v11, v21

    invoke-direct {v3, v11, v1, v2}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->narrowMonth(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    aget-object v1, v20, v11

    move/from16 v11, v26

    invoke-direct {v3, v11, v1, v2}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->narrowMonth(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    aget-object v1, v20, v11

    move/from16 v11, v27

    invoke-direct {v3, v11, v1, v2}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->narrowMonth(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    aget-object v1, v20, v11

    move/from16 v11, v28

    invoke-direct {v3, v11, v1, v2}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->narrowMonth(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc

    .line 156
    aget-object v11, v20, v28

    invoke-direct {v3, v1, v11, v2}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->narrowMonth(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v30

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v1, Lorg/threeten/bp/format/TextStyle;->NARROW:Lorg/threeten/bp/format/TextStyle;

    move-object/from16 v11, v29

    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-virtual/range {p1 .. p1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    .line 160
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object/from16 p1, v0

    .line 161
    aget-object v0, p1, v19

    invoke-interface {v1, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v25, 0x1

    .line 162
    aget-object v0, p1, v25

    invoke-interface {v1, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v24, 0x2

    .line 163
    aget-object v0, p1, v24

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v23, 0x3

    .line 164
    aget-object v0, p1, v23

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v22, 0x4

    .line 165
    aget-object v0, p1, v22

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v18, 0x5

    .line 166
    aget-object v0, p1, v18

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v17, 0x6

    .line 167
    aget-object v0, p1, v17

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v16, 0x7

    .line 168
    aget-object v0, p1, v16

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v21, 0x8

    .line 169
    aget-object v0, p1, v21

    invoke-interface {v1, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v26, 0x9

    .line 170
    aget-object v0, p1, v26

    invoke-interface {v1, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v27, 0xa

    .line 171
    aget-object v0, p1, v27

    invoke-interface {v1, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v28, 0xb

    .line 172
    aget-object v0, p1, v28

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->SHORT:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-static {v11}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->createLocaleStore(Ljava/util/Map;)Lorg/threeten/bp/format/SimpleDateTimeTextProvider$LocaleStore;

    move-result-object v0

    return-object v0

    :cond_0
    move-object/from16 v3, p0

    .line 176
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    if-ne v1, v0, :cond_1

    .line 177
    invoke-static {v2}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    .line 178
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 186
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v11

    .line 187
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    const/16 v24, 0x2

    .line 188
    aget-object v13, v11, v24

    invoke-interface {v12, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v23, 0x3

    .line 189
    aget-object v13, v11, v23

    invoke-interface {v12, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v22, 0x4

    .line 190
    aget-object v13, v11, v22

    invoke-interface {v12, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v18, 0x5

    .line 191
    aget-object v13, v11, v18

    invoke-interface {v12, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v17, 0x6

    .line 192
    aget-object v13, v11, v17

    invoke-interface {v12, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v16, 0x7

    .line 193
    aget-object v13, v11, v16

    invoke-interface {v12, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x1

    .line 194
    aget-object v14, v11, v13

    invoke-interface {v12, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v14, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {v1, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    const/4 v14, 0x2

    .line 198
    aget-object v15, v11, v14

    invoke-direct {v3, v13, v15, v2}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->narrowDayOfWeek(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x3

    .line 199
    aget-object v15, v11, v13

    invoke-direct {v3, v14, v15, v2}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->narrowDayOfWeek(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x4

    .line 200
    aget-object v15, v11, v14

    invoke-direct {v3, v13, v15, v2}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->narrowDayOfWeek(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v8, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x5

    .line 201
    aget-object v15, v11, v13

    invoke-direct {v3, v14, v15, v2}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->narrowDayOfWeek(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x6

    .line 202
    aget-object v15, v11, v14

    invoke-direct {v3, v13, v15, v2}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->narrowDayOfWeek(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x7

    .line 203
    aget-object v15, v11, v13

    invoke-direct {v3, v14, v15, v2}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->narrowDayOfWeek(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v25, 0x1

    .line 204
    aget-object v11, v11, v25

    invoke-direct {v3, v13, v11, v2}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->narrowDayOfWeek(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v2, Lorg/threeten/bp/format/TextStyle;->NARROW:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {v1, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v0

    .line 208
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/16 v24, 0x2

    .line 209
    aget-object v11, v0, v24

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v23, 0x3

    .line 210
    aget-object v10, v0, v23

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v22, 0x4

    .line 211
    aget-object v9, v0, v22

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v18, 0x5

    .line 212
    aget-object v8, v0, v18

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v17, 0x6

    .line 213
    aget-object v7, v0, v17

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v16, 0x7

    .line 214
    aget-object v6, v0, v16

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v25, 0x1

    .line 215
    aget-object v0, v0, v25

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->SHORT:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-static {v1}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->createLocaleStore(Ljava/util/Map;)Lorg/threeten/bp/format/SimpleDateTimeTextProvider$LocaleStore;

    move-result-object v0

    return-object v0

    .line 219
    :cond_1
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->AMPM_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    const-wide/16 v4, 0x0

    if-ne v1, v0, :cond_2

    .line 220
    invoke-static {v2}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    .line 221
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 222
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 223
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 224
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aget-object v5, v0, v19

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v25, 0x1

    .line 225
    aget-object v0, v0, v25

    invoke-interface {v2, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->SHORT:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-static {v1}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->createLocaleStore(Ljava/util/Map;)Lorg/threeten/bp/format/SimpleDateTimeTextProvider$LocaleStore;

    move-result-object v0

    return-object v0

    .line 230
    :cond_2
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    if-ne v1, v0, :cond_4

    .line 231
    invoke-static {v2}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    .line 232
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 233
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v0

    .line 234
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 235
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aget-object v8, v0, v19

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v25, 0x1

    .line 236
    aget-object v7, v0, v25

    invoke-interface {v6, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v7, Lorg/threeten/bp/format/TextStyle;->SHORT:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 239
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 240
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "Before Christ"

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v6, "Anno Domini"

    invoke-interface {v2, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v6, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 245
    :cond_3
    sget-object v2, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 248
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aget-object v5, v0, v19

    move/from16 v6, v19

    const/4 v13, 0x1

    invoke-virtual {v5, v6, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    aget-object v0, v0, v13

    invoke-virtual {v0, v6, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->NARROW:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-static {v1}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->createLocaleStore(Ljava/util/Map;)Lorg/threeten/bp/format/SimpleDateTimeTextProvider$LocaleStore;

    move-result-object v0

    return-object v0

    .line 254
    :cond_4
    sget-object v0, Lorg/threeten/bp/temporal/IsoFields;->QUARTER_OF_YEAR:Lorg/threeten/bp/temporal/TemporalField;

    if-ne v1, v0, :cond_5

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 256
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 257
    const-string v2, "Q1"

    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v2, "Q2"

    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v2, "Q3"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v2, "Q4"

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v2, Lorg/threeten/bp/format/TextStyle;->SHORT:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 263
    const-string v2, "1st quarter"

    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v2, "2nd quarter"

    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v2, "3rd quarter"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v2, "4th quarter"

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v2, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-static {v0}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->createLocaleStore(Ljava/util/Map;)Lorg/threeten/bp/format/SimpleDateTimeTextProvider$LocaleStore;

    move-result-object v0

    return-object v0

    .line 270
    :cond_5
    const-string v0, ""

    return-object v0
.end method

.method private findStore(Lorg/threeten/bp/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;
    .locals 2

    .line 102
    invoke-static {p1, p2}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 105
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->createStore(Lorg/threeten/bp/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object p1

    .line 106
    iget-object p2, p0, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, v0, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object p1, p0, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method private narrowDayOfWeek(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 339
    invoke-virtual {p3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 354
    :pswitch_0
    const-string p1, "\u65e5"

    return-object p1

    .line 352
    :pswitch_1
    const-string p1, "\u516d"

    return-object p1

    .line 350
    :pswitch_2
    const-string p1, "\u4e94"

    return-object p1

    .line 348
    :pswitch_3
    const-string p1, "\u56db"

    return-object p1

    .line 346
    :pswitch_4
    const-string p1, "\u4e09"

    return-object p1

    .line 344
    :pswitch_5
    const-string p1, "\u4e8c"

    return-object p1

    .line 342
    :pswitch_6
    const-string p1, "\u4e00"

    return-object p1

    .line 357
    :cond_0
    :goto_0
    invoke-virtual {p3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ar"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 372
    :pswitch_7
    const-string p1, "\u062d"

    return-object p1

    .line 370
    :pswitch_8
    const-string p1, "\u0633"

    return-object p1

    .line 368
    :pswitch_9
    const-string p1, "\u062c"

    return-object p1

    .line 366
    :pswitch_a
    const-string p1, "\u062e"

    return-object p1

    .line 364
    :pswitch_b
    const-string p1, "\u0631"

    return-object p1

    .line 362
    :pswitch_c
    const-string p1, "\u062b"

    return-object p1

    .line 360
    :pswitch_d
    const-string p1, "\u0646"

    return-object p1

    :cond_1
    :goto_1
    const/4 p1, 0x0

    const/4 p3, 0x1

    .line 375
    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private narrowMonth(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 275
    invoke-virtual {p3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 300
    :pswitch_0
    const-string p1, "\u5341\u4e8c"

    return-object p1

    .line 298
    :pswitch_1
    const-string p1, "\u5341\u4e00"

    return-object p1

    .line 296
    :pswitch_2
    const-string p1, "\u5341"

    return-object p1

    .line 294
    :pswitch_3
    const-string p1, "\u4e5d"

    return-object p1

    .line 292
    :pswitch_4
    const-string p1, "\u516b"

    return-object p1

    .line 290
    :pswitch_5
    const-string p1, "\u4e03"

    return-object p1

    .line 288
    :pswitch_6
    const-string p1, "\u516d"

    return-object p1

    .line 286
    :pswitch_7
    const-string p1, "\u4e94"

    return-object p1

    .line 284
    :pswitch_8
    const-string p1, "\u56db"

    return-object p1

    .line 282
    :pswitch_9
    const-string p1, "\u4e09"

    return-object p1

    .line 280
    :pswitch_a
    const-string p1, "\u4e8c"

    return-object p1

    .line 278
    :pswitch_b
    const-string p1, "\u4e00"

    return-object p1

    .line 303
    :cond_0
    :goto_0
    invoke-virtual {p3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 328
    :pswitch_c
    const-string p1, "\u062f"

    return-object p1

    .line 326
    :pswitch_d
    const-string p1, "\u0628"

    return-object p1

    .line 324
    :pswitch_e
    const-string p1, "\u0643"

    return-object p1

    .line 322
    :pswitch_f
    const-string p1, "\u0633"

    return-object p1

    .line 320
    :pswitch_10
    const-string p1, "\u063a"

    return-object p1

    .line 318
    :pswitch_11
    const-string p1, "\u0644"

    return-object p1

    .line 316
    :pswitch_12
    const-string p1, "\u0646"

    return-object p1

    .line 314
    :pswitch_13
    const-string p1, "\u0648"

    return-object p1

    .line 312
    :pswitch_14
    const-string p1, "\u0623"

    return-object p1

    .line 310
    :pswitch_15
    const-string p1, "\u0645"

    return-object p1

    .line 308
    :pswitch_16
    const-string p1, "\u0641"

    return-object p1

    .line 306
    :pswitch_17
    const-string p1, "\u064a"

    return-object p1

    .line 331
    :cond_1
    :goto_1
    invoke-virtual {p3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p3

    const-string v0, "JP"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 332
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    const/4 p3, 0x1

    .line 334
    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public getText(Lorg/threeten/bp/temporal/TemporalField;JLorg/threeten/bp/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 84
    invoke-direct {p0, p1, p5}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->findStore(Lorg/threeten/bp/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object p1

    .line 85
    instance-of p5, p1, Lorg/threeten/bp/format/SimpleDateTimeTextProvider$LocaleStore;

    if-eqz p5, :cond_0

    .line 86
    check-cast p1, Lorg/threeten/bp/format/SimpleDateTimeTextProvider$LocaleStore;

    invoke-virtual {p1, p2, p3, p4}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider$LocaleStore;->getText(JLorg/threeten/bp/format/TextStyle;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTextIterator(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/TemporalField;",
            "Lorg/threeten/bp/format/TextStyle;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p3}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider;->findStore(Lorg/threeten/bp/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object p1

    .line 94
    instance-of p3, p1, Lorg/threeten/bp/format/SimpleDateTimeTextProvider$LocaleStore;

    if-eqz p3, :cond_0

    .line 95
    check-cast p1, Lorg/threeten/bp/format/SimpleDateTimeTextProvider$LocaleStore;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider$LocaleStore;->getTextIterator(Lorg/threeten/bp/format/TextStyle;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
