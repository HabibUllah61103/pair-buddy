.class public final Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "FloatingToolbar.kt"

# interfaces
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material3/FloatingToolbarDefaults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VerticalNestedScrollExpansionNode"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFloatingToolbar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatingToolbar.kt\nandroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode\n+ 2 Offset.kt\nandroidx/compose/ui/geometry/Offset\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 4 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n*L\n1#1,2470:1\n69#2:2471\n70#3:2472\n22#4:2473\n*S KotlinDebug\n*F\n+ 1 FloatingToolbar.kt\nandroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode\n*L\n1153#1:2471\n1153#1:2472\n1153#1:2473\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003BC\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0008\u0010.\u001a\u00020\u0008H\u0016J\'\u0010/\u001a\u0002002\u0006\u00101\u001a\u0002002\u0006\u00102\u001a\u0002002\u0006\u00103\u001a\u000204H\u0016\u00a2\u0006\u0004\u00085\u00106JI\u00107\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u00088\u00109J\u0008\u0010:\u001a\u00020\u0008H\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R \u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R \u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0015\"\u0004\u0008\u0019\u0010\u0017R\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0011\"\u0004\u0008\u001b\u0010\u0013R\u001c\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010 \u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001c\u0010\r\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010 \u001a\u0004\u0008!\u0010\u001d\"\u0004\u0008\"\u0010\u001fR\u000e\u0010#\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010*\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010\u0011R\u000e\u0010,\u001a\u00020-X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006;"
    }
    d2 = {
        "Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;",
        "Landroidx/compose/ui/node/DelegatingNode;",
        "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
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
        "setExpanded",
        "(Z)V",
        "getOnExpand",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnExpand",
        "(Lkotlin/jvm/functions/Function0;)V",
        "getOnCollapse",
        "setOnCollapse",
        "getReverseLayout",
        "setReverseLayout",
        "getExpandScrollThreshold-D9Ej5fM",
        "()F",
        "setExpandScrollThreshold-0680j_4",
        "(F)V",
        "F",
        "getCollapseScrollThreshold-D9Ej5fM",
        "setCollapseScrollThreshold-0680j_4",
        "expandScrollThresholdPx",
        "",
        "collapseScrollThresholdPx",
        "contentOffset",
        "threshold",
        "reverseLayoutFactor",
        "",
        "shouldAutoInvalidate",
        "getShouldAutoInvalidate",
        "nestedScrollNode",
        "Landroidx/compose/ui/node/DelegatableNode;",
        "onAttach",
        "onPostScroll",
        "Landroidx/compose/ui/geometry/Offset;",
        "consumed",
        "available",
        "source",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;",
        "onPostScroll-DzOQY0M",
        "(JJI)J",
        "updateNode",
        "updateNode-Kr38-dQ",
        "(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZFF)V",
        "updateThreshold",
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
.field private collapseScrollThreshold:F

.field private collapseScrollThresholdPx:F

.field private contentOffset:F

.field private expandScrollThreshold:F

.field private expandScrollThresholdPx:F

.field private expanded:Z

.field private nestedScrollNode:Landroidx/compose/ui/node/DelegatableNode;

.field private onCollapse:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onExpand:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private reverseLayout:Z

.field private reverseLayoutFactor:I

.field private threshold:F


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

    .line 1115
    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    .line 1116
    iput-boolean p1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->expanded:Z

    .line 1117
    iput-object p2, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->onExpand:Lkotlin/jvm/functions/Function0;

    .line 1118
    iput-object p3, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->onCollapse:Lkotlin/jvm/functions/Function0;

    .line 1119
    iput-boolean p4, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->reverseLayout:Z

    .line 1120
    iput p5, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->expandScrollThreshold:F

    .line 1121
    iput p6, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->collapseScrollThreshold:F

    if-eqz p4, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1131
    :goto_0
    iput p1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->reverseLayoutFactor:I

    .line 1137
    move-object p1, p0

    check-cast p1, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNodeKt;->nestedScrollModifierNode(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->nestedScrollNode:Landroidx/compose/ui/node/DelegatableNode;

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZFFLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;-><init>(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZFF)V

    return-void
.end method

.method private final updateThreshold()V
    .locals 2

    .line 1202
    iget-boolean v0, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->expanded:Z

    if-eqz v0, :cond_0

    .line 1203
    iget v0, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->contentOffset:F

    iget v1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->collapseScrollThresholdPx:F

    sub-float/2addr v0, v1

    goto :goto_0

    .line 1205
    :cond_0
    iget v0, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->contentOffset:F

    iget v1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->expandScrollThresholdPx:F

    add-float/2addr v0, v1

    .line 1201
    :goto_0
    iput v0, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->threshold:F

    return-void
.end method


# virtual methods
.method public final getCollapseScrollThreshold-D9Ej5fM()F
    .locals 1

    .line 1121
    iget v0, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->collapseScrollThreshold:F

    return v0
.end method

.method public final getExpandScrollThreshold-D9Ej5fM()F
    .locals 1

    .line 1120
    iget v0, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->expandScrollThreshold:F

    return v0
.end method

.method public final getExpanded()Z
    .locals 1

    .line 1116
    iget-boolean v0, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->expanded:Z

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

    .line 1118
    iget-object v0, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->onCollapse:Lkotlin/jvm/functions/Function0;

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

    .line 1117
    iget-object v0, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->onExpand:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getReverseLayout()Z
    .locals 1

    .line 1119
    iget-boolean v0, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->reverseLayout:Z

    return v0
.end method

.method public getShouldAutoInvalidate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAttach()V
    .locals 2

    .line 1140
    iget-object v0, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->nestedScrollNode:Landroidx/compose/ui/node/DelegatableNode;

    invoke-virtual {p0, v0}, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 1141
    iget-object v0, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->nestedScrollNode:Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireDensity(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/unit/Density;

    move-result-object v0

    .line 1142
    iget v1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->expandScrollThreshold:F

    invoke-interface {v0, v1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v1

    iput v1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->expandScrollThresholdPx:F

    .line 1143
    iget v1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->collapseScrollThreshold:F

    invoke-interface {v0, v1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v0

    iput v0, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->collapseScrollThresholdPx:F

    .line 1145
    invoke-direct {p0}, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->updateThreshold()V

    return-void
.end method

.method public onPostScroll-DzOQY0M(JJI)J
    .locals 0

    const-wide p3, 0xffffffffL

    and-long/2addr p1, p3

    long-to-int p1, p1

    .line 2473
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 1153
    iget p2, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->reverseLayoutFactor:I

    int-to-float p2, p2

    mul-float/2addr p1, p2

    .line 1154
    iget p2, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->contentOffset:F

    add-float/2addr p2, p1

    iput p2, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->contentOffset:F

    const/4 p3, 0x0

    cmpg-float p4, p1, p3

    if-gez p4, :cond_0

    .line 1156
    iget p4, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->threshold:F

    cmpg-float p4, p2, p4

    if-gtz p4, :cond_0

    .line 1157
    iget p1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->expandScrollThresholdPx:F

    add-float/2addr p2, p1

    iput p2, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->threshold:F

    .line 1158
    iget-object p1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->onCollapse:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    cmpl-float p1, p1, p3

    if-lez p1, :cond_1

    .line 1159
    iget p1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->threshold:F

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_1

    .line 1160
    iget p1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->collapseScrollThresholdPx:F

    sub-float/2addr p2, p1

    iput p2, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->threshold:F

    .line 1161
    iget-object p1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->onExpand:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1163
    :cond_1
    :goto_0
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p1

    return-wide p1
.end method

.method public final setCollapseScrollThreshold-0680j_4(F)V
    .locals 0

    .line 1121
    iput p1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->collapseScrollThreshold:F

    return-void
.end method

.method public final setExpandScrollThreshold-0680j_4(F)V
    .locals 0

    .line 1120
    iput p1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->expandScrollThreshold:F

    return-void
.end method

.method public final setExpanded(Z)V
    .locals 0

    .line 1116
    iput-boolean p1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->expanded:Z

    return-void
.end method

.method public final setOnCollapse(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1118
    iput-object p1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->onCollapse:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setOnExpand(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1117
    iput-object p1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->onExpand:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setReverseLayout(Z)V
    .locals 0

    .line 1119
    iput-boolean p1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->reverseLayout:Z

    return-void
.end method

.method public final updateNode-Kr38-dQ(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZFF)V
    .locals 1
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

    .line 1175
    iget v0, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->expandScrollThreshold:F

    invoke-static {v0, p5}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1176
    iget v0, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->collapseScrollThreshold:F

    invoke-static {v0, p6}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1178
    :cond_0
    iput p5, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->expandScrollThreshold:F

    .line 1179
    iput p6, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->collapseScrollThreshold:F

    .line 1180
    iget-object v0, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->nestedScrollNode:Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireDensity(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/unit/Density;

    move-result-object v0

    .line 1181
    invoke-interface {v0, p5}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p5

    iput p5, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->expandScrollThresholdPx:F

    .line 1182
    invoke-interface {v0, p6}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p5

    iput p5, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->collapseScrollThresholdPx:F

    .line 1184
    invoke-direct {p0}, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->updateThreshold()V

    .line 1186
    :cond_1
    iget-boolean p5, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->reverseLayout:Z

    if-eq p5, p4, :cond_3

    .line 1187
    iput-boolean p4, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->reverseLayout:Z

    if-eqz p4, :cond_2

    const/4 p4, -0x1

    goto :goto_0

    :cond_2
    const/4 p4, 0x1

    .line 1188
    :goto_0
    iput p4, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->reverseLayoutFactor:I

    .line 1191
    :cond_3
    iput-object p2, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->onExpand:Lkotlin/jvm/functions/Function0;

    .line 1192
    iput-object p3, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->onCollapse:Lkotlin/jvm/functions/Function0;

    .line 1194
    iget-boolean p2, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->expanded:Z

    if-eq p2, p1, :cond_4

    .line 1195
    iput-boolean p1, p0, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->expanded:Z

    .line 1196
    invoke-direct {p0}, Landroidx/compose/material3/FloatingToolbarDefaults$VerticalNestedScrollExpansionNode;->updateThreshold()V

    :cond_4
    return-void
.end method
