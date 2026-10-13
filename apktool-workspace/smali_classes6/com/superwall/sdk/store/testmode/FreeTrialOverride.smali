.class public final enum Lcom/superwall/sdk/store/testmode/FreeTrialOverride;
.super Ljava/lang/Enum;
.source "FreeTrialOverride.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/store/testmode/FreeTrialOverride$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/superwall/sdk/store/testmode/FreeTrialOverride;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0087\u0081\u0002\u0018\u0000 \u000b2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000bB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/superwall/sdk/store/testmode/FreeTrialOverride;",
        "",
        "displayName",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getDisplayName",
        "()Ljava/lang/String;",
        "UseDefault",
        "ForceAvailable",
        "ForceUnavailable",
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

.field private static final synthetic $VALUES:[Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

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

.field public static final Companion:Lcom/superwall/sdk/store/testmode/FreeTrialOverride$Companion;

.field public static final enum ForceAvailable:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

.field public static final enum ForceUnavailable:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

.field public static final enum UseDefault:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;


# instance fields
.field private final displayName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$_2phSrPFVwSk3JytmR5dQdJeHsg()Lkotlinx/serialization/KSerializer;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->_init_$_anonymous_()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method private static final synthetic $values()[Lcom/superwall/sdk/store/testmode/FreeTrialOverride;
    .locals 3

    sget-object v0, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->UseDefault:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    sget-object v1, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->ForceAvailable:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    sget-object v2, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->ForceUnavailable:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    filled-new-array {v0, v1, v2}, [Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 9
    new-instance v0, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    const/4 v1, 0x0

    const-string v2, "Use Default"

    const-string v3, "UseDefault"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->UseDefault:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    .line 10
    new-instance v0, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    const/4 v1, 0x1

    const-string v2, "Force Available"

    const-string v3, "ForceAvailable"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->ForceAvailable:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    .line 11
    new-instance v0, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    const/4 v1, 0x2

    const-string v2, "Force Unavailable"

    const-string v3, "ForceUnavailable"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->ForceUnavailable:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    invoke-static {}, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->$values()[Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->$VALUES:[Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/superwall/sdk/store/testmode/FreeTrialOverride$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/store/testmode/FreeTrialOverride$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->Companion:Lcom/superwall/sdk/store/testmode/FreeTrialOverride$Companion;

    .line 5
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/superwall/sdk/store/testmode/FreeTrialOverride$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/superwall/sdk/store/testmode/FreeTrialOverride$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->$cachedSerializer$delegate:Lkotlin/Lazy;

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

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    iput-object p3, p0, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->displayName:Ljava/lang/String;

    return-void
.end method

.method private static final synthetic _init_$_anonymous_()Lkotlinx/serialization/KSerializer;
    .locals 2

    .line 5
    invoke-static {}, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->values()[Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    const-string v1, "com.superwall.sdk.store.testmode.FreeTrialOverride"

    invoke-static {v1, v0}, Lkotlinx/serialization/internal/EnumsKt;->createSimpleEnumSerializer(Ljava/lang/String;[Ljava/lang/Enum;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 5
    sget-object v0, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/superwall/sdk/store/testmode/FreeTrialOverride;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/superwall/sdk/store/testmode/FreeTrialOverride;
    .locals 1

    const-class v0, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 12
    check-cast p0, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    return-object p0
.end method

.method public static values()[Lcom/superwall/sdk/store/testmode/FreeTrialOverride;
    .locals 1

    sget-object v0, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->$VALUES:[Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, [Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    return-object v0
.end method


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->displayName:Ljava/lang/String;

    return-object v0
.end method
