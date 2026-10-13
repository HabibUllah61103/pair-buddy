.class public final Lcom/superwall/sdk/billing/GoogleBillingWrapperKt;
.super Ljava/lang/Object;
.source "GoogleBillingWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGoogleBillingWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoogleBillingWrapper.kt\ncom/superwall/sdk/billing/GoogleBillingWrapperKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,723:1\n1557#2:724\n1628#2,3:725\n*S KotlinDebug\n*F\n+ 1 GoogleBillingWrapper.kt\ncom/superwall/sdk/billing/GoogleBillingWrapperKt\n*L\n714#1:724\n714#1:725,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a$\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004*\u0016\u0012\u0004\u0012\u00020\u0007\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00040\u0006\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "RECONNECT_TIMER_START_MILLISECONDS",
        "",
        "RECONNECT_TIMER_MAX_TIME_MILLISECONDS",
        "toInternalResult",
        "",
        "Lcom/superwall/sdk/delegate/InternalPurchaseResult;",
        "Lkotlin/Pair;",
        "Lcom/android/billingclient/api/BillingResult;",
        "Lcom/android/billingclient/api/Purchase;",
        "superwall_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final RECONNECT_TIMER_MAX_TIME_MILLISECONDS:J = 0x3e80L

.field public static final RECONNECT_TIMER_START_MILLISECONDS:J = 0x3e8L


# direct methods
.method public static final toInternalResult(Lkotlin/Pair;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Lcom/android/billingclient/api/BillingResult;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/delegate/InternalPurchaseResult;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 712
    invoke-virtual {p0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {p0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 713
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz p0, :cond_1

    .line 714
    check-cast p0, Ljava/lang/Iterable;

    .line 724
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 725
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 726
    check-cast v1, Lcom/android/billingclient/api/Purchase;

    .line 715
    new-instance v2, Lcom/superwall/sdk/delegate/InternalPurchaseResult$Purchased;

    invoke-direct {v2, v1}, Lcom/superwall/sdk/delegate/InternalPurchaseResult$Purchased;-><init>(Lcom/android/billingclient/api/Purchase;)V

    .line 726
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 727
    :cond_0
    check-cast v0, Ljava/util/List;

    return-object v0

    .line 717
    :cond_1
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    .line 718
    sget-object p0, Lcom/superwall/sdk/delegate/InternalPurchaseResult$Cancelled;->INSTANCE:Lcom/superwall/sdk/delegate/InternalPurchaseResult$Cancelled;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 720
    :cond_2
    new-instance p0, Lcom/superwall/sdk/delegate/InternalPurchaseResult$Failed;

    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {p0, v1}, Lcom/superwall/sdk/delegate/InternalPurchaseResult$Failed;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
