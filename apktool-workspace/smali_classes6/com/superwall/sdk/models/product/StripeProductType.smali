.class public final Lcom/superwall/sdk/models/product/StripeProductType;
.super Ljava/lang/Object;
.source "StripeProductType.kt"

# interfaces
.implements Lcom/superwall/sdk/store/abstractions/product/StoreProductType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/product/StripeProductType$$serializer;,
        Lcom/superwall/sdk/models/product/StripeProductType$Companion;,
        Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;,
        Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;,
        Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;,
        Lcom/superwall/sdk/models/product/StripeProductType$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStripeProductType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StripeProductType.kt\ncom/superwall/sdk/models/product/StripeProductType\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,348:1\n1#2:349\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008@\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u001d\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0087\u0008\u0018\u0000 \u00a1\u00012\u00020\u0001:\n\u009d\u0001\u009e\u0001\u009f\u0001\u00a0\u0001\u00a1\u0001BY\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0010\u00a2\u0006\u0004\u0008\u0011\u0010\u0012B{\u0008\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0017J\u0013\u0010\u0080\u0001\u001a\u00020\u00032\u0008\u0010\u0081\u0001\u001a\u00030\u0082\u0001H\u0016J\u0012\u0010\u0083\u0001\u001a\u00020\u00032\u0007\u0010\u0084\u0001\u001a\u00020\u0014H\u0002J\u0011\u0010\u0085\u0001\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\n\u0010\u0086\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u0087\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u0088\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u0089\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u008a\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u008b\u0001\u001a\u00020\nH\u00c6\u0003J\u000c\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u000c\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003J\u0010\u0010\u008e\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0010H\u00c6\u0003Jn\u0010\u008f\u0001\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\u000e\u0008\u0002\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0010H\u00c6\u0001J\u0016\u0010\u0090\u0001\u001a\u00020W2\n\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u0092\u0001H\u00d6\u0003J\n\u0010\u0093\u0001\u001a\u00020\u0014H\u00d6\u0001J\n\u0010\u0094\u0001\u001a\u00020\u0003H\u00d6\u0001J-\u0010\u0095\u0001\u001a\u00030\u0096\u00012\u0007\u0010\u0097\u0001\u001a\u00020\u00002\u0008\u0010\u0098\u0001\u001a\u00030\u0099\u00012\u0008\u0010\u009a\u0001\u001a\u00030\u009b\u0001H\u0001\u00a2\u0006\u0003\u0008\u009c\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u001c\u0010\u0004\u001a\u00020\u00058\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001c\u0010\u0019\u001a\u0004\u0008\u001d\u0010\u001eR\u001c\u0010\u0006\u001a\u00020\u00038\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001f\u0010\u0019\u001a\u0004\u0008 \u0010\u001bR\u001c\u0010\u0007\u001a\u00020\u00038\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008!\u0010\u0019\u001a\u0004\u0008\"\u0010\u001bR\u001c\u0010\u0008\u001a\u00020\u00038\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008#\u0010\u0019\u001a\u0004\u0008$\u0010\u001bR\u001c\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008%\u0010\u0019\u001a\u0004\u0008&\u0010\'R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008(\u0010\u0019\u001a\u0004\u0008)\u0010*R\u001e\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008+\u0010\u0019\u001a\u0004\u0008,\u0010-R\"\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00108\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008.\u0010\u0019\u001a\u0004\u0008/\u00100R\u0014\u00101\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00082\u0010\u001bR\u0014\u00103\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00084\u0010\u001bR\u0014\u00105\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00086\u0010\u001bR\u0014\u00107\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00088\u0010\u001bR\u0014\u00109\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008:\u0010\u001bR\u0014\u0010;\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008<\u0010\u001bR\u0014\u0010=\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008>\u0010?R\u0014\u0010@\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008A\u0010\u001bR\u0014\u0010B\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008C\u0010?R\u0014\u0010D\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008E\u0010\u001bR\u0014\u0010F\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008G\u0010?R\u0014\u0010H\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008I\u0010\u001bR\u0014\u0010J\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008K\u0010?R\u0014\u0010L\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008M\u0010\u001bR\u0014\u0010N\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008O\u0010\u001bR\u0014\u0010P\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008Q\u0010\u001bR\u0014\u0010R\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008S\u0010\u001bR\u0014\u0010T\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008U\u0010\u001bR\u0014\u0010V\u001a\u00020W8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008X\u0010YR\u0014\u0010Z\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008[\u0010\u001bR\u0014\u0010\\\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008]\u0010\u001eR\u0016\u0010^\u001a\u0004\u0018\u00010_8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008`\u0010aR\u0014\u0010b\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008c\u0010\u001bR\u0014\u0010d\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008e\u0010?R\u0014\u0010f\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008g\u0010\u001bR\u0014\u0010h\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008i\u0010?R\u0014\u0010j\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008k\u0010\u001bR\u0014\u0010l\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008m\u0010?R\u0014\u0010n\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008o\u0010\u001bR\u0014\u0010p\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008q\u0010?R\u0014\u0010r\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008s\u0010\u001bR\u0014\u0010t\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008u\u0010\u001bR\u0014\u0010v\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008w\u0010\u001bR\u0016\u0010x\u001a\u0004\u0018\u00010\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008y\u0010\u001bR\u0016\u0010z\u001a\u0004\u0018\u00010\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008{\u0010\u001bR\u0016\u0010|\u001a\u0004\u0018\u00010}8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008~\u0010\u007f\u00a8\u0006\u00a2\u0001"
    }
    d2 = {
        "Lcom/superwall/sdk/models/product/StripeProductType;",
        "Lcom/superwall/sdk/store/abstractions/product/StoreProductType;",
        "id",
        "",
        "price",
        "Ljava/math/BigDecimal;",
        "localizedPrice",
        "currencyCode",
        "currencySymbol",
        "priceLocale",
        "Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;",
        "stripeSubscriptionPeriod",
        "Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;",
        "subscriptionIntroOffer",
        "Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;",
        "entitlements",
        "",
        "<init>",
        "(Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;Ljava/util/List;)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getId$annotations",
        "()V",
        "getId",
        "()Ljava/lang/String;",
        "getPrice$annotations",
        "getPrice",
        "()Ljava/math/BigDecimal;",
        "getLocalizedPrice$annotations",
        "getLocalizedPrice",
        "getCurrencyCode$annotations",
        "getCurrencyCode",
        "getCurrencySymbol$annotations",
        "getCurrencySymbol",
        "getPriceLocale$annotations",
        "getPriceLocale",
        "()Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;",
        "getStripeSubscriptionPeriod$annotations",
        "getStripeSubscriptionPeriod",
        "()Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;",
        "getSubscriptionIntroOffer$annotations",
        "getSubscriptionIntroOffer",
        "()Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;",
        "getEntitlements$annotations",
        "getEntitlements",
        "()Ljava/util/List;",
        "productType",
        "getProductType",
        "fullIdentifier",
        "getFullIdentifier",
        "productIdentifier",
        "getProductIdentifier",
        "localizedSubscriptionPeriod",
        "getLocalizedSubscriptionPeriod",
        "period",
        "getPeriod",
        "periodly",
        "getPeriodly",
        "periodWeeks",
        "getPeriodWeeks",
        "()I",
        "periodWeeksString",
        "getPeriodWeeksString",
        "periodMonths",
        "getPeriodMonths",
        "periodMonthsString",
        "getPeriodMonthsString",
        "periodYears",
        "getPeriodYears",
        "periodYearsString",
        "getPeriodYearsString",
        "periodDays",
        "getPeriodDays",
        "periodDaysString",
        "getPeriodDaysString",
        "dailyPrice",
        "getDailyPrice",
        "weeklyPrice",
        "getWeeklyPrice",
        "monthlyPrice",
        "getMonthlyPrice",
        "yearlyPrice",
        "getYearlyPrice",
        "hasFreeTrial",
        "",
        "getHasFreeTrial",
        "()Z",
        "localizedTrialPeriodPrice",
        "getLocalizedTrialPeriodPrice",
        "trialPeriodPrice",
        "getTrialPeriodPrice",
        "trialPeriodEndDate",
        "Ljava/util/Date;",
        "getTrialPeriodEndDate",
        "()Ljava/util/Date;",
        "trialPeriodEndDateString",
        "getTrialPeriodEndDateString",
        "trialPeriodDays",
        "getTrialPeriodDays",
        "trialPeriodDaysString",
        "getTrialPeriodDaysString",
        "trialPeriodWeeks",
        "getTrialPeriodWeeks",
        "trialPeriodWeeksString",
        "getTrialPeriodWeeksString",
        "trialPeriodMonths",
        "getTrialPeriodMonths",
        "trialPeriodMonthsString",
        "getTrialPeriodMonthsString",
        "trialPeriodYears",
        "getTrialPeriodYears",
        "trialPeriodYearsString",
        "getTrialPeriodYearsString",
        "trialPeriodText",
        "getTrialPeriodText",
        "locale",
        "getLocale",
        "languageCode",
        "getLanguageCode",
        "regionCode",
        "getRegionCode",
        "subscriptionPeriod",
        "Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;",
        "getSubscriptionPeriod",
        "()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;",
        "trialPeriodPricePerUnit",
        "unit",
        "Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;",
        "calculateAnnualizedPrice",
        "targetUnitsPerYear",
        "formatPrice",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "write$Self$superwall_release",
        "PriceLocale",
        "StripeSubscriptionPeriod",
        "SubscriptionIntroductoryOffer",
        "$serializer",
        "Companion",
        "superwall_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final $childSerializers:[Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/superwall/sdk/models/product/StripeProductType$Companion;


# instance fields
.field private final currencyCode:Ljava/lang/String;

.field private final currencySymbol:Ljava/lang/String;

.field private final entitlements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final id:Ljava/lang/String;

.field private final localizedPrice:Ljava/lang/String;

.field private final price:Ljava/math/BigDecimal;

.field private final priceLocale:Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;

.field private final stripeSubscriptionPeriod:Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

.field private final subscriptionIntroOffer:Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/superwall/sdk/models/product/StripeProductType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/product/StripeProductType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/product/StripeProductType;->Companion:Lcom/superwall/sdk/models/product/StripeProductType$Companion;

    const/16 v0, 0x9

    .line 15
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/superwall/sdk/models/product/StripeProductType;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit16 p11, p1, 0x1ff

    const/16 v0, 0x1ff

    if-eq v0, p11, :cond_0

    .line 15
    sget-object p11, Lcom/superwall/sdk/models/product/StripeProductType$$serializer;->INSTANCE:Lcom/superwall/sdk/models/product/StripeProductType$$serializer;

    invoke-virtual {p11}, Lcom/superwall/sdk/models/product/StripeProductType$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p11

    invoke-static {p1, v0, p11}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/superwall/sdk/models/product/StripeProductType;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/superwall/sdk/models/product/StripeProductType;->price:Ljava/math/BigDecimal;

    iput-object p4, p0, Lcom/superwall/sdk/models/product/StripeProductType;->localizedPrice:Ljava/lang/String;

    iput-object p5, p0, Lcom/superwall/sdk/models/product/StripeProductType;->currencyCode:Ljava/lang/String;

    iput-object p6, p0, Lcom/superwall/sdk/models/product/StripeProductType;->currencySymbol:Ljava/lang/String;

    iput-object p7, p0, Lcom/superwall/sdk/models/product/StripeProductType;->priceLocale:Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;

    iput-object p8, p0, Lcom/superwall/sdk/models/product/StripeProductType;->stripeSubscriptionPeriod:Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    iput-object p9, p0, Lcom/superwall/sdk/models/product/StripeProductType;->subscriptionIntroOffer:Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;

    iput-object p10, p0, Lcom/superwall/sdk/models/product/StripeProductType;->entitlements:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/math/BigDecimal;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;",
            "Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;",
            "Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "price"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localizedPrice"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currencyCode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currencySymbol"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "priceLocale"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entitlements"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/superwall/sdk/models/product/StripeProductType;->id:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/superwall/sdk/models/product/StripeProductType;->price:Ljava/math/BigDecimal;

    .line 22
    iput-object p3, p0, Lcom/superwall/sdk/models/product/StripeProductType;->localizedPrice:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/superwall/sdk/models/product/StripeProductType;->currencyCode:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lcom/superwall/sdk/models/product/StripeProductType;->currencySymbol:Ljava/lang/String;

    .line 28
    iput-object p6, p0, Lcom/superwall/sdk/models/product/StripeProductType;->priceLocale:Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;

    .line 30
    iput-object p7, p0, Lcom/superwall/sdk/models/product/StripeProductType;->stripeSubscriptionPeriod:Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    .line 32
    iput-object p8, p0, Lcom/superwall/sdk/models/product/StripeProductType;->subscriptionIntroOffer:Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;

    .line 34
    iput-object p9, p0, Lcom/superwall/sdk/models/product/StripeProductType;->entitlements:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 15
    sget-object v0, Lcom/superwall/sdk/models/product/StripeProductType;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method private final calculateAnnualizedPrice(I)Ljava/lang/String;
    .locals 5

    .line 320
    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->stripeSubscriptionPeriod:Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/superwall/sdk/models/product/StripeProductType;->getPrice()Ljava/math/BigDecimal;

    move-result-object v1

    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    const-string v0, "ZERO"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/superwall/sdk/models/product/StripeProductType;->formatPrice(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 324
    :cond_1
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getUnit()Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$Unit;

    move-result-object v1

    sget-object v2, Lcom/superwall/sdk/models/product/StripeProductType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$Unit;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v2, :cond_5

    if-eq v1, v3, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 328
    sget-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    goto :goto_0

    .line 324
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 327
    :cond_3
    new-instance v1, Ljava/math/BigDecimal;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    goto :goto_0

    .line 326
    :cond_4
    new-instance v1, Ljava/math/BigDecimal;

    const/16 v2, 0x34

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    goto :goto_0

    .line 325
    :cond_5
    new-instance v1, Ljava/math/BigDecimal;

    const/16 v2, 0x16d

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    .line 332
    :goto_0
    invoke-virtual {p0}, Lcom/superwall/sdk/models/product/StripeProductType;->getPrice()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    new-instance v2, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(I)V

    const/4 v0, 0x6

    sget-object v4, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v1, v2, v0, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 333
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p1}, Ljava/math/BigDecimal;-><init>(I)V

    sget-object p1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v3, p1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 334
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/superwall/sdk/models/product/StripeProductType;->formatPrice(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/models/product/StripeProductType;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;Ljava/util/List;ILjava/lang/Object;)Lcom/superwall/sdk/models/product/StripeProductType;
    .locals 0

    and-int/lit8 p11, p10, 0x1

    if-eqz p11, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/models/product/StripeProductType;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/models/product/StripeProductType;->price:Ljava/math/BigDecimal;

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    iget-object p3, p0, Lcom/superwall/sdk/models/product/StripeProductType;->localizedPrice:Ljava/lang/String;

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    iget-object p4, p0, Lcom/superwall/sdk/models/product/StripeProductType;->currencyCode:Ljava/lang/String;

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    iget-object p5, p0, Lcom/superwall/sdk/models/product/StripeProductType;->currencySymbol:Ljava/lang/String;

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    iget-object p6, p0, Lcom/superwall/sdk/models/product/StripeProductType;->priceLocale:Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    iget-object p7, p0, Lcom/superwall/sdk/models/product/StripeProductType;->stripeSubscriptionPeriod:Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    iget-object p8, p0, Lcom/superwall/sdk/models/product/StripeProductType;->subscriptionIntroOffer:Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    iget-object p9, p0, Lcom/superwall/sdk/models/product/StripeProductType;->entitlements:Ljava/util/List;

    :cond_8
    move-object p10, p8

    move-object p11, p9

    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p11}, Lcom/superwall/sdk/models/product/StripeProductType;->copy(Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;Ljava/util/List;)Lcom/superwall/sdk/models/product/StripeProductType;

    move-result-object p0

    return-object p0
.end method

.method private final formatPrice(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 3

    .line 338
    invoke-virtual {p0}, Lcom/superwall/sdk/models/product/StripeProductType;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 339
    invoke-static {v0}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 341
    :try_start_0
    invoke-virtual {p0}, Lcom/superwall/sdk/models/product/StripeProductType;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setCurrency(Ljava/util/Currency;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :catch_0
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static synthetic getCurrencyCode$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "currency_code"
    .end annotation

    return-void
.end method

.method public static synthetic getCurrencySymbol$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "currency_symbol"
    .end annotation

    return-void
.end method

.method public static synthetic getEntitlements$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "entitlements"
    .end annotation

    return-void
.end method

.method public static synthetic getId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "product_id"
    .end annotation

    return-void
.end method

.method public static synthetic getLocalizedPrice$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "price"
    .end annotation

    return-void
.end method

.method public static synthetic getPrice$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "raw_price"
    .end annotation

    .annotation runtime Lkotlinx/serialization/Serializable;
        with = Lcom/superwall/sdk/models/serialization/BigDecimalSerializer;
    .end annotation

    return-void
.end method

.method public static synthetic getPriceLocale$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "price_locale"
    .end annotation

    return-void
.end method

.method public static synthetic getStripeSubscriptionPeriod$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "subscription_period"
    .end annotation

    return-void
.end method

.method public static synthetic getSubscriptionIntroOffer$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "subscription_introductory_offer"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/models/product/StripeProductType;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 15
    sget-object v0, Lcom/superwall/sdk/models/product/StripeProductType;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/superwall/sdk/models/product/StripeProductType;->id:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    sget-object v1, Lcom/superwall/sdk/models/serialization/BigDecimalSerializer;->INSTANCE:Lcom/superwall/sdk/models/serialization/BigDecimalSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {p0}, Lcom/superwall/sdk/models/product/StripeProductType;->getPrice()Ljava/math/BigDecimal;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/superwall/sdk/models/product/StripeProductType;->getLocalizedPrice()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/superwall/sdk/models/product/StripeProductType;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/superwall/sdk/models/product/StripeProductType;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    sget-object v1, Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale$$serializer;->INSTANCE:Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/models/product/StripeProductType;->priceLocale:Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;

    const/4 v3, 0x5

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$$serializer;->INSTANCE:Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/models/product/StripeProductType;->stripeSubscriptionPeriod:Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    const/4 v3, 0x6

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$$serializer;->INSTANCE:Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/models/product/StripeProductType;->subscriptionIntroOffer:Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;

    const/4 v3, 0x7

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0x8

    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->entitlements:Ljava/util/List;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->price:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->localizedPrice:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->currencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->priceLocale:Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;

    return-object v0
.end method

.method public final component7()Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->stripeSubscriptionPeriod:Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    return-object v0
.end method

.method public final component8()Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->subscriptionIntroOffer:Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;

    return-object v0
.end method

.method public final component9()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->entitlements:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;Ljava/util/List;)Lcom/superwall/sdk/models/product/StripeProductType;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/math/BigDecimal;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;",
            "Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;",
            "Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/superwall/sdk/models/product/StripeProductType;"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "price"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localizedPrice"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currencyCode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currencySymbol"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "priceLocale"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entitlements"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/superwall/sdk/models/product/StripeProductType;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcom/superwall/sdk/models/product/StripeProductType;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;Ljava/util/List;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/models/product/StripeProductType;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/models/product/StripeProductType;

    iget-object v1, p0, Lcom/superwall/sdk/models/product/StripeProductType;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/product/StripeProductType;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/models/product/StripeProductType;->price:Ljava/math/BigDecimal;

    iget-object v3, p1, Lcom/superwall/sdk/models/product/StripeProductType;->price:Ljava/math/BigDecimal;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/superwall/sdk/models/product/StripeProductType;->localizedPrice:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/product/StripeProductType;->localizedPrice:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/superwall/sdk/models/product/StripeProductType;->currencyCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/product/StripeProductType;->currencyCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/superwall/sdk/models/product/StripeProductType;->currencySymbol:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/product/StripeProductType;->currencySymbol:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/superwall/sdk/models/product/StripeProductType;->priceLocale:Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;

    iget-object v3, p1, Lcom/superwall/sdk/models/product/StripeProductType;->priceLocale:Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/superwall/sdk/models/product/StripeProductType;->stripeSubscriptionPeriod:Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    iget-object v3, p1, Lcom/superwall/sdk/models/product/StripeProductType;->stripeSubscriptionPeriod:Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/superwall/sdk/models/product/StripeProductType;->subscriptionIntroOffer:Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;

    iget-object v3, p1, Lcom/superwall/sdk/models/product/StripeProductType;->subscriptionIntroOffer:Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/superwall/sdk/models/product/StripeProductType;->entitlements:Ljava/util/List;

    iget-object p1, p1, Lcom/superwall/sdk/models/product/StripeProductType;->entitlements:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 15
    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/StoreProductType$DefaultImpls;->getAttributes(Lcom/superwall/sdk/store/abstractions/product/StoreProductType;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencySymbol()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->currencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getDailyPrice()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x16d

    .line 191
    invoke-direct {p0, v0}, Lcom/superwall/sdk/models/product/StripeProductType;->calculateAnnualizedPrice(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getEntitlements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->entitlements:Ljava/util/List;

    return-object v0
.end method

.method public getFullIdentifier()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getHasFreeTrial()Z
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->subscriptionIntroOffer:Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->getPaymentMethod()Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;->freeTrial:Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->priceLocale:Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->priceLocale:Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalizedPrice()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->localizedPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedSubscriptionPeriod()Ljava/lang/String;
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->stripeSubscriptionPeriod:Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    if-eqz v0, :cond_9

    .line 112
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getUnit()Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$Unit;

    move-result-object v1

    sget-object v2, Lcom/superwall/sdk/models/product/StripeProductType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$Unit;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 116
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v1

    if-ne v1, v2, :cond_0

    const-string v0, "Yearly"

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " years"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 112
    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 115
    :cond_2
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v1

    if-ne v1, v2, :cond_3

    const-string v0, "Monthly"

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " months"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_4
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v1

    if-ne v1, v2, :cond_5

    const-string v0, "Weekly"

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " weeks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_6
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v1

    if-ne v1, v2, :cond_7

    const-string v0, "Daily"

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " days"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    return-object v0

    .line 118
    :cond_9
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method public getLocalizedTrialPeriodPrice()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->subscriptionIntroOffer:Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->getLocalizedPrice()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public getMonthlyPrice()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xc

    .line 197
    invoke-direct {p0, v0}, Lcom/superwall/sdk/models/product/StripeProductType;->calculateAnnualizedPrice(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeriod()Ljava/lang/String;
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->stripeSubscriptionPeriod:Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v1

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getUnit()Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$Unit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$Unit;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "toUpperCase(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "P"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public getPeriodDays()I
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->stripeSubscriptionPeriod:Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    if-eqz v0, :cond_4

    .line 179
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getUnit()Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$Unit;

    move-result-object v1

    sget-object v2, Lcom/superwall/sdk/models/product/StripeProductType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$Unit;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 183
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x16d

    return v0

    .line 179
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 182
    :cond_1
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1e

    return v0

    .line 181
    :cond_2
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    return v0

    .line 180
    :cond_3
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v0

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public getPeriodDaysString()Ljava/lang/String;
    .locals 1

    .line 188
    invoke-virtual {p0}, Lcom/superwall/sdk/models/product/StripeProductType;->getPeriodDays()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeriodMonths()I
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->stripeSubscriptionPeriod:Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    if-eqz v0, :cond_4

    .line 151
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getUnit()Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$Unit;

    move-result-object v1

    sget-object v2, Lcom/superwall/sdk/models/product/StripeProductType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$Unit;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    .line 155
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    return v0

    .line 151
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 154
    :cond_1
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v0

    return v0

    .line 153
    :cond_2
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v0

    div-int/2addr v0, v3

    return v0

    .line 152
    :cond_3
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x1e

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public getPeriodMonthsString()Ljava/lang/String;
    .locals 1

    .line 160
    invoke-virtual {p0}, Lcom/superwall/sdk/models/product/StripeProductType;->getPeriodMonths()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeriodWeeks()I
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->stripeSubscriptionPeriod:Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    if-eqz v0, :cond_4

    .line 137
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getUnit()Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$Unit;

    move-result-object v1

    sget-object v2, Lcom/superwall/sdk/models/product/StripeProductType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$Unit;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x34

    return v0

    .line 137
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 140
    :cond_1
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v0

    mul-int/2addr v0, v3

    return v0

    .line 139
    :cond_2
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v0

    return v0

    .line 138
    :cond_3
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x7

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public getPeriodWeeksString()Ljava/lang/String;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lcom/superwall/sdk/models/product/StripeProductType;->getPeriodWeeks()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeriodYears()I
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->stripeSubscriptionPeriod:Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    if-eqz v0, :cond_4

    .line 165
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getUnit()Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$Unit;

    move-result-object v1

    sget-object v2, Lcom/superwall/sdk/models/product/StripeProductType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$Unit;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v0

    return v0

    .line 165
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 168
    :cond_1
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v0

    div-int/lit8 v0, v0, 0xc

    return v0

    .line 167
    :cond_2
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x34

    return v0

    .line 166
    :cond_3
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v0

    div-int/lit16 v0, v0, 0x16d

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public getPeriodYearsString()Ljava/lang/String;
    .locals 1

    .line 174
    invoke-virtual {p0}, Lcom/superwall/sdk/models/product/StripeProductType;->getPeriodYears()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeriodly()Ljava/lang/String;
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->stripeSubscriptionPeriod:Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    if-eqz v0, :cond_4

    .line 126
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getUnit()Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$Unit;

    move-result-object v0

    sget-object v1, Lcom/superwall/sdk/models/product/StripeProductType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$Unit;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 130
    const-string v0, "yearly"

    return-object v0

    .line 126
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 129
    :cond_1
    const-string v0, "monthly"

    return-object v0

    .line 128
    :cond_2
    const-string v0, "weekly"

    return-object v0

    .line 127
    :cond_3
    const-string v0, "daily"

    return-object v0

    .line 132
    :cond_4
    const-string v0, ""

    return-object v0
.end method

.method public getPrice()Ljava/math/BigDecimal;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->price:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getPriceLocale()Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->priceLocale:Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;

    return-object v0
.end method

.method public getProductIdentifier()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getProductType()Ljava/lang/String;
    .locals 1

    .line 101
    const-string v0, "stripe"

    return-object v0
.end method

.method public getRegionCode()Ljava/lang/String;
    .locals 7

    .line 280
    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->priceLocale:Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_"

    aput-object v4, v2, v3

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getStripeSubscriptionPeriod()Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->stripeSubscriptionPeriod:Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    return-object v0
.end method

.method public final getSubscriptionIntroOffer()Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->subscriptionIntroOffer:Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;

    return-object v0
.end method

.method public getSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->stripeSubscriptionPeriod:Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    if-eqz v0, :cond_4

    .line 286
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getUnit()Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$Unit;

    move-result-object v1

    sget-object v2, Lcom/superwall/sdk/models/product/StripeProductType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$Unit;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 290
    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->year:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    goto :goto_0

    .line 286
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 289
    :cond_1
    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->month:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    goto :goto_0

    .line 288
    :cond_2
    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->week:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    goto :goto_0

    .line 287
    :cond_3
    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->day:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    .line 292
    :goto_0
    new-instance v2, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v0

    invoke-direct {v2, v0, v1}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;-><init>(ILcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;)V

    return-object v2

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrialPeriodDays()I
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->subscriptionIntroOffer:Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;

    if-eqz v0, :cond_4

    .line 232
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->getPeriod()Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getUnit()Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$Unit;

    move-result-object v1

    sget-object v2, Lcom/superwall/sdk/models/product/StripeProductType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$Unit;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 236
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->getPeriod()Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v1

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->getPeriodCount()I

    move-result v0

    mul-int/2addr v1, v0

    mul-int/lit16 v1, v1, 0x16d

    return v1

    .line 232
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 235
    :cond_1
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->getPeriod()Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v1

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->getPeriodCount()I

    move-result v0

    mul-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1e

    return v1

    .line 234
    :cond_2
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->getPeriod()Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v1

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->getPeriodCount()I

    move-result v0

    mul-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x7

    return v1

    .line 233
    :cond_3
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->getPeriod()Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v1

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->getPeriodCount()I

    move-result v0

    mul-int/2addr v1, v0

    return v1

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public getTrialPeriodDaysString()Ljava/lang/String;
    .locals 1

    .line 241
    invoke-virtual {p0}, Lcom/superwall/sdk/models/product/StripeProductType;->getTrialPeriodDays()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrialPeriodEndDate()Ljava/util/Date;
    .locals 6

    .line 213
    invoke-virtual {p0}, Lcom/superwall/sdk/models/product/StripeProductType;->getHasFreeTrial()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 214
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/superwall/sdk/models/product/StripeProductType;->subscriptionIntroOffer:Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;

    if-eqz v1, :cond_5

    .line 216
    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->getPeriod()Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getUnit()Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$Unit;

    move-result-object v2

    sget-object v3, Lcom/superwall/sdk/models/product/StripeProductType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$Unit;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_1

    .line 220
    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->getPeriod()Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v2

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->getPeriodCount()I

    move-result v1

    mul-int/2addr v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 216
    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 219
    :cond_2
    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->getPeriod()Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v2

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->getPeriodCount()I

    move-result v1

    mul-int/2addr v2, v1

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 218
    :cond_3
    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->getPeriod()Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v2

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->getPeriodCount()I

    move-result v1

    mul-int/2addr v2, v1

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 217
    :cond_4
    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->getPeriod()Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getValue()I

    move-result v2

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->getPeriodCount()I

    move-result v1

    mul-int/2addr v2, v1

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 223
    :cond_5
    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTrialPeriodEndDateString()Ljava/lang/String;
    .locals 2

    .line 227
    invoke-virtual {p0}, Lcom/superwall/sdk/models/product/StripeProductType;->getTrialPeriodEndDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/superwall/sdk/utilities/DateUtils;->INSTANCE:Lcom/superwall/sdk/utilities/DateUtils;

    invoke-virtual {v1}, Lcom/superwall/sdk/utilities/DateUtils;->getMMM_dd_yyyy()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/superwall/sdk/utilities/DateUtilsKt;->localizedDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public getTrialPeriodMonths()I
    .locals 1

    .line 250
    invoke-virtual {p0}, Lcom/superwall/sdk/models/product/StripeProductType;->getTrialPeriodDays()I

    move-result v0

    div-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTrialPeriodMonthsString()Ljava/lang/String;
    .locals 1

    .line 253
    invoke-virtual {p0}, Lcom/superwall/sdk/models/product/StripeProductType;->getTrialPeriodMonths()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrialPeriodPrice()Ljava/math/BigDecimal;
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->subscriptionIntroOffer:Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->getPrice()Ljava/math/BigDecimal;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    const-string v1, "ZERO"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTrialPeriodText()Ljava/lang/String;
    .locals 4

    .line 263
    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->subscriptionIntroOffer:Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;

    if-eqz v0, :cond_9

    .line 264
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->getPeriodCount()I

    move-result v1

    .line 265
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->getPeriod()Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->getUnit()Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$Unit;

    move-result-object v0

    sget-object v2, Lcom/superwall/sdk/models/product/StripeProductType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$Unit;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    if-ne v1, v2, :cond_0

    .line 269
    const-string v0, "1 year free trial"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " years free trial"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 265
    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_2
    if-ne v1, v2, :cond_3

    .line 268
    const-string v0, "1 month free trial"

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " months free trial"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    if-ne v1, v2, :cond_5

    .line 267
    const-string v0, "1 week free trial"

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " weeks free trial"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    if-ne v1, v2, :cond_7

    .line 266
    const-string v0, "1 day free trial"

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " days free trial"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    return-object v0

    .line 271
    :cond_9
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method public getTrialPeriodWeeks()I
    .locals 1

    .line 244
    invoke-virtual {p0}, Lcom/superwall/sdk/models/product/StripeProductType;->getTrialPeriodDays()I

    move-result v0

    div-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public getTrialPeriodWeeksString()Ljava/lang/String;
    .locals 1

    .line 247
    invoke-virtual {p0}, Lcom/superwall/sdk/models/product/StripeProductType;->getTrialPeriodWeeks()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrialPeriodYears()I
    .locals 1

    .line 256
    invoke-virtual {p0}, Lcom/superwall/sdk/models/product/StripeProductType;->getTrialPeriodDays()I

    move-result v0

    div-int/lit16 v0, v0, 0x16d

    return v0
.end method

.method public getTrialPeriodYearsString()Ljava/lang/String;
    .locals 1

    .line 259
    invoke-virtual {p0}, Lcom/superwall/sdk/models/product/StripeProductType;->getTrialPeriodYears()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWeeklyPrice()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x34

    .line 194
    invoke-direct {p0, v0}, Lcom/superwall/sdk/models/product/StripeProductType;->calculateAnnualizedPrice(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYearlyPrice()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 200
    invoke-direct {p0, v0}, Lcom/superwall/sdk/models/product/StripeProductType;->calculateAnnualizedPrice(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/product/StripeProductType;->price:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/product/StripeProductType;->localizedPrice:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/product/StripeProductType;->currencyCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/product/StripeProductType;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/product/StripeProductType;->priceLocale:Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/product/StripeProductType;->stripeSubscriptionPeriod:Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/product/StripeProductType;->subscriptionIntroOffer:Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/product/StripeProductType;->entitlements:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/superwall/sdk/models/product/StripeProductType;->price:Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/superwall/sdk/models/product/StripeProductType;->localizedPrice:Ljava/lang/String;

    iget-object v3, p0, Lcom/superwall/sdk/models/product/StripeProductType;->currencyCode:Ljava/lang/String;

    iget-object v4, p0, Lcom/superwall/sdk/models/product/StripeProductType;->currencySymbol:Ljava/lang/String;

    iget-object v5, p0, Lcom/superwall/sdk/models/product/StripeProductType;->priceLocale:Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;

    iget-object v6, p0, Lcom/superwall/sdk/models/product/StripeProductType;->stripeSubscriptionPeriod:Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    iget-object v7, p0, Lcom/superwall/sdk/models/product/StripeProductType;->subscriptionIntroOffer:Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;

    iget-object v8, p0, Lcom/superwall/sdk/models/product/StripeProductType;->entitlements:Ljava/util/List;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "StripeProductType(id="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", price="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localizedPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currencyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currencySymbol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priceLocale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stripeSubscriptionPeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subscriptionIntroOffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", entitlements="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trialPeriodPricePerUnit(Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;)Ljava/lang/String;
    .locals 5

    const-string v0, "unit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lcom/superwall/sdk/models/product/StripeProductType;->getTrialPeriodDays()I

    move-result v0

    if-nez v0, :cond_0

    .line 297
    const-string p1, ""

    return-object p1

    .line 300
    :cond_0
    sget-object v1, Lcom/superwall/sdk/models/product/StripeProductType$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/16 v1, 0x16d

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_3

    const/4 v4, 0x3

    if-eq p1, v4, :cond_2

    const/4 v4, 0x4

    if-ne p1, v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_2
    const/16 v3, 0xc

    goto :goto_0

    :cond_3
    const/16 v3, 0x34

    goto :goto_0

    :cond_4
    move v3, v1

    .line 308
    :goto_0
    invoke-virtual {p0}, Lcom/superwall/sdk/models/product/StripeProductType;->getTrialPeriodPrice()Ljava/math/BigDecimal;

    move-result-object p1

    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v1}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {p1, v4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(I)V

    const/4 v0, 0x6

    sget-object v4, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {p1, v1, v0, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 309
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v3}, Ljava/math/BigDecimal;-><init>(I)V

    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {p1, v0, v2, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 310
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/superwall/sdk/models/product/StripeProductType;->formatPrice(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
