.class final synthetic Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryProductDetailsAsync$useCase$1;
.super Lkotlin/jvm/internal/AdaptedFunctionReference;
.source "GoogleBillingWrapper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/billing/GoogleBillingWrapper;->queryProductDetailsAsync(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/AdaptedFunctionReference;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/jvm/functions/Function1<",
        "-",
        "Lcom/android/billingclient/api/BillingClient;",
        "+",
        "Lkotlin/Unit;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/superwall/sdk/billing/GoogleBillingWrapper;

    const-string/jumbo v5, "withConnectedClient(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;"

    const/16 v6, 0x8

    const/4 v1, 0x1

    const-string/jumbo v4, "withConnectedClient"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 388
    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryProductDetailsAsync$useCase$1;->invoke(Lkotlin/jvm/functions/Function1;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/android/billingclient/api/BillingClient;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryProductDetailsAsync$useCase$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->withConnectedClient(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    return-void
.end method
