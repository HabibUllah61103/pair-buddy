.class public final Lcom/superwall/sdk/contrib/threeteen/AmountFormats;
.super Ljava/lang/Object;
.source "AmountFormats.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationScalar;,
        Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;,
        Lcom/superwall/sdk/contrib/threeteen/AmountFormats$FractionScalarPart;,
        Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntPredicate;,
        Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntegerScalarPart;,
        Lcom/superwall/sdk/contrib/threeteen/AmountFormats$ParsedUnitPart;,
        Lcom/superwall/sdk/contrib/threeteen/AmountFormats$PredicateFormat;,
        Lcom/superwall/sdk/contrib/threeteen/AmountFormats$SinglePluralFormat;,
        Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;,
        Lcom/superwall/sdk/contrib/threeteen/AmountFormats$WordBased;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAmountFormats.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AmountFormats.kt\ncom/superwall/sdk/contrib/threeteen/AmountFormats\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,791:1\n295#2,2:792\n1#3:794\n*S KotlinDebug\n*F\n+ 1 AmountFormats.kt\ncom/superwall/sdk/contrib/threeteen/AmountFormats\n*L\n597#1:792,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000c\n\u0002\u0008\r\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\nCDEFGHIJKLB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010#\u001a\u00020\u000b2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'J\u000e\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+J\u0016\u0010,\u001a\u00020\u000b2\u0006\u0010$\u001a\u00020%2\u0006\u0010*\u001a\u00020+J\u0016\u0010,\u001a\u00020\u000b2\u0006\u0010&\u001a\u00020\'2\u0006\u0010*\u001a\u00020+J\u001e\u0010,\u001a\u00020\u000b2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u0006\u0010*\u001a\u00020+J\u0018\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\u00052\u0006\u00100\u001a\u00020\u0005H\u0002J\u000e\u00101\u001a\u00020\'2\u0006\u00102\u001a\u000203J \u00104\u001a\u0002052\u0006\u00106\u001a\u0002032\u0006\u00107\u001a\u0002032\u0006\u00108\u001a\u00020\u0005H\u0002J \u00109\u001a\u0002052\u0006\u00106\u001a\u0002032\u0006\u00107\u001a\u0002032\u0006\u00108\u001a\u00020\u0005H\u0002J\u001d\u0010:\u001a\u0008\u0012\u0004\u0012\u00020 0;2\u0006\u00106\u001a\u000203H\u0002\u00a2\u0006\u0004\u0008<\u0010=J%\u0010>\u001a\u0008\u0012\u0004\u0012\u0002030;2\u0006\u00106\u001a\u0002032\u0006\u0010?\u001a\u00020@H\u0002\u00a2\u0006\u0004\u0008A\u0010BR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u000c\u001a\n \u000e*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020 0\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006M"
    }
    d2 = {
        "Lcom/superwall/sdk/contrib/threeteen/AmountFormats;",
        "",
        "<init>",
        "()V",
        "DAYS_PER_WEEK",
        "",
        "HOURS_PER_DAY",
        "MINUTES_PER_HOUR",
        "SECONDS_PER_MINUTE",
        "NANOS_PER_MILLIS",
        "BUNDLE_NAME",
        "",
        "SPLITTER",
        "Ljava/util/regex/Pattern;",
        "kotlin.jvm.PlatformType",
        "Ljava/util/regex/Pattern;",
        "WORDBASED_COMMASPACE",
        "WORDBASED_SPACEANDSPACE",
        "WORDBASED_YEAR",
        "WORDBASED_MONTH",
        "WORDBASED_WEEK",
        "WORDBASED_DAY",
        "WORDBASED_HOUR",
        "WORDBASED_MINUTE",
        "WORDBASED_SECOND",
        "WORDBASED_MILLISECOND",
        "PREDICATE_1",
        "Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntPredicate;",
        "PREDICATE_END1_NOT11",
        "PREDICATE_END234_NOTTEENS",
        "DURATION_UNITS",
        "",
        "Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;",
        "EMPTY_FRACTION",
        "Lcom/superwall/sdk/contrib/threeteen/AmountFormats$FractionScalarPart;",
        "iso8601",
        "period",
        "Lorg/threeten/bp/Period;",
        "duration",
        "Lorg/threeten/bp/Duration;",
        "getResourceBundle",
        "Ljava/util/ResourceBundle;",
        "locale",
        "Ljava/util/Locale;",
        "wordBased",
        "oppositeSigns",
        "",
        "a",
        "b",
        "parseUnitBasedDuration",
        "durationText",
        "",
        "consumeDurationLeadingInt",
        "Lcom/superwall/sdk/contrib/threeteen/AmountFormats$ParsedUnitPart;",
        "text",
        "original",
        "offset",
        "consumeDurationFraction",
        "findUnit",
        "Lkotlin/Result;",
        "findUnit-IoAF18A",
        "(Ljava/lang/CharSequence;)Ljava/lang/Object;",
        "consumePrefix",
        "prefix",
        "",
        "consumePrefix-gIAlu-s",
        "(Ljava/lang/CharSequence;C)Ljava/lang/Object;",
        "IntPredicate",
        "WordBased",
        "UnitFormat",
        "SinglePluralFormat",
        "PredicateFormat",
        "DurationUnit",
        "DurationScalar",
        "ParsedUnitPart",
        "IntegerScalarPart",
        "FractionScalarPart",
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


# static fields
.field private static final BUNDLE_NAME:Ljava/lang/String; = "com.superwall.extra.wordbased"

.field private static final DAYS_PER_WEEK:I = 0x7

.field private static final DURATION_UNITS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_FRACTION:Lcom/superwall/sdk/contrib/threeteen/AmountFormats$FractionScalarPart;

.field private static final HOURS_PER_DAY:I = 0x18

.field public static final INSTANCE:Lcom/superwall/sdk/contrib/threeteen/AmountFormats;

.field private static final MINUTES_PER_HOUR:I = 0x3c

.field private static final NANOS_PER_MILLIS:I = 0xf4240

.field private static final PREDICATE_1:Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntPredicate;

.field private static final PREDICATE_END1_NOT11:Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntPredicate;

.field private static final PREDICATE_END234_NOTTEENS:Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntPredicate;

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final SPLITTER:Ljava/util/regex/Pattern;

.field private static final WORDBASED_COMMASPACE:Ljava/lang/String; = "WordBased.commaspace"

.field private static final WORDBASED_DAY:Ljava/lang/String; = "WordBased.day"

.field private static final WORDBASED_HOUR:Ljava/lang/String; = "WordBased.hour"

.field private static final WORDBASED_MILLISECOND:Ljava/lang/String; = "WordBased.millisecond"

.field private static final WORDBASED_MINUTE:Ljava/lang/String; = "WordBased.minute"

.field private static final WORDBASED_MONTH:Ljava/lang/String; = "WordBased.month"

.field private static final WORDBASED_SECOND:Ljava/lang/String; = "WordBased.second"

.field private static final WORDBASED_SPACEANDSPACE:Ljava/lang/String; = "WordBased.spaceandspace"

.field private static final WORDBASED_WEEK:Ljava/lang/String; = "WordBased.week"

.field private static final WORDBASED_YEAR:Ljava/lang/String; = "WordBased.year"


# direct methods
.method public static synthetic $r8$lambda$6wsJZLYwAKjs4uR-_0wrHDbjgjo(I)Z
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats;->PREDICATE_END1_NOT11$lambda$1(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$DFX2bxE8PtQeEdJnMa12zQsPhoU(I)Z
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats;->PREDICATE_END234_NOTTEENS$lambda$2(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$oUMtO0W0AOZLkeYPA5IuLKj0XAA(I)Z
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats;->PREDICATE_1$lambda$0(I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats;

    invoke-direct {v0}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats;-><init>()V

    sput-object v0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats;->INSTANCE:Lcom/superwall/sdk/contrib/threeteen/AmountFormats;

    .line 92
    const-string v0, "[|][|][|]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats;->SPLITTER:Ljava/util/regex/Pattern;

    .line 148
    new-instance v0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats;->PREDICATE_1:Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntPredicate;

    .line 154
    new-instance v0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats;->PREDICATE_END1_NOT11:Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntPredicate;

    .line 165
    new-instance v0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats;->PREDICATE_END234_NOTTEENS:Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntPredicate;

    const/16 v0, 0x8

    .line 177
    new-array v0, v0, [Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;

    new-instance v1, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Lorg/threeten/bp/Duration;->ofNanos(J)Lorg/threeten/bp/Duration;

    move-result-object v4

    const-string v5, "ofNanos(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "ns"

    invoke-direct {v1, v6, v4}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;-><init>(Ljava/lang/String;Lorg/threeten/bp/Duration;)V

    const/4 v4, 0x0

    aput-object v1, v0, v4

    .line 178
    new-instance v1, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;

    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Lorg/threeten/bp/Duration;->ofNanos(J)Lorg/threeten/bp/Duration;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "\u00b5s"

    invoke-direct {v1, v8, v4}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;-><init>(Ljava/lang/String;Lorg/threeten/bp/Duration;)V

    const/4 v4, 0x1

    aput-object v1, v0, v4

    .line 179
    new-instance v1, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;

    invoke-static {v6, v7}, Lorg/threeten/bp/Duration;->ofNanos(J)Lorg/threeten/bp/Duration;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "\u03bcs"

    invoke-direct {v1, v8, v4}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;-><init>(Ljava/lang/String;Lorg/threeten/bp/Duration;)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 180
    new-instance v1, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;

    invoke-static {v6, v7}, Lorg/threeten/bp/Duration;->ofNanos(J)Lorg/threeten/bp/Duration;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "us"

    invoke-direct {v1, v5, v4}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;-><init>(Ljava/lang/String;Lorg/threeten/bp/Duration;)V

    const/4 v4, 0x3

    aput-object v1, v0, v4

    .line 181
    new-instance v1, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;

    invoke-static {v2, v3}, Lorg/threeten/bp/Duration;->ofMillis(J)Lorg/threeten/bp/Duration;

    move-result-object v4

    const-string v5, "ofMillis(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "ms"

    invoke-direct {v1, v5, v4}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;-><init>(Ljava/lang/String;Lorg/threeten/bp/Duration;)V

    const/4 v4, 0x4

    aput-object v1, v0, v4

    .line 182
    new-instance v1, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;

    invoke-static {v2, v3}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v4

    const-string v5, "ofSeconds(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "s"

    invoke-direct {v1, v5, v4}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;-><init>(Ljava/lang/String;Lorg/threeten/bp/Duration;)V

    const/4 v4, 0x5

    aput-object v1, v0, v4

    .line 183
    new-instance v1, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;

    invoke-static {v2, v3}, Lorg/threeten/bp/Duration;->ofMinutes(J)Lorg/threeten/bp/Duration;

    move-result-object v4

    const-string v5, "ofMinutes(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "m"

    invoke-direct {v1, v5, v4}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;-><init>(Ljava/lang/String;Lorg/threeten/bp/Duration;)V

    const/4 v4, 0x6

    aput-object v1, v0, v4

    .line 184
    new-instance v1, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;

    invoke-static {v2, v3}, Lorg/threeten/bp/Duration;->ofHours(J)Lorg/threeten/bp/Duration;

    move-result-object v2

    const-string v3, "ofHours(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "h"

    invoke-direct {v1, v3, v2}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;-><init>(Ljava/lang/String;Lorg/threeten/bp/Duration;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 176
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats;->DURATION_UNITS:Ljava/util/List;

    .line 190
    new-instance v0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$FractionScalarPart;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$FractionScalarPart;-><init>(JJ)V

    sput-object v0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats;->EMPTY_FRACTION:Lcom/superwall/sdk/contrib/threeteen/AmountFormats$FractionScalarPart;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final PREDICATE_1$lambda$0(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method private static final PREDICATE_END1_NOT11$lambda$1(I)Z
    .locals 2

    .line 155
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    .line 156
    rem-int/lit8 v0, p0, 0xa

    .line 157
    rem-int/lit8 p0, p0, 0x64

    div-int/lit8 p0, p0, 0xa

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eq p0, v1, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final PREDICATE_END234_NOTTEENS$lambda$2(I)Z
    .locals 2

    .line 166
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    .line 167
    rem-int/lit8 v0, p0, 0xa

    .line 168
    rem-int/lit8 p0, p0, 0x64

    div-int/lit8 p0, p0, 0xa

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final synthetic access$getPREDICATE_1$p()Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntPredicate;
    .locals 1

    .line 54
    sget-object v0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats;->PREDICATE_1:Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntPredicate;

    return-object v0
.end method

.method public static final synthetic access$getPREDICATE_END1_NOT11$p()Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntPredicate;
    .locals 1

    .line 54
    sget-object v0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats;->PREDICATE_END1_NOT11:Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntPredicate;

    return-object v0
.end method

.method public static final synthetic access$getPREDICATE_END234_NOTTEENS$p()Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntPredicate;
    .locals 1

    .line 54
    sget-object v0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats;->PREDICATE_END234_NOTTEENS:Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntPredicate;

    return-object v0
.end method

.method public static final synthetic access$getSPLITTER$p()Ljava/util/regex/Pattern;
    .locals 1

    .line 54
    sget-object v0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats;->SPLITTER:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private final consumeDurationFraction(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Lcom/superwall/sdk/contrib/threeteen/AmountFormats$ParsedUnitPart;
    .locals 16

    move-object/from16 v0, p1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    move-wide v7, v2

    move-wide v5, v4

    move v4, v1

    .line 559
    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-ge v1, v9, :cond_4

    .line 560
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    .line 561
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v10

    if-ltz v10, :cond_4

    const/16 v10, 0x39

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v10

    if-lez v10, :cond_0

    goto :goto_2

    :cond_0
    if-nez v4, :cond_3

    const-wide v10, 0xcccccccccccccccL

    cmp-long v10, v7, v10

    if-lez v10, :cond_1

    goto :goto_1

    :cond_1
    const/16 v10, 0xa

    int-to-long v10, v10

    mul-long v12, v7, v10

    add-int/lit8 v9, v9, -0x30

    int-to-long v14, v9

    add-long/2addr v12, v14

    cmp-long v9, v12, v2

    if-gez v9, :cond_2

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    mul-long/2addr v5, v10

    add-int/lit8 v1, v1, 0x1

    move-wide v7, v12

    goto :goto_0

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    .line 588
    new-instance v2, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$ParsedUnitPart;

    .line 589
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v0, v1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 590
    new-instance v1, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$FractionScalarPart;

    invoke-direct {v1, v7, v8, v5, v6}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$FractionScalarPart;-><init>(JJ)V

    check-cast v1, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationScalar;

    .line 588
    invoke-direct {v2, v0, v1}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$ParsedUnitPart;-><init>(Ljava/lang/CharSequence;Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationScalar;)V

    return-object v2

    .line 582
    :cond_5
    new-instance v0, Lorg/threeten/bp/format/DateTimeParseException;

    .line 583
    const-string v1, "Missing numeric fraction after \'.\'"

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 582
    invoke-direct {v0, v1, v2, v3}, Lorg/threeten/bp/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0
.end method

.method private final consumeDurationLeadingInt(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Lcom/superwall/sdk/contrib/threeteen/AmountFormats$ParsedUnitPart;
    .locals 11

    .line 512
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_0
    if-ge v3, v0, :cond_3

    .line 514
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    .line 515
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v7

    if-ltz v7, :cond_3

    const/16 v7, 0x39

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v7

    if-lez v7, :cond_0

    goto :goto_1

    :cond_0
    const-wide v7, 0xcccccccccccccccL

    cmp-long v7, v4, v7

    .line 519
    const-string v8, "Duration string exceeds valid numeric range"

    if-gtz v7, :cond_2

    const/16 v7, 0xa

    int-to-long v9, v7

    mul-long/2addr v4, v9

    add-int/lit8 v6, v6, -0x30

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v6, v4, v1

    if-ltz v6, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 530
    :cond_1
    new-instance p1, Lorg/threeten/bp/format/DateTimeParseException;

    add-int/2addr v3, p3

    invoke-direct {p1, v8, p2, v3}, Lorg/threeten/bp/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw p1

    .line 520
    :cond_2
    new-instance p1, Lorg/threeten/bp/format/DateTimeParseException;

    add-int/2addr v3, p3

    invoke-direct {p1, v8, p2, v3}, Lorg/threeten/bp/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw p1

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 542
    new-instance p2, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$ParsedUnitPart;

    .line 543
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-interface {p1, v3, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 544
    new-instance p3, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntegerScalarPart;

    invoke-direct {p3, v4, v5}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntegerScalarPart;-><init>(J)V

    check-cast p3, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationScalar;

    .line 542
    invoke-direct {p2, p1, p3}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$ParsedUnitPart;-><init>(Ljava/lang/CharSequence;Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationScalar;)V

    return-object p2

    .line 540
    :cond_4
    new-instance p1, Lorg/threeten/bp/format/DateTimeParseException;

    const-string v0, "Missing leading integer"

    invoke-direct {p1, v0, p2, p3}, Lorg/threeten/bp/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw p1
.end method

.method private final consumePrefix-gIAlu-s(Ljava/lang/CharSequence;C)Ljava/lang/Object;
    .locals 1

    .line 609
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, p2, :cond_0

    .line 610
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 p2, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 612
    :cond_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Prefix not found"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final findUnit-IoAF18A(Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 3

    .line 596
    sget-object v0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats;->DURATION_UNITS:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 792
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;

    .line 598
    invoke-virtual {v2, p1}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;->prefixMatchesUnit(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 597
    :goto_0
    check-cast v1, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;

    .line 601
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "No matching duration unit found"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final oppositeSigns(II)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p1, :cond_1

    if-ltz p2, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    if-gez p2, :cond_2

    return v0

    :cond_2
    return v1
.end method


# virtual methods
.method public final getResourceBundle(Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .locals 9

    const-string v1, "com.superwall.extra.wordbased"

    const-string v2, "locale"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    :try_start_0
    invoke-static {v1, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 225
    sget-object v3, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 226
    sget-object v4, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 227
    sget-object v5, Lcom/superwall/sdk/logger/LogScope;->localizationManager:Lcom/superwall/sdk/logger/LogScope;

    .line 229
    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v7

    .line 230
    move-object v8, v0

    check-cast v8, Ljava/lang/Throwable;

    .line 225
    const-string v6, "Resource not found: com.superwall.extra.wordbased"

    invoke-virtual/range {v3 .. v8}, Lcom/superwall/sdk/logger/Logger;->debug(Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V

    .line 233
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p1

    return-object p1
.end method

.method public final iso8601(Lorg/threeten/bp/Period;Lorg/threeten/bp/Duration;)Ljava/lang/String;
    .locals 2

    const-string v0, "period"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "duration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    const-string v0, "period must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 210
    const-string v0, "duration must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    invoke-virtual {p1}, Lorg/threeten/bp/Period;->isZero()Z

    move-result v0

    const-string v1, "toString(...)"

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p2}, Lorg/threeten/bp/Duration;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 214
    :cond_0
    invoke-virtual {p2}, Lorg/threeten/bp/Duration;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {p1}, Lorg/threeten/bp/Period;->toString()Ljava/lang/String;

    move-result-object p1

    .line 214
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1

    .line 217
    :cond_1
    invoke-virtual {p2}, Lorg/threeten/bp/Duration;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "substring(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final parseUnitBasedDuration(Ljava/lang/CharSequence;)Lorg/threeten/bp/Duration;
    .locals 10

    const-string v0, "durationText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    const-string v0, "durationText must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0x2d

    .line 434
    invoke-direct {p0, p1, v0}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats;->consumePrefix-gIAlu-s(Ljava/lang/CharSequence;C)Ljava/lang/Object;

    move-result-object v0

    .line 435
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 438
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, v2

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x2b

    .line 440
    invoke-direct {p0, p1, v0}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats;->consumePrefix-gIAlu-s(Ljava/lang/CharSequence;C)Ljava/lang/Object;

    move-result-object v0

    .line 441
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    .line 444
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v2

    :cond_2
    check-cast v0, Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    move-object v0, p1

    :cond_3
    move v9, v3

    move v3, v1

    move v1, v9

    .line 447
    :goto_0
    const-string v4, "0"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 448
    sget-object p1, Lorg/threeten/bp/Duration;->ZERO:Lorg/threeten/bp/Duration;

    const-string v0, "ZERO"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 451
    :cond_4
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eqz v4, :cond_b

    .line 454
    sget-object v4, Lorg/threeten/bp/Duration;->ZERO:Lorg/threeten/bp/Duration;

    .line 455
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    :goto_1
    if-lez v5, :cond_9

    .line 457
    invoke-direct {p0, v0, p1, v3}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats;->consumeDurationLeadingInt(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Lcom/superwall/sdk/contrib/threeteen/AmountFormats$ParsedUnitPart;

    move-result-object v5

    .line 458
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v5}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$ParsedUnitPart;->remainingText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    sub-int/2addr v0, v6

    add-int/2addr v3, v0

    .line 459
    invoke-virtual {v5}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$ParsedUnitPart;->remainingText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 460
    check-cast v5, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationScalar;

    .line 461
    sget-object v6, Lcom/superwall/sdk/contrib/threeteen/AmountFormats;->EMPTY_FRACTION:Lcom/superwall/sdk/contrib/threeteen/AmountFormats$FractionScalarPart;

    check-cast v6, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationScalar;

    const/16 v7, 0x2e

    .line 462
    invoke-direct {p0, v0, v7}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats;->consumePrefix-gIAlu-s(Ljava/lang/CharSequence;C)Ljava/lang/Object;

    move-result-object v7

    .line 463
    invoke-static {v7}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    add-int/lit8 v3, v3, 0x1

    .line 465
    invoke-static {v7}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v7, v2

    :cond_5
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v7, Ljava/lang/CharSequence;

    .line 466
    invoke-direct {p0, v7, p1, v3}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats;->consumeDurationFraction(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Lcom/superwall/sdk/contrib/threeteen/AmountFormats$ParsedUnitPart;

    move-result-object v0

    .line 468
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v0}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$ParsedUnitPart;->remainingText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v3, v6

    .line 469
    invoke-virtual {v0}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$ParsedUnitPart;->remainingText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 470
    check-cast v0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationScalar;

    move-object v9, v6

    move-object v6, v0

    move-object v0, v9

    .line 472
    :cond_6
    invoke-direct {p0, v0}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats;->findUnit-IoAF18A(Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object v7

    .line 473
    invoke-static {v7}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 480
    invoke-static {v7}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    move-object v7, v2

    :cond_7
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v7, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;

    .line 482
    :try_start_0
    invoke-interface {v5, v7}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationScalar;->applyTo(Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;)Lorg/threeten/bp/Duration;

    move-result-object v5

    .line 483
    invoke-interface {v6, v7}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationScalar;->applyTo(Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;)Lorg/threeten/bp/Duration;

    move-result-object v6

    .line 484
    invoke-virtual {v5, v6}, Lorg/threeten/bp/Duration;->plus(Lorg/threeten/bp/Duration;)Lorg/threeten/bp/Duration;

    move-result-object v5

    .line 485
    invoke-virtual {v4, v5}, Lorg/threeten/bp/Duration;->plus(Lorg/threeten/bp/Duration;)Lorg/threeten/bp/Duration;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    invoke-virtual {v7, v0}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;->consumeDurationUnit(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 496
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    sub-int/2addr v0, v6

    add-int/2addr v3, v0

    .line 498
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move-object v9, v5

    move v5, v0

    move-object v0, v9

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .line 487
    new-instance v1, Lorg/threeten/bp/format/DateTimeParseException;

    .line 488
    const-string v2, "Duration string exceeds valid numeric range"

    .line 491
    check-cast v0, Ljava/lang/Throwable;

    .line 487
    invoke-direct {v1, v2, p1, v3, v0}, Lorg/threeten/bp/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILjava/lang/Throwable;)V

    throw v1

    .line 474
    :cond_8
    new-instance v0, Lorg/threeten/bp/format/DateTimeParseException;

    .line 475
    const-string v1, "Invalid duration unit"

    .line 474
    invoke-direct {v0, v1, p1, v3}, Lorg/threeten/bp/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_9
    if-gez v1, :cond_a

    .line 500
    invoke-virtual {v4}, Lorg/threeten/bp/Duration;->negated()Lorg/threeten/bp/Duration;

    move-result-object p1

    const-string v0, "negated(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_a
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v4

    .line 452
    :cond_b
    new-instance v0, Lorg/threeten/bp/format/DateTimeParseException;

    const-string v1, "Not a numeric value"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lorg/threeten/bp/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0
.end method

.method public final wordBased(Lorg/threeten/bp/Duration;Ljava/util/Locale;)Ljava/lang/String;
    .locals 10

    const-string v0, "duration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locale"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    const-string v0, "duration must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 303
    const-string v0, "locale must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 304
    const-string v0, "com.superwall.extra.wordbased"

    invoke-static {v0, p2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p2

    const/4 v0, 0x4

    .line 307
    new-array v0, v0, [Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;

    sget-object v1, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;->Companion:Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat$Companion;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "WordBased.hour"

    invoke-virtual {v1, p2, v2}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat$Companion;->of(Ljava/util/ResourceBundle;Ljava/lang/String;)Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 308
    sget-object v1, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;->Companion:Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat$Companion;

    const-string v2, "WordBased.minute"

    invoke-virtual {v1, p2, v2}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat$Companion;->of(Ljava/util/ResourceBundle;Ljava/lang/String;)Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 309
    sget-object v1, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;->Companion:Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat$Companion;

    const-string v2, "WordBased.second"

    invoke-virtual {v1, p2, v2}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat$Companion;->of(Ljava/util/ResourceBundle;Ljava/lang/String;)Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 310
    sget-object v1, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;->Companion:Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat$Companion;

    const-string v2, "WordBased.millisecond"

    invoke-virtual {v1, p2, v2}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat$Companion;->of(Ljava/util/ResourceBundle;Ljava/lang/String;)Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 313
    new-instance v1, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$WordBased;

    .line 315
    const-string v2, "WordBased.commaspace"

    invoke-virtual {p2, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    const-string v4, "WordBased.spaceandspace"

    .line 316
    invoke-virtual {p2, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    invoke-direct {v1, v0, v2, p2}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$WordBased;-><init>([Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {p1}, Lorg/threeten/bp/Duration;->toHours()J

    move-result-wide v2

    .line 321
    invoke-virtual {p1}, Lorg/threeten/bp/Duration;->toMinutes()J

    move-result-wide v4

    const/16 p2, 0x3c

    int-to-long v6, p2

    rem-long/2addr v4, v6

    .line 322
    invoke-virtual {p1}, Lorg/threeten/bp/Duration;->getSeconds()J

    move-result-wide v8

    rem-long/2addr v8, v6

    .line 323
    invoke-virtual {p1}, Lorg/threeten/bp/Duration;->getNano()I

    move-result p1

    const p2, 0xf4240

    div-int/2addr p1, p2

    long-to-int p2, v2

    long-to-int v0, v4

    long-to-int v2, v8

    .line 324
    filled-new-array {p2, v0, v2, p1}, [I

    move-result-object p1

    .line 325
    invoke-virtual {v1, p1}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$WordBased;->format([I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final wordBased(Lorg/threeten/bp/Period;Ljava/util/Locale;)Ljava/lang/String;
    .locals 7

    const-string v0, "period"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locale"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    const-string v0, "period must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 256
    const-string v0, "locale must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 257
    invoke-virtual {p0, p2}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats;->getResourceBundle(Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p2

    const/4 v0, 0x4

    .line 260
    new-array v0, v0, [Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;

    sget-object v1, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;->Companion:Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat$Companion;

    const-string v2, "WordBased.year"

    invoke-virtual {v1, p2, v2}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat$Companion;->of(Ljava/util/ResourceBundle;Ljava/lang/String;)Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 261
    sget-object v1, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;->Companion:Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat$Companion;

    const-string v3, "WordBased.month"

    invoke-virtual {v1, p2, v3}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat$Companion;->of(Ljava/util/ResourceBundle;Ljava/lang/String;)Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 262
    sget-object v1, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;->Companion:Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat$Companion;

    const-string v3, "WordBased.week"

    invoke-virtual {v1, p2, v3}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat$Companion;->of(Ljava/util/ResourceBundle;Ljava/lang/String;)Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 263
    sget-object v1, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;->Companion:Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat$Companion;

    const-string v3, "WordBased.day"

    invoke-virtual {v1, p2, v3}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat$Companion;->of(Ljava/util/ResourceBundle;Ljava/lang/String;)Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 266
    new-instance v1, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$WordBased;

    .line 268
    const-string v3, "WordBased.commaspace"

    invoke-virtual {p2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    const-string v5, "WordBased.spaceandspace"

    .line 269
    invoke-virtual {p2, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    invoke-direct {v1, v0, v3, p2}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$WordBased;-><init>([Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p1}, Lorg/threeten/bp/Period;->getMonths()I

    move-result p2

    invoke-virtual {p1}, Lorg/threeten/bp/Period;->getYears()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats;->oppositeSigns(II)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/threeten/bp/Period;->normalized()Lorg/threeten/bp/Period;

    move-result-object p1

    .line 277
    :cond_0
    invoke-virtual {p1}, Lorg/threeten/bp/Period;->getDays()I

    move-result p2

    rem-int/lit8 p2, p2, 0x7

    if-nez p2, :cond_1

    .line 278
    invoke-virtual {p1}, Lorg/threeten/bp/Period;->getDays()I

    move-result p2

    div-int/lit8 p2, p2, 0x7

    move v6, v2

    move v2, p2

    move p2, v6

    goto :goto_0

    .line 280
    :cond_1
    invoke-virtual {p1}, Lorg/threeten/bp/Period;->getDays()I

    move-result p2

    .line 282
    :goto_0
    invoke-virtual {p1}, Lorg/threeten/bp/Period;->getYears()I

    move-result v0

    invoke-virtual {p1}, Lorg/threeten/bp/Period;->getMonths()I

    move-result p1

    filled-new-array {v0, p1, v2, p2}, [I

    move-result-object p1

    .line 283
    invoke-virtual {v1, p1}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$WordBased;->format([I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final wordBased(Lorg/threeten/bp/Period;Lorg/threeten/bp/Duration;Ljava/util/Locale;)Ljava/lang/String;
    .locals 11

    const-string v0, "period"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "duration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locale"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    const-string v0, "period must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 348
    const-string v0, "duration must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 349
    const-string v0, "locale must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 350
    const-string v0, "com.superwall.extra.wordbased"

    invoke-static {v0, p3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p3

    const/16 v0, 0x8

    .line 353
    new-array v0, v0, [Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;

    sget-object v1, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;->Companion:Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat$Companion;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "WordBased.year"

    invoke-virtual {v1, p3, v2}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat$Companion;->of(Ljava/util/ResourceBundle;Ljava/lang/String;)Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 354
    sget-object v1, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;->Companion:Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat$Companion;

    const-string v3, "WordBased.month"

    invoke-virtual {v1, p3, v3}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat$Companion;->of(Ljava/util/ResourceBundle;Ljava/lang/String;)Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 355
    sget-object v1, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;->Companion:Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat$Companion;

    const-string v3, "WordBased.week"

    invoke-virtual {v1, p3, v3}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat$Companion;->of(Ljava/util/ResourceBundle;Ljava/lang/String;)Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 356
    sget-object v1, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;->Companion:Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat$Companion;

    const-string v3, "WordBased.day"

    invoke-virtual {v1, p3, v3}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat$Companion;->of(Ljava/util/ResourceBundle;Ljava/lang/String;)Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 357
    sget-object v1, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;->Companion:Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat$Companion;

    const-string v3, "WordBased.hour"

    invoke-virtual {v1, p3, v3}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat$Companion;->of(Ljava/util/ResourceBundle;Ljava/lang/String;)Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 358
    sget-object v1, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;->Companion:Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat$Companion;

    const-string v3, "WordBased.minute"

    invoke-virtual {v1, p3, v3}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat$Companion;->of(Ljava/util/ResourceBundle;Ljava/lang/String;)Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    .line 359
    sget-object v1, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;->Companion:Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat$Companion;

    const-string v3, "WordBased.second"

    invoke-virtual {v1, p3, v3}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat$Companion;->of(Ljava/util/ResourceBundle;Ljava/lang/String;)Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    .line 360
    sget-object v1, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;->Companion:Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat$Companion;

    const-string v3, "WordBased.millisecond"

    invoke-virtual {v1, p3, v3}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat$Companion;->of(Ljava/util/ResourceBundle;Ljava/lang/String;)Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    .line 363
    new-instance v1, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$WordBased;

    .line 365
    const-string v4, "WordBased.commaspace"

    invoke-virtual {p3, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    const-string v6, "WordBased.spaceandspace"

    .line 366
    invoke-virtual {p3, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    invoke-direct {v1, v0, v4, p3}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$WordBased;-><init>([Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual {p1}, Lorg/threeten/bp/Period;->getMonths()I

    move-result p3

    invoke-virtual {p1}, Lorg/threeten/bp/Period;->getYears()I

    move-result v0

    invoke-direct {p0, p3, v0}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats;->oppositeSigns(II)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lorg/threeten/bp/Period;->normalized()Lorg/threeten/bp/Period;

    move-result-object p1

    .line 374
    :cond_0
    invoke-virtual {p1}, Lorg/threeten/bp/Period;->getDays()I

    move-result p3

    rem-int/2addr p3, v3

    if-nez p3, :cond_1

    .line 375
    invoke-virtual {p1}, Lorg/threeten/bp/Period;->getDays()I

    move-result p3

    div-int/2addr p3, v3

    move v5, p3

    goto :goto_0

    .line 377
    :cond_1
    invoke-virtual {p1}, Lorg/threeten/bp/Period;->getDays()I

    move-result p3

    move v5, v2

    move v2, p3

    .line 379
    :goto_0
    invoke-virtual {p2}, Lorg/threeten/bp/Duration;->toHours()J

    move-result-wide v3

    const/16 p3, 0x18

    int-to-long v6, p3

    .line 380
    div-long v8, v3, v6

    long-to-int p3, v8

    add-int/2addr v2, p3

    .line 381
    rem-long/2addr v3, v6

    long-to-int v7, v3

    .line 382
    invoke-virtual {p2}, Lorg/threeten/bp/Duration;->toMinutes()J

    move-result-wide v3

    const/16 p3, 0x3c

    int-to-long v8, p3

    rem-long/2addr v3, v8

    long-to-int p3, v3

    .line 383
    invoke-virtual {p2}, Lorg/threeten/bp/Duration;->getSeconds()J

    move-result-wide v3

    rem-long/2addr v3, v8

    long-to-int v9, v3

    .line 384
    invoke-virtual {p2}, Lorg/threeten/bp/Duration;->getNano()I

    move-result p2

    const v0, 0xf4240

    div-int v10, p2, v0

    .line 387
    invoke-virtual {p1}, Lorg/threeten/bp/Period;->getYears()I

    move-result v3

    .line 388
    invoke-virtual {p1}, Lorg/threeten/bp/Period;->getMonths()I

    move-result v4

    move v8, p3

    move v6, v2

    .line 394
    filled-new-array/range {v3 .. v10}, [I

    move-result-object p1

    .line 396
    invoke-virtual {v1, p1}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$WordBased;->format([I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
