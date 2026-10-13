.class public final Lexpo/modules/ui/PaddingValuesRecord;
.super Ljava/lang/Object;
.source "CarouselView.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCarouselView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CarouselView.kt\nexpo/modules/ui/PaddingValuesRecord\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,166:1\n132#2:167\n122#2:168\n132#2:169\n122#2:170\n132#2:171\n122#2:172\n132#2:173\n122#2:174\n*S KotlinDebug\n*F\n+ 1 CarouselView.kt\nexpo/modules/ui/PaddingValuesRecord\n*L\n36#1:167\n36#1:168\n37#1:169\n37#1:170\n38#1:171\n38#1:172\n39#1:173\n39#1:174\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0013\u001a\u00020\u0014R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010\t\u0012\u0004\u0008\u0006\u0010\u0003\u001a\u0004\u0008\u0007\u0010\u0008R \u0010\n\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010\t\u0012\u0004\u0008\u000b\u0010\u0003\u001a\u0004\u0008\u000c\u0010\u0008R \u0010\r\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010\t\u0012\u0004\u0008\u000e\u0010\u0003\u001a\u0004\u0008\u000f\u0010\u0008R \u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010\t\u0012\u0004\u0008\u0011\u0010\u0003\u001a\u0004\u0008\u0012\u0010\u0008\u00a8\u0006\u0015"
    }
    d2 = {
        "Lexpo/modules/ui/PaddingValuesRecord;",
        "Lexpo/modules/kotlin/records/Record;",
        "<init>",
        "()V",
        "start",
        "",
        "getStart$annotations",
        "getStart",
        "()Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "top",
        "getTop$annotations",
        "getTop",
        "end",
        "getEnd$annotations",
        "getEnd",
        "bottom",
        "getBottom$annotations",
        "getBottom",
        "toPaddingValues",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "expo-ui_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final bottom:Ljava/lang/Float;

.field private final end:Ljava/lang/Float;

.field private final start:Ljava/lang/Float;

.field private final top:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getBottom$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getEnd$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getStart$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getTop$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getBottom()Ljava/lang/Float;
    .locals 1

    .line 32
    iget-object v0, p0, Lexpo/modules/ui/PaddingValuesRecord;->bottom:Ljava/lang/Float;

    return-object v0
.end method

.method public final getEnd()Ljava/lang/Float;
    .locals 1

    .line 31
    iget-object v0, p0, Lexpo/modules/ui/PaddingValuesRecord;->end:Ljava/lang/Float;

    return-object v0
.end method

.method public final getStart()Ljava/lang/Float;
    .locals 1

    .line 29
    iget-object v0, p0, Lexpo/modules/ui/PaddingValuesRecord;->start:Ljava/lang/Float;

    return-object v0
.end method

.method public final getTop()Ljava/lang/Float;
    .locals 1

    .line 30
    iget-object v0, p0, Lexpo/modules/ui/PaddingValuesRecord;->top:Ljava/lang/Float;

    return-object v0
.end method

.method public final toPaddingValues()Landroidx/compose/foundation/layout/PaddingValues;
    .locals 5

    .line 36
    iget-object v0, p0, Lexpo/modules/ui/PaddingValuesRecord;->start:Ljava/lang/Float;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 167
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    goto :goto_0

    :cond_0
    int-to-float v0, v1

    .line 168
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 37
    :goto_0
    iget-object v2, p0, Lexpo/modules/ui/PaddingValuesRecord;->top:Ljava/lang/Float;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 169
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    goto :goto_1

    :cond_1
    int-to-float v2, v1

    .line 170
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 38
    :goto_1
    iget-object v3, p0, Lexpo/modules/ui/PaddingValuesRecord;->end:Ljava/lang/Float;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 171
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    goto :goto_2

    :cond_2
    int-to-float v3, v1

    .line 172
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 39
    :goto_2
    iget-object v4, p0, Lexpo/modules/ui/PaddingValuesRecord;->bottom:Ljava/lang/Float;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 173
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    goto :goto_3

    :cond_3
    int-to-float v1, v1

    .line 174
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 35
    :goto_3
    invoke-static {v0, v2, v3, v1}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4(FFFF)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    return-object v0
.end method
