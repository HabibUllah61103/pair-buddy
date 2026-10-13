.class public final enum Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;
.super Ljava/lang/Enum;
.source "EntitlementSelection.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption$Companion;,
        Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0081\u0002\u0018\u0000 \u00132\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0013B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u000e\u001a\u00020\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u0010j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;",
        "",
        "displayName",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getDisplayName",
        "()Ljava/lang/String;",
        "Inactive",
        "Subscribed",
        "InGracePeriod",
        "BillingRetry",
        "Expired",
        "Revoked",
        "isActive",
        "",
        "()Z",
        "toSubscriptionState",
        "Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;",
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

.field private static final synthetic $VALUES:[Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

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

.field public static final enum BillingRetry:Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

.field public static final Companion:Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption$Companion;

.field public static final enum Expired:Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

.field public static final enum InGracePeriod:Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

.field public static final enum Inactive:Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

.field public static final enum Revoked:Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

.field public static final enum Subscribed:Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;


# instance fields
.field private final displayName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$6b4jLY2O9fJkQRJSHfq15gq7CFA()Lkotlinx/serialization/KSerializer;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;->_init_$_anonymous_()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method private static final synthetic $values()[Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;
    .locals 6

    sget-object v0, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;->Inactive:Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

    sget-object v1, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;->Subscribed:Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

    sget-object v2, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;->InGracePeriod:Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

    sget-object v3, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;->BillingRetry:Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

    sget-object v4, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;->Expired:Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

    sget-object v5, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;->Revoked:Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

    filled-new-array/range {v0 .. v5}, [Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 13
    new-instance v0, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

    const-string v1, "Inactive"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;->Inactive:Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

    .line 14
    new-instance v0, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

    const-string v1, "Subscribed"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;->Subscribed:Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

    .line 15
    new-instance v0, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

    const/4 v1, 0x2

    const-string v2, "In Grace Period"

    const-string v3, "InGracePeriod"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;->InGracePeriod:Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

    .line 16
    new-instance v0, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

    const/4 v1, 0x3

    const-string v2, "Billing Retry"

    const-string v3, "BillingRetry"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;->BillingRetry:Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

    .line 17
    new-instance v0, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

    const-string v1, "Expired"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;->Expired:Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

    .line 18
    new-instance v0, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

    const-string v1, "Revoked"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v1}, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;->Revoked:Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

    invoke-static {}, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;->$values()[Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;->$VALUES:[Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;->Companion:Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption$Companion;

    .line 9
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;->$cachedSerializer$delegate:Lkotlin/Lazy;

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

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;->displayName:Ljava/lang/String;

    return-void
.end method

.method private static final synthetic _init_$_anonymous_()Lkotlinx/serialization/KSerializer;
    .locals 2

    .line 9
    invoke-static {}, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;->values()[Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    const-string v1, "com.superwall.sdk.store.testmode.ui.EntitlementStateOption"

    invoke-static {v1, v0}, Lkotlinx/serialization/internal/EnumsKt;->createSimpleEnumSerializer(Ljava/lang/String;[Ljava/lang/Enum;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 9
    sget-object v0, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;
    .locals 1

    const-class v0, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 33
    check-cast p0, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

    return-object p0
.end method

.method public static values()[Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;
    .locals 1

    sget-object v0, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;->$VALUES:[Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 33
    check-cast v0, [Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

    return-object v0
.end method


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public final isActive()Z
    .locals 1

    .line 22
    sget-object v0, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;->Subscribed:Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;->InGracePeriod:Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;->BillingRetry:Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final toSubscriptionState()Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;
    .locals 2

    .line 25
    sget-object v0, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 31
    :pswitch_0
    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->REVOKED:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    return-object v0

    .line 30
    :pswitch_1
    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->EXPIRED:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    return-object v0

    .line 29
    :pswitch_2
    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->BILLING_RETRY:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    return-object v0

    .line 28
    :pswitch_3
    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->GRACE_PERIOD:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    return-object v0

    .line 27
    :pswitch_4
    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->SUBSCRIBED:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    return-object v0

    :pswitch_5
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
