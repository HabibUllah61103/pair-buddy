.class final Landroidx/compose/material3/ToggleFloatingActionButtonDefaults$containerColor$1$1;
.super Ljava/lang/Object;
.source "FloatingActionButtonMenu.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/ToggleFloatingActionButtonDefaults;->containerColor-dgg9oW8(JJLandroidx/compose/runtime/Composer;II)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Float;",
        "Landroidx/compose/ui/graphics/Color;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$v$c$androidx-compose-ui-graphics-Color$-finalColor$0:J

.field final synthetic $$v$c$androidx-compose-ui-graphics-Color$-initialColor$0:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/material3/ToggleFloatingActionButtonDefaults$containerColor$1$1;->$$v$c$androidx-compose-ui-graphics-Color$-initialColor$0:J

    iput-wide p3, p0, Landroidx/compose/material3/ToggleFloatingActionButtonDefaults$containerColor$1$1;->$$v$c$androidx-compose-ui-graphics-Color$-finalColor$0:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 586
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/material3/ToggleFloatingActionButtonDefaults$containerColor$1$1;->invoke-vNxB06k(F)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object p1

    return-object p1
.end method

.method public final invoke-vNxB06k(F)J
    .locals 4

    .line 586
    iget-wide v0, p0, Landroidx/compose/material3/ToggleFloatingActionButtonDefaults$containerColor$1$1;->$$v$c$androidx-compose-ui-graphics-Color$-initialColor$0:J

    iget-wide v2, p0, Landroidx/compose/material3/ToggleFloatingActionButtonDefaults$containerColor$1$1;->$$v$c$androidx-compose-ui-graphics-Color$-finalColor$0:J

    invoke-static {v0, v1, v2, v3, p1}, Landroidx/compose/ui/graphics/ColorKt;->lerp-jxsXWHM(JJF)J

    move-result-wide v0

    return-wide v0
.end method
