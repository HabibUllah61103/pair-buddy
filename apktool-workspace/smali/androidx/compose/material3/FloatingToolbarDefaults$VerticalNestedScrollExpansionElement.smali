.class public final Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "FloatingToolbar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material3/FloatingToolbarDefaults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VerticalNestedScrollExpansionElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001BC\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0008\u0010\u0019\u001a\u00020\u0002H\u0016J\u0010\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0002H\u0016J\u000c\u0010\u001c\u001a\u00020\u0007*\u00020\u001dH\u0016J\u0013\u0010\u001e\u001a\u00020\u00042\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0096\u0002J\u0008\u0010!\u001a\u00020\"H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012R\u0011\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0010R\u0013\u0010\n\u001a\u00020\u000b\u00a2\u0006\n\n\u0002\u0010\u0017\u001a\u0004\u0008\u0015\u0010\u0016R\u0013\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\n\n\u0002\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0016\u00a8\u0006#"
    }
    d2 = {
        "Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;",
        "expanded",
        "",
        "onExpand",
        "Lkotlin/Function0;",
        "",
        "onCollapse",
        "reverseLayout",
        "expandScrollThreshold",
        "Landroidx/compose/ui/unit/Dp;",
        "collapseScrollThreshold",
        "<init>",
        "(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZFFLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getExpanded",
        "()Z",
        "getOnExpand",
        "()Lkotlin/jvm/functions/Function0;",
        "getOnCollapse",
        "getReverseLayout",
        "getExpandScrollThreshold-D9Ej5fM",
        "()F",
        "F",
        "getCollapseScrollThreshold-D9Ej5fM",
        "create",
        "update",
        "node",
        "inspectableProperties",
        "Landroidx/compose/ui/platform/InspectorInfo;",
        "equals",
        "other",
        "",
        "hashCode",
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
.field private final collapseScrollThreshold:F

.field private final expandScrollThreshold:F

.field private final expanded:Z

.field private final onCollapse:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onExpand:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final reverseLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;ZFF)V"
        }
    .end annotation

    .line 1051
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    .line 1052
    iput-boolean p1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->expanded:Z

    .line 1053
    iput-object p2, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->onExpand:Lkotlin/jvm/functions/Function0;

    .line 1054
    iput-object p3, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->onCollapse:Lkotlin/jvm/functions/Function0;

    .line 1055
    iput-boolean p4, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->reverseLayout:Z

    .line 1056
    iput p5, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->expandScrollThreshold:F

    .line 1057
    iput p6, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->collapseScrollThreshold:F

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZFFLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;-><init>(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZFF)V

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;
    .locals 8

    .line 1060
    new-instance v0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;

    .line 1061
    iget-boolean v1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->expanded:Z

    .line 1062
    iget-object v2, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->onExpand:Lkotlin/jvm/functions/Function0;

    .line 1063
    iget-object v3, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->onCollapse:Lkotlin/jvm/functions/Function0;

    .line 1064
    iget-boolean v4, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->reverseLayout:Z

    .line 1065
    iget v5, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->expandScrollThreshold:F

    .line 1066
    iget v6, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->collapseScrollThreshold:F

    const/4 v7, 0x0

    .line 1060
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;-><init>(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 1

    .line 1051
    invoke-virtual {p0}, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->create()Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1092
    :cond_0
    instance-of v1, p1, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1094
    :cond_1
    iget-boolean v1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->expanded:Z

    check-cast p1, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;

    iget-boolean v3, p1, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->expanded:Z

    if-eq v1, v3, :cond_2

    return v2

    .line 1095
    :cond_2
    iget-boolean v1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->reverseLayout:Z

    iget-boolean v3, p1, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->reverseLayout:Z

    if-eq v1, v3, :cond_3

    return v2

    .line 1096
    :cond_3
    iget-object v1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->onExpand:Lkotlin/jvm/functions/Function0;

    iget-object v3, p1, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->onExpand:Lkotlin/jvm/functions/Function0;

    if-eq v1, v3, :cond_4

    return v2

    .line 1097
    :cond_4
    iget-object v1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->onCollapse:Lkotlin/jvm/functions/Function0;

    iget-object v3, p1, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->onCollapse:Lkotlin/jvm/functions/Function0;

    if-eq v1, v3, :cond_5

    return v2

    .line 1098
    :cond_5
    iget v1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->expandScrollThreshold:F

    iget v3, p1, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->expandScrollThreshold:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 1099
    :cond_6
    iget v1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->collapseScrollThreshold:F

    iget p1, p1, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->collapseScrollThreshold:F

    invoke-static {v1, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getCollapseScrollThreshold-D9Ej5fM()F
    .locals 1

    .line 1057
    iget v0, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->collapseScrollThreshold:F

    return v0
.end method

.method public final getExpandScrollThreshold-D9Ej5fM()F
    .locals 1

    .line 1056
    iget v0, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->expandScrollThreshold:F

    return v0
.end method

.method public final getExpanded()Z
    .locals 1

    .line 1052
    iget-boolean v0, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->expanded:Z

    return v0
.end method

.method public final getOnCollapse()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1054
    iget-object v0, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->onCollapse:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getOnExpand()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1053
    iget-object v0, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->onExpand:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getReverseLayout()Z
    .locals 1

    .line 1055
    iget-boolean v0, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->reverseLayout:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1105
    iget-boolean v0, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->expanded:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 1106
    iget-boolean v1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->reverseLayout:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1107
    iget-object v1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->onExpand:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1108
    iget-object v1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->onCollapse:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1109
    iget v1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->expandScrollThreshold:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1110
    iget v1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->collapseScrollThreshold:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 3

    .line 1081
    const-string v0, "floatingToolbarVerticalNestedScroll"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->expanded:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "expanded"

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1083
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    iget v1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->expandScrollThreshold:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v1

    const-string v2, "expandScrollThreshold"

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1084
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    iget v1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->collapseScrollThreshold:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v1

    const-string v2, "collapseScrollThreshold"

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1085
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->reverseLayout:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "reverseLayout"

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1086
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "onExpand"

    iget-object v2, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->onExpand:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1087
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    const-string v0, "onCollapse"

    iget-object v1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->onCollapse:Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public update(Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;)V
    .locals 7

    .line 1071
    iget-boolean v1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->expanded:Z

    .line 1072
    iget-object v2, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->onExpand:Lkotlin/jvm/functions/Function0;

    .line 1073
    iget-object v3, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->onCollapse:Lkotlin/jvm/functions/Function0;

    .line 1074
    iget-boolean v4, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->reverseLayout:Z

    .line 1075
    iget v5, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->expandScrollThreshold:F

    .line 1076
    iget v6, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->collapseScrollThreshold:F

    move-object v0, p1

    .line 1070
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->updateNode-Kr38-dQ(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZFF)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 1051
    check-cast p1, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionElement;->update(Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;)V

    return-void
.end method
