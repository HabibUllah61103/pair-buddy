.class public final Lcom/superwall/sdk/paywall/presentation/internal/request/ProductOverride$Companion;
.super Ljava/lang/Object;
.source "ProductOverride.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/paywall/presentation/internal/request/ProductOverride;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/presentation/internal/request/ProductOverride$Companion;",
        "",
        "<init>",
        "()V",
        "byId",
        "Lcom/superwall/sdk/paywall/presentation/internal/request/ProductOverride;",
        "productId",
        "",
        "byProduct",
        "product",
        "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
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

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/paywall/presentation/internal/request/ProductOverride$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final byId(Ljava/lang/String;)Lcom/superwall/sdk/paywall/presentation/internal/request/ProductOverride;
    .locals 1

    const-string v0, "productId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/internal/request/ProductOverride$ById;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/paywall/presentation/internal/request/ProductOverride$ById;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/internal/request/ProductOverride;

    return-object v0
.end method

.method public final byProduct(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)Lcom/superwall/sdk/paywall/presentation/internal/request/ProductOverride;
    .locals 1

    const-string v0, "product"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/internal/request/ProductOverride$ByProduct;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/paywall/presentation/internal/request/ProductOverride$ByProduct;-><init>(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)V

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/internal/request/ProductOverride;

    return-object v0
.end method
