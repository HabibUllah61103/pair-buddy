.class public final enum Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;
.super Ljava/lang/Enum;
.source "SubscriptionPeriod.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Unit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "day",
        "week",
        "month",
        "year",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

.field public static final enum day:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

.field public static final enum month:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

.field public static final enum week:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

.field public static final enum year:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;


# direct methods
.method private static final synthetic $values()[Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;
    .locals 4

    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->day:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->week:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    sget-object v2, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->month:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    sget-object v3, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->year:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    filled-new-array {v0, v1, v2, v3}, [Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    const-string v1, "day"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->day:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    .line 13
    new-instance v0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    const-string v1, "week"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->week:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    .line 14
    new-instance v0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    const-string v1, "month"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->month:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    .line 15
    new-instance v0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    const-string v1, "year"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->year:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    invoke-static {}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->$values()[Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->$VALUES:[Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;
    .locals 1

    const-class v0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 16
    check-cast p0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    return-object p0
.end method

.method public static values()[Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;
    .locals 1

    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->$VALUES:[Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 16
    check-cast v0, [Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    return-object v0
.end method
