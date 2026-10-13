.class public final Lexpo/modules/ui/ComposableSingletons$SegmentedButtonViewKt;
.super Ljava/lang/Object;
.source "SegmentedButtonView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lexpo/modules/ui/ComposableSingletons$SegmentedButtonViewKt;

.field private static lambda$1431986096:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lexpo/modules/ui/ComposableSingletons$SegmentedButtonViewKt;

    invoke-direct {v0}, Lexpo/modules/ui/ComposableSingletons$SegmentedButtonViewKt;-><init>()V

    sput-object v0, Lexpo/modules/ui/ComposableSingletons$SegmentedButtonViewKt;->INSTANCE:Lexpo/modules/ui/ComposableSingletons$SegmentedButtonViewKt;

    const/4 v0, 0x0

    .line 78
    sget-object v1, Lexpo/modules/ui/ComposableSingletons$SegmentedButtonViewKt$lambda$1431986096$1;->INSTANCE:Lexpo/modules/ui/ComposableSingletons$SegmentedButtonViewKt$lambda$1431986096$1;

    const v2, 0x555a5fb0

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    sput-object v0, Lexpo/modules/ui/ComposableSingletons$SegmentedButtonViewKt;->lambda$1431986096:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLambda$1431986096$expo_ui_release()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/ui/ComposableSingletons$SegmentedButtonViewKt;->lambda$1431986096:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method
