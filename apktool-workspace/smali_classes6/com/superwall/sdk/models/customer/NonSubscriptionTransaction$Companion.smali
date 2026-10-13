.class public final Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction$Companion;
.super Ljava/lang/Object;
.source "NonSubscriptionTransaction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction$Companion;",
        "",
        "<init>",
        "()V",
        "empty",
        "Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;",
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

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final empty()Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;
    .locals 7

    .line 39
    new-instance v0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;

    .line 42
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const/4 v5, 0x0

    .line 45
    sget-object v6, Lcom/superwall/sdk/models/product/Store;->PLAY_STORE:Lcom/superwall/sdk/models/product/Store;

    .line 39
    const-string v1, ""

    const-string v2, ""

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZZLcom/superwall/sdk/models/product/Store;)V

    return-object v0
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;",
            ">;"
        }
    .end annotation

    .line 34
    sget-object v0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction$$serializer;->INSTANCE:Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method
