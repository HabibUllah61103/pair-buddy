.class public final Lexpo/modules/superwallexpo/json/TransactionProductKt;
.super Ljava/lang/Object;
.source "TransactionProduct.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/superwallexpo/json/TransactionProductKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001*\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "toJson",
        "",
        "",
        "",
        "Lcom/superwall/sdk/analytics/superwall/TransactionProduct;",
        "expo-superwall_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toJson(Lcom/superwall/sdk/analytics/superwall/TransactionProduct;)Ljava/util/Map;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/analytics/superwall/TransactionProduct;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 10
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 11
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 15
    const-string v3, "id"

    invoke-virtual {v1}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string v3, "productIdentifier"

    invoke-virtual {v1}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string v3, "fullIdentifier"

    invoke-virtual {v1}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v1}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct;->getPrice()Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Price;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Price;->getRaw()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "price"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {v1}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct;->getPrice()Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Price;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Price;->getLocalized()Ljava/lang/String;

    move-result-object v3

    const-string v4, "localizedPrice"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {v1}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct;->getPrice()Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Price;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Price;->getDaily()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dailyPrice"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {v1}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct;->getPrice()Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Price;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Price;->getWeekly()Ljava/lang/String;

    move-result-object v3

    const-string v4, "weeklyPrice"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {v1}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct;->getPrice()Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Price;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Price;->getMonthly()Ljava/lang/String;

    move-result-object v3

    const-string v4, "monthlyPrice"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-virtual {v1}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct;->getPrice()Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Price;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Price;->getYearly()Ljava/lang/String;

    move-result-object v3

    const-string v4, "yearlyPrice"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v3, "locale"

    invoke-virtual {v1}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct;->getLocale()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v3, "languageCode"

    invoke-virtual {v1}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct;->getLanguageCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-virtual {v1}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct;->getCurrency()Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Currency;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Currency;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "currencyCode"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-virtual {v1}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct;->getCurrency()Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Currency;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Currency;->getSymbol()Ljava/lang/String;

    move-result-object v3

    const-string v4, "currencySymbol"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v3, "attributes"

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {v1}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct;->getPeriod()Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;

    move-result-object v3

    const-string v4, "subscriptionPeriod"

    const-string v5, "periodYearsString"

    const-string v6, "periodYears"

    const-string v7, "periodMonthsString"

    const-string v8, "periodMonths"

    const-string v9, "periodWeeksString"

    const-string v10, "periodWeeks"

    const-string v11, "periodDaysString"

    const-string v12, "periodDays"

    const-string v13, "periodly"

    const-string v14, "period"

    const-string v15, "localizedSubscriptionPeriod"

    const-string v1, "0"

    move-object/from16 v17, v3

    const-string v3, ""

    const/16 v18, 0x0

    move-object/from16 v19, v2

    .line 75
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v17, :cond_8

    move-object/from16 v20, v1

    .line 38
    invoke-virtual/range {v17 .. v17}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->getAlt()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual/range {v17 .. v17}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->getUnit()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v15, "toLowerCase(...)"

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual/range {v17 .. v17}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->getLy()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual/range {v17 .. v17}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->getDays()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual/range {v17 .. v17}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->getDays()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual/range {v17 .. v17}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->getWeeks()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-virtual/range {v17 .. v17}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->getWeeks()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-virtual/range {v17 .. v17}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->getMonths()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-virtual/range {v17 .. v17}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->getMonths()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-virtual/range {v17 .. v17}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->getYears()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual/range {v17 .. v17}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->getYears()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual/range {v17 .. v17}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->getUnit()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    move-result-object v1

    sget-object v5, Lexpo/modules/superwallexpo/json/TransactionProductKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

    move-result v1

    aget v1, v5, v1

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v1, v8, :cond_3

    if-eq v1, v7, :cond_2

    if-eq v1, v6, :cond_1

    if-eq v1, v5, :cond_0

    .line 56
    const-string v1, "unknown"

    goto :goto_0

    .line 55
    :cond_0
    const-string v1, "year"

    goto :goto_0

    .line 54
    :cond_1
    const-string v1, "month"

    goto :goto_0

    .line 53
    :cond_2
    const-string v1, "week"

    goto :goto_0

    .line 52
    :cond_3
    const-string v1, "day"

    .line 59
    :goto_0
    invoke-virtual/range {v17 .. v17}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->getUnit()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    move-result-object v8

    sget-object v9, Lexpo/modules/superwallexpo/json/TransactionProductKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v8}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

    move-result v8

    aget v8, v9, v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_7

    if-eq v8, v7, :cond_6

    if-eq v8, v6, :cond_5

    if-eq v8, v5, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    .line 63
    :cond_4
    invoke-virtual/range {v17 .. v17}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->getYears()I

    move-result v5

    goto :goto_1

    .line 62
    :cond_5
    invoke-virtual/range {v17 .. v17}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->getMonths()I

    move-result v5

    goto :goto_1

    .line 61
    :cond_6
    invoke-virtual/range {v17 .. v17}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->getWeeks()I

    move-result v5

    goto :goto_1

    .line 60
    :cond_7
    invoke-virtual/range {v17 .. v17}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->getDays()I

    move-result v5

    .line 68
    :goto_1
    new-array v6, v7, [Lkotlin/Pair;

    const-string v7, "unit"

    invoke-static {v7, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v6, v18

    .line 69
    const-string v1, "value"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v16, 0x1

    aput-object v1, v6, v16

    .line 67
    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v20

    goto :goto_2

    :cond_8
    move-object/from16 v20, v1

    .line 72
    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-interface {v0, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-interface {v0, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-interface {v0, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-interface {v0, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-interface {v0, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    .line 83
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct;->getTrialPeriod()Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;

    move-result-object v4

    const-string v5, "trialPeriodEndDateString"

    const-string v6, "trialPeriodEndDate"

    if-eqz v4, :cond_a

    .line 88
    const-string v1, "hasFreeTrial"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {v4}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->getDays()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v7, "trialPeriodDays"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {v4}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->getDays()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v7, "trialPeriodDaysString"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-virtual {v4}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->getWeeks()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v7, "trialPeriodWeeks"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-virtual {v4}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->getWeeks()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v7, "trialPeriodWeeksString"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-virtual {v4}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->getMonths()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v7, "trialPeriodMonths"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {v4}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->getMonths()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v7, "trialPeriodMonthsString"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {v4}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->getYears()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v7, "trialPeriodYears"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-virtual {v4}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->getYears()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v7, "trialPeriodYearsString"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "trialPeriodText"

    invoke-virtual {v4}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {v4}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->getEndAt()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_9

    move-object/from16 v4, v19

    .line 100
    invoke-virtual {v4, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    .line 104
    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :goto_3
    const-string v1, "localizedTrialPeriodPrice"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "trialPeriodPrice"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 112
    :cond_a
    const-string v4, "hasFreeTrial"

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v4, "trialPeriodDays"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v4, "trialPeriodDaysString"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v4, "trialPeriodWeeks"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v4, "trialPeriodWeeksString"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v4, "trialPeriodMonths"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v4, "trialPeriodMonthsString"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v4, "trialPeriodYears"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v4, "trialPeriodYearsString"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "trialPeriodText"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 122
    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v1, "localizedTrialPeriodPrice"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v1, "trialPeriodPrice"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
