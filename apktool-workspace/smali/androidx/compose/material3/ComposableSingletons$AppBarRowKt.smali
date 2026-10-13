.class public final Landroidx/compose/material3/ComposableSingletons$AppBarRowKt;
.super Ljava/lang/Object;
.source "AppBarRow.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/ComposableSingletons$AppBarRowKt;

.field private static lambda$1581062749:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/material3/AppBarMenuState;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$YITdcn-nPdehjWYWXF7-Ni_qYig(Landroidx/compose/material3/AppBarMenuState;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/ComposableSingletons$AppBarRowKt;->lambda_1581062749$lambda$0(Landroidx/compose/material3/AppBarMenuState;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/material3/ComposableSingletons$AppBarRowKt;

    invoke-direct {v0}, Landroidx/compose/material3/ComposableSingletons$AppBarRowKt;-><init>()V

    sput-object v0, Landroidx/compose/material3/ComposableSingletons$AppBarRowKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$AppBarRowKt;

    .line 54
    new-instance v0, Landroidx/compose/material3/ComposableSingletons$AppBarRowKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/compose/material3/ComposableSingletons$AppBarRowKt$$ExternalSyntheticLambda0;-><init>()V

    const v1, 0x5e3d1a5d

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function3;

    sput-object v0, Landroidx/compose/material3/ComposableSingletons$AppBarRowKt;->lambda$1581062749:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final lambda_1581062749$lambda$0(Landroidx/compose/material3/AppBarMenuState;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 12

    const-string v0, "CN(menuState)54@2786L34:AppBarRow.kt#uh7d8r"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.ComposableSingletons$AppBarRowKt.lambda$1581062749.<anonymous> (AppBarRow.kt:54)"

    const v2, 0x5e3d1a5d

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    and-int/lit8 v10, p2, 0xe

    const/16 v11, 0x3e

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v9, p1

    .line 55
    invoke-static/range {v3 .. v11}, Landroidx/compose/material3/AppBarDslKt;->AppBarOverflowIndicator(Landroidx/compose/material3/AppBarMenuState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 56
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final getLambda$1581062749$material3()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/material3/AppBarMenuState;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/compose/material3/ComposableSingletons$AppBarRowKt;->lambda$1581062749:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method
