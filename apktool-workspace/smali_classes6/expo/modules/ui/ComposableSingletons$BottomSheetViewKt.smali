.class public final Lexpo/modules/ui/ComposableSingletons$BottomSheetViewKt;
.super Ljava/lang/Object;
.source "BottomSheetView.kt"


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
.field public static final INSTANCE:Lexpo/modules/ui/ComposableSingletons$BottomSheetViewKt;

.field private static lambda$-865286969:Lkotlin/jvm/functions/Function2;
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

    new-instance v0, Lexpo/modules/ui/ComposableSingletons$BottomSheetViewKt;

    invoke-direct {v0}, Lexpo/modules/ui/ComposableSingletons$BottomSheetViewKt;-><init>()V

    sput-object v0, Lexpo/modules/ui/ComposableSingletons$BottomSheetViewKt;->INSTANCE:Lexpo/modules/ui/ComposableSingletons$BottomSheetViewKt;

    const/4 v0, 0x0

    .line 94
    sget-object v1, Lexpo/modules/ui/ComposableSingletons$BottomSheetViewKt$lambda$-865286969$1;->INSTANCE:Lexpo/modules/ui/ComposableSingletons$BottomSheetViewKt$lambda$-865286969$1;

    const v2, -0x33933b39    # -6.2067484E7f

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    sput-object v0, Lexpo/modules/ui/ComposableSingletons$BottomSheetViewKt;->lambda$-865286969:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLambda$-865286969$expo_ui_release()Lkotlin/jvm/functions/Function2;
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

    sget-object v0, Lexpo/modules/ui/ComposableSingletons$BottomSheetViewKt;->lambda$-865286969:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method
