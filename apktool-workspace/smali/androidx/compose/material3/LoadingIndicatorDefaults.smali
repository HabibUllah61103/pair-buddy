.class public final Landroidx/compose/material3/LoadingIndicatorDefaults;
.super Ljava/lang/Object;
.source "LoadingIndicator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoadingIndicator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadingIndicator.kt\nandroidx/compose/material3/LoadingIndicatorDefaults\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,676:1\n1#2:677\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0013\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0006\u0010\u0007R\u0013\u0010\t\u001a\u00020\u0005\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\n\u0010\u0007R\u0013\u0010\u000b\u001a\u00020\u0005\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u000c\u0010\u0007R\u0011\u0010\r\u001a\u00020\u000e8G\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u00128G\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0015\u001a\u00020\u00128G\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0014R\u0011\u0010\u0017\u001a\u00020\u00128G\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0014R\u0017\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001a\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0017\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001a\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001dR\u0014\u0010 \u001a\u00020!X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u0007\u00a8\u0006#"
    }
    d2 = {
        "Landroidx/compose/material3/LoadingIndicatorDefaults;",
        "",
        "<init>",
        "()V",
        "ContainerWidth",
        "Landroidx/compose/ui/unit/Dp;",
        "getContainerWidth-D9Ej5fM",
        "()F",
        "F",
        "ContainerHeight",
        "getContainerHeight-D9Ej5fM",
        "IndicatorSize",
        "getIndicatorSize-D9Ej5fM",
        "containerShape",
        "Landroidx/compose/ui/graphics/Shape;",
        "getContainerShape",
        "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;",
        "indicatorColor",
        "Landroidx/compose/ui/graphics/Color;",
        "getIndicatorColor",
        "(Landroidx/compose/runtime/Composer;I)J",
        "containedIndicatorColor",
        "getContainedIndicatorColor",
        "containedContainerColor",
        "getContainedContainerColor",
        "IndeterminateIndicatorPolygons",
        "",
        "Landroidx/graphics/shapes/RoundedPolygon;",
        "getIndeterminateIndicatorPolygons",
        "()Ljava/util/List;",
        "DeterminateIndicatorPolygons",
        "getDeterminateIndicatorPolygons",
        "ActiveIndicatorScale",
        "",
        "getActiveIndicatorScale$material3",
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

.field private static final ActiveIndicatorScale:F

.field private static final ContainerHeight:F

.field private static final ContainerWidth:F

.field private static final DeterminateIndicatorPolygons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/RoundedPolygon;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Landroidx/compose/material3/LoadingIndicatorDefaults;

.field private static final IndeterminateIndicatorPolygons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/RoundedPolygon;",
            ">;"
        }
    .end annotation
.end field

.field private static final IndicatorSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Landroidx/compose/material3/LoadingIndicatorDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/LoadingIndicatorDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/LoadingIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/LoadingIndicatorDefaults;

    .line 495
    sget-object v0, Landroidx/compose/material3/tokens/LoadingIndicatorTokens;->INSTANCE:Landroidx/compose/material3/tokens/LoadingIndicatorTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/LoadingIndicatorTokens;->getContainerWidth-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/LoadingIndicatorDefaults;->ContainerWidth:F

    .line 498
    sget-object v1, Landroidx/compose/material3/tokens/LoadingIndicatorTokens;->INSTANCE:Landroidx/compose/material3/tokens/LoadingIndicatorTokens;

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/LoadingIndicatorTokens;->getContainerHeight-D9Ej5fM()F

    move-result v1

    sput v1, Landroidx/compose/material3/LoadingIndicatorDefaults;->ContainerHeight:F

    .line 501
    sget-object v2, Landroidx/compose/material3/tokens/LoadingIndicatorTokens;->INSTANCE:Landroidx/compose/material3/tokens/LoadingIndicatorTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/LoadingIndicatorTokens;->getActiveSize-D9Ej5fM()F

    move-result v2

    sput v2, Landroidx/compose/material3/LoadingIndicatorDefaults;->IndicatorSize:F

    const/4 v3, 0x7

    .line 534
    new-array v3, v3, [Landroidx/graphics/shapes/RoundedPolygon;

    sget-object v4, Landroidx/compose/material3/MaterialShapes;->Companion:Landroidx/compose/material3/MaterialShapes$Companion;

    invoke-virtual {v4}, Landroidx/compose/material3/MaterialShapes$Companion;->getSoftBurst()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 535
    sget-object v4, Landroidx/compose/material3/MaterialShapes;->Companion:Landroidx/compose/material3/MaterialShapes$Companion;

    invoke-virtual {v4}, Landroidx/compose/material3/MaterialShapes$Companion;->getCookie9Sided()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 536
    sget-object v4, Landroidx/compose/material3/MaterialShapes;->Companion:Landroidx/compose/material3/MaterialShapes$Companion;

    invoke-virtual {v4}, Landroidx/compose/material3/MaterialShapes$Companion;->getPentagon()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 537
    sget-object v4, Landroidx/compose/material3/MaterialShapes;->Companion:Landroidx/compose/material3/MaterialShapes$Companion;

    invoke-virtual {v4}, Landroidx/compose/material3/MaterialShapes$Companion;->getPill()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    .line 538
    sget-object v4, Landroidx/compose/material3/MaterialShapes;->Companion:Landroidx/compose/material3/MaterialShapes$Companion;

    invoke-virtual {v4}, Landroidx/compose/material3/MaterialShapes$Companion;->getSunny()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v4

    const/4 v8, 0x4

    aput-object v4, v3, v8

    .line 539
    sget-object v4, Landroidx/compose/material3/MaterialShapes;->Companion:Landroidx/compose/material3/MaterialShapes$Companion;

    invoke-virtual {v4}, Landroidx/compose/material3/MaterialShapes$Companion;->getCookie4Sided()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v4

    const/4 v8, 0x5

    aput-object v4, v3, v8

    .line 540
    sget-object v4, Landroidx/compose/material3/MaterialShapes;->Companion:Landroidx/compose/material3/MaterialShapes$Companion;

    invoke-virtual {v4}, Landroidx/compose/material3/MaterialShapes$Companion;->getOval()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v4

    const/4 v8, 0x6

    aput-object v4, v3, v8

    .line 533
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Landroidx/compose/material3/LoadingIndicatorDefaults;->IndeterminateIndicatorPolygons:Ljava/util/List;

    .line 555
    new-array v3, v7, [Landroidx/graphics/shapes/RoundedPolygon;

    sget-object v4, Landroidx/compose/material3/MaterialShapes;->Companion:Landroidx/compose/material3/MaterialShapes$Companion;

    invoke-virtual {v4}, Landroidx/compose/material3/MaterialShapes$Companion;->getCircle()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v7, v6, v7}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl$default([FILkotlin/jvm/internal/DefaultConstructorMarker;)[F

    move-result-object v7

    const/high16 v8, 0x41900000    # 18.0f

    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/Matrix;->rotateZ-impl([FF)V

    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v4, v7}, Landroidx/compose/material3/internal/ShapeUtilKt;->transformed-EL8BTi8(Landroidx/graphics/shapes/RoundedPolygon;[F)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v4

    aput-object v4, v3, v5

    .line 556
    sget-object v4, Landroidx/compose/material3/MaterialShapes;->Companion:Landroidx/compose/material3/MaterialShapes$Companion;

    invoke-virtual {v4}, Landroidx/compose/material3/MaterialShapes$Companion;->getSoftBurst()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v4

    aput-object v4, v3, v6

    .line 552
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Landroidx/compose/material3/LoadingIndicatorDefaults;->DeterminateIndicatorPolygons:Ljava/util/List;

    .line 564
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v2, v0

    sput v2, Landroidx/compose/material3/LoadingIndicatorDefaults;->ActiveIndicatorScale:F

    const/16 v0, 0x8

    sput v0, Landroidx/compose/material3/LoadingIndicatorDefaults;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getActiveIndicatorScale$material3()F
    .locals 1

    .line 563
    sget v0, Landroidx/compose/material3/LoadingIndicatorDefaults;->ActiveIndicatorScale:F

    return v0
.end method

.method public final getContainedContainerColor(Landroidx/compose/runtime/Composer;I)J
    .locals 3

    const-string v0, "C(<get-containedContainerColor>)522@23500L5:LoadingIndicator.kt#uh7d8r"

    const v1, -0x49386b57

    .line 523
    invoke-static {p1, v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v2, "androidx.compose.material3.LoadingIndicatorDefaults.<get-containedContainerColor> (LoadingIndicator.kt:522)"

    invoke-static {v1, p2, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p2, Landroidx/compose/material3/tokens/LoadingIndicatorTokens;->INSTANCE:Landroidx/compose/material3/tokens/LoadingIndicatorTokens;

    invoke-virtual {p2}, Landroidx/compose/material3/tokens/LoadingIndicatorTokens;->getContainedContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object p2

    const/4 v0, 0x6

    invoke-static {p2, p1, v0}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    return-wide v0
.end method

.method public final getContainedIndicatorColor(Landroidx/compose/runtime/Composer;I)J
    .locals 3

    const-string v0, "C(<get-containedIndicatorColor>)518@23279L5:LoadingIndicator.kt#uh7d8r"

    const v1, 0x1e3fefc5

    .line 519
    invoke-static {p1, v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v2, "androidx.compose.material3.LoadingIndicatorDefaults.<get-containedIndicatorColor> (LoadingIndicator.kt:518)"

    invoke-static {v1, p2, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p2, Landroidx/compose/material3/tokens/LoadingIndicatorTokens;->INSTANCE:Landroidx/compose/material3/tokens/LoadingIndicatorTokens;

    invoke-virtual {p2}, Landroidx/compose/material3/tokens/LoadingIndicatorTokens;->getContainedActiveColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object p2

    const/4 v0, 0x6

    invoke-static {p2, p1, v0}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    return-wide v0
.end method

.method public final getContainerHeight-D9Ej5fM()F
    .locals 1

    .line 498
    sget v0, Landroidx/compose/material3/LoadingIndicatorDefaults;->ContainerHeight:F

    return v0
.end method

.method public final getContainerShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;
    .locals 3

    const-string v0, "C(<get-containerShape>)504@22796L5:LoadingIndicator.kt#uh7d8r"

    const v1, -0xa90085b

    .line 505
    invoke-static {p1, v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v2, "androidx.compose.material3.LoadingIndicatorDefaults.<get-containerShape> (LoadingIndicator.kt:504)"

    invoke-static {v1, p2, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p2, Landroidx/compose/material3/tokens/LoadingIndicatorTokens;->INSTANCE:Landroidx/compose/material3/tokens/LoadingIndicatorTokens;

    invoke-virtual {p2}, Landroidx/compose/material3/tokens/LoadingIndicatorTokens;->getContainerShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;

    move-result-object p2

    const/4 v0, 0x6

    invoke-static {p2, p1, v0}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object p2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    return-object p2
.end method

.method public final getContainerWidth-D9Ej5fM()F
    .locals 1

    .line 495
    sget v0, Landroidx/compose/material3/LoadingIndicatorDefaults;->ContainerWidth:F

    return v0
.end method

.method public final getDeterminateIndicatorPolygons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/RoundedPolygon;",
            ">;"
        }
    .end annotation

    .line 551
    sget-object v0, Landroidx/compose/material3/LoadingIndicatorDefaults;->DeterminateIndicatorPolygons:Ljava/util/List;

    return-object v0
.end method

.method public final getIndeterminateIndicatorPolygons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/RoundedPolygon;",
            ">;"
        }
    .end annotation

    .line 532
    sget-object v0, Landroidx/compose/material3/LoadingIndicatorDefaults;->IndeterminateIndicatorPolygons:Ljava/util/List;

    return-object v0
.end method

.method public final getIndicatorColor(Landroidx/compose/runtime/Composer;I)J
    .locals 3

    const-string v0, "C(<get-indicatorColor>)511@23035L5:LoadingIndicator.kt#uh7d8r"

    const v1, -0x7b464d99

    .line 512
    invoke-static {p1, v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v2, "androidx.compose.material3.LoadingIndicatorDefaults.<get-indicatorColor> (LoadingIndicator.kt:511)"

    invoke-static {v1, p2, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p2, Landroidx/compose/material3/tokens/LoadingIndicatorTokens;->INSTANCE:Landroidx/compose/material3/tokens/LoadingIndicatorTokens;

    invoke-virtual {p2}, Landroidx/compose/material3/tokens/LoadingIndicatorTokens;->getActiveIndicatorColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object p2

    const/4 v0, 0x6

    invoke-static {p2, p1, v0}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    return-wide v0
.end method

.method public final getIndicatorSize-D9Ej5fM()F
    .locals 1

    .line 501
    sget v0, Landroidx/compose/material3/LoadingIndicatorDefaults;->IndicatorSize:F

    return v0
.end method
