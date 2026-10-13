.class public final Lcom/superwall/sdk/models/config/Config$Companion;
.super Ljava/lang/Object;
.source "Config.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/models/config/Config;
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
        "Lcom/superwall/sdk/models/config/Config$Companion;",
        "",
        "<init>",
        "()V",
        "stub",
        "Lcom/superwall/sdk/models/config/Config;",
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

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/models/config/Config$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/superwall/sdk/models/config/Config;",
            ">;"
        }
    .end annotation

    .line 75
    sget-object v0, Lcom/superwall/sdk/models/config/Config$$serializer;->INSTANCE:Lcom/superwall/sdk/models/config/Config$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public final stub()Lcom/superwall/sdk/models/config/Config;
    .locals 22

    .line 78
    sget-object v0, Lcom/superwall/sdk/models/triggers/Trigger;->Companion:Lcom/superwall/sdk/models/triggers/Trigger$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/triggers/Trigger$Companion;->stub()Lcom/superwall/sdk/models/triggers/Trigger;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 79
    sget-object v0, Lcom/superwall/sdk/models/paywall/Paywall;->Companion:Lcom/superwall/sdk/models/paywall/Paywall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/paywall/Paywall$Companion;->stub()Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 81
    sget-object v0, Lcom/superwall/sdk/models/postback/PostbackRequest;->Companion:Lcom/superwall/sdk/models/postback/PostbackRequest$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/postback/PostbackRequest$Companion;->stub()Lcom/superwall/sdk/models/postback/PostbackRequest;

    move-result-object v5

    .line 83
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 84
    sget-object v0, Lcom/superwall/sdk/models/config/PreloadingDisabled;->Companion:Lcom/superwall/sdk/models/config/PreloadingDisabled$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/config/PreloadingDisabled$Companion;->stub()Lcom/superwall/sdk/models/config/PreloadingDisabled;

    move-result-object v11

    .line 85
    new-instance v12, Lcom/superwall/sdk/models/config/LocalizationConfig;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/superwall/sdk/models/config/LocalizationConfig;-><init>(Ljava/util/List;)V

    .line 87
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 77
    new-instance v1, Lcom/superwall/sdk/models/config/Config;

    const v20, 0x1dc00

    const/16 v21, 0x0

    const/4 v4, 0x0

    const-wide/32 v6, 0x36ee80

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, "stub-build-id"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v1 .. v21}, Lcom/superwall/sdk/models/config/Config;-><init>(Ljava/util/Set;Ljava/util/List;ILcom/superwall/sdk/models/postback/PostbackRequest;JLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/config/PreloadingDisabled;Lcom/superwall/sdk/models/config/LocalizationConfig;Ljava/lang/String;Ljava/util/Set;Lcom/superwall/sdk/models/config/WebToAppConfig;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method
