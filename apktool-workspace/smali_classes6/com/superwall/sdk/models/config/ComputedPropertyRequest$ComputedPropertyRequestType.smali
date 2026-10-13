.class public final enum Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;
.super Ljava/lang/Enum;
.source "ComputedPropertyRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/models/config/ComputedPropertyRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ComputedPropertyRequestType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType$Companion;,
        Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0011\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0008\u0003\u0008\u0087\u0081\u0002\u0018\u0000 \u001c2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001cB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\u0018\u001a\u0004\u0018\u00010\u00152\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00150\u001a\u00a2\u0006\u0002\u0010\u001bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0012\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0007R\u0011\u0010\u0014\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;",
        "",
        "rawValue",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getRawValue",
        "()Ljava/lang/String;",
        "MINUTES_SINCE",
        "HOURS_SINCE",
        "DAYS_SINCE",
        "MONTHS_SINCE",
        "YEARS_SINCE",
        "PLACEMENTS_IN_DAY",
        "PLACEMENTS_IN_HOUR",
        "PLACEMENTS_IN_WEEK",
        "PLACEMENTS_IN_MONTH",
        "PLACEMENTS_SINCE_INSTALL",
        "prefix",
        "getPrefix",
        "calendarComponent",
        "",
        "getCalendarComponent",
        "()I",
        "dateComponent",
        "components",
        "",
        "(Ljava/util/Map;)Ljava/lang/Integer;",
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
    with = Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestTypeSerializer;
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

.field public static final Companion:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType$Companion;

.field public static final enum DAYS_SINCE:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "DAYS_SINCE"
    .end annotation
.end field

.field public static final enum HOURS_SINCE:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "HOURS_SINCE"
    .end annotation
.end field

.field public static final enum MINUTES_SINCE:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "MINUTES_SINCE"
    .end annotation
.end field

.field public static final enum MONTHS_SINCE:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "MONTHS_SINCE"
    .end annotation
.end field

.field public static final enum PLACEMENTS_IN_DAY:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "PLACEMENTS_IN_DAY"
    .end annotation
.end field

.field public static final enum PLACEMENTS_IN_HOUR:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "PLACEMENTS_IN_HOUR"
    .end annotation
.end field

.field public static final enum PLACEMENTS_IN_MONTH:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "PLACEMENTS_IN_MONTH"
    .end annotation
.end field

.field public static final enum PLACEMENTS_IN_WEEK:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "PLACEMENTS_IN_WEEK"
    .end annotation
.end field

.field public static final enum PLACEMENTS_SINCE_INSTALL:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "PLACEMENTS_SINCE_INSTALL"
    .end annotation
.end field

.field public static final enum YEARS_SINCE:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "YEARS_SINCE"
    .end annotation
.end field


# instance fields
.field private final rawValue:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;
    .locals 10

    sget-object v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->MINUTES_SINCE:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    sget-object v1, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->HOURS_SINCE:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    sget-object v2, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->DAYS_SINCE:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    sget-object v3, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->MONTHS_SINCE:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    sget-object v4, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->YEARS_SINCE:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    sget-object v5, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->PLACEMENTS_IN_DAY:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    sget-object v6, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->PLACEMENTS_IN_HOUR:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    sget-object v7, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->PLACEMENTS_IN_WEEK:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    sget-object v8, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->PLACEMENTS_IN_MONTH:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    sget-object v9, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->PLACEMENTS_SINCE_INSTALL:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    filled-new-array/range {v0 .. v9}, [Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    const-string v1, "MINUTES_SINCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->MINUTES_SINCE:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    .line 28
    new-instance v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    const-string v1, "HOURS_SINCE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->HOURS_SINCE:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    .line 31
    new-instance v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    const-string v1, "DAYS_SINCE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->DAYS_SINCE:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    .line 34
    new-instance v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    const-string v1, "MONTHS_SINCE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->MONTHS_SINCE:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    .line 37
    new-instance v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    const-string v1, "YEARS_SINCE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->YEARS_SINCE:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    .line 40
    new-instance v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    const-string v1, "PLACEMENTS_IN_DAY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v1}, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->PLACEMENTS_IN_DAY:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    .line 43
    new-instance v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    const-string v1, "PLACEMENTS_IN_HOUR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v1}, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->PLACEMENTS_IN_HOUR:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    .line 46
    new-instance v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    const-string v1, "PLACEMENTS_IN_WEEK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v1}, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->PLACEMENTS_IN_WEEK:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    .line 49
    new-instance v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    const-string v1, "PLACEMENTS_IN_MONTH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v1}, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->PLACEMENTS_IN_MONTH:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    .line 52
    new-instance v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    const-string v1, "PLACEMENTS_SINCE_INSTALL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v1}, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->PLACEMENTS_SINCE_INSTALL:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    invoke-static {}, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->$values()[Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->$VALUES:[Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->Companion:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->rawValue:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;
    .locals 1

    const-class v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 99
    check-cast p0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    return-object p0
.end method

.method public static values()[Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;
    .locals 1

    sget-object v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->$VALUES:[Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 99
    check-cast v0, [Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    return-object v0
.end method


# virtual methods
.method public final dateComponent(Ljava/util/Map;)Ljava/lang/Integer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    const-string v0, "components"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    .line 91
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    .line 90
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xb

    .line 89
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    packed-switch v0, :pswitch_data_0

    .line 87
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 97
    :pswitch_0
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    .line 96
    :pswitch_1
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    :pswitch_2
    const/4 v0, 0x3

    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    .line 94
    :pswitch_3
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    .line 93
    :pswitch_4
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    .line 92
    :pswitch_5
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    .line 91
    :pswitch_6
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    .line 90
    :pswitch_7
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    .line 89
    :pswitch_8
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    :pswitch_9
    const/16 v0, 0xc

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getCalendarComponent()I
    .locals 5

    .line 73
    sget-object v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/16 v4, 0xb

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    return v1

    :pswitch_1
    return v2

    :pswitch_2
    const/4 v0, 0x3

    return v0

    :pswitch_3
    return v4

    :pswitch_4
    return v3

    :pswitch_5
    return v1

    :pswitch_6
    return v2

    :pswitch_7
    return v3

    :pswitch_8
    return v4

    :pswitch_9
    const/16 v0, 0xc

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 2

    .line 58
    sget-object v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 68
    :pswitch_0
    const-string v0, "placementsSinceInstall"

    return-object v0

    .line 67
    :pswitch_1
    const-string v0, "placementsInMonth"

    return-object v0

    .line 66
    :pswitch_2
    const-string v0, "placementsInWeek"

    return-object v0

    .line 65
    :pswitch_3
    const-string v0, "placementsInHour"

    return-object v0

    .line 64
    :pswitch_4
    const-string v0, "placementsInDay"

    return-object v0

    .line 63
    :pswitch_5
    const-string v0, "yearsSince_"

    return-object v0

    .line 62
    :pswitch_6
    const-string v0, "monthsSince_"

    return-object v0

    .line 61
    :pswitch_7
    const-string v0, "daysSince_"

    return-object v0

    .line 60
    :pswitch_8
    const-string v0, "hoursSince_"

    return-object v0

    .line 59
    :pswitch_9
    const-string v0, "minutesSince_"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getRawValue()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->rawValue:Ljava/lang/String;

    return-object v0
.end method
