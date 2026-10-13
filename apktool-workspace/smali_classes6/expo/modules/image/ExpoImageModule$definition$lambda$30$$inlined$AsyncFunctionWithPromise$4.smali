.class public final Lexpo/modules/image/ExpoImageModule$definition$lambda$30$$inlined$AsyncFunctionWithPromise$4;
.super Ljava/lang/Object;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/image/ExpoImageModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "[",
        "Ljava/lang/Object;",
        "Lexpo/modules/kotlin/Promise;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$18\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 ExpoImageModule.kt\nexpo/modules/image/ExpoImageModule\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,613:1\n25#2:614\n60#3,8:615\n68#3,2:624\n70#3,4:627\n75#3,9:632\n112#3,2:641\n216#4:623\n217#4:626\n1869#5:631\n1870#5:643\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$18\n+ 2 ExpoImageModule.kt\nexpo/modules/image/ExpoImageModule\n*L\n325#1:614\n67#2:623\n67#2:626\n73#2:631\n73#2:643\n*E\n"
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
.field final synthetic this$0:Lexpo/modules/image/ExpoImageModule;


# direct methods
.method public constructor <init>(Lexpo/modules/image/ExpoImageModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/image/ExpoImageModule$definition$lambda$30$$inlined$AsyncFunctionWithPromise$4;->this$0:Lexpo/modules/image/ExpoImageModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 327
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, Lexpo/modules/kotlin/Promise;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/image/ExpoImageModule$definition$lambda$30$$inlined$AsyncFunctionWithPromise$4;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 11

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object v3, p1, v2

    const/4 v4, 0x2

    aget-object p1, p1, v4

    .line 326
    check-cast p1, Ljava/util/Map;

    check-cast v3, Lexpo/modules/image/records/CachePolicy;

    check-cast v1, Ljava/util/List;

    .line 615
    iget-object v4, p0, Lexpo/modules/image/ExpoImageModule$definition$lambda$30$$inlined$AsyncFunctionWithPromise$4;->this$0:Lexpo/modules/image/ExpoImageModule;

    invoke-virtual {v4}, Lexpo/modules/image/ExpoImageModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v4

    invoke-virtual {v4}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    .line 617
    :cond_0
    new-instance v5, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 618
    new-instance v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    if-eqz p1, :cond_2

    .line 621
    new-instance v7, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    invoke-direct {v7}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;-><init>()V

    .line 623
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 624
    invoke-virtual {v7, v9, v8}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    goto :goto_0

    .line 627
    :cond_1
    invoke-virtual {v7}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->build()Lcom/bumptech/glide/load/model/LazyHeaders;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 620
    check-cast p1, Lcom/bumptech/glide/load/model/Headers;

    goto :goto_1

    .line 628
    :cond_2
    sget-object p1, Lcom/bumptech/glide/load/model/Headers;->DEFAULT:Lcom/bumptech/glide/load/model/Headers;

    .line 630
    :goto_1
    move-object v7, v1

    check-cast v7, Ljava/lang/Iterable;

    .line 631
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 632
    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v9

    .line 633
    new-instance v10, Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-direct {v10, v8, p1}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/Headers;)V

    invoke-virtual {v9, v10}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v8

    const/16 v9, 0x64

    .line 635
    invoke-virtual {v8, v9}, Lcom/bumptech/glide/RequestBuilder;->encodeQuality(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v8

    check-cast v8, Lcom/bumptech/glide/RequestBuilder;

    .line 636
    sget-object v9, Lexpo/modules/image/NoopDownsampleStrategy;->INSTANCE:Lexpo/modules/image/NoopDownsampleStrategy;

    check-cast v9, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/RequestBuilder;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v8

    const-string v9, "downsample(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lcom/bumptech/glide/RequestBuilder;

    .line 637
    sget-object v9, Lexpo/modules/image/records/CachePolicy;->MEMORY:Lexpo/modules/image/records/CachePolicy;

    if-ne v3, v9, :cond_3

    move v9, v2

    goto :goto_3

    :cond_3
    move v9, v0

    :goto_3
    sget-object v10, Lexpo/modules/image/ExpoImageModule$definition$1$3$1$1;->INSTANCE:Lexpo/modules/image/ExpoImageModule$definition$1$3$1$1;

    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-static {v8, v9, v10}, Lexpo/modules/image/GlideExtensionsKt;->customize(Lcom/bumptech/glide/RequestBuilder;ZLkotlin/jvm/functions/Function1;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v8

    .line 640
    new-instance v9, Lexpo/modules/image/ExpoImageModule$definition$1$3$1$2;

    invoke-direct {v9, v6, p2, v5, v1}, Lexpo/modules/image/ExpoImageModule$definition$1$3$1$2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lexpo/modules/kotlin/Promise;Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;)V

    check-cast v9, Lcom/bumptech/glide/request/RequestListener;

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v8

    .line 641
    invoke-virtual {v8}, Lcom/bumptech/glide/RequestBuilder;->submit()Lcom/bumptech/glide/request/FutureTarget;

    goto :goto_2

    :cond_4
    return-void
.end method
