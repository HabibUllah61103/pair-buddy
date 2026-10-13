.class public final enum Lcom/superwall/sdk/analytics/Tier;
.super Ljava/lang/Enum;
.source "DeviceClassifier.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/analytics/Tier$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/superwall/sdk/analytics/Tier;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0087\u0081\u0002\u0018\u0000 \u000e2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000eB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/superwall/sdk/analytics/Tier;",
        "",
        "raw",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getRaw",
        "()Ljava/lang/String;",
        "ULTRA_LOW",
        "LOW",
        "MID",
        "HIGH",
        "ULTRA_HIGH",
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

.field private static final synthetic $VALUES:[Lcom/superwall/sdk/analytics/Tier;

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

.field public static final Companion:Lcom/superwall/sdk/analytics/Tier$Companion;

.field public static final enum HIGH:Lcom/superwall/sdk/analytics/Tier;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "HIGH"
    .end annotation
.end field

.field public static final enum LOW:Lcom/superwall/sdk/analytics/Tier;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "LOW"
    .end annotation
.end field

.field public static final enum MID:Lcom/superwall/sdk/analytics/Tier;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "MID"
    .end annotation
.end field

.field public static final enum ULTRA_HIGH:Lcom/superwall/sdk/analytics/Tier;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "ULTRA_HIGH"
    .end annotation
.end field

.field public static final enum ULTRA_LOW:Lcom/superwall/sdk/analytics/Tier;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "ULTRA_LOW"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/superwall/sdk/analytics/Tier;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "UNKNOWN"
    .end annotation
.end field


# instance fields
.field private final raw:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$a6E_8W-Z7zb6CPn8KXbGtfAdZZo()Lkotlinx/serialization/KSerializer;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/analytics/Tier;->_init_$_anonymous_()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method private static final synthetic $values()[Lcom/superwall/sdk/analytics/Tier;
    .locals 6

    sget-object v0, Lcom/superwall/sdk/analytics/Tier;->ULTRA_LOW:Lcom/superwall/sdk/analytics/Tier;

    sget-object v1, Lcom/superwall/sdk/analytics/Tier;->LOW:Lcom/superwall/sdk/analytics/Tier;

    sget-object v2, Lcom/superwall/sdk/analytics/Tier;->MID:Lcom/superwall/sdk/analytics/Tier;

    sget-object v3, Lcom/superwall/sdk/analytics/Tier;->HIGH:Lcom/superwall/sdk/analytics/Tier;

    sget-object v4, Lcom/superwall/sdk/analytics/Tier;->ULTRA_HIGH:Lcom/superwall/sdk/analytics/Tier;

    sget-object v5, Lcom/superwall/sdk/analytics/Tier;->UNKNOWN:Lcom/superwall/sdk/analytics/Tier;

    filled-new-array/range {v0 .. v5}, [Lcom/superwall/sdk/analytics/Tier;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Lcom/superwall/sdk/analytics/Tier;

    const/4 v1, 0x0

    const-string/jumbo v2, "ultra_low"

    const-string v3, "ULTRA_LOW"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/analytics/Tier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/analytics/Tier;->ULTRA_LOW:Lcom/superwall/sdk/analytics/Tier;

    .line 17
    new-instance v0, Lcom/superwall/sdk/analytics/Tier;

    const/4 v1, 0x1

    const-string v2, "low"

    const-string v3, "LOW"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/analytics/Tier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/analytics/Tier;->LOW:Lcom/superwall/sdk/analytics/Tier;

    .line 20
    new-instance v0, Lcom/superwall/sdk/analytics/Tier;

    const/4 v1, 0x2

    const-string v2, "mid"

    const-string v3, "MID"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/analytics/Tier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/analytics/Tier;->MID:Lcom/superwall/sdk/analytics/Tier;

    .line 23
    new-instance v0, Lcom/superwall/sdk/analytics/Tier;

    const/4 v1, 0x3

    const-string v2, "high"

    const-string v3, "HIGH"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/analytics/Tier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/analytics/Tier;->HIGH:Lcom/superwall/sdk/analytics/Tier;

    .line 26
    new-instance v0, Lcom/superwall/sdk/analytics/Tier;

    const/4 v1, 0x4

    const-string/jumbo v2, "ultra_high"

    const-string v3, "ULTRA_HIGH"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/analytics/Tier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/analytics/Tier;->ULTRA_HIGH:Lcom/superwall/sdk/analytics/Tier;

    .line 29
    new-instance v0, Lcom/superwall/sdk/analytics/Tier;

    const/4 v1, 0x5

    const-string/jumbo v2, "unknown"

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/analytics/Tier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/analytics/Tier;->UNKNOWN:Lcom/superwall/sdk/analytics/Tier;

    invoke-static {}, Lcom/superwall/sdk/analytics/Tier;->$values()[Lcom/superwall/sdk/analytics/Tier;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/analytics/Tier;->$VALUES:[Lcom/superwall/sdk/analytics/Tier;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/analytics/Tier;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/superwall/sdk/analytics/Tier$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/analytics/Tier$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/analytics/Tier;->Companion:Lcom/superwall/sdk/analytics/Tier$Companion;

    .line 9
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/superwall/sdk/analytics/Tier$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/superwall/sdk/analytics/Tier$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/analytics/Tier;->$cachedSerializer$delegate:Lkotlin/Lazy;

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
    iput-object p3, p0, Lcom/superwall/sdk/analytics/Tier;->raw:Ljava/lang/String;

    return-void
.end method

.method private static final synthetic _init_$_anonymous_()Lkotlinx/serialization/KSerializer;
    .locals 10

    .line 9
    invoke-static {}, Lcom/superwall/sdk/analytics/Tier;->values()[Lcom/superwall/sdk/analytics/Tier;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "ULTRA_LOW"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "LOW"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "MID"

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "HIGH"

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-string v3, "ULTRA_HIGH"

    const/4 v8, 0x4

    aput-object v3, v2, v8

    const-string v3, "UNKNOWN"

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

    const-string v4, "com.superwall.sdk.analytics.Tier"

    invoke-static {v4, v0, v2, v1, v3}, Lkotlinx/serialization/internal/EnumsKt;->createAnnotatedEnumSerializer(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 9
    sget-object v0, Lcom/superwall/sdk/analytics/Tier;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/superwall/sdk/analytics/Tier;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/superwall/sdk/analytics/Tier;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/superwall/sdk/analytics/Tier;
    .locals 1

    const-class v0, Lcom/superwall/sdk/analytics/Tier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 30
    check-cast p0, Lcom/superwall/sdk/analytics/Tier;

    return-object p0
.end method

.method public static values()[Lcom/superwall/sdk/analytics/Tier;
    .locals 1

    sget-object v0, Lcom/superwall/sdk/analytics/Tier;->$VALUES:[Lcom/superwall/sdk/analytics/Tier;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 30
    check-cast v0, [Lcom/superwall/sdk/analytics/Tier;

    return-object v0
.end method


# virtual methods
.method public final getRaw()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/superwall/sdk/analytics/Tier;->raw:Ljava/lang/String;

    return-object v0
.end method
