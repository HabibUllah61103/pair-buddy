.class public final enum Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;
.super Ljava/lang/Enum;
.source "EntitlementSelection.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption$Companion;,
        Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0081\u0002\u0018\u0000 \r2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\rB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;",
        "",
        "displayName",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getDisplayName",
        "()Ljava/lang/String;",
        "None",
        "Trial",
        "Promotional",
        "toPeriodType",
        "Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;",
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

.field private static final synthetic $VALUES:[Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;

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

.field public static final Companion:Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption$Companion;

.field public static final enum None:Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;

.field public static final enum Promotional:Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;

.field public static final enum Trial:Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;


# instance fields
.field private final displayName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$PCdV_S6zwgwYEk8UqcRQcZDHH9U()Lkotlinx/serialization/KSerializer;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;->_init_$_anonymous_()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method private static final synthetic $values()[Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;
    .locals 3

    sget-object v0, Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;->None:Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;

    sget-object v1, Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;->Trial:Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;

    sget-object v2, Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;->Promotional:Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;

    filled-new-array {v0, v1, v2}, [Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;->None:Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;

    .line 40
    new-instance v0, Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;

    const-string v1, "Trial"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;->Trial:Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;

    .line 41
    new-instance v0, Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;

    const-string v1, "Promotional"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;->Promotional:Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;

    invoke-static {}, Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;->$values()[Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;->$VALUES:[Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;->Companion:Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption$Companion;

    .line 35
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;->$cachedSerializer$delegate:Lkotlin/Lazy;

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

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;->displayName:Ljava/lang/String;

    return-void
.end method

.method private static final synthetic _init_$_anonymous_()Lkotlinx/serialization/KSerializer;
    .locals 2

    .line 35
    invoke-static {}, Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;->values()[Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    const-string v1, "com.superwall.sdk.store.testmode.ui.OfferTypeOption"

    invoke-static {v1, v0}, Lkotlinx/serialization/internal/EnumsKt;->createSimpleEnumSerializer(Ljava/lang/String;[Ljava/lang/Enum;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 35
    sget-object v0, Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;
    .locals 1

    const-class v0, Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 50
    check-cast p0, Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;

    return-object p0
.end method

.method public static values()[Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;
    .locals 1

    sget-object v0, Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;->$VALUES:[Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 50
    check-cast v0, [Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;

    return-object v0
.end method


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public final toPeriodType()Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;
    .locals 2

    .line 45
    sget-object v0, Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 48
    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;->PROMOTIONAL:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    return-object v0

    .line 45
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 47
    :cond_1
    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;->TRIAL:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
