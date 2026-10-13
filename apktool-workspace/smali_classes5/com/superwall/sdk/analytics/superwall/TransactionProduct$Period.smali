.class public final Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;
.super Ljava/lang/Object;
.source "TransactionProduct.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/analytics/superwall/TransactionProduct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Period"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0018\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0008H\u00c6\u0003JO\u0010\u001f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010#\u001a\u00020\u0008H\u00d6\u0001J\t\u0010$\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0014R\u0011\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0014R\u0011\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0014\u00a8\u0006%"
    }
    d2 = {
        "Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;",
        "",
        "alt",
        "",
        "ly",
        "unit",
        "Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;",
        "days",
        "",
        "weeks",
        "months",
        "years",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;IIII)V",
        "getAlt",
        "()Ljava/lang/String;",
        "getLy",
        "getUnit",
        "()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;",
        "getDays",
        "()I",
        "getWeeks",
        "getMonths",
        "getYears",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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
.field private final alt:Ljava/lang/String;

.field private final days:I

.field private final ly:Ljava/lang/String;

.field private final months:I

.field private final unit:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

.field private final weeks:I

.field private final years:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;IIII)V
    .locals 1

    const-string v0, "alt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ly"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->alt:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->ly:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->unit:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    .line 39
    iput p4, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->days:I

    .line 40
    iput p5, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->weeks:I

    .line 41
    iput p6, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->months:I

    .line 42
    iput p7, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->years:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;IIIIILjava/lang/Object;)Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->alt:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->ly:Ljava/lang/String;

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    iget-object p3, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->unit:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    iget p4, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->days:I

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    iget p5, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->weeks:I

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    iget p6, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->months:I

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    iget p7, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->years:I

    :cond_6
    move p8, p6

    move p9, p7

    move p6, p4

    move p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p9}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;IIII)Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->alt:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->ly:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->unit:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->days:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->weeks:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->months:I

    return v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->years:I

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;IIII)Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;
    .locals 9

    const-string v0, "alt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ly"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;IIII)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;

    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->alt:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->alt:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->ly:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->ly:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->unit:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    iget-object v3, p1, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->unit:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->days:I

    iget v3, p1, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->days:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->weeks:I

    iget v3, p1, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->weeks:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->months:I

    iget v3, p1, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->months:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->years:I

    iget p1, p1, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->years:I

    if-eq v1, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getAlt()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->alt:Ljava/lang/String;

    return-object v0
.end method

.method public final getDays()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->days:I

    return v0
.end method

.method public final getLy()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->ly:Ljava/lang/String;

    return-object v0
.end method

.method public final getMonths()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->months:I

    return v0
.end method

.method public final getUnit()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->unit:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    return-object v0
.end method

.method public final getWeeks()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->weeks:I

    return v0
.end method

.method public final getYears()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->years:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->alt:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->ly:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->unit:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->days:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->weeks:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->months:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->years:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->alt:Ljava/lang/String;

    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->ly:Ljava/lang/String;

    iget-object v2, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->unit:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    iget v3, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->days:I

    iget v4, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->weeks:I

    iget v5, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->months:I

    iget v6, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;->years:I

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Period(alt="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", ly="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", unit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", days="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weeks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", months="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", years="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
