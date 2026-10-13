.class public final Landroidx/compose/material3/EnlargeOnPressNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "ButtonGroup.kt"

# interfaces
.implements Landroidx/compose/ui/node/ParentDataModifierNode;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u0018H\u0016J\r\u0010\u001a\u001a\u00020\u0018H\u0000\u00a2\u0006\u0002\u0008\u001bJ\u0016\u0010\u001c\u001a\u00020\u001d*\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR \u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Landroidx/compose/material3/EnlargeOnPressNode;",
        "Landroidx/compose/ui/node/ParentDataModifierNode;",
        "Landroidx/compose/ui/Modifier$Node;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/InteractionSource;",
        "animationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "",
        "<init>",
        "(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/animation/core/AnimationSpec;)V",
        "getInteractionSource",
        "()Landroidx/compose/foundation/interaction/InteractionSource;",
        "setInteractionSource",
        "(Landroidx/compose/foundation/interaction/InteractionSource;)V",
        "getAnimationSpec",
        "()Landroidx/compose/animation/core/AnimationSpec;",
        "setAnimationSpec",
        "(Landroidx/compose/animation/core/AnimationSpec;)V",
        "pressedAnimatable",
        "Landroidx/compose/animation/core/Animatable;",
        "Landroidx/compose/animation/core/AnimationVector1D;",
        "collectionJob",
        "Lkotlinx/coroutines/Job;",
        "onAttach",
        "",
        "onDetach",
        "launchCollectionJob",
        "launchCollectionJob$material3",
        "modifyParentData",
        "Landroidx/compose/material3/ButtonGroupParentData;",
        "Landroidx/compose/ui/unit/Density;",
        "parentData",
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
.field public static final $stable:I = 0x8


# instance fields
.field private animationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private collectionJob:Lkotlinx/coroutines/Job;

.field private interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

.field private final pressedAnimatable:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/animation/core/AnimationSpec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 1092
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 1093
    iput-object p1, p0, Landroidx/compose/material3/EnlargeOnPressNode;->interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    .line 1094
    iput-object p2, p0, Landroidx/compose/material3/EnlargeOnPressNode;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    const/4 p1, 0x2

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 1096
    invoke-static {v0, v0, p1, p2}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/EnlargeOnPressNode;->pressedAnimatable:Landroidx/compose/animation/core/Animatable;

    return-void
.end method

.method public static final synthetic access$getPressedAnimatable$p(Landroidx/compose/material3/EnlargeOnPressNode;)Landroidx/compose/animation/core/Animatable;
    .locals 0

    .line 1092
    iget-object p0, p0, Landroidx/compose/material3/EnlargeOnPressNode;->pressedAnimatable:Landroidx/compose/animation/core/Animatable;

    return-object p0
.end method


# virtual methods
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

    .line 1094
    iget-object v0, p0, Landroidx/compose/material3/EnlargeOnPressNode;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-object v0
.end method

.method public final getInteractionSource()Landroidx/compose/foundation/interaction/InteractionSource;
    .locals 1

    .line 1093
    iget-object v0, p0, Landroidx/compose/material3/EnlargeOnPressNode;->interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    return-object v0
.end method

.method public final launchCollectionJob$material3()V
    .locals 9

    .line 1112
    iget-object v0, p0, Landroidx/compose/material3/EnlargeOnPressNode;->collectionJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 1114
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/material3/EnlargeOnPressNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    new-instance v0, Landroidx/compose/material3/EnlargeOnPressNode$launchCollectionJob$1;

    invoke-direct {v0, p0, v1}, Landroidx/compose/material3/EnlargeOnPressNode$launchCollectionJob$1;-><init>(Landroidx/compose/material3/EnlargeOnPressNode;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 1113
    iput-object v0, p0, Landroidx/compose/material3/EnlargeOnPressNode;->collectionJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public modifyParentData(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Landroidx/compose/material3/ButtonGroupParentData;
    .locals 3

    .line 1142
    instance-of p1, p2, Landroidx/compose/material3/ButtonGroupParentData;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    check-cast p2, Landroidx/compose/material3/ButtonGroupParentData;

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 1143
    :goto_0
    new-instance p1, Landroidx/compose/material3/ButtonGroupParentData;

    invoke-static {p2}, Landroidx/compose/material3/ButtonGroupKt;->getWeight(Landroidx/compose/material3/ButtonGroupParentData;)F

    move-result v1

    iget-object v2, p0, Landroidx/compose/material3/EnlargeOnPressNode;->pressedAnimatable:Landroidx/compose/animation/core/Animatable;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroidx/compose/material3/ButtonGroupParentData;->getAlignment()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v0

    :cond_1
    invoke-direct {p1, v1, v2, v0}, Landroidx/compose/material3/ButtonGroupParentData;-><init>(FLandroidx/compose/animation/core/Animatable;Landroidx/compose/ui/Alignment$Vertical;)V

    return-object p1
.end method

.method public bridge synthetic modifyParentData(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1092
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/EnlargeOnPressNode;->modifyParentData(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Landroidx/compose/material3/ButtonGroupParentData;

    move-result-object p1

    return-object p1
.end method

.method public onAttach()V
    .locals 0

    .line 1101
    invoke-super {p0}, Landroidx/compose/ui/Modifier$Node;->onAttach()V

    .line 1103
    invoke-virtual {p0}, Landroidx/compose/material3/EnlargeOnPressNode;->launchCollectionJob$material3()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 1107
    invoke-super {p0}, Landroidx/compose/ui/Modifier$Node;->onDetach()V

    const/4 v0, 0x0

    .line 1108
    iput-object v0, p0, Landroidx/compose/material3/EnlargeOnPressNode;->collectionJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setAnimationSpec(Landroidx/compose/animation/core/AnimationSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 1094
    iput-object p1, p0, Landroidx/compose/material3/EnlargeOnPressNode;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-void
.end method

.method public final setInteractionSource(Landroidx/compose/foundation/interaction/InteractionSource;)V
    .locals 0

    .line 1093
    iput-object p1, p0, Landroidx/compose/material3/EnlargeOnPressNode;->interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    return-void
.end method
