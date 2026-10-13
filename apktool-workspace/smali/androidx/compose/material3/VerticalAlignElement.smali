.class public final Landroidx/compose/material3/VerticalAlignElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "ButtonGroup.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/material3/VerticalAlignNode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\u0008\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0002H\u0016J\u000c\u0010\r\u001a\u00020\u000b*\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/compose/material3/VerticalAlignElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/material3/VerticalAlignNode;",
        "alignment",
        "Landroidx/compose/ui/Alignment$Vertical;",
        "<init>",
        "(Landroidx/compose/ui/Alignment$Vertical;)V",
        "getAlignment",
        "()Landroidx/compose/ui/Alignment$Vertical;",
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
.field private final alignment:Landroidx/compose/ui/Alignment$Vertical;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/Alignment$Vertical;)V
    .locals 0

    .line 1291
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/VerticalAlignElement;->alignment:Landroidx/compose/ui/Alignment$Vertical;

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/material3/VerticalAlignNode;
    .locals 2

    .line 1294
    new-instance v0, Landroidx/compose/material3/VerticalAlignNode;

    iget-object v1, p0, Landroidx/compose/material3/VerticalAlignElement;->alignment:Landroidx/compose/ui/Alignment$Vertical;

    invoke-direct {v0, v1}, Landroidx/compose/material3/VerticalAlignNode;-><init>(Landroidx/compose/ui/Alignment$Vertical;)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 1

    .line 1291
    invoke-virtual {p0}, Landroidx/compose/material3/VerticalAlignElement;->create()Landroidx/compose/material3/VerticalAlignNode;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1311
    instance-of v0, p1, Landroidx/compose/material3/VerticalAlignElement;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/material3/VerticalAlignElement;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 1312
    :cond_1
    iget-object v0, p0, Landroidx/compose/material3/VerticalAlignElement;->alignment:Landroidx/compose/ui/Alignment$Vertical;

    iget-object p1, p1, Landroidx/compose/material3/VerticalAlignElement;->alignment:Landroidx/compose/ui/Alignment$Vertical;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getAlignment()Landroidx/compose/ui/Alignment$Vertical;
    .locals 1

    .line 1291
    iget-object v0, p0, Landroidx/compose/material3/VerticalAlignElement;->alignment:Landroidx/compose/ui/Alignment$Vertical;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1307
    iget-object v0, p0, Landroidx/compose/material3/VerticalAlignElement;->alignment:Landroidx/compose/ui/Alignment$Vertical;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 1

    .line 1302
    const-string v0, "align"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    .line 1303
    iget-object v0, p0, Landroidx/compose/material3/VerticalAlignElement;->alignment:Landroidx/compose/ui/Alignment$Vertical;

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public update(Landroidx/compose/material3/VerticalAlignNode;)V
    .locals 1

    .line 1298
    iget-object v0, p0, Landroidx/compose/material3/VerticalAlignElement;->alignment:Landroidx/compose/ui/Alignment$Vertical;

    invoke-virtual {p1, v0}, Landroidx/compose/material3/VerticalAlignNode;->setAlignment(Landroidx/compose/ui/Alignment$Vertical;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 1291
    check-cast p1, Landroidx/compose/material3/VerticalAlignNode;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/VerticalAlignElement;->update(Landroidx/compose/material3/VerticalAlignNode;)V

    return-void
.end method
