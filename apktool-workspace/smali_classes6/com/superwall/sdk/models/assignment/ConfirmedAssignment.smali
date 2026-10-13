.class public final Lcom/superwall/sdk/models/assignment/ConfirmedAssignment;
.super Ljava/lang/Object;
.source "ConfirmedAssignment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0015\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/superwall/sdk/models/assignment/ConfirmedAssignment;",
        "",
        "experimentId",
        "",
        "Lcom/superwall/sdk/models/triggers/ExperimentID;",
        "variant",
        "Lcom/superwall/sdk/models/triggers/Experiment$Variant;",
        "<init>",
        "(Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment$Variant;)V",
        "getExperimentId",
        "()Ljava/lang/String;",
        "getVariant",
        "()Lcom/superwall/sdk/models/triggers/Experiment$Variant;",
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


# instance fields
.field private final experimentId:Ljava/lang/String;

.field private final variant:Lcom/superwall/sdk/models/triggers/Experiment$Variant;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment$Variant;)V
    .locals 1

    const-string v0, "experimentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "variant"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/superwall/sdk/models/assignment/ConfirmedAssignment;->experimentId:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/superwall/sdk/models/assignment/ConfirmedAssignment;->variant:Lcom/superwall/sdk/models/triggers/Experiment$Variant;

    return-void
.end method


# virtual methods
.method public final getExperimentId()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/superwall/sdk/models/assignment/ConfirmedAssignment;->experimentId:Ljava/lang/String;

    return-object v0
.end method

.method public final getVariant()Lcom/superwall/sdk/models/triggers/Experiment$Variant;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/superwall/sdk/models/assignment/ConfirmedAssignment;->variant:Lcom/superwall/sdk/models/triggers/Experiment$Variant;

    return-object v0
.end method
