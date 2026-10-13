.class public final Lcom/fourplex/lovio/WidgetDataParser;
.super Ljava/lang/Object;
.source "WidgetSupport.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWidgetSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WidgetSupport.kt\ncom/fourplex/lovio/WidgetDataParser\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,502:1\n1#2:503\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0012\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J!\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0002\u0010\u000fJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\rH\u0002J\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00112\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0015H\u0002\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/fourplex/lovio/WidgetDataParser;",
        "",
        "<init>",
        "()V",
        "loadRelationshipWidgetData",
        "Lcom/fourplex/lovio/RelationshipWidgetData;",
        "context",
        "Landroid/content/Context;",
        "preferencesJson",
        "Lorg/json/JSONObject;",
        "calculateDaysTogether",
        "",
        "anniversaryDate",
        "",
        "fallbackDays",
        "(Ljava/lang/String;Ljava/lang/Integer;)I",
        "parseAnniversaryDate",
        "Ljava/time/LocalDate;",
        "value",
        "parseWith",
        "parser",
        "Lkotlin/Function0;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/fourplex/lovio/WidgetDataParser;


# direct methods
.method public static synthetic $r8$lambda$6RcN9veLULPIC0DoOsEqp1nKpek(Ljava/lang/String;)Ljava/time/LocalDate;
    .locals 0

    invoke-static {p0}, Lcom/fourplex/lovio/WidgetDataParser;->parseAnniversaryDate$lambda$4(Ljava/lang/String;)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qcMWGAK6j7g96oVd9zVzoyBgh74(Ljava/lang/String;)Ljava/time/LocalDate;
    .locals 0

    invoke-static {p0}, Lcom/fourplex/lovio/WidgetDataParser;->parseAnniversaryDate$lambda$6(Ljava/lang/String;)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$y0DOLwZocw3J59WBawtIHTUt-PU(Ljava/lang/String;)Ljava/time/LocalDate;
    .locals 0

    invoke-static {p0}, Lcom/fourplex/lovio/WidgetDataParser;->parseAnniversaryDate$lambda$5(Ljava/lang/String;)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fourplex/lovio/WidgetDataParser;

    invoke-direct {v0}, Lcom/fourplex/lovio/WidgetDataParser;-><init>()V

    sput-object v0, Lcom/fourplex/lovio/WidgetDataParser;->INSTANCE:Lcom/fourplex/lovio/WidgetDataParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final calculateDaysTogether(Ljava/lang/String;Ljava/lang/Integer;)I
    .locals 2

    if-eqz p1, :cond_0

    .line 381
    invoke-direct {p0, p1}, Lcom/fourplex/lovio/WidgetDataParser;->parseAnniversaryDate(Ljava/lang/String;)Ljava/time/LocalDate;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 383
    sget-object p2, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    check-cast p1, Ljava/time/temporal/Temporal;

    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v1

    check-cast v1, Ljava/time/temporal/Temporal;

    invoke-virtual {p2, p1, v1}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide p1

    long-to-int p1, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :cond_1
    if-eqz p2, :cond_2

    .line 385
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method private final parseAnniversaryDate(Ljava/lang/String;)Ljava/time/LocalDate;
    .locals 1

    .line 389
    new-instance v0, Lcom/fourplex/lovio/WidgetDataParser$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/fourplex/lovio/WidgetDataParser$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/fourplex/lovio/WidgetDataParser;->parseWith(Lkotlin/jvm/functions/Function0;)Ljava/time/LocalDate;

    move-result-object v0

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Lcom/fourplex/lovio/WidgetDataParser$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/fourplex/lovio/WidgetDataParser$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/fourplex/lovio/WidgetDataParser;->parseWith(Lkotlin/jvm/functions/Function0;)Ljava/time/LocalDate;

    move-result-object v0

    if-nez v0, :cond_0

    .line 391
    new-instance v0, Lcom/fourplex/lovio/WidgetDataParser$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/fourplex/lovio/WidgetDataParser$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/fourplex/lovio/WidgetDataParser;->parseWith(Lkotlin/jvm/functions/Function0;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method private static final parseAnniversaryDate$lambda$4(Ljava/lang/String;)Ljava/time/LocalDate;
    .locals 1

    .line 389
    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object p0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p0

    const-string v0, "toLocalDate(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final parseAnniversaryDate$lambda$5(Ljava/lang/String;)Ljava/time/LocalDate;
    .locals 1

    .line 390
    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Ljava/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;

    move-result-object p0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/OffsetDateTime;->atZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p0

    const-string v0, "toLocalDate(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final parseAnniversaryDate$lambda$6(Ljava/lang/String;)Ljava/time/LocalDate;
    .locals 1

    .line 391
    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/ZonedDateTime;->withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p0

    const-string v0, "toLocalDate(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final parseWith(Lkotlin/jvm/functions/Function0;)Ljava/time/LocalDate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/time/LocalDate;",
            ">;)",
            "Ljava/time/LocalDate;"
        }
    .end annotation

    .line 396
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/time/LocalDate;
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final preferencesJson(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 2

    .line 372
    sget-object v0, Lcom/fourplex/lovio/WidgetState;->INSTANCE:Lcom/fourplex/lovio/WidgetState;

    invoke-virtual {v0, p1}, Lcom/fourplex/lovio/WidgetState;->preferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "widget_data"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v1

    .line 374
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method


# virtual methods
.method public final loadRelationshipWidgetData(Landroid/content/Context;)Lcom/fourplex/lovio/RelationshipWidgetData;
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    invoke-direct {p0, p1}, Lcom/fourplex/lovio/WidgetDataParser;->preferencesJson(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 358
    const-string v2, "daysTogether"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 359
    const-string v2, "anniversaryDate"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 362
    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/fourplex/lovio/WidgetDataParser;->calculateDaysTogether(Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v3

    if-eqz v0, :cond_3

    .line 363
    const-string v4, "partnerName"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    move-object v4, v1

    :goto_2
    if-nez v4, :cond_4

    .line 364
    :cond_3
    sget-object v4, Lcom/fourplex/lovio/WidgetLocalization;->INSTANCE:Lcom/fourplex/lovio/WidgetLocalization;

    sget-object v5, Lcom/fourplex/lovio/WidgetStringKey;->Partner:Lcom/fourplex/lovio/WidgetStringKey;

    invoke-virtual {v4, p1, v5}, Lcom/fourplex/lovio/WidgetLocalization;->text(Landroid/content/Context;Lcom/fourplex/lovio/WidgetStringKey;)Ljava/lang/String;

    move-result-object v4

    :cond_4
    if-eqz v0, :cond_6

    .line 365
    const-string v5, "userName"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    move-object v1, v0

    :cond_5
    if-nez v1, :cond_7

    .line 366
    :cond_6
    sget-object v0, Lcom/fourplex/lovio/WidgetLocalization;->INSTANCE:Lcom/fourplex/lovio/WidgetLocalization;

    sget-object v1, Lcom/fourplex/lovio/WidgetStringKey;->You:Lcom/fourplex/lovio/WidgetStringKey;

    invoke-virtual {v0, p1, v1}, Lcom/fourplex/lovio/WidgetLocalization;->text(Landroid/content/Context;Lcom/fourplex/lovio/WidgetStringKey;)Ljava/lang/String;

    move-result-object v1

    :cond_7
    if-eqz v2, :cond_8

    const/4 p1, 0x1

    goto :goto_3

    :cond_8
    const/4 p1, 0x0

    .line 361
    :goto_3
    new-instance v0, Lcom/fourplex/lovio/RelationshipWidgetData;

    invoke-direct {v0, v3, v4, v1, p1}, Lcom/fourplex/lovio/RelationshipWidgetData;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method
