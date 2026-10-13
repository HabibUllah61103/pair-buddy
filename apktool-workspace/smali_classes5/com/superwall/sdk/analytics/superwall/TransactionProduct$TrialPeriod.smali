.class public final Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;
.super Ljava/lang/Object;
.source "TransactionProduct.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/analytics/superwall/TransactionProduct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrialPeriod"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0008H\u00c6\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\nH\u00c6\u0003JG\u0010\u001c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\nH\u00c6\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010 \u001a\u00020\u0003H\u00d6\u0001J\t\u0010!\u001a\u00020\u0008H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\""
    }
    d2 = {
        "Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;",
        "",
        "days",
        "",
        "weeks",
        "months",
        "years",
        "text",
        "",
        "endAt",
        "Ljava/util/Date;",
        "<init>",
        "(IIIILjava/lang/String;Ljava/util/Date;)V",
        "getDays",
        "()I",
        "getWeeks",
        "getMonths",
        "getYears",
        "getText",
        "()Ljava/lang/String;",
        "getEndAt",
        "()Ljava/util/Date;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
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
.field private final days:I

.field private final endAt:Ljava/util/Date;

.field private final months:I

.field private final text:Ljava/lang/String;

.field private final weeks:I

.field private final years:I


# direct methods
.method public constructor <init>(IIIILjava/lang/String;Ljava/util/Date;)V
    .locals 1

    const-string/jumbo v0, "text"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->days:I

    .line 28
    iput p2, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->weeks:I

    .line 29
    iput p3, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->months:I

    .line 30
    iput p4, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->years:I

    .line 31
    iput-object p5, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->text:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->endAt:Ljava/util/Date;

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;IIIILjava/lang/String;Ljava/util/Date;ILjava/lang/Object;)Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget p1, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->days:I

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->weeks:I

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget p3, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->months:I

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget p4, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->years:I

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget-object p5, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->text:Ljava/lang/String;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget-object p6, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->endAt:Ljava/util/Date;

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move p5, p3

    move p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->copy(IIIILjava/lang/String;Ljava/util/Date;)Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->days:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->weeks:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->months:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->years:I

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->endAt:Ljava/util/Date;

    return-object v0
.end method

.method public final copy(IIIILjava/lang/String;Ljava/util/Date;)Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;
    .locals 8

    const-string/jumbo v0, "text"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;-><init>(IIIILjava/lang/String;Ljava/util/Date;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;

    iget v1, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->days:I

    iget v3, p1, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->days:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->weeks:I

    iget v3, p1, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->weeks:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->months:I

    iget v3, p1, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->months:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->years:I

    iget v3, p1, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->years:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->text:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->endAt:Ljava/util/Date;

    iget-object p1, p1, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->endAt:Ljava/util/Date;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getDays()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->days:I

    return v0
.end method

.method public final getEndAt()Ljava/util/Date;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->endAt:Ljava/util/Date;

    return-object v0
.end method

.method public final getMonths()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->months:I

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getWeeks()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->weeks:I

    return v0
.end method

.method public final getYears()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->years:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->days:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->weeks:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->months:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->years:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->endAt:Ljava/util/Date;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->days:I

    iget v1, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->weeks:I

    iget v2, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->months:I

    iget v3, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->years:I

    iget-object v4, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->text:Ljava/lang/String;

    iget-object v5, p0, Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;->endAt:Ljava/util/Date;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "TrialPeriod(days="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", weeks="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", months="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", years="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
