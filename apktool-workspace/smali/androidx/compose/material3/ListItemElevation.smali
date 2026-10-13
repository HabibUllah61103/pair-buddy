.class public final Landroidx/compose/material3/ListItemElevation;
.super Ljava/lang/Object;
.source "ListItemDefaults.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0013\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016R\u0013\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\n\n\u0002\u0010\t\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\n\n\u0002\u0010\t\u001a\u0004\u0008\n\u0010\u0008\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/compose/material3/ListItemElevation;",
        "",
        "elevation",
        "Landroidx/compose/ui/unit/Dp;",
        "draggedElevation",
        "<init>",
        "(FFLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getElevation-D9Ej5fM",
        "()F",
        "F",
        "getDraggedElevation-D9Ej5fM",
        "equals",
        "",
        "other",
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
.field private final draggedElevation:F

.field private final elevation:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(FF)V
    .locals 0

    .line 1074
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1076
    iput p1, p0, Landroidx/compose/material3/ListItemElevation;->elevation:F

    iput p2, p0, Landroidx/compose/material3/ListItemElevation;->draggedElevation:F

    return-void
.end method

.method public synthetic constructor <init>(FFLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/material3/ListItemElevation;-><init>(FF)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1079
    instance-of v2, p1, Landroidx/compose/material3/ListItemElevation;

    if-nez v2, :cond_1

    goto :goto_0

    .line 1081
    :cond_1
    iget v2, p0, Landroidx/compose/material3/ListItemElevation;->elevation:F

    check-cast p1, Landroidx/compose/material3/ListItemElevation;

    iget v3, p1, Landroidx/compose/material3/ListItemElevation;->elevation:F

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 1082
    :cond_2
    iget v2, p0, Landroidx/compose/material3/ListItemElevation;->draggedElevation:F

    iget p1, p1, Landroidx/compose/material3/ListItemElevation;->draggedElevation:F

    invoke-static {v2, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public final getDraggedElevation-D9Ej5fM()F
    .locals 1

    .line 1076
    iget v0, p0, Landroidx/compose/material3/ListItemElevation;->draggedElevation:F

    return v0
.end method

.method public final getElevation-D9Ej5fM()F
    .locals 1

    .line 1076
    iget v0, p0, Landroidx/compose/material3/ListItemElevation;->elevation:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1088
    iget v0, p0, Landroidx/compose/material3/ListItemElevation;->elevation:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 1089
    iget v1, p0, Landroidx/compose/material3/ListItemElevation;->draggedElevation:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
