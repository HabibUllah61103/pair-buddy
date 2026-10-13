.class public final synthetic Lexpo/modules/ui/SliderViewKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$1:Landroidx/compose/runtime/MutableFloatState;

.field public final synthetic f$2:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableFloatState;Lexpo/modules/kotlin/viewevent/ViewEventDelegate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/ui/SliderViewKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lexpo/modules/ui/SliderViewKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/runtime/MutableFloatState;

    iput-object p3, p0, Lexpo/modules/ui/SliderViewKt$$ExternalSyntheticLambda0;->f$2:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lexpo/modules/ui/SliderViewKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lexpo/modules/ui/SliderViewKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/runtime/MutableFloatState;

    iget-object v2, p0, Lexpo/modules/ui/SliderViewKt$$ExternalSyntheticLambda0;->f$2:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lexpo/modules/ui/SliderViewKt;->$r8$lambda$5fz-G-1gTWIB33vxdaLydS5_jaY(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableFloatState;Lexpo/modules/kotlin/viewevent/ViewEventDelegate;F)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
