.class public final synthetic Lexpo/modules/kotlin/views/ExpoComposeView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lexpo/modules/kotlin/views/ExpoComposeView;

.field public final synthetic f$1:Lexpo/modules/kotlin/views/ComposableScope;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/kotlin/views/ExpoComposeView;Lexpo/modules/kotlin/views/ComposableScope;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/kotlin/views/ExpoComposeView$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/kotlin/views/ExpoComposeView;

    iput-object p2, p0, Lexpo/modules/kotlin/views/ExpoComposeView$$ExternalSyntheticLambda0;->f$1:Lexpo/modules/kotlin/views/ComposableScope;

    iput-object p3, p0, Lexpo/modules/kotlin/views/ExpoComposeView$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function1;

    iput p4, p0, Lexpo/modules/kotlin/views/ExpoComposeView$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lexpo/modules/kotlin/views/ExpoComposeView$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/kotlin/views/ExpoComposeView;

    iget-object v1, p0, Lexpo/modules/kotlin/views/ExpoComposeView$$ExternalSyntheticLambda0;->f$1:Lexpo/modules/kotlin/views/ComposableScope;

    iget-object v2, p0, Lexpo/modules/kotlin/views/ExpoComposeView$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function1;

    iget v3, p0, Lexpo/modules/kotlin/views/ExpoComposeView$$ExternalSyntheticLambda0;->f$3:I

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lexpo/modules/kotlin/views/ExpoComposeView;->$r8$lambda$TGOjGwlpnpZpgMisWBCcut_eqgo(Lexpo/modules/kotlin/views/ExpoComposeView;Lexpo/modules/kotlin/views/ComposableScope;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
