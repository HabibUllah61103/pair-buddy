.class public final Lcom/superwall/sdk/models/triggers/Experiment$Companion;
.super Ljava/lang/Object;
.source "Experiment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/models/triggers/Experiment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/superwall/sdk/models/triggers/Experiment$Companion;",
        "",
        "<init>",
        "()V",
        "presentById",
        "Lcom/superwall/sdk/models/triggers/Experiment;",
        "id",
        "",
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

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/models/triggers/Experiment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final presentById(Ljava/lang/String;)Lcom/superwall/sdk/models/triggers/Experiment;
    .locals 4

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/superwall/sdk/models/triggers/Experiment;

    .line 39
    new-instance v1, Lcom/superwall/sdk/models/triggers/Experiment$Variant;

    sget-object v2, Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;->TREATMENT:Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;

    const-string v3, ""

    invoke-direct {v1, v3, v2, p1}, Lcom/superwall/sdk/models/triggers/Experiment$Variant;-><init>(Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;Ljava/lang/String;)V

    .line 36
    invoke-direct {v0, p1, v3, v1}, Lcom/superwall/sdk/models/triggers/Experiment;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment$Variant;)V

    return-object v0
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/superwall/sdk/models/triggers/Experiment;",
            ">;"
        }
    .end annotation

    .line 34
    sget-object v0, Lcom/superwall/sdk/models/triggers/Experiment$$serializer;->INSTANCE:Lcom/superwall/sdk/models/triggers/Experiment$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method
