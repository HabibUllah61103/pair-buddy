.class public final enum Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;
.super Ljava/lang/Enum;
.source "SuperwallProduct.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\t\u0008\u0087\u0081\u0002\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "IOS",
        "ANDROID",
        "STRIPE",
        "PADDLE",
        "SUPERWALL",
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

.field private static final synthetic $VALUES:[Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;

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

.field public static final enum ANDROID:Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "android"
    .end annotation
.end field

.field public static final Companion:Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform$Companion;

.field public static final enum IOS:Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "ios"
    .end annotation
.end field

.field public static final enum PADDLE:Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "paddle"
    .end annotation
.end field

.field public static final enum STRIPE:Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "stripe"
    .end annotation
.end field

.field public static final enum SUPERWALL:Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "superwall"
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$qtHj1rkypF9I3O-BLO8PTj4GVf0()Lkotlinx/serialization/KSerializer;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;->_init_$_anonymous_()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method private static final synthetic $values()[Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;
    .locals 5

    sget-object v0, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;->IOS:Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;

    sget-object v1, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;->ANDROID:Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;

    sget-object v2, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;->STRIPE:Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;

    sget-object v3, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;->PADDLE:Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;

    sget-object v4, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;->SUPERWALL:Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 61
    new-instance v0, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;

    const-string v1, "IOS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;->IOS:Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;

    .line 64
    new-instance v0, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;

    const-string v1, "ANDROID"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;->ANDROID:Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;

    .line 67
    new-instance v0, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;

    const-string v1, "STRIPE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;->STRIPE:Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;

    .line 70
    new-instance v0, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;

    const-string v1, "PADDLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;->PADDLE:Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;

    .line 73
    new-instance v0, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;

    const-string v1, "SUPERWALL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;->SUPERWALL:Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;

    invoke-static {}, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;->$values()[Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;->$VALUES:[Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;->Companion:Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform$Companion;

    .line 59
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final synthetic _init_$_anonymous_()Lkotlinx/serialization/KSerializer;
    .locals 9

    .line 59
    invoke-static {}, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;->values()[Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "ios"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "android"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "stripe"

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "paddle"

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-string v3, "superwall"

    const/4 v8, 0x4

    aput-object v3, v2, v8

    new-array v1, v1, [[Ljava/lang/annotation/Annotation;

    const/4 v3, 0x0

    aput-object v3, v1, v4

    aput-object v3, v1, v5

    aput-object v3, v1, v6

    aput-object v3, v1, v7

    aput-object v3, v1, v8

    const-string v4, "com.superwall.sdk.store.testmode.models.SuperwallProductPlatform"

    invoke-static {v4, v0, v2, v1, v3}, Lkotlinx/serialization/internal/EnumsKt;->createAnnotatedEnumSerializer(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 59
    sget-object v0, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;
    .locals 1

    const-class v0, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 75
    check-cast p0, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;

    return-object p0
.end method

.method public static values()[Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;
    .locals 1

    sget-object v0, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;->$VALUES:[Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 75
    check-cast v0, [Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;

    return-object v0
.end method
