.class public final Lcom/superwall/sdk/models/triggers/TriggerRule$Companion;
.super Ljava/lang/Object;
.source "TriggerRule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/models/triggers/TriggerRule;
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
        "Lcom/superwall/sdk/models/triggers/TriggerRule$Companion;",
        "",
        "<init>",
        "()V",
        "stub",
        "Lcom/superwall/sdk/models/triggers/TriggerRule;",
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

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/models/triggers/TriggerRule$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/superwall/sdk/models/triggers/TriggerRule;",
            ">;"
        }
    .end annotation

    .line 158
    sget-object v0, Lcom/superwall/sdk/models/triggers/TriggerRule$$serializer;->INSTANCE:Lcom/superwall/sdk/models/triggers/TriggerRule$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public final stub()Lcom/superwall/sdk/models/triggers/TriggerRule;
    .locals 12

    .line 160
    new-instance v0, Lcom/superwall/sdk/models/triggers/TriggerRule;

    .line 165
    new-instance v1, Lcom/superwall/sdk/models/triggers/VariantOption;

    .line 166
    sget-object v2, Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;->HOLDOUT:Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;

    .line 165
    const-string v3, "3"

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/superwall/sdk/models/triggers/VariantOption;-><init>(Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;Ljava/lang/String;ILjava/lang/String;)V

    .line 164
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 175
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 176
    new-instance v9, Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;

    sget-object v1, Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;->ALWAYS:Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;

    const/4 v2, 0x2

    invoke-direct {v9, v1, v5, v2, v5}, Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;-><init>(Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v10, 0x20

    const/4 v11, 0x0

    .line 160
    const-string v1, "1"

    const-string v2, "2"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/superwall/sdk/models/triggers/TriggerRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Ljava/util/List;Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
