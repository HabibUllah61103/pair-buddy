.class public final Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;
.super Ljava/lang/Object;
.source "TriggerRule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/models/triggers/TriggerRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TriggerPreload"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\rJ$\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0012J\u0013\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;",
        "",
        "behavior",
        "Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;",
        "requiresReEvaluation",
        "",
        "<init>",
        "(Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;Ljava/lang/Boolean;)V",
        "getBehavior",
        "()Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;",
        "setBehavior",
        "(Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;)V",
        "getRequiresReEvaluation",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "component1",
        "component2",
        "copy",
        "(Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;Ljava/lang/Boolean;)Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "Companion",
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

.annotation runtime Lkotlinx/serialization/Serializable;
    with = Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreloadSerializer;
.end annotation


# static fields
.field public static final Companion:Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload$Companion;


# instance fields
.field private behavior:Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;

.field private final requiresReEvaluation:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;->Companion:Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "behavior"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;->behavior:Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;

    .line 103
    iput-object p2, p0, Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;->requiresReEvaluation:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 101
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;-><init>(Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;->behavior:Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;->requiresReEvaluation:Ljava/lang/Boolean;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;->copy(Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;Ljava/lang/Boolean;)Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;->behavior:Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;

    return-object v0
.end method

.method public final component2()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;->requiresReEvaluation:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final copy(Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;Ljava/lang/Boolean;)Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;
    .locals 1

    const-string v0, "behavior"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;

    invoke-direct {v0, p1, p2}, Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;-><init>(Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;

    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;->behavior:Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;

    iget-object v3, p1, Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;->behavior:Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;->requiresReEvaluation:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;->requiresReEvaluation:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getBehavior()Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;->behavior:Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;

    return-object v0
.end method

.method public final getRequiresReEvaluation()Ljava/lang/Boolean;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;->requiresReEvaluation:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;->behavior:Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;->requiresReEvaluation:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final setBehavior(Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iput-object p1, p0, Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;->behavior:Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;->behavior:Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;

    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;->requiresReEvaluation:Ljava/lang/Boolean;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TriggerPreload(behavior="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", requiresReEvaluation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
