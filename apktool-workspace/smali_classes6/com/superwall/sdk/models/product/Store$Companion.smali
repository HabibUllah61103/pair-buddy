.class public final Lcom/superwall/sdk/models/product/Store$Companion;
.super Ljava/lang/Object;
.source "ProductItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/models/product/Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/superwall/sdk/models/product/Store$Companion;",
        "",
        "<init>",
        "()V",
        "fromValue",
        "Lcom/superwall/sdk/models/product/Store;",
        "value",
        "",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
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

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/models/product/Store$Companion;-><init>()V

    return-void
.end method

.method private final synthetic get$cachedSerializer()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 52
    invoke-static {}, Lcom/superwall/sdk/models/product/Store;->access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method


# virtual methods
.method public final fromValue(Ljava/lang/String;)Lcom/superwall/sdk/models/product/Store;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "APP_STORE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    sget-object p1, Lcom/superwall/sdk/models/product/Store;->APP_STORE:Lcom/superwall/sdk/models/product/Store;

    return-object p1

    .line 54
    :sswitch_1
    const-string v0, "PLAY_STORE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 55
    :cond_1
    sget-object p1, Lcom/superwall/sdk/models/product/Store;->PLAY_STORE:Lcom/superwall/sdk/models/product/Store;

    return-object p1

    .line 54
    :sswitch_2
    const-string v0, "STRIPE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 57
    :cond_2
    sget-object p1, Lcom/superwall/sdk/models/product/Store;->STRIPE:Lcom/superwall/sdk/models/product/Store;

    return-object p1

    .line 54
    :sswitch_3
    const-string v0, "SUPERWALL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 59
    :cond_3
    sget-object p1, Lcom/superwall/sdk/models/product/Store;->SUPERWALL:Lcom/superwall/sdk/models/product/Store;

    return-object p1

    .line 54
    :sswitch_4
    const-string v0, "PADDLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 58
    :cond_4
    sget-object p1, Lcom/superwall/sdk/models/product/Store;->PADDLE:Lcom/superwall/sdk/models/product/Store;

    return-object p1

    .line 60
    :goto_0
    sget-object p1, Lcom/superwall/sdk/models/product/Store;->OTHER:Lcom/superwall/sdk/models/product/Store;

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x73c86496 -> :sswitch_4
        -0x6daf245b -> :sswitch_3
        -0x6d97abb3 -> :sswitch_2
        -0x39af500a -> :sswitch_1
        0x4a861d03 -> :sswitch_0
    .end sparse-switch
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/superwall/sdk/models/product/Store;",
            ">;"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Lcom/superwall/sdk/models/product/Store$Companion;->get$cachedSerializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method
