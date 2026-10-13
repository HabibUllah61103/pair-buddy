.class public final Landroidx/compose/material3/VerticalAlignNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "ButtonGroup.kt"

# interfaces
.implements Landroidx/compose/ui/node/ParentDataModifierNode;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0016\u0010\n\u001a\u00020\u000b*\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\u0006\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/compose/material3/VerticalAlignNode;",
        "Landroidx/compose/ui/node/ParentDataModifierNode;",
        "Landroidx/compose/ui/Modifier$Node;",
        "alignment",
        "Landroidx/compose/ui/Alignment$Vertical;",
        "<init>",
        "(Landroidx/compose/ui/Alignment$Vertical;)V",
        "getAlignment",
        "()Landroidx/compose/ui/Alignment$Vertical;",
        "setAlignment",
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
.field private alignment:Landroidx/compose/ui/Alignment$Vertical;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/Alignment$Vertical;)V
    .locals 0

    .line 1316
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/VerticalAlignNode;->alignment:Landroidx/compose/ui/Alignment$Vertical;

    return-void
.end method


# virtual methods
.method public final getAlignment()Landroidx/compose/ui/Alignment$Vertical;
    .locals 1

    .line 1316
    iget-object v0, p0, Landroidx/compose/material3/VerticalAlignNode;->alignment:Landroidx/compose/ui/Alignment$Vertical;

    return-object v0
.end method

.method public modifyParentData(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Landroidx/compose/material3/ButtonGroupParentData;
    .locals 6

    .line 1319
    instance-of p1, p2, Landroidx/compose/material3/ButtonGroupParentData;

    if-eqz p1, :cond_0

    check-cast p2, Landroidx/compose/material3/ButtonGroupParentData;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    new-instance v0, Landroidx/compose/material3/ButtonGroupParentData;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/ButtonGroupParentData;-><init>(FLandroidx/compose/animation/core/Animatable;Landroidx/compose/ui/Alignment$Vertical;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p2, v0

    .line 1320
    :cond_1
    iget-object p1, p0, Landroidx/compose/material3/VerticalAlignNode;->alignment:Landroidx/compose/ui/Alignment$Vertical;

    invoke-virtual {p2, p1}, Landroidx/compose/material3/ButtonGroupParentData;->setAlignment(Landroidx/compose/ui/Alignment$Vertical;)V

    return-object p2
.end method

.method public bridge synthetic modifyParentData(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1316
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/VerticalAlignNode;->modifyParentData(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Landroidx/compose/material3/ButtonGroupParentData;

    move-result-object p1

    return-object p1
.end method

.method public final setAlignment(Landroidx/compose/ui/Alignment$Vertical;)V
    .locals 0

    .line 1316
    iput-object p1, p0, Landroidx/compose/material3/VerticalAlignNode;->alignment:Landroidx/compose/ui/Alignment$Vertical;

    return-void
.end method
