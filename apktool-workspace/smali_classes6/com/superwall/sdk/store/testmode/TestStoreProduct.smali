.class public final Lcom/superwall/sdk/store/testmode/TestStoreProduct;
.super Ljava/lang/Object;
.source "TestStoreProduct.kt"

# interfaces
.implements Lcom/superwall/sdk/store/abstractions/product/StoreProductType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/store/testmode/TestStoreProduct$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTestStoreProduct.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TestStoreProduct.kt\ncom/superwall/sdk/store/testmode/TestStoreProduct\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,284:1\n1#2:285\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0002\u0008\'\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008#\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0013\u0010\u0082\u0001\u001a\u00020\u000f2\u0008\u0010\u0083\u0001\u001a\u00030\u0084\u0001H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0008\u001a\u0004\u0018\u00010\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000e\u001a\u00020\u000f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u000f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0011R\u001b\u0010\u0014\u001a\u00020\u00158VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\r\u001a\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u0019\u001a\u00020\u000f8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\r\u001a\u0004\u0008\u001a\u0010\u0011R\u001d\u0010\u001c\u001a\u0004\u0018\u00010\u001d8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\r\u001a\u0004\u0008\u001e\u0010\u001fR\u001b\u0010!\u001a\u00020\u000f8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010\r\u001a\u0004\u0008\"\u0010\u0011R\u001b\u0010$\u001a\u00020\u000f8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\r\u001a\u0004\u0008%\u0010\u0011R\u001b\u0010\'\u001a\u00020\u000f8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008)\u0010\r\u001a\u0004\u0008(\u0010\u0011R\u001b\u0010*\u001a\u00020+8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008.\u0010\r\u001a\u0004\u0008,\u0010-R\u001b\u0010/\u001a\u00020\u000f8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00081\u0010\r\u001a\u0004\u00080\u0010\u0011R\u001b\u00102\u001a\u00020+8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00084\u0010\r\u001a\u0004\u00083\u0010-R\u001b\u00105\u001a\u00020\u000f8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00087\u0010\r\u001a\u0004\u00086\u0010\u0011R\u001b\u00108\u001a\u00020+8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008:\u0010\r\u001a\u0004\u00089\u0010-R\u001b\u0010;\u001a\u00020\u000f8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008=\u0010\r\u001a\u0004\u0008<\u0010\u0011R\u001b\u0010>\u001a\u00020+8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008@\u0010\r\u001a\u0004\u0008?\u0010-R\u001b\u0010A\u001a\u00020\u000f8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008C\u0010\r\u001a\u0004\u0008B\u0010\u0011R\u001b\u0010D\u001a\u00020\u000f8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008F\u0010\r\u001a\u0004\u0008E\u0010\u0011R\u001b\u0010G\u001a\u00020\u000f8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008I\u0010\r\u001a\u0004\u0008H\u0010\u0011R\u001b\u0010J\u001a\u00020\u000f8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008L\u0010\r\u001a\u0004\u0008K\u0010\u0011R\u001b\u0010M\u001a\u00020\u000f8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008O\u0010\r\u001a\u0004\u0008N\u0010\u0011R\u0014\u0010P\u001a\u00020+8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008Q\u0010-R\u001b\u0010R\u001a\u00020S8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008V\u0010\r\u001a\u0004\u0008T\u0010UR\u001b\u0010W\u001a\u00020\u000f8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008Y\u0010\r\u001a\u0004\u0008X\u0010\u0011R\u0014\u0010Z\u001a\u00020\u0015X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008[\u0010\u0017R\u001d\u0010\\\u001a\u0004\u0018\u00010\u001d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008^\u0010\r\u001a\u0004\u0008]\u0010\u001fR\u001d\u0010_\u001a\u0004\u0018\u00010`8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008c\u0010\r\u001a\u0004\u0008a\u0010bR\u001b\u0010d\u001a\u00020\u000f8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008f\u0010\r\u001a\u0004\u0008e\u0010\u0011R\u001b\u0010g\u001a\u00020+8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008i\u0010\r\u001a\u0004\u0008h\u0010-R\u001b\u0010j\u001a\u00020\u000f8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008l\u0010\r\u001a\u0004\u0008k\u0010\u0011R\u001b\u0010m\u001a\u00020+8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008o\u0010\r\u001a\u0004\u0008n\u0010-R\u001b\u0010p\u001a\u00020\u000f8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008r\u0010\r\u001a\u0004\u0008q\u0010\u0011R\u001b\u0010s\u001a\u00020+8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008u\u0010\r\u001a\u0004\u0008t\u0010-R\u001b\u0010v\u001a\u00020\u000f8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008x\u0010\r\u001a\u0004\u0008w\u0010\u0011R\u001b\u0010y\u001a\u00020+8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008{\u0010\r\u001a\u0004\u0008z\u0010-R\u001b\u0010|\u001a\u00020\u000f8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008~\u0010\r\u001a\u0004\u0008}\u0010\u0011R\u001d\u0010\u007f\u001a\u00020\u000f8VX\u0096\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u0081\u0001\u0010\r\u001a\u0005\u0008\u0080\u0001\u0010\u0011R\u001e\u0010\u0085\u0001\u001a\u00020\u000f8VX\u0096\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u0087\u0001\u0010\r\u001a\u0005\u0008\u0086\u0001\u0010\u0011R \u0010\u0088\u0001\u001a\u0004\u0018\u00010\u000f8VX\u0096\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u008a\u0001\u0010\r\u001a\u0005\u0008\u0089\u0001\u0010\u0011R \u0010\u008b\u0001\u001a\u0004\u0018\u00010\u000f8VX\u0096\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u008d\u0001\u0010\r\u001a\u0005\u0008\u008c\u0001\u0010\u0011R \u0010\u008e\u0001\u001a\u0004\u0018\u00010\u000f8VX\u0096\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u0090\u0001\u0010\r\u001a\u0005\u0008\u008f\u0001\u0010\u0011R \u0010\u0091\u0001\u001a\u0004\u0018\u00010\u000f8VX\u0096\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u0093\u0001\u0010\r\u001a\u0005\u0008\u0092\u0001\u0010\u0011R\u0016\u0010\u0094\u0001\u001a\u00020\u000f8VX\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0095\u0001\u0010\u0011\u00a8\u0006\u0096\u0001"
    }
    d2 = {
        "Lcom/superwall/sdk/store/testmode/TestStoreProduct;",
        "Lcom/superwall/sdk/store/abstractions/product/StoreProductType;",
        "superwallProduct",
        "Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;",
        "<init>",
        "(Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;)V",
        "priceFormatterProvider",
        "Lcom/superwall/sdk/store/abstractions/product/PriceFormatterProvider;",
        "priceFormatter",
        "Ljava/text/NumberFormat;",
        "getPriceFormatter",
        "()Ljava/text/NumberFormat;",
        "priceFormatter$delegate",
        "Lkotlin/Lazy;",
        "fullIdentifier",
        "",
        "getFullIdentifier",
        "()Ljava/lang/String;",
        "productIdentifier",
        "getProductIdentifier",
        "price",
        "Ljava/math/BigDecimal;",
        "getPrice",
        "()Ljava/math/BigDecimal;",
        "price$delegate",
        "localizedPrice",
        "getLocalizedPrice",
        "localizedPrice$delegate",
        "subscriptionPeriod",
        "Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;",
        "getSubscriptionPeriod",
        "()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;",
        "subscriptionPeriod$delegate",
        "localizedSubscriptionPeriod",
        "getLocalizedSubscriptionPeriod",
        "localizedSubscriptionPeriod$delegate",
        "period",
        "getPeriod",
        "period$delegate",
        "periodly",
        "getPeriodly",
        "periodly$delegate",
        "periodWeeks",
        "",
        "getPeriodWeeks",
        "()I",
        "periodWeeks$delegate",
        "periodWeeksString",
        "getPeriodWeeksString",
        "periodWeeksString$delegate",
        "periodMonths",
        "getPeriodMonths",
        "periodMonths$delegate",
        "periodMonthsString",
        "getPeriodMonthsString",
        "periodMonthsString$delegate",
        "periodYears",
        "getPeriodYears",
        "periodYears$delegate",
        "periodYearsString",
        "getPeriodYearsString",
        "periodYearsString$delegate",
        "periodDays",
        "getPeriodDays",
        "periodDays$delegate",
        "periodDaysString",
        "getPeriodDaysString",
        "periodDaysString$delegate",
        "dailyPrice",
        "getDailyPrice",
        "dailyPrice$delegate",
        "weeklyPrice",
        "getWeeklyPrice",
        "weeklyPrice$delegate",
        "monthlyPrice",
        "getMonthlyPrice",
        "monthlyPrice$delegate",
        "yearlyPrice",
        "getYearlyPrice",
        "yearlyPrice$delegate",
        "trialDays",
        "getTrialDays",
        "hasFreeTrial",
        "",
        "getHasFreeTrial",
        "()Z",
        "hasFreeTrial$delegate",
        "localizedTrialPeriodPrice",
        "getLocalizedTrialPeriodPrice",
        "localizedTrialPeriodPrice$delegate",
        "trialPeriodPrice",
        "getTrialPeriodPrice",
        "trialSubscriptionPeriod",
        "getTrialSubscriptionPeriod",
        "trialSubscriptionPeriod$delegate",
        "trialPeriodEndDate",
        "Ljava/util/Date;",
        "getTrialPeriodEndDate",
        "()Ljava/util/Date;",
        "trialPeriodEndDate$delegate",
        "trialPeriodEndDateString",
        "getTrialPeriodEndDateString",
        "trialPeriodEndDateString$delegate",
        "trialPeriodDays",
        "getTrialPeriodDays",
        "trialPeriodDays$delegate",
        "trialPeriodDaysString",
        "getTrialPeriodDaysString",
        "trialPeriodDaysString$delegate",
        "trialPeriodWeeks",
        "getTrialPeriodWeeks",
        "trialPeriodWeeks$delegate",
        "trialPeriodWeeksString",
        "getTrialPeriodWeeksString",
        "trialPeriodWeeksString$delegate",
        "trialPeriodMonths",
        "getTrialPeriodMonths",
        "trialPeriodMonths$delegate",
        "trialPeriodMonthsString",
        "getTrialPeriodMonthsString",
        "trialPeriodMonthsString$delegate",
        "trialPeriodYears",
        "getTrialPeriodYears",
        "trialPeriodYears$delegate",
        "trialPeriodYearsString",
        "getTrialPeriodYearsString",
        "trialPeriodYearsString$delegate",
        "trialPeriodText",
        "getTrialPeriodText",
        "trialPeriodText$delegate",
        "trialPeriodPricePerUnit",
        "unit",
        "Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;",
        "locale",
        "getLocale",
        "locale$delegate",
        "languageCode",
        "getLanguageCode",
        "languageCode$delegate",
        "currencyCode",
        "getCurrencyCode",
        "currencyCode$delegate",
        "currencySymbol",
        "getCurrencySymbol",
        "currencySymbol$delegate",
        "regionCode",
        "getRegionCode",
        "regionCode$delegate",
        "productType",
        "getProductType",
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


# instance fields
.field private final currencyCode$delegate:Lkotlin/Lazy;

.field private final currencySymbol$delegate:Lkotlin/Lazy;

.field private final dailyPrice$delegate:Lkotlin/Lazy;

.field private final hasFreeTrial$delegate:Lkotlin/Lazy;

.field private final languageCode$delegate:Lkotlin/Lazy;

.field private final locale$delegate:Lkotlin/Lazy;

.field private final localizedPrice$delegate:Lkotlin/Lazy;

.field private final localizedSubscriptionPeriod$delegate:Lkotlin/Lazy;

.field private final localizedTrialPeriodPrice$delegate:Lkotlin/Lazy;

.field private final monthlyPrice$delegate:Lkotlin/Lazy;

.field private final period$delegate:Lkotlin/Lazy;

.field private final periodDays$delegate:Lkotlin/Lazy;

.field private final periodDaysString$delegate:Lkotlin/Lazy;

.field private final periodMonths$delegate:Lkotlin/Lazy;

.field private final periodMonthsString$delegate:Lkotlin/Lazy;

.field private final periodWeeks$delegate:Lkotlin/Lazy;

.field private final periodWeeksString$delegate:Lkotlin/Lazy;

.field private final periodYears$delegate:Lkotlin/Lazy;

.field private final periodYearsString$delegate:Lkotlin/Lazy;

.field private final periodly$delegate:Lkotlin/Lazy;

.field private final price$delegate:Lkotlin/Lazy;

.field private final priceFormatter$delegate:Lkotlin/Lazy;

.field private final priceFormatterProvider:Lcom/superwall/sdk/store/abstractions/product/PriceFormatterProvider;

.field private final regionCode$delegate:Lkotlin/Lazy;

.field private final subscriptionPeriod$delegate:Lkotlin/Lazy;

.field private final superwallProduct:Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;

.field private final trialPeriodDays$delegate:Lkotlin/Lazy;

.field private final trialPeriodDaysString$delegate:Lkotlin/Lazy;

.field private final trialPeriodEndDate$delegate:Lkotlin/Lazy;

.field private final trialPeriodEndDateString$delegate:Lkotlin/Lazy;

.field private final trialPeriodMonths$delegate:Lkotlin/Lazy;

.field private final trialPeriodMonthsString$delegate:Lkotlin/Lazy;

.field private final trialPeriodPrice:Ljava/math/BigDecimal;

.field private final trialPeriodText$delegate:Lkotlin/Lazy;

.field private final trialPeriodWeeks$delegate:Lkotlin/Lazy;

.field private final trialPeriodWeeksString$delegate:Lkotlin/Lazy;

.field private final trialPeriodYears$delegate:Lkotlin/Lazy;

.field private final trialPeriodYearsString$delegate:Lkotlin/Lazy;

.field private final trialSubscriptionPeriod$delegate:Lkotlin/Lazy;

.field private final weeklyPrice$delegate:Lkotlin/Lazy;

.field private final yearlyPrice$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$1__n_16rzDA2YQirD9lP1eBKQDw(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)I
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodWeeks_delegate$lambda$38(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$44zxKiiORfq9d8yXdfPgXRtzR_Q(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)I
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodMonths_delegate$lambda$41(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$4OaM2ZN_5USJ-cJNpHZQLmsqGRA(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->yearlyPrice_delegate$lambda$27(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4TIog5q2VfrzoKvGv8MoIhj64go(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)I
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->periodWeeks_delegate$lambda$13(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$5wQ8LfqoRO59BrPPw4Qjf0rPpA0(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->period_delegate$lambda$9(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6ox5aKTTXs-fnjsoaQoD5KTw7P0(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodText_delegate$lambda$46(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$726sHYtfJT5fD7IIpg8qKb2ENxA(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/math/BigDecimal;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->price_delegate$lambda$2(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8Zu1TbtvHuk5URfDggLqUhdQYsc(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Z
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->hasFreeTrial_delegate$lambda$28(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$B30C_K6LB3etI8fkJFYL0N4U2zI(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)I
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->periodMonths_delegate$lambda$16(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$FMVBkFF_Ozbshx7ohbNthsyPMLQ()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->locale_delegate$lambda$47()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$GChv9ByOWqbAYyqDr8UXlTnDUSM(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->currencySymbol_delegate$lambda$51(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GvttZPvPpyVaZcmTQmEMpwAJG-c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->languageCode_delegate$lambda$48()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$LYC5nyf2Mw-mfHsxof_XFlcfRSg(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialSubscriptionPeriod_delegate$lambda$30(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LfzemHme4kW5JW7LrUREt7hBadU(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->localizedTrialPeriodPrice_delegate$lambda$29(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MmeUeswSXsHpOakeWkdyBwnMG_U(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)I
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->periodYears_delegate$lambda$19(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$NA9URAjieLCACnfYWjoHRrFAHEY(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)I
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodYears_delegate$lambda$44(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$QfxYFqw99QT2DC5OIkX_p1UVHzA(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodEndDateString_delegate$lambda$33(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SPPjH25U1Uunbaya2zo7ibOLzsk(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->dailyPrice_delegate$lambda$24(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YlMudUXK4zz4q9d3zqsDzyR__xY(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->currencyCode_delegate$lambda$49(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_Sg7zRbhc3dCwfCXddI57chbAVs(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->weeklyPrice_delegate$lambda$25(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aI9CpyZi0i8Qcar9K5QvgLWrA0M(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->periodYearsString_delegate$lambda$20(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aY18Hxn6CtE2k3kGCKh31NLZWNM(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->periodMonthsString_delegate$lambda$17(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$b4rWIiYJjl9maGJZiPqaB--06KE(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/util/Date;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodEndDate_delegate$lambda$31(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eCLZCHZp0cyaiEmPfO0ZxkwRrbg(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodWeeksString_delegate$lambda$39(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$g0fHHCughIi68vOmGLMsm0aWXz4(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->periodDaysString_delegate$lambda$23(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hQou8YB6GxM_AUgEioMMzA1UA4U(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->subscriptionPeriod_delegate$lambda$5(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hiSUl9PvwwVF6wsMtSe_7fWi2wc(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodMonthsString_delegate$lambda$42(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iEDMw-YjZsNwrsKOuG_FSpEul7k(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->monthlyPrice_delegate$lambda$26(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iih5KK6pRmSJg_yjYpxhdhGSLAo(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->periodWeeksString_delegate$lambda$14(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jDVVmooa19yHCOJf1YDWWvwBZco(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodYearsString_delegate$lambda$45(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jkShuUhB0YHWf9wbC2ZynBZTG5c(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)I
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->periodDays_delegate$lambda$22(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$nSi1K8jjHc_J5ehM6Mqp-zPaEcQ(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->periodly_delegate$lambda$11(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sfggCz9nJkGwwuU9H77Y4fCs0FI(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodDaysString_delegate$lambda$36(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tnzjWN224DezAz3iCMlbcoKyp88(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->localizedPrice_delegate$lambda$3(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tpaNBapdJXSzKZ7tsvFdBCYZgrg(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->localizedSubscriptionPeriod_delegate$lambda$7(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vWs8W4B5Cj9lyPFGABBd-iD0NlM(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/text/NumberFormat;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->priceFormatter_delegate$lambda$1(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wv2cNZHLX8s9XMhXP1kk-nfXYYk()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->regionCode_delegate$lambda$52()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$yhvENzaDF1KG-kXqAcKCf3PZ2m4(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)I
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodDays_delegate$lambda$35(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;)V
    .locals 1

    const-string v0, "superwallProduct"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->superwallProduct:Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;

    .line 19
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/PriceFormatterProvider;

    invoke-direct {p1}, Lcom/superwall/sdk/store/abstractions/product/PriceFormatterProvider;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->priceFormatterProvider:Lcom/superwall/sdk/store/abstractions/product/PriceFormatterProvider;

    .line 21
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda0;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->priceFormatter$delegate:Lkotlin/Lazy;

    .line 31
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda2;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->price$delegate:Lkotlin/Lazy;

    .line 36
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda14;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda14;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->localizedPrice$delegate:Lkotlin/Lazy;

    .line 40
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda24;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda24;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->subscriptionPeriod$delegate:Lkotlin/Lazy;

    .line 53
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda25;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda25;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->localizedSubscriptionPeriod$delegate:Lkotlin/Lazy;

    .line 65
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda26;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda26;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->period$delegate:Lkotlin/Lazy;

    .line 82
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda27;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda27;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->periodly$delegate:Lkotlin/Lazy;

    .line 95
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda28;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda28;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->periodWeeks$delegate:Lkotlin/Lazy;

    .line 106
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda29;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda29;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->periodWeeksString$delegate:Lkotlin/Lazy;

    .line 108
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda30;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda30;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->periodMonths$delegate:Lkotlin/Lazy;

    .line 119
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda11;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->periodMonthsString$delegate:Lkotlin/Lazy;

    .line 121
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda22;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda22;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->periodYears$delegate:Lkotlin/Lazy;

    .line 132
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda31;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda31;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->periodYearsString$delegate:Lkotlin/Lazy;

    .line 134
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda32;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda32;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->periodDays$delegate:Lkotlin/Lazy;

    .line 145
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda33;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda33;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->periodDaysString$delegate:Lkotlin/Lazy;

    .line 147
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda34;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda34;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->dailyPrice$delegate:Lkotlin/Lazy;

    .line 153
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda35;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda35;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->weeklyPrice$delegate:Lkotlin/Lazy;

    .line 159
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda36;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda36;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->monthlyPrice$delegate:Lkotlin/Lazy;

    .line 165
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda37;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda37;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->yearlyPrice$delegate:Lkotlin/Lazy;

    .line 174
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda1;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->hasFreeTrial$delegate:Lkotlin/Lazy;

    .line 178
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda3;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->localizedTrialPeriodPrice$delegate:Lkotlin/Lazy;

    .line 182
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    const-string v0, "ZERO"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodPrice:Ljava/math/BigDecimal;

    .line 184
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda4;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialSubscriptionPeriod$delegate:Lkotlin/Lazy;

    .line 189
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda5;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodEndDate$delegate:Lkotlin/Lazy;

    .line 196
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda6;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodEndDateString$delegate:Lkotlin/Lazy;

    .line 202
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda7;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodDays$delegate:Lkotlin/Lazy;

    .line 213
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda8;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodDaysString$delegate:Lkotlin/Lazy;

    .line 215
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda9;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodWeeks$delegate:Lkotlin/Lazy;

    .line 226
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda10;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodWeeksString$delegate:Lkotlin/Lazy;

    .line 228
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda12;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodMonths$delegate:Lkotlin/Lazy;

    .line 239
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda13;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda13;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodMonthsString$delegate:Lkotlin/Lazy;

    .line 241
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda15;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda15;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodYears$delegate:Lkotlin/Lazy;

    .line 252
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda16;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda16;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodYearsString$delegate:Lkotlin/Lazy;

    .line 254
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda17;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda17;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodText$delegate:Lkotlin/Lazy;

    .line 261
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda18;

    invoke-direct {p1}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda18;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->locale$delegate:Lkotlin/Lazy;

    .line 263
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda19;

    invoke-direct {p1}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda19;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->languageCode$delegate:Lkotlin/Lazy;

    .line 265
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda20;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda20;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->currencyCode$delegate:Lkotlin/Lazy;

    .line 267
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda21;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda21;-><init>(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->currencySymbol$delegate:Lkotlin/Lazy;

    .line 279
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda23;

    invoke-direct {p1}, Lcom/superwall/sdk/store/testmode/TestStoreProduct$$ExternalSyntheticLambda23;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->regionCode$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private static final currencyCode_delegate$lambda$49(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->superwallProduct:Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;->getPrice()Lcom/superwall/sdk/store/testmode/models/SuperwallProductPrice;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPrice;->getCurrency()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final currencySymbol_delegate$lambda$51(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 1

    .line 268
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getCurrencyCode()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 271
    :try_start_0
    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p0

    .line 272
    invoke-virtual {p0}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-object v0
.end method

.method private static final dailyPrice_delegate$lambda$24(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 4

    .line 148
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object v0

    const-string v1, "n/a"

    if-nez v0, :cond_0

    return-object v1

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getPrice()Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v3, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getPriceFormatter()Ljava/text/NumberFormat;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    const-string p0, "$0.00"

    return-object p0

    .line 150
    :cond_3
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getPriceFormatter()Ljava/text/NumberFormat;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getPrice()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->pricePerDay(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    return-object p0

    :cond_5
    :goto_1
    return-object v1
.end method

.method private final getPriceFormatter()Ljava/text/NumberFormat;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->priceFormatter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/NumberFormat;

    return-object v0
.end method

.method private final getTrialDays()I
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->superwallProduct:Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;->getSubscription()Lcom/superwall/sdk/store/testmode/models/SuperwallProductSubscription;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/models/SuperwallProductSubscription;->getTrialPeriodDays()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final getTrialSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialSubscriptionPeriod$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    return-object v0
.end method

.method private static final hasFreeTrial_delegate$lambda$28(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Z
    .locals 0

    .line 175
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getTrialDays()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final languageCode_delegate$lambda$48()Ljava/lang/String;
    .locals 1

    .line 263
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final locale_delegate$lambda$47()Ljava/lang/String;
    .locals 2

    .line 261
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final localizedPrice_delegate$lambda$3(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getPriceFormatter()Ljava/text/NumberFormat;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getPrice()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "$"

    :cond_2
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getPrice()Ljava/math/BigDecimal;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final localizedSubscriptionPeriod_delegate$lambda$7(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 3

    .line 54
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 55
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result v0

    .line 56
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getUnit()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    move-result-object p0

    sget-object v1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_6

    const/4 v2, 0x2

    if-eq p0, v2, :cond_4

    const/4 v2, 0x3

    if-eq p0, v2, :cond_2

    const/4 v2, 0x4

    if-ne p0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 60
    const-string p0, "1 year"

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " years"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 56
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    if-ne v0, v1, :cond_3

    .line 59
    const-string p0, "1 month"

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " months"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    if-ne v0, v1, :cond_5

    .line 58
    const-string p0, "1 week"

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " weeks"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_6
    if-ne v0, v1, :cond_7

    .line 57
    const-string p0, "1 day"

    goto :goto_0

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " days"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_8

    goto :goto_1

    :cond_8
    return-object p0

    .line 62
    :cond_9
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method private static final localizedTrialPeriodPrice_delegate$lambda$29(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 1

    .line 179
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getPriceFormatter()Ljava/text/NumberFormat;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getTrialPeriodPrice()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const-string p0, "$0.00"

    return-object p0
.end method

.method private static final monthlyPrice_delegate$lambda$26(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 4

    .line 160
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object v0

    const-string v1, "n/a"

    if-nez v0, :cond_0

    return-object v1

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getPrice()Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v3, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getPriceFormatter()Ljava/text/NumberFormat;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    const-string p0, "$0.00"

    return-object p0

    .line 162
    :cond_3
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getPriceFormatter()Ljava/text/NumberFormat;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getPrice()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->pricePerMonth(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    return-object p0

    :cond_5
    :goto_1
    return-object v1
.end method

.method private static final periodDaysString_delegate$lambda$23(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 0

    .line 145
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getPeriodDays()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final periodDays_delegate$lambda$22(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)I
    .locals 2

    .line 135
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 136
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getUnit()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    move-result-object v0

    sget-object v1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

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

    .line 140
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    mul-int/lit16 p0, p0, 0x16d

    return p0

    .line 136
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1e

    return p0

    .line 138
    :cond_2
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    mul-int/lit8 p0, p0, 0x7

    return p0

    .line 137
    :cond_3
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private static final periodMonthsString_delegate$lambda$17(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 0

    .line 119
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getPeriodMonths()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final periodMonths_delegate$lambda$16(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)I
    .locals 3

    .line 109
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 110
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getUnit()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    move-result-object v0

    sget-object v1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    mul-int/lit8 p0, p0, 0xc

    return p0

    .line 110
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    return p0

    .line 112
    :cond_2
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    div-int/2addr p0, v2

    return p0

    .line 111
    :cond_3
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    div-int/lit8 p0, p0, 0x1e

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private static final periodWeeksString_delegate$lambda$14(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 0

    .line 106
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getPeriodWeeks()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final periodWeeks_delegate$lambda$13(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)I
    .locals 3

    .line 96
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 97
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getUnit()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    move-result-object v0

    sget-object v1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    mul-int/lit8 p0, p0, 0x34

    return p0

    .line 97
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    mul-int/2addr p0, v2

    return p0

    .line 99
    :cond_2
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    return p0

    .line 98
    :cond_3
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    div-int/lit8 p0, p0, 0x7

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private static final periodYearsString_delegate$lambda$20(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 0

    .line 132
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getPeriodYears()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final periodYears_delegate$lambda$19(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)I
    .locals 2

    .line 122
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 123
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getUnit()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    move-result-object v0

    sget-object v1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

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

    .line 127
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    return p0

    .line 123
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    div-int/lit8 p0, p0, 0xc

    return p0

    .line 125
    :cond_2
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    div-int/lit8 p0, p0, 0x34

    return p0

    .line 124
    :cond_3
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    div-int/lit16 p0, p0, 0x16d

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private static final period_delegate$lambda$9(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 3

    .line 66
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 67
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getUnit()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    move-result-object v0

    sget-object v1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const-string v2, "week"

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 p0, 0x4

    if-ne v0, p0, :cond_0

    .line 77
    const-string p0, "year"

    return-object p0

    .line 67
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    if-eq p0, v1, :cond_4

    if-eq p0, v2, :cond_3

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2

    .line 75
    const-string p0, "month"

    return-object p0

    .line 74
    :cond_2
    const-string p0, "6 months"

    return-object p0

    .line 73
    :cond_3
    const-string p0, "quarter"

    return-object p0

    .line 72
    :cond_4
    const-string p0, "2 months"

    return-object p0

    :cond_5
    return-object v2

    .line 68
    :cond_6
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    return-object v2

    :cond_7
    const-string p0, "day"

    return-object p0

    .line 79
    :cond_8
    const-string p0, ""

    return-object p0
.end method

.method private static final periodly_delegate$lambda$11(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 4

    .line 83
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 84
    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getUnit()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    move-result-object v1

    sget-object v2, Lcom/superwall/sdk/store/testmode/TestStoreProduct$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x3

    .line 85
    const-string v3, "ly"

    if-ne v1, v2, :cond_1

    .line 86
    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getPeriod()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getPeriod()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "every "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getPeriod()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    return-object p0

    .line 92
    :cond_3
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method private static final priceFormatter_delegate$lambda$1(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/text/NumberFormat;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->priceFormatterProvider:Lcom/superwall/sdk/store/abstractions/product/PriceFormatterProvider;

    invoke-virtual {p0, v0}, Lcom/superwall/sdk/store/abstractions/product/PriceFormatterProvider;->priceFormatter(Ljava/lang/String;)Ljava/text/NumberFormat;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final price_delegate$lambda$2(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/math/BigDecimal;
    .locals 3

    .line 32
    iget-object p0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->superwallProduct:Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;->getPrice()Lcom/superwall/sdk/store/testmode/models/SuperwallProductPrice;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPrice;->getAmount()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 33
    :goto_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(I)V

    new-instance p0, Ljava/math/BigDecimal;

    const/16 v1, 0x64

    invoke-direct {p0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    const/4 v1, 0x2

    sget-object v2, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v0, p0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method private static final regionCode_delegate$lambda$52()Ljava/lang/String;
    .locals 1

    .line 279
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final subscriptionPeriod_delegate$lambda$5(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;
    .locals 2

    .line 41
    iget-object p0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->superwallProduct:Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;->getSubscription()Lcom/superwall/sdk/store/testmode/models/SuperwallProductSubscription;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 43
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/models/SuperwallProductSubscription;->getPeriod()Lcom/superwall/sdk/store/testmode/models/SuperwallSubscriptionPeriod;

    move-result-object v0

    sget-object v1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/models/SuperwallSubscriptionPeriod;->ordinal()I

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

    .line 47
    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->year:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    goto :goto_0

    .line 43
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 46
    :cond_1
    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->month:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    goto :goto_0

    .line 45
    :cond_2
    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->week:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    goto :goto_0

    .line 44
    :cond_3
    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->day:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    .line 49
    :goto_0
    new-instance v1, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/models/SuperwallProductSubscription;->getPeriodCount()I

    move-result p0

    invoke-direct {v1, p0, v0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;-><init>(ILcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;)V

    return-object v1

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final trialPeriodDaysString_delegate$lambda$36(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 0

    .line 213
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getTrialPeriodDays()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final trialPeriodDays_delegate$lambda$35(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)I
    .locals 2

    .line 203
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getTrialSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 204
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getUnit()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    move-result-object v0

    sget-object v1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

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

    .line 208
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    mul-int/lit16 p0, p0, 0x16d

    return p0

    .line 204
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1e

    return p0

    .line 206
    :cond_2
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    mul-int/lit8 p0, p0, 0x7

    return p0

    .line 205
    :cond_3
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private static final trialPeriodEndDateString_delegate$lambda$33(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 1

    .line 197
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getTrialPeriodEndDate()Ljava/util/Date;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 198
    sget-object v0, Lcom/superwall/sdk/utilities/DateUtils;->INSTANCE:Lcom/superwall/sdk/utilities/DateUtils;

    invoke-virtual {v0}, Lcom/superwall/sdk/utilities/DateUtils;->getMMM_dd_yyyy()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/superwall/sdk/utilities/DateUtilsKt;->localizedDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    .line 199
    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private static final trialPeriodEndDate_delegate$lambda$31(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/util/Date;
    .locals 2

    .line 190
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getTrialDays()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 191
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    .line 192
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getTrialDays()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->add(II)V

    .line 193
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method private static final trialPeriodMonthsString_delegate$lambda$42(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 0

    .line 239
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getTrialPeriodMonths()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final trialPeriodMonths_delegate$lambda$41(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)I
    .locals 3

    .line 229
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getTrialSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 230
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getUnit()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    move-result-object v0

    sget-object v1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    mul-int/lit8 p0, p0, 0xc

    return p0

    .line 230
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 233
    :cond_1
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    return p0

    .line 232
    :cond_2
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    div-int/2addr p0, v2

    return p0

    .line 231
    :cond_3
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    div-int/lit8 p0, p0, 0x1e

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private static final trialPeriodText_delegate$lambda$46(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 1

    .line 255
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getTrialDays()I

    move-result v0

    if-gtz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 256
    :cond_0
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getTrialDays()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "-day"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final trialPeriodWeeksString_delegate$lambda$39(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 0

    .line 226
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getTrialPeriodWeeks()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final trialPeriodWeeks_delegate$lambda$38(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)I
    .locals 3

    .line 216
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getTrialSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 217
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getUnit()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    move-result-object v0

    sget-object v1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    mul-int/lit8 p0, p0, 0x34

    return p0

    .line 217
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 220
    :cond_1
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    mul-int/2addr p0, v2

    return p0

    .line 219
    :cond_2
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    return p0

    .line 218
    :cond_3
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    div-int/lit8 p0, p0, 0x7

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private static final trialPeriodYearsString_delegate$lambda$45(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 0

    .line 252
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getTrialPeriodYears()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final trialPeriodYears_delegate$lambda$44(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)I
    .locals 2

    .line 242
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getTrialSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 243
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getUnit()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    move-result-object v0

    sget-object v1, Lcom/superwall/sdk/store/testmode/TestStoreProduct$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

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

    .line 247
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    return p0

    .line 243
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    div-int/lit8 p0, p0, 0xc

    return p0

    .line 245
    :cond_2
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    div-int/lit8 p0, p0, 0x34

    return p0

    .line 244
    :cond_3
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    div-int/lit16 p0, p0, 0x16d

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private static final trialSubscriptionPeriod_delegate$lambda$30(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;
    .locals 2

    .line 185
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getTrialDays()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 186
    :cond_0
    new-instance v0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getTrialDays()I

    move-result p0

    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->day:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    invoke-direct {v0, p0, v1}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;-><init>(ILcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;)V

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->normalized()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p0

    return-object p0
.end method

.method private static final weeklyPrice_delegate$lambda$25(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 4

    .line 154
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object v0

    const-string v1, "n/a"

    if-nez v0, :cond_0

    return-object v1

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getPrice()Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v3, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getPriceFormatter()Ljava/text/NumberFormat;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    const-string p0, "$0.00"

    return-object p0

    .line 156
    :cond_3
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getPriceFormatter()Ljava/text/NumberFormat;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getPrice()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->pricePerWeek(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    return-object p0

    :cond_5
    :goto_1
    return-object v1
.end method

.method private static final yearlyPrice_delegate$lambda$27(Lcom/superwall/sdk/store/testmode/TestStoreProduct;)Ljava/lang/String;
    .locals 4

    .line 166
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object v0

    const-string v1, "n/a"

    if-nez v0, :cond_0

    return-object v1

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getPrice()Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v3, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getPriceFormatter()Ljava/text/NumberFormat;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    const-string p0, "$0.00"

    return-object p0

    .line 168
    :cond_3
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getPriceFormatter()Ljava/text/NumberFormat;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getPrice()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->pricePerYear(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    return-object p0

    :cond_5
    :goto_1
    return-object v1
.end method


# virtual methods
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

    .line 16
    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/StoreProductType$DefaultImpls;->getAttributes(Lcom/superwall/sdk/store/abstractions/product/StoreProductType;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->currencyCode$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencySymbol()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->currencySymbol$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDailyPrice()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->dailyPrice$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFullIdentifier()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->superwallProduct:Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHasFreeTrial()Z
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->hasFreeTrial$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->languageCode$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->locale$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedPrice()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->localizedPrice$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedSubscriptionPeriod()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->localizedSubscriptionPeriod$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedTrialPeriodPrice()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->localizedTrialPeriodPrice$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMonthlyPrice()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->monthlyPrice$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPeriod()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->period$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPeriodDays()I
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->periodDays$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getPeriodDaysString()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->periodDaysString$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPeriodMonths()I
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->periodMonths$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getPeriodMonthsString()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->periodMonthsString$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPeriodWeeks()I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->periodWeeks$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getPeriodWeeksString()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->periodWeeksString$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPeriodYears()I
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->periodYears$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getPeriodYearsString()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->periodYearsString$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPeriodly()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->periodly$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/math/BigDecimal;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->price$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getProductIdentifier()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->superwallProduct:Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductType()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->superwallProduct:Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;->getSubscription()Lcom/superwall/sdk/store/testmode/models/SuperwallProductSubscription;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "subs"

    return-object v0

    :cond_0
    const-string v0, "inapp"

    return-object v0
.end method

.method public getRegionCode()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->regionCode$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->subscriptionPeriod$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    return-object v0
.end method

.method public getTrialPeriodDays()I
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodDays$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getTrialPeriodDaysString()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodDaysString$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTrialPeriodEndDate()Ljava/util/Date;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodEndDate$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getTrialPeriodEndDateString()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodEndDateString$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTrialPeriodMonths()I
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodMonths$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getTrialPeriodMonthsString()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodMonthsString$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTrialPeriodPrice()Ljava/math/BigDecimal;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodPrice:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getTrialPeriodText()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodText$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTrialPeriodWeeks()I
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodWeeks$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getTrialPeriodWeeksString()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodWeeksString$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTrialPeriodYears()I
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodYears$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getTrialPeriodYearsString()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->trialPeriodYearsString$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getWeeklyPrice()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->weeklyPrice$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getYearlyPrice()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->yearlyPrice$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public trialPeriodPricePerUnit(Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;)Ljava/lang/String;
    .locals 1

    const-string v0, "unit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;->getPriceFormatter()Ljava/text/NumberFormat;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    const-string p1, "$0.00"

    return-object p1
.end method
