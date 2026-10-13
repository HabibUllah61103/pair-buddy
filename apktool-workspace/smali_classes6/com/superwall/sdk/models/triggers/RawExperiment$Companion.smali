.class public final Lcom/superwall/sdk/models/triggers/RawExperiment$Companion;
.super Ljava/lang/Object;
.source "RawExperiment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/models/triggers/RawExperiment;
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
        "Lcom/superwall/sdk/models/triggers/RawExperiment$Companion;",
        "",
        "<init>",
        "()V",
        "stub",
        "Lcom/superwall/sdk/models/triggers/RawExperiment;",
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

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/models/triggers/RawExperiment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/superwall/sdk/models/triggers/RawExperiment;",
            ">;"
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/superwall/sdk/models/triggers/RawExperiment$$serializer;->INSTANCE:Lcom/superwall/sdk/models/triggers/RawExperiment$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public final stub()Lcom/superwall/sdk/models/triggers/RawExperiment;
    .locals 4

    .line 13
    new-instance v0, Lcom/superwall/sdk/models/triggers/RawExperiment;

    .line 16
    sget-object v1, Lcom/superwall/sdk/models/triggers/VariantOption;->Companion:Lcom/superwall/sdk/models/triggers/VariantOption$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/triggers/VariantOption$Companion;->stub()Lcom/superwall/sdk/models/triggers/VariantOption;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 13
    const-string v2, "abc"

    const-string v3, "def"

    invoke-direct {v0, v2, v3, v1}, Lcom/superwall/sdk/models/triggers/RawExperiment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
