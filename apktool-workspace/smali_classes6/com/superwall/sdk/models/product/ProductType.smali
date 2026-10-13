.class public final enum Lcom/superwall/sdk/models/product/ProductType;
.super Ljava/lang/Enum;
.source "Product.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/product/ProductType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/superwall/sdk/models/product/ProductType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0087\u0081\u0002\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/superwall/sdk/models/product/ProductType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "PRIMARY",
        "SECONDARY",
        "TERTIARY",
        "toString",
        "",
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

.field private static final synthetic $VALUES:[Lcom/superwall/sdk/models/product/ProductType;

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

.field public static final Companion:Lcom/superwall/sdk/models/product/ProductType$Companion;

.field public static final enum PRIMARY:Lcom/superwall/sdk/models/product/ProductType;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "primary"
    .end annotation
.end field

.field public static final enum SECONDARY:Lcom/superwall/sdk/models/product/ProductType;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "secondary"
    .end annotation
.end field

.field public static final enum TERTIARY:Lcom/superwall/sdk/models/product/ProductType;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "tertiary"
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$yGqu_REQafCL-o03PhxNYzsqYZA()Lkotlinx/serialization/KSerializer;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/models/product/ProductType;->_init_$_anonymous_()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method private static final synthetic $values()[Lcom/superwall/sdk/models/product/ProductType;
    .locals 3

    sget-object v0, Lcom/superwall/sdk/models/product/ProductType;->PRIMARY:Lcom/superwall/sdk/models/product/ProductType;

    sget-object v1, Lcom/superwall/sdk/models/product/ProductType;->SECONDARY:Lcom/superwall/sdk/models/product/ProductType;

    sget-object v2, Lcom/superwall/sdk/models/product/ProductType;->TERTIARY:Lcom/superwall/sdk/models/product/ProductType;

    filled-new-array {v0, v1, v2}, [Lcom/superwall/sdk/models/product/ProductType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lcom/superwall/sdk/models/product/ProductType;

    const-string v1, "PRIMARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/superwall/sdk/models/product/ProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/superwall/sdk/models/product/ProductType;->PRIMARY:Lcom/superwall/sdk/models/product/ProductType;

    .line 11
    new-instance v0, Lcom/superwall/sdk/models/product/ProductType;

    const-string v1, "SECONDARY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/superwall/sdk/models/product/ProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/superwall/sdk/models/product/ProductType;->SECONDARY:Lcom/superwall/sdk/models/product/ProductType;

    .line 14
    new-instance v0, Lcom/superwall/sdk/models/product/ProductType;

    const-string v1, "TERTIARY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/superwall/sdk/models/product/ProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/superwall/sdk/models/product/ProductType;->TERTIARY:Lcom/superwall/sdk/models/product/ProductType;

    invoke-static {}, Lcom/superwall/sdk/models/product/ProductType;->$values()[Lcom/superwall/sdk/models/product/ProductType;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/models/product/ProductType;->$VALUES:[Lcom/superwall/sdk/models/product/ProductType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/models/product/ProductType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/superwall/sdk/models/product/ProductType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/product/ProductType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/product/ProductType;->Companion:Lcom/superwall/sdk/models/product/ProductType$Companion;

    .line 6
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/superwall/sdk/models/product/ProductType$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/superwall/sdk/models/product/ProductType$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/models/product/ProductType;->$cachedSerializer$delegate:Lkotlin/Lazy;

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
    .locals 7

    .line 6
    invoke-static {}, Lcom/superwall/sdk/models/product/ProductType;->values()[Lcom/superwall/sdk/models/product/ProductType;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "primary"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "secondary"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "tertiary"

    const/4 v6, 0x2

    aput-object v3, v2, v6

    new-array v1, v1, [[Ljava/lang/annotation/Annotation;

    const/4 v3, 0x0

    aput-object v3, v1, v4

    aput-object v3, v1, v5

    aput-object v3, v1, v6

    const-string v4, "com.superwall.sdk.models.product.ProductType"

    invoke-static {v4, v0, v2, v1, v3}, Lkotlinx/serialization/internal/EnumsKt;->createAnnotatedEnumSerializer(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 6
    sget-object v0, Lcom/superwall/sdk/models/product/ProductType;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/superwall/sdk/models/product/ProductType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/superwall/sdk/models/product/ProductType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/superwall/sdk/models/product/ProductType;
    .locals 1

    const-class v0, Lcom/superwall/sdk/models/product/ProductType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 20
    check-cast p0, Lcom/superwall/sdk/models/product/ProductType;

    return-object p0
.end method

.method public static values()[Lcom/superwall/sdk/models/product/ProductType;
    .locals 1

    sget-object v0, Lcom/superwall/sdk/models/product/ProductType;->$VALUES:[Lcom/superwall/sdk/models/product/ProductType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 20
    check-cast v0, [Lcom/superwall/sdk/models/product/ProductType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 19
    invoke-virtual {p0}, Lcom/superwall/sdk/models/product/ProductType;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toLowerCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
