.class public final Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Companion;
.super Ljava/lang/Object;
.source "SubscriptionPeriod.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Companion;",
        "",
        "<init>",
        "()V",
        "from",
        "Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;",
        "subscriptionPeriodString",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(Ljava/lang/String;)Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;
    .locals 5

    const-string v0, "subscriptionPeriodString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 71
    :try_start_0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lorg/threeten/bp/Period;->parse(Ljava/lang/CharSequence;)Lorg/threeten/bp/Period;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-virtual {p1}, Lorg/threeten/bp/Period;->toTotalMonths()J

    move-result-wide v1

    long-to-int v1, v1

    mul-int/lit8 v1, v1, 0x1e

    invoke-virtual {p1}, Lorg/threeten/bp/Period;->getDays()I

    move-result v2

    add-int/2addr v1, v2

    .line 77
    div-int/lit8 v2, v1, 0x7

    .line 78
    rem-int/lit8 v3, v1, 0x7

    if-lez v3, :cond_0

    .line 81
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    sget-object v2, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->day:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    invoke-direct {p1, v1, v2}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;-><init>(ILcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;)V

    goto :goto_1

    :cond_0
    if-lez v2, :cond_1

    .line 82
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->week:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    invoke-direct {p1, v2, v1}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;-><init>(ILcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;)V

    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual {p1}, Lorg/threeten/bp/Period;->toTotalMonths()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 84
    new-instance v1, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    .line 85
    invoke-virtual {p1}, Lorg/threeten/bp/Period;->toTotalMonths()J

    move-result-wide v2

    long-to-int p1, v2

    .line 86
    sget-object v2, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->month:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    .line 84
    invoke-direct {v1, p1, v2}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;-><init>(ILcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;)V

    :goto_0
    move-object p1, v1

    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {p1}, Lorg/threeten/bp/Period;->getYears()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v1, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    invoke-virtual {p1}, Lorg/threeten/bp/Period;->getYears()I

    move-result p1

    sget-object v2, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->year:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    invoke-direct {v1, p1, v2}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;-><init>(ILcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;)V

    goto :goto_0

    :cond_3
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_4

    .line 91
    invoke-virtual {p1}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->normalized()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p1

    return-object p1

    :catchall_0
    :cond_4
    return-object v0
.end method
