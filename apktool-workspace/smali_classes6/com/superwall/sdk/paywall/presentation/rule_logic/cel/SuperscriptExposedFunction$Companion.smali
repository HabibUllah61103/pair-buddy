.class public final Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Companion;
.super Ljava/lang/Object;
.source "SuperscriptExposedFunction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Companion;",
        "",
        "<init>",
        "()V",
        "from",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;",
        "name",
        "",
        "args",
        "",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;",
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

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(Ljava/lang/String;Ljava/util/List;)Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;",
            ">;)",
            "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;->MINUTES_SINCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;->getRawName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "null cannot be cast to non-null type com.superwall.sdk.paywall.presentation.rule_logic.cel.models.PassableValue.StringValue"

    if-eqz v0, :cond_0

    new-instance p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$MinutesSince;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$StringValue;

    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$StringValue;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$MinutesSince;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;

    return-object p1

    .line 138
    :cond_0
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;->HOURS_SINCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;->getRawName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$HoursSince;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$StringValue;

    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$StringValue;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$HoursSince;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;

    return-object p1

    .line 139
    :cond_1
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;->DAYS_SINCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;->getRawName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$DaysSince;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$StringValue;

    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$StringValue;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$DaysSince;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;

    return-object p1

    .line 140
    :cond_2
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;->MONTHS_SINCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;->getRawName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$MonthsSince;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$StringValue;

    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$StringValue;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$MonthsSince;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;

    return-object p1

    .line 141
    :cond_3
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;->PLACEMENTS_IN_HOUR:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;->getRawName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    new-instance p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$PlacementCount;

    .line 143
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$StringValue;

    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$StringValue;->getValue()Ljava/lang/String;

    move-result-object p2

    .line 144
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;->HOUR:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;

    .line 142
    invoke-direct {p1, p2, v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$PlacementCount;-><init>(Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;)V

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;

    return-object p1

    .line 147
    :cond_4
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;->PLACEMENTS_IN_DAY:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;->getRawName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 148
    new-instance p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$PlacementCount;

    .line 149
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$StringValue;

    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$StringValue;->getValue()Ljava/lang/String;

    move-result-object p2

    .line 150
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;->DAY:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;

    .line 148
    invoke-direct {p1, p2, v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$PlacementCount;-><init>(Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;)V

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;

    return-object p1

    .line 153
    :cond_5
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;->PLACEMENTS_IN_WEEK:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;->getRawName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 154
    new-instance p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$PlacementCount;

    .line 155
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$StringValue;

    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$StringValue;->getValue()Ljava/lang/String;

    move-result-object p2

    .line 156
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;->WEEK:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;

    .line 154
    invoke-direct {p1, p2, v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$PlacementCount;-><init>(Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;)V

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;

    return-object p1

    .line 159
    :cond_6
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;->PLACEMENTS_IN_MONTH:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;->getRawName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 160
    new-instance p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$PlacementCount;

    .line 161
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$StringValue;

    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$StringValue;->getValue()Ljava/lang/String;

    move-result-object p2

    .line 162
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;->MONTH:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;

    .line 160
    invoke-direct {p1, p2, v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$PlacementCount;-><init>(Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;)V

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;

    return-object p1

    .line 165
    :cond_7
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;->PLACEMENTS_SINCE_INSTALL:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;->getRawName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 167
    new-instance p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$PlacementCount;

    .line 168
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$StringValue;

    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$StringValue;->getValue()Ljava/lang/String;

    move-result-object p2

    .line 169
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;->INSTALL:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;

    .line 167
    invoke-direct {p1, p2, v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$PlacementCount;-><init>(Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;)V

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;

    return-object p1

    .line 172
    :cond_8
    sget-object p2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;->REVIEW_REQUESTS_IN_HOUR:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;

    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;->getRawName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 173
    new-instance p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$ReviewRequestCount;

    sget-object p2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;->HOUR:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;

    invoke-direct {p1, p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$ReviewRequestCount;-><init>(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;)V

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;

    return-object p1

    .line 175
    :cond_9
    sget-object p2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;->REVIEW_REQUESTS_IN_DAY:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;

    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;->getRawName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 176
    new-instance p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$ReviewRequestCount;

    sget-object p2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;->DAY:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;

    invoke-direct {p1, p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$ReviewRequestCount;-><init>(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;)V

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;

    return-object p1

    .line 178
    :cond_a
    sget-object p2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;->REVIEW_REQUESTS_IN_WEEK:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;

    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;->getRawName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 179
    new-instance p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$ReviewRequestCount;

    sget-object p2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;->WEEK:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;

    invoke-direct {p1, p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$ReviewRequestCount;-><init>(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;)V

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;

    return-object p1

    .line 181
    :cond_b
    sget-object p2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;->REVIEW_REQUESTS_IN_MONTH:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;

    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;->getRawName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 182
    new-instance p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$ReviewRequestCount;

    sget-object p2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;->MONTH:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;

    invoke-direct {p1, p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$ReviewRequestCount;-><init>(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;)V

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;

    return-object p1

    .line 184
    :cond_c
    sget-object p2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;->REVIEW_REQUESTS_IN_YEAR:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;

    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;->getRawName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 185
    new-instance p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$ReviewRequestCount;

    sget-object p2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;->YEAR:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;

    invoke-direct {p1, p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$ReviewRequestCount;-><init>(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;)V

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;

    return-object p1

    .line 187
    :cond_d
    sget-object p2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;->REVIEW_REQUESTS_TOTAL:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;

    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;->getRawName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 188
    new-instance p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$ReviewRequestCount;

    sget-object p2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;->INSTALL:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;

    invoke-direct {p1, p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$ReviewRequestCount;-><init>(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;)V

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;

    return-object p1

    .line 190
    :cond_e
    sget-object p2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;->REQUEST_REVIEW:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;

    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;->getRawName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 191
    sget-object p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$RequestReview;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$RequestReview;

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;

    return-object p1

    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method
