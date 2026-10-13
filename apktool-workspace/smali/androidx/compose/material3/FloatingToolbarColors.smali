.class public final Landroidx/compose/material3/FloatingToolbarColors;
.super Ljava/lang/Object;
.source "FloatingToolbar.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFloatingToolbar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatingToolbar.kt\nandroidx/compose/material3/FloatingToolbarColors\n+ 2 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n*L\n1#1,2470:1\n646#2:2471\n635#2:2472\n646#2:2473\n635#2:2474\n646#2:2475\n635#2:2476\n646#2:2477\n635#2:2478\n*S KotlinDebug\n*F\n+ 1 FloatingToolbar.kt\nandroidx/compose/material3/FloatingToolbarColors\n*L\n1293#1:2471\n1293#1:2472\n1294#1:2473\n1294#1:2474\n1295#1:2475\n1295#1:2476\n1296#1:2477\n1296#1:2478\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J5\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016R\u0013\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\u000c\u0010\nR\u0013\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\r\u0010\nR\u0013\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\u000e\u0010\n\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/compose/material3/FloatingToolbarColors;",
        "",
        "toolbarContainerColor",
        "Landroidx/compose/ui/graphics/Color;",
        "toolbarContentColor",
        "fabContainerColor",
        "fabContentColor",
        "<init>",
        "(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getToolbarContainerColor-0d7_KjU",
        "()J",
        "J",
        "getToolbarContentColor-0d7_KjU",
        "getFabContainerColor-0d7_KjU",
        "getFabContentColor-0d7_KjU",
        "copy",
        "copy-jRlVdoo",
        "(JJJJ)Landroidx/compose/material3/FloatingToolbarColors;",
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
.field private final fabContainerColor:J

.field private final fabContentColor:J

.field private final toolbarContainerColor:J

.field private final toolbarContentColor:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(JJJJ)V
    .locals 0

    .line 1273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1276
    iput-wide p1, p0, Landroidx/compose/material3/FloatingToolbarColors;->toolbarContainerColor:J

    .line 1277
    iput-wide p3, p0, Landroidx/compose/material3/FloatingToolbarColors;->toolbarContentColor:J

    .line 1278
    iput-wide p5, p0, Landroidx/compose/material3/FloatingToolbarColors;->fabContainerColor:J

    .line 1279
    iput-wide p7, p0, Landroidx/compose/material3/FloatingToolbarColors;->fabContentColor:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroidx/compose/material3/FloatingToolbarColors;-><init>(JJJJ)V

    return-void
.end method

.method public static synthetic copy-jRlVdoo$default(Landroidx/compose/material3/FloatingToolbarColors;JJJJILjava/lang/Object;)Landroidx/compose/material3/FloatingToolbarColors;
    .locals 9

    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_0

    .line 1287
    iget-wide p1, p0, Landroidx/compose/material3/FloatingToolbarColors;->toolbarContainerColor:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p9, 0x2

    if-eqz p1, :cond_1

    .line 1288
    iget-wide p3, p0, Landroidx/compose/material3/FloatingToolbarColors;->toolbarContentColor:J

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p9, 0x4

    if-eqz p1, :cond_2

    .line 1289
    iget-wide p5, p0, Landroidx/compose/material3/FloatingToolbarColors;->fabContainerColor:J

    :cond_2
    move-wide v5, p5

    and-int/lit8 p1, p9, 0x8

    if-eqz p1, :cond_3

    .line 1290
    iget-wide p1, p0, Landroidx/compose/material3/FloatingToolbarColors;->fabContentColor:J

    move-wide v7, p1

    goto :goto_0

    :cond_3
    move-wide/from16 v7, p7

    :goto_0
    move-object v0, p0

    .line 1286
    invoke-virtual/range {v0 .. v8}, Landroidx/compose/material3/FloatingToolbarColors;->copy-jRlVdoo(JJJJ)Landroidx/compose/material3/FloatingToolbarColors;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy-jRlVdoo(JJJJ)Landroidx/compose/material3/FloatingToolbarColors;
    .locals 14

    const-wide/16 v0, 0x10

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    move-wide v5, p1

    goto :goto_0

    .line 1293
    :cond_0
    iget-wide v2, p0, Landroidx/compose/material3/FloatingToolbarColors;->toolbarContainerColor:J

    move-wide v5, v2

    :goto_0
    cmp-long v2, p3, v0

    if-eqz v2, :cond_1

    move-wide/from16 v7, p3

    goto :goto_1

    .line 1294
    :cond_1
    iget-wide v2, p0, Landroidx/compose/material3/FloatingToolbarColors;->toolbarContentColor:J

    move-wide v7, v2

    :goto_1
    cmp-long v2, p5, v0

    if-eqz v2, :cond_2

    move-wide/from16 v9, p5

    goto :goto_2

    .line 1295
    :cond_2
    iget-wide v2, p0, Landroidx/compose/material3/FloatingToolbarColors;->fabContainerColor:J

    move-wide v9, v2

    :goto_2
    cmp-long v0, p7, v0

    if-eqz v0, :cond_3

    move-wide/from16 v11, p7

    goto :goto_3

    .line 1296
    :cond_3
    iget-wide v0, p0, Landroidx/compose/material3/FloatingToolbarColors;->fabContentColor:J

    move-wide v11, v0

    .line 1292
    :goto_3
    new-instance v4, Landroidx/compose/material3/FloatingToolbarColors;

    const/4 v13, 0x0

    invoke-direct/range {v4 .. v13}, Landroidx/compose/material3/FloatingToolbarColors;-><init>(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 1301
    instance-of v2, p1, Landroidx/compose/material3/FloatingToolbarColors;

    if-nez v2, :cond_1

    goto :goto_0

    .line 1303
    :cond_1
    iget-wide v2, p0, Landroidx/compose/material3/FloatingToolbarColors;->toolbarContainerColor:J

    check-cast p1, Landroidx/compose/material3/FloatingToolbarColors;

    iget-wide v4, p1, Landroidx/compose/material3/FloatingToolbarColors;->toolbarContainerColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 1304
    :cond_2
    iget-wide v2, p0, Landroidx/compose/material3/FloatingToolbarColors;->toolbarContentColor:J

    iget-wide v4, p1, Landroidx/compose/material3/FloatingToolbarColors;->toolbarContentColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 1305
    :cond_3
    iget-wide v2, p0, Landroidx/compose/material3/FloatingToolbarColors;->fabContainerColor:J

    iget-wide v4, p1, Landroidx/compose/material3/FloatingToolbarColors;->fabContainerColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 1306
    :cond_4
    iget-wide v2, p0, Landroidx/compose/material3/FloatingToolbarColors;->fabContentColor:J

    iget-wide v4, p1, Landroidx/compose/material3/FloatingToolbarColors;->fabContentColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public final getFabContainerColor-0d7_KjU()J
    .locals 2

    .line 1278
    iget-wide v0, p0, Landroidx/compose/material3/FloatingToolbarColors;->fabContainerColor:J

    return-wide v0
.end method

.method public final getFabContentColor-0d7_KjU()J
    .locals 2

    .line 1279
    iget-wide v0, p0, Landroidx/compose/material3/FloatingToolbarColors;->fabContentColor:J

    return-wide v0
.end method

.method public final getToolbarContainerColor-0d7_KjU()J
    .locals 2

    .line 1276
    iget-wide v0, p0, Landroidx/compose/material3/FloatingToolbarColors;->toolbarContainerColor:J

    return-wide v0
.end method

.method public final getToolbarContentColor-0d7_KjU()J
    .locals 2

    .line 1277
    iget-wide v0, p0, Landroidx/compose/material3/FloatingToolbarColors;->toolbarContentColor:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 1312
    iget-wide v0, p0, Landroidx/compose/material3/FloatingToolbarColors;->toolbarContainerColor:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 1313
    iget-wide v1, p0, Landroidx/compose/material3/FloatingToolbarColors;->toolbarContentColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1314
    iget-wide v1, p0, Landroidx/compose/material3/FloatingToolbarColors;->fabContainerColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1315
    iget-wide v1, p0, Landroidx/compose/material3/FloatingToolbarColors;->fabContentColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
