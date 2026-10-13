.class public final Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;
.super Ljava/lang/Object;
.source "SubscriptionPeriod.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Companion;,
        Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;,
        Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 +2\u00020\u0001:\u0002*+B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0000J\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cJ\u000e\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cJ\u000e\u0010\u001f\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cJ\u000e\u0010 \u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cJ\t\u0010!\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010#\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010$\u001a\u00020%2\u0008\u0010&\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\'\u001a\u00020\u0003H\u00d6\u0001J\t\u0010(\u001a\u00020)H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0003X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0003X\u0082D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0010\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006,"
    }
    d2 = {
        "Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;",
        "",
        "value",
        "",
        "unit",
        "Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;",
        "<init>",
        "(ILcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;)V",
        "getValue",
        "()I",
        "getUnit",
        "()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;",
        "daysPerUnit",
        "",
        "getDaysPerUnit",
        "()D",
        "toMillis",
        "",
        "normalized",
        "toPeriod",
        "Lorg/threeten/bp/Period;",
        "roundingMode",
        "Ljava/math/RoundingMode;",
        "calculationScale",
        "outputScale",
        "getToMillis",
        "()J",
        "pricePerDay",
        "Ljava/math/BigDecimal;",
        "price",
        "pricePerWeek",
        "pricePerMonth",
        "pricePerYear",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "Unit",
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


# static fields
.field public static final Companion:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Companion;


# instance fields
.field private final calculationScale:I

.field private final outputScale:I

.field private final roundingMode:Ljava/math/RoundingMode;

.field private final unit:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->Companion:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Companion;

    return-void
.end method

.method public constructor <init>(ILcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;)V
    .locals 1

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->value:I

    .line 9
    iput-object p2, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->unit:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    .line 95
    sget-object p1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->roundingMode:Ljava/math/RoundingMode;

    const/4 p1, 0x7

    .line 96
    iput p1, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->calculationScale:I

    const/4 p1, 0x2

    .line 97
    iput p1, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->outputScale:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;ILcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;ILjava/lang/Object;)Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->value:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->unit:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->copy(ILcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;)Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->value:I

    return v0
.end method

.method public final component2()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->unit:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    return-object v0
.end method

.method public final copy(ILcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;)Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;
    .locals 1

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    invoke-direct {v0, p1, p2}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;-><init>(ILcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    iget v1, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->value:I

    iget v3, p1, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->value:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->unit:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    iget-object p1, p1, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->unit:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDaysPerUnit()D
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->unit:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$WhenMappings;->$EnumSwitchMapping$0:[I

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

    const-wide v0, 0x4076d00000000000L    # 365.0

    return-wide v0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    return-wide v0

    :cond_2
    const-wide/high16 v0, 0x401c000000000000L    # 7.0

    return-wide v0

    :cond_3
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method public final getToMillis()J
    .locals 4

    .line 101
    iget v0, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->value:I

    int-to-double v0, v0

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getDaysPerUnit()D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    const/16 v2, 0x18

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const/16 v2, 0x3c

    int-to-long v2, v2

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    const/16 v2, 0x3e8

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public final getUnit()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->unit:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    return-object v0
.end method

.method public final getValue()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->value:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->unit:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final normalized()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->unit:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    iget v0, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->value:I

    rem-int/lit8 v1, v0, 0xc

    if-nez v1, :cond_4

    div-int/lit8 v0, v0, 0xc

    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->year:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    invoke-virtual {p0, v0, v1}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->copy(ILcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;)Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object v0

    return-object v0

    .line 41
    :cond_1
    iget v0, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->value:I

    rem-int/lit8 v1, v0, 0x1e

    if-nez v1, :cond_2

    .line 42
    div-int/lit8 v0, v0, 0x1e

    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->month:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    invoke-virtual {p0, v0, v1}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->copy(ILcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;)Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->normalized()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object v0

    return-object v0

    .line 44
    :cond_2
    rem-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_3

    .line 45
    div-int/lit8 v0, v0, 0x7

    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->week:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    invoke-virtual {p0, v0, v1}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->copy(ILcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;)Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->normalized()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object v0

    return-object v0

    .line 47
    :cond_3
    rem-int/lit16 v1, v0, 0x168

    if-nez v1, :cond_4

    .line 48
    div-int/lit16 v0, v0, 0x168

    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->year:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    invoke-virtual {p0, v0, v1}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->copy(ILcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;)Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_0
    return-object p0
.end method

.method public final pricePerDay(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 4

    const-string v0, "price"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->unit:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    const/16 v2, 0x16d

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 114
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(I)V

    goto :goto_0

    .line 107
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 113
    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(I)V

    new-instance v1, Ljava/math/BigDecimal;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    iget v2, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->calculationScale:I

    iget-object v3, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 112
    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    goto :goto_0

    .line 108
    :cond_3
    sget-object v0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 107
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 115
    new-instance v1, Ljava/math/BigDecimal;

    iget v2, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->value:I

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    .line 107
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    const-string v1, "multiply(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget v1, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->outputScale:I

    iget-object v2, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {p1, v0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    const-string v0, "divide(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final pricePerMonth(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 4

    const-string v0, "price"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->unit:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/16 v2, 0xc

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 140
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(I)V

    goto :goto_0

    .line 136
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 139
    :cond_1
    sget-object v0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    goto :goto_0

    .line 138
    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(I)V

    new-instance v1, Ljava/math/BigDecimal;

    const/16 v2, 0x34

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    iget v2, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->calculationScale:I

    iget-object v3, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_3
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(I)V

    new-instance v1, Ljava/math/BigDecimal;

    const/16 v2, 0x16d

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    iget v2, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->calculationScale:I

    iget-object v3, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 136
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 141
    new-instance v1, Ljava/math/BigDecimal;

    iget v2, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->value:I

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    .line 136
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    const-string v1, "multiply(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget v1, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->outputScale:I

    iget-object v2, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {p1, v0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    const-string v0, "divide(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final pricePerWeek(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 4

    const-string v0, "price"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->unit:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    const/16 v2, 0x34

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 128
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(I)V

    goto :goto_0

    .line 122
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 127
    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(I)V

    new-instance v1, Ljava/math/BigDecimal;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    iget v2, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->calculationScale:I

    iget-object v3, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_2
    sget-object v0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    goto :goto_0

    .line 125
    :cond_3
    sget-object v0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    new-instance v1, Ljava/math/BigDecimal;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    iget v2, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->calculationScale:I

    iget-object v3, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 122
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 129
    new-instance v1, Ljava/math/BigDecimal;

    iget v2, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->value:I

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    .line 122
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    const-string v1, "multiply(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget v1, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->outputScale:I

    iget-object v2, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {p1, v0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    const-string v0, "divide(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final pricePerYear(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 4

    const-string v0, "price"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->unit:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$WhenMappings;->$EnumSwitchMapping$0:[I

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

    .line 152
    sget-object v0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    goto :goto_0

    .line 148
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 151
    :cond_1
    sget-object v0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    new-instance v1, Ljava/math/BigDecimal;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    iget v2, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->calculationScale:I

    iget-object v3, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 150
    :cond_2
    sget-object v0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    new-instance v1, Ljava/math/BigDecimal;

    const/16 v2, 0x34

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    iget v2, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->calculationScale:I

    iget-object v3, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_3
    sget-object v0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    new-instance v1, Ljava/math/BigDecimal;

    const/16 v2, 0x16d

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    iget v2, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->calculationScale:I

    iget-object v3, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 153
    :goto_0
    new-instance v1, Ljava/math/BigDecimal;

    iget v2, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->value:I

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    const-string v1, "multiply(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iget v1, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->outputScale:I

    iget-object v2, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {p1, v0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    const-string v0, "divide(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final toMillis()J
    .locals 4

    .line 29
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->unit:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$WhenMappings;->$EnumSwitchMapping$0:[I

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

    .line 33
    iget v0, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->value:I

    mul-int/lit16 v0, v0, 0x16d

    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 32
    :cond_1
    iget v0, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->value:I

    mul-int/lit8 v0, v0, 0x1e

    goto :goto_0

    .line 31
    :cond_2
    iget v0, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->value:I

    mul-int/lit8 v0, v0, 0x7

    goto :goto_0

    .line 30
    :cond_3
    iget v0, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->value:I

    :goto_0
    int-to-long v0, v0

    const-wide/16 v2, 0x18

    mul-long/2addr v0, v2

    const/16 v2, 0x3c

    int-to-long v2, v2

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    const/16 v2, 0x3e8

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public final toPeriod()Lorg/threeten/bp/Period;
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->unit:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$WhenMappings;->$EnumSwitchMapping$0:[I

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

    .line 64
    iget v0, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->value:I

    invoke-static {v0}, Lorg/threeten/bp/Period;->ofYears(I)Lorg/threeten/bp/Period;

    move-result-object v0

    const-string v1, "ofYears(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 60
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 63
    :cond_1
    iget v0, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->value:I

    invoke-static {v0}, Lorg/threeten/bp/Period;->ofMonths(I)Lorg/threeten/bp/Period;

    move-result-object v0

    const-string v1, "ofMonths(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 62
    :cond_2
    iget v0, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->value:I

    invoke-static {v0}, Lorg/threeten/bp/Period;->ofWeeks(I)Lorg/threeten/bp/Period;

    move-result-object v0

    const-string v1, "ofWeeks(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 61
    :cond_3
    iget v0, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->value:I

    invoke-static {v0}, Lorg/threeten/bp/Period;->ofDays(I)Lorg/threeten/bp/Period;

    move-result-object v0

    const-string v1, "ofDays(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->value:I

    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->unit:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SubscriptionPeriod(value="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", unit="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
