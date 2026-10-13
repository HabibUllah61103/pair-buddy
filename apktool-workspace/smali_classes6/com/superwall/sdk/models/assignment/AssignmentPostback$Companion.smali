.class public final Lcom/superwall/sdk/models/assignment/AssignmentPostback$Companion;
.super Ljava/lang/Object;
.source "AssignmentPostback.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/models/assignment/AssignmentPostback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/superwall/sdk/models/assignment/AssignmentPostback$Companion;",
        "",
        "<init>",
        "()V",
        "create",
        "Lcom/superwall/sdk/models/assignment/AssignmentPostback;",
        "confirmableAssignment",
        "Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;",
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

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/models/assignment/AssignmentPostback$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;)Lcom/superwall/sdk/models/assignment/AssignmentPostback;
    .locals 3

    const-string v0, "confirmableAssignment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 50
    new-instance v1, Lcom/superwall/sdk/models/assignment/Assignment;

    .line 51
    invoke-virtual {p1}, Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;->getExperimentId()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-virtual {p1}, Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;->getVariant()Lcom/superwall/sdk/models/triggers/Experiment$Variant;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/models/triggers/Experiment$Variant;->getId()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-direct {v1, v2, p1}, Lcom/superwall/sdk/models/assignment/Assignment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance p1, Lcom/superwall/sdk/models/assignment/AssignmentPostback;

    invoke-direct {p1, v0}, Lcom/superwall/sdk/models/assignment/AssignmentPostback;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/superwall/sdk/models/assignment/AssignmentPostback;",
            ">;"
        }
    .end annotation

    .line 45
    sget-object v0, Lcom/superwall/sdk/models/assignment/AssignmentPostback$$serializer;->INSTANCE:Lcom/superwall/sdk/models/assignment/AssignmentPostback$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method
