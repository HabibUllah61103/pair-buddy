.class final Landroidx/compose/material3/TooltipPositionProviderImpl;
.super Ljava/lang/Object;
.source "Tooltip.kt"

# interfaces
.implements Landroidx/compose/ui/window/PopupPositionProvider;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTooltip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tooltip.kt\nandroidx/compose/material3/TooltipPositionProviderImpl\n+ 2 IntSize.kt\nandroidx/compose/ui/unit/IntSize\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 4 IntOffset.kt\nandroidx/compose/ui/unit/IntOffsetKt\n*L\n1#1,1506:1\n54#2:1507\n54#2:1509\n54#2:1511\n59#2:1513\n54#2:1517\n54#2:1519\n59#2:1521\n54#2:1525\n54#2:1527\n54#2:1529\n54#2:1531\n59#2:1533\n54#2:1537\n54#2:1539\n54#2:1541\n54#2:1543\n59#2:1545\n59#2:1547\n85#3:1508\n85#3:1510\n85#3:1512\n90#3:1514\n80#3:1516\n85#3:1518\n85#3:1520\n90#3:1522\n80#3:1524\n85#3:1526\n85#3:1528\n85#3:1530\n85#3:1532\n90#3:1534\n80#3:1536\n85#3:1538\n85#3:1540\n85#3:1542\n85#3:1544\n90#3:1546\n90#3:1548\n80#3:1550\n32#4:1515\n32#4:1523\n32#4:1535\n32#4:1549\n*S KotlinDebug\n*F\n+ 1 Tooltip.kt\nandroidx/compose/material3/TooltipPositionProviderImpl\n*L\n900#1:1507\n906#1:1509\n907#1:1511\n913#1:1513\n928#1:1517\n932#1:1519\n938#1:1521\n951#1:1525\n957#1:1527\n959#1:1529\n962#1:1531\n968#1:1533\n982#1:1537\n988#1:1539\n990#1:1541\n993#1:1543\n1000#1:1545\n1001#1:1547\n900#1:1508\n906#1:1510\n907#1:1512\n913#1:1514\n914#1:1516\n928#1:1518\n932#1:1520\n938#1:1522\n939#1:1524\n951#1:1526\n957#1:1528\n959#1:1530\n962#1:1532\n968#1:1534\n970#1:1536\n982#1:1538\n988#1:1540\n990#1:1542\n993#1:1544\n1000#1:1546\n1001#1:1548\n1003#1:1550\n914#1:1515\n939#1:1523\n970#1:1535\n1003#1:1549\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ/\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ%\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ%\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u001f\u0010\u001dJ%\u0010 \u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0007\u00a2\u0006\u0004\u0008!\u0010\u001dJ%\u0010\"\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0007\u00a2\u0006\u0004\u0008#\u0010\u001dJ-\u0010$\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0007\u00a2\u0006\u0004\u0008%\u0010&J-\u0010\'\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0007\u00a2\u0006\u0004\u0008(\u0010&R\u0013\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u0013\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\n\n\u0002\u0010\u0010\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006)"
    }
    d2 = {
        "Landroidx/compose/material3/TooltipPositionProviderImpl;",
        "Landroidx/compose/ui/window/PopupPositionProvider;",
        "type",
        "Landroidx/compose/material3/TooltipAnchorPosition;",
        "tooltipAnchorSpacing",
        "",
        "windowContainerSize",
        "Landroidx/compose/ui/unit/IntSize;",
        "<init>",
        "(IIJLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getType-lOKsHw4",
        "()I",
        "I",
        "getTooltipAnchorSpacing",
        "getWindowContainerSize-YbymL2g",
        "()J",
        "J",
        "calculatePosition",
        "Landroidx/compose/ui/unit/IntOffset;",
        "anchorBounds",
        "Landroidx/compose/ui/unit/IntRect;",
        "windowSize",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "popupContentSize",
        "calculatePosition-llwVHH4",
        "(Landroidx/compose/ui/unit/IntRect;JLandroidx/compose/ui/unit/LayoutDirection;J)J",
        "leftPositioning",
        "leftPositioning-uHY26d4",
        "(Landroidx/compose/ui/unit/IntRect;JJ)J",
        "rightPositioning",
        "rightPositioning-uHY26d4",
        "abovePositioning",
        "abovePositioning-uHY26d4",
        "belowPositioning",
        "belowPositioning-uHY26d4",
        "startPositioning",
        "startPositioning-_JLpSYE",
        "(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/IntRect;JJ)J",
        "endPositioning",
        "endPositioning-_JLpSYE",
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


# instance fields
.field private final tooltipAnchorSpacing:I

.field private final type:I

.field private final windowContainerSize:J


# direct methods
.method private constructor <init>(IIJ)V
    .locals 0

    .line 857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 859
    iput p1, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->type:I

    .line 860
    iput p2, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->tooltipAnchorSpacing:I

    .line 861
    iput-wide p3, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->windowContainerSize:J

    return-void
.end method

.method public synthetic constructor <init>(IIJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/material3/TooltipPositionProviderImpl;-><init>(IIJ)V

    return-void
.end method


# virtual methods
.method public final abovePositioning-uHY26d4(Landroidx/compose/ui/unit/IntRect;JJ)J
    .locals 5

    .line 951
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getWidth()I

    move-result v1

    const/16 v2, 0x20

    shr-long v3, p2, v2

    long-to-int v3, v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 957
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result v0

    add-int/2addr v0, v3

    shr-long/2addr p4, v2

    long-to-int p4, p4

    sub-int/2addr v0, p4

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p4

    .line 958
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result p5

    sub-int v0, p5, p4

    goto :goto_0

    :cond_0
    add-int v4, v0, v3

    shr-long/2addr p4, v2

    long-to-int p4, p4

    if-le v4, p4, :cond_1

    .line 962
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getRight()I

    move-result p4

    sub-int/2addr p4, v3

    invoke-static {p4, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 968
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    move-result p4

    const-wide v3, 0xffffffffL

    and-long/2addr p2, v3

    long-to-int p2, p2

    sub-int/2addr p4, p2

    iget p2, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->tooltipAnchorSpacing:I

    sub-int/2addr p4, p2

    if-gez p4, :cond_2

    .line 969
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getBottom()I

    move-result p1

    iget p2, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->tooltipAnchorSpacing:I

    add-int p4, p1, p2

    :cond_2
    int-to-long p1, v0

    shl-long/2addr p1, v2

    int-to-long p3, p4

    and-long/2addr p3, v3

    or-long/2addr p1, p3

    .line 1535
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final belowPositioning-uHY26d4(Landroidx/compose/ui/unit/IntRect;JJ)J
    .locals 7

    .line 982
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getWidth()I

    move-result v1

    const/16 v2, 0x20

    shr-long v3, p2, v2

    long-to-int v3, v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 988
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result v0

    add-int/2addr v0, v3

    shr-long v3, p4, v2

    long-to-int v3, v3

    sub-int/2addr v0, v3

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 989
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result v1

    sub-int v0, v1, v0

    goto :goto_0

    :cond_0
    add-int v4, v0, v3

    shr-long v5, p4, v2

    long-to-int v5, v5

    if-le v4, v5, :cond_1

    .line 993
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getRight()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 999
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getBottom()I

    move-result v1

    iget v3, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->tooltipAnchorSpacing:I

    add-int/2addr v1, v3

    const-wide v3, 0xffffffffL

    and-long/2addr p2, v3

    long-to-int p2, p2

    add-int p3, v1, p2

    and-long/2addr p4, v3

    long-to-int p4, p4

    if-le p3, p4, :cond_2

    .line 1001
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    move-result p1

    sub-int/2addr p1, p2

    iget p2, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->tooltipAnchorSpacing:I

    sub-int v1, p1, p2

    :cond_2
    int-to-long p1, v0

    shl-long/2addr p1, v2

    int-to-long p3, v1

    and-long/2addr p3, v3

    or-long/2addr p1, p3

    .line 1549
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public calculatePosition-llwVHH4(Landroidx/compose/ui/unit/IntRect;JLandroidx/compose/ui/unit/LayoutDirection;J)J
    .locals 7

    .line 869
    iget p2, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->type:I

    .line 870
    sget-object p3, Landroidx/compose/material3/TooltipAnchorPosition;->Companion:Landroidx/compose/material3/TooltipAnchorPosition$Companion;

    invoke-virtual {p3}, Landroidx/compose/material3/TooltipAnchorPosition$Companion;->getLeft-lOKsHw4()I

    move-result p3

    invoke-static {p2, p3}, Landroidx/compose/material3/TooltipAnchorPosition;->equals-impl0(II)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 871
    iget-wide v4, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->windowContainerSize:J

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/material3/TooltipPositionProviderImpl;->leftPositioning-uHY26d4(Landroidx/compose/ui/unit/IntRect;JJ)J

    move-result-wide p1

    return-wide p1

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p5

    .line 872
    sget-object p1, Landroidx/compose/material3/TooltipAnchorPosition;->Companion:Landroidx/compose/material3/TooltipAnchorPosition$Companion;

    invoke-virtual {p1}, Landroidx/compose/material3/TooltipAnchorPosition$Companion;->getRight-lOKsHw4()I

    move-result p1

    invoke-static {p2, p1}, Landroidx/compose/material3/TooltipAnchorPosition;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 873
    iget-wide v4, v0, Landroidx/compose/material3/TooltipPositionProviderImpl;->windowContainerSize:J

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/material3/TooltipPositionProviderImpl;->rightPositioning-uHY26d4(Landroidx/compose/ui/unit/IntRect;JJ)J

    move-result-wide p1

    return-wide p1

    .line 874
    :cond_1
    sget-object p1, Landroidx/compose/material3/TooltipAnchorPosition;->Companion:Landroidx/compose/material3/TooltipAnchorPosition$Companion;

    invoke-virtual {p1}, Landroidx/compose/material3/TooltipAnchorPosition$Companion;->getAbove-lOKsHw4()I

    move-result p1

    invoke-static {p2, p1}, Landroidx/compose/material3/TooltipAnchorPosition;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 875
    iget-wide v4, v0, Landroidx/compose/material3/TooltipPositionProviderImpl;->windowContainerSize:J

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/material3/TooltipPositionProviderImpl;->abovePositioning-uHY26d4(Landroidx/compose/ui/unit/IntRect;JJ)J

    move-result-wide p1

    return-wide p1

    .line 876
    :cond_2
    sget-object p1, Landroidx/compose/material3/TooltipAnchorPosition;->Companion:Landroidx/compose/material3/TooltipAnchorPosition$Companion;

    invoke-virtual {p1}, Landroidx/compose/material3/TooltipAnchorPosition$Companion;->getBelow-lOKsHw4()I

    move-result p1

    invoke-static {p2, p1}, Landroidx/compose/material3/TooltipAnchorPosition;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 877
    iget-wide v4, v0, Landroidx/compose/material3/TooltipPositionProviderImpl;->windowContainerSize:J

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/material3/TooltipPositionProviderImpl;->belowPositioning-uHY26d4(Landroidx/compose/ui/unit/IntRect;JJ)J

    move-result-wide p1

    return-wide p1

    .line 878
    :cond_3
    sget-object p1, Landroidx/compose/material3/TooltipAnchorPosition;->Companion:Landroidx/compose/material3/TooltipAnchorPosition$Companion;

    invoke-virtual {p1}, Landroidx/compose/material3/TooltipAnchorPosition$Companion;->getStart-lOKsHw4()I

    move-result p1

    invoke-static {p2, p1}, Landroidx/compose/material3/TooltipAnchorPosition;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 883
    iget-wide v5, v0, Landroidx/compose/material3/TooltipPositionProviderImpl;->windowContainerSize:J

    move-wide v3, v2

    move-object v2, v1

    move-object v1, p4

    .line 879
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/material3/TooltipPositionProviderImpl;->startPositioning-_JLpSYE(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/IntRect;JJ)J

    move-result-wide p1

    return-wide p1

    :cond_4
    move-object p1, p4

    .line 885
    sget-object p3, Landroidx/compose/material3/TooltipAnchorPosition;->Companion:Landroidx/compose/material3/TooltipAnchorPosition$Companion;

    invoke-virtual {p3}, Landroidx/compose/material3/TooltipAnchorPosition$Companion;->getEnd-lOKsHw4()I

    move-result p3

    invoke-static {p2, p3}, Landroidx/compose/material3/TooltipAnchorPosition;->equals-impl0(II)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 886
    iget-wide v5, v0, Landroidx/compose/material3/TooltipPositionProviderImpl;->windowContainerSize:J

    move-wide v3, v2

    move-object v2, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/material3/TooltipPositionProviderImpl;->endPositioning-_JLpSYE(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/IntRect;JJ)J

    move-result-wide p1

    return-wide p1

    .line 887
    :cond_5
    iget-wide v4, v0, Landroidx/compose/material3/TooltipPositionProviderImpl;->windowContainerSize:J

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/material3/TooltipPositionProviderImpl;->abovePositioning-uHY26d4(Landroidx/compose/ui/unit/IntRect;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final endPositioning-_JLpSYE(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/IntRect;JJ)J
    .locals 1

    .line 1025
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p1, v0, :cond_0

    move-object p1, p0

    .line 1026
    invoke-virtual/range {p1 .. p6}, Landroidx/compose/material3/TooltipPositionProviderImpl;->rightPositioning-uHY26d4(Landroidx/compose/ui/unit/IntRect;JJ)J

    move-result-wide p2

    return-wide p2

    :cond_0
    move-object p1, p0

    .line 1028
    invoke-virtual/range {p1 .. p6}, Landroidx/compose/material3/TooltipPositionProviderImpl;->leftPositioning-uHY26d4(Landroidx/compose/ui/unit/IntRect;JJ)J

    move-result-wide p2

    return-wide p2
.end method

.method public final getTooltipAnchorSpacing()I
    .locals 1

    .line 860
    iget v0, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->tooltipAnchorSpacing:I

    return v0
.end method

.method public final getType-lOKsHw4()I
    .locals 1

    .line 859
    iget v0, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->type:I

    return v0
.end method

.method public final getWindowContainerSize-YbymL2g()J
    .locals 2

    .line 861
    iget-wide v0, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->windowContainerSize:J

    return-wide v0
.end method

.method public final leftPositioning-uHY26d4(Landroidx/compose/ui/unit/IntRect;JJ)J
    .locals 4

    .line 900
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result v0

    const/16 v1, 0x20

    shr-long v2, p2, v1

    long-to-int v2, v2

    iget v3, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->tooltipAnchorSpacing:I

    add-int/2addr v3, v2

    sub-int/2addr v0, v3

    if-gez v0, :cond_0

    .line 906
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getRight()I

    move-result v0

    iget v3, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->tooltipAnchorSpacing:I

    add-int/2addr v0, v3

    add-int/2addr v0, v2

    shr-long/2addr p4, v1

    long-to-int p4, p4

    sub-int/2addr v0, p4

    const/4 p4, 0x0

    .line 908
    invoke-static {v0, p4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p4

    .line 909
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getRight()I

    move-result p5

    iget v0, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->tooltipAnchorSpacing:I

    add-int/2addr p5, v0

    sub-int v0, p5, p4

    .line 913
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    move-result p4

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getBottom()I

    move-result p1

    add-int/2addr p4, p1

    const-wide v2, 0xffffffffL

    and-long p1, p2, v2

    long-to-int p1, p1

    sub-int/2addr p4, p1

    div-int/lit8 p4, p4, 0x2

    int-to-long p1, v0

    shl-long/2addr p1, v1

    int-to-long p3, p4

    and-long/2addr p3, v2

    or-long/2addr p1, p3

    .line 1515
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final rightPositioning-uHY26d4(Landroidx/compose/ui/unit/IntRect;JJ)J
    .locals 4

    .line 926
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getRight()I

    move-result v0

    iget v1, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->tooltipAnchorSpacing:I

    add-int/2addr v0, v1

    const/16 v1, 0x20

    shr-long v2, p2, v1

    long-to-int v2, v2

    add-int v3, v0, v2

    shr-long/2addr p4, v1

    long-to-int p4, p4

    if-le v3, p4, :cond_0

    .line 932
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result p4

    iget p5, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->tooltipAnchorSpacing:I

    add-int/2addr v2, p5

    sub-int/2addr p4, v2

    const/4 p5, 0x0

    invoke-static {p4, p5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 938
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    move-result p4

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getBottom()I

    move-result p1

    add-int/2addr p4, p1

    const-wide v2, 0xffffffffL

    and-long p1, p2, v2

    long-to-int p1, p1

    sub-int/2addr p4, p1

    div-int/lit8 p4, p4, 0x2

    int-to-long p1, v0

    shl-long/2addr p1, v1

    int-to-long p3, p4

    and-long/2addr p3, v2

    or-long/2addr p1, p3

    .line 1523
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final startPositioning-_JLpSYE(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/IntRect;JJ)J
    .locals 1

    .line 1012
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p1, v0, :cond_0

    move-object p1, p0

    .line 1013
    invoke-virtual/range {p1 .. p6}, Landroidx/compose/material3/TooltipPositionProviderImpl;->leftPositioning-uHY26d4(Landroidx/compose/ui/unit/IntRect;JJ)J

    move-result-wide p2

    return-wide p2

    :cond_0
    move-object p1, p0

    .line 1015
    invoke-virtual/range {p1 .. p6}, Landroidx/compose/material3/TooltipPositionProviderImpl;->rightPositioning-uHY26d4(Landroidx/compose/ui/unit/IntRect;JJ)J

    move-result-wide p2

    return-wide p2
.end method
