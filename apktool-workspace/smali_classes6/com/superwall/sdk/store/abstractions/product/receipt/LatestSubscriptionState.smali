.class public final enum Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;
.super Ljava/lang/Enum;
.source "LatestSubscriptionState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\n\u0008\u0087\u0081\u0002\u0018\u0000 \n2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "GRACE_PERIOD",
        "EXPIRED",
        "SUBSCRIBED",
        "BILLING_RETRY",
        "REVOKED",
        "UNKNOWN",
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
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

.field private static final $cachedSerializer$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final enum BILLING_RETRY:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "billing_retry"
    .end annotation
.end field

.field public static final Companion:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState$Companion;

.field public static final enum EXPIRED:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "expired"
    .end annotation
.end field

.field public static final enum GRACE_PERIOD:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "grace_period"
    .end annotation
.end field

.field public static final enum REVOKED:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "revoked"
    .end annotation
.end field

.field public static final enum SUBSCRIBED:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "subscribed"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "unknown"
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$uE8iUHw3WvG761rQqVZ9loxI8hU()Lkotlinx/serialization/KSerializer;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->_init_$_anonymous_()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method private static final synthetic $values()[Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;
    .locals 6

    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->GRACE_PERIOD:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->EXPIRED:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    sget-object v2, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->SUBSCRIBED:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    sget-object v3, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->BILLING_RETRY:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    sget-object v4, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->REVOKED:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    sget-object v5, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->UNKNOWN:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    filled-new-array/range {v0 .. v5}, [Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    const-string v1, "GRACE_PERIOD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->GRACE_PERIOD:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    .line 11
    new-instance v0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    const-string v1, "EXPIRED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->EXPIRED:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    .line 14
    new-instance v0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    const-string v1, "SUBSCRIBED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->SUBSCRIBED:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    .line 17
    new-instance v0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    const-string v1, "BILLING_RETRY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->BILLING_RETRY:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    .line 20
    new-instance v0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    const-string v1, "REVOKED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->REVOKED:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    .line 23
    new-instance v0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->UNKNOWN:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    invoke-static {}, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->$values()[Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->$VALUES:[Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->Companion:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState$Companion;

    .line 6
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final synthetic _init_$_anonymous_()Lkotlinx/serialization/KSerializer;
    .locals 10

    .line 6
    invoke-static {}, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->values()[Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "grace_period"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "expired"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "subscribed"

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "billing_retry"

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-string v3, "revoked"

    const/4 v8, 0x4

    aput-object v3, v2, v8

    const-string v3, "unknown"

    const/4 v9, 0x5

    aput-object v3, v2, v9

    new-array v1, v1, [[Ljava/lang/annotation/Annotation;

    const/4 v3, 0x0

    aput-object v3, v1, v4

    aput-object v3, v1, v5

    aput-object v3, v1, v6

    aput-object v3, v1, v7

    aput-object v3, v1, v8

    aput-object v3, v1, v9

    const-string v4, "com.superwall.sdk.store.abstractions.product.receipt.LatestSubscriptionState"

    invoke-static {v4, v0, v2, v1, v3}, Lkotlinx/serialization/internal/EnumsKt;->createAnnotatedEnumSerializer(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 6
    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;
    .locals 1

    const-class v0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 25
    check-cast p0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    return-object p0
.end method

.method public static values()[Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;
    .locals 1

    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->$VALUES:[Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 25
    check-cast v0, [Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    return-object v0
.end method
