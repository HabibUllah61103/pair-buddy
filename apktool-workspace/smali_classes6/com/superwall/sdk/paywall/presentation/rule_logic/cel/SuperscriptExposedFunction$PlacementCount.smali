.class public final Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$PlacementCount;
.super Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;
.source "SuperscriptExposedFunction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlacementCount"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$PlacementCount$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0018\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0086B\u00a2\u0006\u0002\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$PlacementCount;",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;",
        "event",
        "",
        "period",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;",
        "<init>",
        "(Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;)V",
        "getEvent",
        "()Ljava/lang/String;",
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
.field private final event:Ljava/lang/String;

.field private final period:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "period"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 63
    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$PlacementCount;->event:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$PlacementCount;->period:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;

    return-void
.end method


# virtual methods
.method public final getEvent()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$PlacementCount;->event:Ljava/lang/String;

    return-object v0
.end method

.method public final getPeriod()Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$PlacementCount;->period:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;

    return-object v0
.end method

.method public final invoke(Lcom/superwall/sdk/storage/core_data/CoreDataManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
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

    .line 67
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 69
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$PlacementCount;->period:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;

    sget-object v2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$PlacementCount$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 70
    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_1

    .line 72
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 73
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 74
    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$PlacementCount;->period:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;

    sget-object v3, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$PlacementCount$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v5, 0x3

    if-eq v2, v5, :cond_2

    const/4 v5, 0x4

    if-eq v2, v5, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 78
    :cond_1
    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x6

    .line 76
    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_4
    const/16 v2, 0xa

    .line 75
    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 81
    :goto_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 86
    :goto_1
    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$PlacementCount;->event:Ljava/lang/String;

    .line 87
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p1, v2, v1, v0, p2}, Lcom/superwall/sdk/storage/core_data/CoreDataManager;->countEventsByNameInPeriod(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
