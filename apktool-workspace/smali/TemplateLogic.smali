.class public final LTemplateLogic;
.super Ljava/lang/Object;
.source "TemplateLogic.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTemplateLogic.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplateLogic.kt\nTemplateLogic\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,107:1\n1557#2:108\n1628#2,3:109\n*S KotlinDebug\n*F\n+ 1 TemplateLogic.kt\nTemplateLogic\n*L\n28#1:108\n28#1:109,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JD\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000fH\u0086@\u00a2\u0006\u0002\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "LTemplateLogic;",
        "",
        "<init>",
        "()V",
        "getBase64EncodedTemplates",
        "",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "paywall",
        "Lcom/superwall/sdk/models/paywall/Paywall;",
        "event",
        "Lcom/superwall/sdk/models/events/EventData;",
        "factory",
        "Lcom/superwall/sdk/dependencies/VariablesFactory;",
        "encodeToBase64",
        "Lkotlin/Function1;",
        "(Lkotlinx/serialization/json/Json;Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/dependencies/VariablesFactory;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# static fields
.field public static final INSTANCE:LTemplateLogic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LTemplateLogic;

    invoke-direct {v0}, LTemplateLogic;-><init>()V

    sput-object v0, LTemplateLogic;->INSTANCE:LTemplateLogic;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBase64EncodedTemplates(Lkotlinx/serialization/json/Json;Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/dependencies/VariablesFactory;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/json/Json;",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            "Lcom/superwall/sdk/models/events/EventData;",
            "Lcom/superwall/sdk/dependencies/VariablesFactory;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p6

    instance-of v1, v0, LTemplateLogic$getBase64EncodedTemplates$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, LTemplateLogic$getBase64EncodedTemplates$1;

    iget v2, v1, LTemplateLogic$getBase64EncodedTemplates$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, LTemplateLogic$getBase64EncodedTemplates$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, LTemplateLogic$getBase64EncodedTemplates$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, LTemplateLogic$getBase64EncodedTemplates$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, LTemplateLogic$getBase64EncodedTemplates$1;-><init>(LTemplateLogic;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, LTemplateLogic$getBase64EncodedTemplates$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 17
    iget v4, v1, LTemplateLogic$getBase64EncodedTemplates$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v3, v1, LTemplateLogic$getBase64EncodedTemplates$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/paywall/view/webview/templating/models/ProductTemplate;

    iget-object v4, v1, LTemplateLogic$getBase64EncodedTemplates$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    iget-object v6, v1, LTemplateLogic$getBase64EncodedTemplates$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/superwall/sdk/models/paywall/Paywall;

    iget-object v1, v1, LTemplateLogic$getBase64EncodedTemplates$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/serialization/json/Json;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, v4

    goto/16 :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 28
    invoke-virtual/range {p2 .. p2}, Lcom/superwall/sdk/models/paywall/Paywall;->getPlayStoreProducts()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 108
    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 109
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 110
    check-cast v6, Lcom/superwall/sdk/models/product/CrossplatformProduct;

    .line 30
    invoke-virtual {v6}, Lcom/superwall/sdk/models/product/CrossplatformProduct;->getName()Ljava/lang/String;

    move-result-object v7

    .line 31
    invoke-virtual {v6}, Lcom/superwall/sdk/models/product/CrossplatformProduct;->getEntitlements()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v8

    .line 33
    invoke-virtual {v6}, Lcom/superwall/sdk/models/product/CrossplatformProduct;->getStoreProduct()Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;

    move-result-object v9

    .line 34
    const-string v10, "null cannot be cast to non-null type com.superwall.sdk.models.product.CrossplatformProduct.StoreProduct.PlayStore"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$PlayStore;

    .line 35
    new-instance v10, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$PlayStore;

    .line 36
    new-instance v11, Lcom/superwall/sdk/models/product/PlayStoreProduct;

    .line 37
    invoke-virtual {v9}, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$PlayStore;->getProductIdentifier()Ljava/lang/String;

    move-result-object v13

    .line 38
    invoke-virtual {v9}, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$PlayStore;->getBasePlanIdentifier()Ljava/lang/String;

    move-result-object v14

    .line 39
    invoke-virtual {v9}, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$PlayStore;->getOffer()Lcom/superwall/sdk/models/product/Offer;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/4 v12, 0x0

    .line 36
    invoke-direct/range {v11 .. v17}, Lcom/superwall/sdk/models/product/PlayStoreProduct;-><init>(Lcom/superwall/sdk/models/product/Store;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/Offer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    invoke-direct {v10, v11}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$PlayStore;-><init>(Lcom/superwall/sdk/models/product/PlayStoreProduct;)V

    .line 43
    invoke-virtual {v6}, Lcom/superwall/sdk/models/product/CrossplatformProduct;->getCompositeId()Ljava/lang/String;

    move-result-object v6

    .line 29
    new-instance v9, Lcom/superwall/sdk/models/product/ProductItem;

    .line 33
    check-cast v10, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;

    .line 29
    invoke-direct {v9, v6, v7, v10, v8}, Lcom/superwall/sdk/models/product/ProductItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;Ljava/util/Set;)V

    .line 110
    invoke-interface {v4, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 111
    :cond_3
    check-cast v4, Ljava/util/List;

    .line 25
    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/ProductTemplate;

    const-string/jumbo v6, "products"

    invoke-direct {v0, v6, v4}, Lcom/superwall/sdk/paywall/view/webview/templating/models/ProductTemplate;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Lcom/superwall/sdk/models/paywall/Paywall;->getProductVariables()Ljava/util/List;

    move-result-object v4

    .line 51
    invoke-virtual/range {p2 .. p2}, Lcom/superwall/sdk/models/paywall/Paywall;->getComputedPropertyRequests()Ljava/util/List;

    move-result-object v6

    move-object/from16 v7, p1

    .line 49
    iput-object v7, v1, LTemplateLogic$getBase64EncodedTemplates$1;->L$0:Ljava/lang/Object;

    move-object/from16 v8, p2

    iput-object v8, v1, LTemplateLogic$getBase64EncodedTemplates$1;->L$1:Ljava/lang/Object;

    move-object/from16 v9, p5

    iput-object v9, v1, LTemplateLogic$getBase64EncodedTemplates$1;->L$2:Ljava/lang/Object;

    iput-object v0, v1, LTemplateLogic$getBase64EncodedTemplates$1;->L$3:Ljava/lang/Object;

    iput v5, v1, LTemplateLogic$getBase64EncodedTemplates$1;->label:I

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-interface {v11, v4, v6, v10, v1}, Lcom/superwall/sdk/dependencies/VariablesFactory;->makeJsonVariables(Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_4

    return-object v3

    :cond_4
    move-object v3, v0

    move-object v0, v1

    move-object v1, v7

    move-object v6, v8

    .line 17
    :goto_2
    check-cast v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;

    .line 56
    new-instance v4, Lcom/superwall/sdk/paywall/view/webview/templating/models/FreeTrialTemplate;

    .line 58
    invoke-virtual {v6}, Lcom/superwall/sdk/models/paywall/Paywall;->isFreeTrialAvailable()Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "freeTrial"

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    .line 56
    :goto_3
    const-string/jumbo v8, "template_substitutions_prefix"

    invoke-direct {v4, v8, v7}, Lcom/superwall/sdk/paywall/view/webview/templating/models/FreeTrialTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v7, Lcom/superwall/sdk/paywall/view/webview/templating/models/ExperimentTemplate;

    .line 63
    invoke-virtual {v6}, Lcom/superwall/sdk/models/paywall/Paywall;->getExperiment()Lcom/superwall/sdk/models/triggers/Experiment;

    move-result-object v8

    const-string v10, ""

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/superwall/sdk/models/triggers/Experiment;->getId()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_7

    :cond_6
    move-object v8, v10

    :cond_7
    if-eqz v6, :cond_8

    .line 64
    invoke-virtual {v6}, Lcom/superwall/sdk/models/paywall/Paywall;->getExperiment()Lcom/superwall/sdk/models/triggers/Experiment;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-virtual {v11}, Lcom/superwall/sdk/models/triggers/Experiment;->getVariant()Lcom/superwall/sdk/models/triggers/Experiment$Variant;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-virtual {v11}, Lcom/superwall/sdk/models/triggers/Experiment$Variant;->getId()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_9

    :cond_8
    move-object v11, v10

    :cond_9
    if-eqz v6, :cond_b

    .line 65
    invoke-virtual {v6}, Lcom/superwall/sdk/models/paywall/Paywall;->getExperiment()Lcom/superwall/sdk/models/triggers/Experiment;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lcom/superwall/sdk/models/triggers/Experiment;->getGroupId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_a

    goto :goto_4

    :cond_a
    move-object v10, v6

    .line 61
    :cond_b
    :goto_4
    const-string v6, "experiment"

    invoke-direct {v7, v6, v8, v11, v10}, Lcom/superwall/sdk/paywall/view/webview/templating/models/ExperimentTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x4

    .line 74
    new-array v6, v6, [Ljava/lang/String;

    sget-object v8, Lcom/superwall/sdk/paywall/view/webview/templating/models/ProductTemplate;->Companion:Lcom/superwall/sdk/paywall/view/webview/templating/models/ProductTemplate$Companion;

    invoke-virtual {v8}, Lcom/superwall/sdk/paywall/view/webview/templating/models/ProductTemplate$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v8

    check-cast v8, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v1, v8, v3}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    aput-object v3, v6, v8

    .line 75
    sget-object v3, Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;->Companion:Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables$Companion;

    invoke-virtual {v3}, Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v1, v3, v0}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v5

    .line 76
    sget-object v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/FreeTrialTemplate;->Companion:Lcom/superwall/sdk/paywall/view/webview/templating/models/FreeTrialTemplate$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/webview/templating/models/FreeTrialTemplate$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v1, v0, v4}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v6, v3

    .line 77
    sget-object v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/ExperimentTemplate;->Companion:Lcom/superwall/sdk/paywall/view/webview/templating/models/ExperimentTemplate$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/webview/templating/models/ExperimentTemplate$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v1, v0, v7}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v6, v1

    .line 73
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 80
    move-object v10, v0

    check-cast v10, Ljava/lang/Iterable;

    const-string v0, ","

    move-object v11, v0

    check-cast v11, Ljava/lang/CharSequence;

    const/16 v17, 0x3e

    const/16 v18, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v10 .. v18}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    sget-object v10, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 82
    sget-object v11, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 83
    sget-object v12, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "!!! Template Logic: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x18

    const/16 v17, 0x0

    const/4 v14, 0x0

    .line 81
    invoke-static/range {v10 .. v17}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 87
    invoke-interface {v9, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
