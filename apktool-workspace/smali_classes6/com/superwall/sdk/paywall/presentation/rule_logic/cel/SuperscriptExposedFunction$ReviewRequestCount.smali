.class public final Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$ReviewRequestCount;
.super Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;
.source "SuperscriptExposedFunction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReviewRequestCount"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$ReviewRequestCount$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bH\u0086B\u00a2\u0006\u0002\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$ReviewRequestCount;",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;",
        "period",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;",
        "<init>",
        "(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;)V",
        "getPeriod",
        "()Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;",
        "invoke",
        "",
        "storage",
        "Lcom/superwall/sdk/storage/core_data/CoreDataManager;",
        "(Lcom/superwall/sdk/storage/core_data/CoreDataManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final period:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;


# direct methods
.method public constructor <init>(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;)V
    .locals 1

    const-string v0, "period"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 94
    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$ReviewRequestCount;->period:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;

    return-void
.end method


# virtual methods
.method public final getPeriod()Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$ReviewRequestCount;->period:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;

    return-object v0
.end method

.method public final invoke(Lcom/superwall/sdk/storage/core_data/CoreDataManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/storage/core_data/CoreDataManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 99
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$ReviewRequestCount;->period:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;

    sget-object v2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$ReviewRequestCount$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 100
    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_1

    .line 102
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 103
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 104
    iget-object v3, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$ReviewRequestCount;->period:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;

    sget-object v4, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$ReviewRequestCount$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eq v3, v4, :cond_5

    const/4 v6, 0x2

    if-eq v3, v6, :cond_4

    const/4 v2, 0x3

    if-eq v3, v2, :cond_3

    const/4 v2, 0x4

    if-eq v3, v2, :cond_2

    const/4 v2, 0x5

    if-eq v3, v2, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 109
    :cond_1
    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {v1, v6, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 107
    :cond_3
    invoke-virtual {v1, v2, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 106
    :cond_4
    invoke-virtual {v1, v2, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_5
    const/16 v2, 0xa

    .line 105
    invoke-virtual {v1, v2, v5}, Ljava/util/Calendar;->add(II)V

    .line 112
    :goto_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 118
    :goto_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 116
    const-string v2, "review_requested"

    invoke-virtual {p1, v2, v1, v0, p2}, Lcom/superwall/sdk/storage/core_data/CoreDataManager;->countEventsByNameInPeriod(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
