.class public final Landroidx/compose/material3/EnlargeOnPressElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "ButtonGroup.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/material3/EnlargeOnPressNode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\u0008\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u000c\u0010\u0012\u001a\u00020\u0010*\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0096\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/compose/material3/EnlargeOnPressElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/material3/EnlargeOnPressNode;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/InteractionSource;",
        "animationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "",
        "<init>",
        "(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/animation/core/AnimationSpec;)V",
        "getInteractionSource",
        "()Landroidx/compose/foundation/interaction/InteractionSource;",
        "getAnimationSpec",
        "()Landroidx/compose/animation/core/AnimationSpec;",
        "create",
        "update",
        "",
        "node",
        "inspectableProperties",
        "Landroidx/compose/ui/platform/InspectorInfo;",
        "hashCode",
        "",
        "equals",
        "",
        "other",
        "",
        "material3"
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
.field public static final $stable:I


# instance fields
.field private final animationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/animation/core/AnimationSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 1059
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    .line 1060
    iput-object p1, p0, Landroidx/compose/material3/EnlargeOnPressElement;->interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    .line 1061
    iput-object p2, p0, Landroidx/compose/material3/EnlargeOnPressElement;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/material3/EnlargeOnPressNode;
    .locals 3

    .line 1065
    new-instance v0, Landroidx/compose/material3/EnlargeOnPressNode;

    iget-object v1, p0, Landroidx/compose/material3/EnlargeOnPressElement;->interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    iget-object v2, p0, Landroidx/compose/material3/EnlargeOnPressElement;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    invoke-direct {v0, v1, v2}, Landroidx/compose/material3/EnlargeOnPressNode;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/animation/core/AnimationSpec;)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 1

    .line 1059
    invoke-virtual {p0}, Landroidx/compose/material3/EnlargeOnPressElement;->create()Landroidx/compose/material3/EnlargeOnPressNode;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1086
    :cond_0
    instance-of v1, p1, Landroidx/compose/material3/EnlargeOnPressNode;

    if-eqz v1, :cond_1

    check-cast p1, Landroidx/compose/material3/EnlargeOnPressNode;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_2

    return v1

    .line 1087
    :cond_2
    iget-object v2, p0, Landroidx/compose/material3/EnlargeOnPressElement;->interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    invoke-virtual {p1}, Landroidx/compose/material3/EnlargeOnPressNode;->getInteractionSource()Landroidx/compose/foundation/interaction/InteractionSource;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1088
    iget-object v2, p0, Landroidx/compose/material3/EnlargeOnPressElement;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    invoke-virtual {p1}, Landroidx/compose/material3/EnlargeOnPressNode;->getAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public final getAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1061
    iget-object v0, p0, Landroidx/compose/material3/EnlargeOnPressElement;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-object v0
.end method

.method public final getInteractionSource()Landroidx/compose/foundation/interaction/InteractionSource;
    .locals 1

    .line 1060
    iget-object v0, p0, Landroidx/compose/material3/EnlargeOnPressElement;->interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1082
    iget-object v0, p0, Landroidx/compose/material3/EnlargeOnPressElement;->interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/material3/EnlargeOnPressElement;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 3

    .line 1077
    const-string v0, "EnlargeOnPressElement"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "interactionSource"

    iget-object v2, p0, Landroidx/compose/material3/EnlargeOnPressElement;->interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1079
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    const-string v0, "animationSpec"

    iget-object v1, p0, Landroidx/compose/material3/EnlargeOnPressElement;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public update(Landroidx/compose/material3/EnlargeOnPressNode;)V
    .locals 2

    .line 1069
    invoke-virtual {p1}, Landroidx/compose/material3/EnlargeOnPressNode;->getInteractionSource()Landroidx/compose/foundation/interaction/InteractionSource;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/material3/EnlargeOnPressElement;->interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1070
    iget-object v0, p0, Landroidx/compose/material3/EnlargeOnPressElement;->interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    invoke-virtual {p1, v0}, Landroidx/compose/material3/EnlargeOnPressNode;->setInteractionSource(Landroidx/compose/foundation/interaction/InteractionSource;)V

    .line 1071
    invoke-virtual {p1}, Landroidx/compose/material3/EnlargeOnPressNode;->launchCollectionJob$material3()V

    .line 1073
    :cond_0
    iget-object v0, p0, Landroidx/compose/material3/EnlargeOnPressElement;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    invoke-virtual {p1, v0}, Landroidx/compose/material3/EnlargeOnPressNode;->setAnimationSpec(Landroidx/compose/animation/core/AnimationSpec;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 1059
    check-cast p1, Landroidx/compose/material3/EnlargeOnPressNode;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/EnlargeOnPressElement;->update(Landroidx/compose/material3/EnlargeOnPressNode;)V

    return-void
.end method
