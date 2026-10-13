.class public final Lcom/superwall/sdk/paywall/presentation/PaywallInfo$Companion;
.super Ljava/lang/Object;
.source "PaywallInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/paywall/presentation/PaywallInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0006\u001a\u00020\u0007J\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/presentation/PaywallInfo$Companion;",
        "",
        "<init>",
        "()V",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "empty",
        "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
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

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final empty()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;
    .locals 44

    .line 309
    const-string v0, ""

    invoke-static {v0}, Lcom/superwall/sdk/models/paywall/PaywallURL;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 311
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 312
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 334
    sget-object v0, Lcom/superwall/sdk/models/config/FeatureGatingBehavior$NonGated;->INSTANCE:Lcom/superwall/sdk/models/config/FeatureGatingBehavior$NonGated;

    .line 335
    sget-object v1, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$None;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$None;

    .line 336
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v32

    .line 337
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v33

    .line 338
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v34

    .line 339
    new-instance v2, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    sget-object v3, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$None;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$None;

    check-cast v3, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    const-wide/16 v9, 0x0

    invoke-direct {v2, v3, v9, v10}, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;-><init>(Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;J)V

    move-object v3, v1

    .line 305
    new-instance v1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    .line 334
    move-object/from16 v30, v0

    check-cast v30, Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    .line 335
    move-object/from16 v31, v3

    check-cast v31, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    const/16 v42, 0x60

    const/16 v43, 0x0

    move-object/from16 v35, v2

    .line 305
    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, ""

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-string v36, ""

    const-string v37, ""

    const/16 v38, 0x1

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    invoke-direct/range {v1 .. v43}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ZLcom/superwall/sdk/models/config/FeatureGatingBehavior;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/superwall/sdk/models/customer/CustomerInfo;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
            ">;"
        }
    .end annotation

    .line 301
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo$$serializer;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/PaywallInfo$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method
