.class final Lexpo/modules/ui/DatePickerViewKt$ExpoTimePickerDialogContent$2;
.super Ljava/lang/Object;
.source "DatePickerView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/ui/DatePickerViewKt;->ExpoTimePickerDialogContent(Lexpo/modules/ui/TimePickerDialogProps;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDatePickerView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DatePickerView.kt\nexpo/modules/ui/DatePickerViewKt$ExpoTimePickerDialogContent$2\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,422:1\n1128#2,6:423\n*S KotlinDebug\n*F\n+ 1 DatePickerView.kt\nexpo/modules/ui/DatePickerViewKt$ExpoTimePickerDialogContent$2\n*L\n312#1:423,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $initialDate:Ljava/lang/Long;

.field final synthetic $onDateSelected:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lexpo/modules/ui/DatePickerResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $props:Lexpo/modules/ui/TimePickerDialogProps;

.field final synthetic $state:Landroidx/compose/material3/TimePickerState;


# direct methods
.method public static synthetic $r8$lambda$RrQ4JwijAjkBhx4jOXJuC-B05fU(Ljava/lang/Long;Landroidx/compose/material3/TimePickerState;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/ui/DatePickerViewKt$ExpoTimePickerDialogContent$2;->invoke$lambda$1$lambda$0(Ljava/lang/Long;Landroidx/compose/material3/TimePickerState;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Ljava/lang/Long;Landroidx/compose/material3/TimePickerState;Lkotlin/jvm/functions/Function1;Lexpo/modules/ui/TimePickerDialogProps;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Landroidx/compose/material3/TimePickerState;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lexpo/modules/ui/DatePickerResult;",
            "Lkotlin/Unit;",
            ">;",
            "Lexpo/modules/ui/TimePickerDialogProps;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/ui/DatePickerViewKt$ExpoTimePickerDialogContent$2;->$initialDate:Ljava/lang/Long;

    iput-object p2, p0, Lexpo/modules/ui/DatePickerViewKt$ExpoTimePickerDialogContent$2;->$state:Landroidx/compose/material3/TimePickerState;

    iput-object p3, p0, Lexpo/modules/ui/DatePickerViewKt$ExpoTimePickerDialogContent$2;->$onDateSelected:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lexpo/modules/ui/DatePickerViewKt$ExpoTimePickerDialogContent$2;->$props:Lexpo/modules/ui/TimePickerDialogProps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$1$lambda$0(Ljava/lang/Long;Landroidx/compose/material3/TimePickerState;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 3

    .line 313
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 315
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    const/16 p0, 0xb

    .line 317
    invoke-interface {p1}, Landroidx/compose/material3/TimePickerState;->getHour()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 318
    invoke-interface {p1}, Landroidx/compose/material3/TimePickerState;->getMinute()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 319
    new-instance p0, Lexpo/modules/ui/DatePickerResult;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lexpo/modules/ui/DatePickerResult;-><init>(Ljava/lang/Long;)V

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 311
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lexpo/modules/ui/DatePickerViewKt$ExpoTimePickerDialogContent$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 13

    move v0, p2

    const-string v1, "C311@15212L296,319@15510L87,311@15191L406:DatePickerView.kt#v15e7d"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    return-void

    .line 0
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    const-string v2, "expo.modules.ui.ExpoTimePickerDialogContent.<anonymous> (DatePickerView.kt:311)"

    const v3, -0x53c13b14

    invoke-static {v3, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    const v0, -0x6815fd56

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "CC(remember):DatePickerView.kt#9igjgp"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    iget-object v0, p0, Lexpo/modules/ui/DatePickerViewKt$ExpoTimePickerDialogContent$2;->$initialDate:Ljava/lang/Long;

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lexpo/modules/ui/DatePickerViewKt$ExpoTimePickerDialogContent$2;->$state:Landroidx/compose/material3/TimePickerState;

    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Lexpo/modules/ui/DatePickerViewKt$ExpoTimePickerDialogContent$2;->$onDateSelected:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 312
    iget-object v1, p0, Lexpo/modules/ui/DatePickerViewKt$ExpoTimePickerDialogContent$2;->$initialDate:Ljava/lang/Long;

    iget-object v2, p0, Lexpo/modules/ui/DatePickerViewKt$ExpoTimePickerDialogContent$2;->$state:Landroidx/compose/material3/TimePickerState;

    iget-object v3, p0, Lexpo/modules/ui/DatePickerViewKt$ExpoTimePickerDialogContent$2;->$onDateSelected:Lkotlin/jvm/functions/Function1;

    .line 423
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_3

    .line 424
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v4, v0, :cond_4

    .line 312
    :cond_3
    new-instance v4, Lexpo/modules/ui/DatePickerViewKt$ExpoTimePickerDialogContent$2$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v2, v3}, Lexpo/modules/ui/DatePickerViewKt$ExpoTimePickerDialogContent$2$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Long;Landroidx/compose/material3/TimePickerState;Lkotlin/jvm/functions/Function1;)V

    .line 426
    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 312
    :cond_4
    move-object v0, v4

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 320
    new-instance v1, Lexpo/modules/ui/DatePickerViewKt$ExpoTimePickerDialogContent$2$2;

    iget-object v2, p0, Lexpo/modules/ui/DatePickerViewKt$ExpoTimePickerDialogContent$2;->$props:Lexpo/modules/ui/TimePickerDialogProps;

    invoke-direct {v1, v2}, Lexpo/modules/ui/DatePickerViewKt$ExpoTimePickerDialogContent$2$2;-><init>(Lexpo/modules/ui/TimePickerDialogProps;)V

    const/16 v2, 0x36

    const v3, 0x7660e14f

    const/4 v4, 0x1

    invoke-static {v3, v4, v1, p1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lkotlin/jvm/functions/Function3;

    const/high16 v11, 0x30000000

    const/16 v12, 0x1fe

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v10, p1

    .line 312
    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/ButtonKt;->TextButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    return-void
.end method
