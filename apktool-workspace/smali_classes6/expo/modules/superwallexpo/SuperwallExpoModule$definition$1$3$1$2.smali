.class final Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1$2;
.super Ljava/lang/Object;
.source "SuperwallExpoModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/Result<",
        "+",
        "Lkotlin/Unit;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuperwallExpoModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuperwallExpoModule.kt\nexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1$2\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,530:1\n465#2:531\n415#2:532\n1252#3,4:533\n*S KotlinDebug\n*F\n+ 1 SuperwallExpoModule.kt\nexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1$2\n*L\n194#1:531\n194#1:532\n194#1:533,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $localResourcesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $promise:Lexpo/modules/kotlin/Promise;

.field final synthetic $promiseSettled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic $sdkVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/concurrent/atomic/AtomicBoolean;Lexpo/modules/kotlin/Promise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Lexpo/modules/kotlin/Promise;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1$2;->$sdkVersion:Ljava/lang/String;

    iput-object p2, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1$2;->$localResourcesMap:Ljava/util/Map;

    iput-object p3, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1$2;->$promiseSettled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1$2;->$promise:Lexpo/modules/kotlin/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 184
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1$2;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 6

    .line 191
    sget-object p1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p1}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object p1

    iget-object v0, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1$2;->$sdkVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "0.0.0"

    :cond_0
    const-string v1, "Expo"

    invoke-virtual {p1, v1, v0}, Lcom/superwall/sdk/Superwall;->setPlatformWrapper(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    sget-object p1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p1}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object p1

    new-instance v0, Lexpo/modules/superwallexpo/bridges/SuperwallDelegateBridge;

    invoke-direct {v0}, Lexpo/modules/superwallexpo/bridges/SuperwallDelegateBridge;-><init>()V

    check-cast v0, Lcom/superwall/sdk/delegate/SuperwallDelegate;

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/Superwall;->setDelegate(Lcom/superwall/sdk/delegate/SuperwallDelegate;)V

    .line 193
    iget-object p1, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1$2;->$localResourcesMap:Ljava/util/Map;

    if-eqz p1, :cond_2

    .line 194
    sget-object p1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p1}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object p1

    iget-object v0, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1$2;->$localResourcesMap:Ljava/util/Map;

    .line 531
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    .line 532
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 533
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 534
    check-cast v2, Ljava/util/Map$Entry;

    .line 532
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 534
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 195
    new-instance v4, Lcom/superwall/sdk/paywall/view/webview/PaywallResource$FromUri;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v5, "parse(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v2}, Lcom/superwall/sdk/paywall/view/webview/PaywallResource$FromUri;-><init>(Landroid/net/Uri;)V

    .line 534
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 194
    :cond_1
    invoke-virtual {p1, v1}, Lcom/superwall/sdk/Superwall;->setLocalResources(Ljava/util/Map;)V

    .line 198
    :cond_2
    iget-object p1, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1$2;->$promiseSettled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 199
    iget-object p1, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1$2;->$promise:Lexpo/modules/kotlin/Promise;

    invoke-interface {p1, v1}, Lexpo/modules/kotlin/Promise;->resolve(Z)V

    :cond_3
    return-void
.end method
