.class public final Lcom/superwall/sdk/models/paywall/Paywall$Companion;
.super Ljava/lang/Object;
.source "Paywall.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/models/paywall/Paywall;
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
        "Lcom/superwall/sdk/models/paywall/Paywall$Companion;",
        "",
        "<init>",
        "()V",
        "stub",
        "Lcom/superwall/sdk/models/paywall/Paywall;",
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

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/models/paywall/Paywall$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            ">;"
        }
    .end annotation

    .line 277
    sget-object v0, Lcom/superwall/sdk/models/paywall/Paywall$$serializer;->INSTANCE:Lcom/superwall/sdk/models/paywall/Paywall$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public final stub()Lcom/superwall/sdk/models/paywall/Paywall;
    .locals 45

    .line 283
    const-string v0, "https://google.com"

    invoke-static {v0}, Lcom/superwall/sdk/models/paywall/PaywallURL;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 286
    new-instance v12, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    .line 287
    sget-object v1, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Modal;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Modal;

    check-cast v1, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    const-wide/16 v2, 0x12c

    .line 286
    invoke-direct {v12, v1, v2, v3}, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;-><init>(Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;J)V

    .line 290
    sget-object v1, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Modal;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Modal;

    .line 295
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 296
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 297
    new-instance v19, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    const/4 v10, 0x7

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, v19

    invoke-direct/range {v6 .. v11}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 298
    new-instance v20, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    move-object/from16 v6, v20

    invoke-direct/range {v6 .. v11}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 299
    new-instance v21, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    move-object/from16 v6, v21

    invoke-direct/range {v6 .. v11}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 300
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 301
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 304
    sget-object v6, Lcom/superwall/sdk/models/config/FeatureGatingBehavior$NonGated;->INSTANCE:Lcom/superwall/sdk/models/config/FeatureGatingBehavior$NonGated;

    .line 305
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 308
    new-instance v8, Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;

    .line 311
    new-instance v9, Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;

    const-wide/16 v10, 0x3e8

    const/4 v13, 0x1

    invoke-direct {v9, v0, v10, v11, v13}, Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;-><init>(Ljava/lang/String;JI)V

    .line 310
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v9, 0x3

    .line 308
    invoke-direct {v8, v9, v0}, Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;-><init>(ILjava/util/List;)V

    .line 317
    sget-object v40, Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;->DISABLED:Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;

    .line 318
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v16

    move-object v0, v1

    .line 279
    new-instance v1, Lcom/superwall/sdk/models/paywall/Paywall;

    .line 290
    check-cast v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    .line 295
    move-object/from16 v18, v2

    check-cast v18, Ljava/util/List;

    .line 300
    move-object/from16 v23, v3

    check-cast v23, Ljava/util/List;

    .line 301
    move-object/from16 v24, v4

    check-cast v24, Ljava/util/List;

    .line 304
    move-object/from16 v28, v6

    check-cast v28, Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    .line 305
    move-object/from16 v30, v7

    check-cast v30, Ljava/util/List;

    .line 316
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    const/16 v43, 0x48

    const/16 v44, 0x0

    .line 279
    const-string v2, "id"

    const-string v3, "identifier"

    const-string v4, "abac"

    const-string v6, ""

    const-string v7, "MODAL"

    const-wide/16 v9, 0x12c

    const-string v11, "CHECK_USER_SUBSCRIPTION"

    const-string v13, "000000"

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v22, 0x0

    const-string v25, ""

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const-string v36, "123"

    const-string v37, "test"

    const/16 v38, 0x0

    const/16 v41, 0x0

    const v42, -0xaf7c000

    move-object/from16 v35, v8

    move-object v8, v0

    invoke-direct/range {v1 .. v44}, Lcom/superwall/sdk/models/paywall/Paywall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;JLjava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Lcom/superwall/sdk/models/config/FeatureGatingBehavior;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/config/models/OnDeviceCaching;Lcom/superwall/sdk/models/triggers/Experiment;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/Map;Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method
