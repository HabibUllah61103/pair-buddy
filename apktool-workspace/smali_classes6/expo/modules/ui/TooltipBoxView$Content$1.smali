.class final Lexpo/modules/ui/TooltipBoxView$Content$1;
.super Ljava/lang/Object;
.source "TooltipView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/ui/TooltipBoxView;->Content(Lexpo/modules/kotlin/views/ComposableScope;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/material3/TooltipScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTooltipView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TooltipView.kt\nexpo/modules/ui/TooltipBoxView$Content$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,178:1\n1#2:179\n*E\n"
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
.field final synthetic $actionSlotView:Lexpo/modules/ui/SlotView;

.field final synthetic $plainTooltipView:Lexpo/modules/ui/PlainTooltipView;

.field final synthetic $richTooltipView:Lexpo/modules/ui/RichTooltipView;

.field final synthetic $this_Content:Lexpo/modules/kotlin/views/ComposableScope;

.field final synthetic this$0:Lexpo/modules/ui/TooltipBoxView;


# direct methods
.method constructor <init>(Lexpo/modules/ui/PlainTooltipView;Lexpo/modules/ui/TooltipBoxView;Lexpo/modules/kotlin/views/ComposableScope;Lexpo/modules/ui/RichTooltipView;Lexpo/modules/ui/SlotView;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/ui/TooltipBoxView$Content$1;->$plainTooltipView:Lexpo/modules/ui/PlainTooltipView;

    iput-object p2, p0, Lexpo/modules/ui/TooltipBoxView$Content$1;->this$0:Lexpo/modules/ui/TooltipBoxView;

    iput-object p3, p0, Lexpo/modules/ui/TooltipBoxView$Content$1;->$this_Content:Lexpo/modules/kotlin/views/ComposableScope;

    iput-object p4, p0, Lexpo/modules/ui/TooltipBoxView$Content$1;->$richTooltipView:Lexpo/modules/ui/RichTooltipView;

    iput-object p5, p0, Lexpo/modules/ui/TooltipBoxView$Content$1;->$actionSlotView:Lexpo/modules/ui/SlotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 135
    check-cast p1, Landroidx/compose/material3/TooltipScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/ui/TooltipBoxView$Content$1;->invoke(Landroidx/compose/material3/TooltipScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/material3/TooltipScope;Landroidx/compose/runtime/Composer;I)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v6, p2

    move/from16 v13, p3

    const-string v1, "$this$TooltipBox"

    move-object/from16 v8, p1

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "C:TooltipView.kt#v15e7d"

    invoke-static {v6, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "expo.modules.ui.TooltipBoxView.Content.<anonymous> (TooltipView.kt:135)"

    const v3, 0x6342140b

    invoke-static {v3, v13, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 136
    :cond_0
    iget-object v1, v0, Lexpo/modules/ui/TooltipBoxView$Content$1;->$plainTooltipView:Lexpo/modules/ui/PlainTooltipView;

    const/16 v14, 0x36

    const/4 v15, 0x1

    if-eqz v1, :cond_3

    const v1, -0x3964b3a5

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v1, "141@5338L103,142@5454L90,136@4994L550"

    invoke-static {v6, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 138
    iget-object v1, v0, Lexpo/modules/ui/TooltipBoxView$Content$1;->$plainTooltipView:Lexpo/modules/ui/PlainTooltipView;

    invoke-virtual {v1}, Lexpo/modules/ui/PlainTooltipView;->getProps()Lexpo/modules/ui/PlainTooltipViewProps;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/ui/PlainTooltipViewProps;->getContainerColor()Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Color;

    invoke-static {v1}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v1

    const v2, -0x64f2b660

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v2, "138@5128L26"

    invoke-static {v6, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v1, :cond_1

    .line 139
    sget-object v1, Landroidx/compose/material3/TooltipDefaults;->INSTANCE:Landroidx/compose/material3/TooltipDefaults;

    sget v2, Landroidx/compose/material3/TooltipDefaults;->$stable:I

    invoke-virtual {v1, v6, v2}, Landroidx/compose/material3/TooltipDefaults;->getPlainTooltipContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v1

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v1

    :goto_0
    move-wide v9, v1

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 140
    iget-object v1, v0, Lexpo/modules/ui/TooltipBoxView$Content$1;->$plainTooltipView:Lexpo/modules/ui/PlainTooltipView;

    invoke-virtual {v1}, Lexpo/modules/ui/PlainTooltipView;->getProps()Lexpo/modules/ui/PlainTooltipViewProps;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/ui/PlainTooltipViewProps;->getContentColor()Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Color;

    invoke-static {v1}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v1

    const v2, -0x64f2a424

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v2, "140@5272L24"

    invoke-static {v6, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v1, :cond_2

    .line 141
    sget-object v1, Landroidx/compose/material3/TooltipDefaults;->INSTANCE:Landroidx/compose/material3/TooltipDefaults;

    sget v2, Landroidx/compose/material3/TooltipDefaults;->$stable:I

    invoke-virtual {v1, v6, v2}, Landroidx/compose/material3/TooltipDefaults;->getPlainTooltipContentColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v1

    goto :goto_1

    .line 140
    :cond_2
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v1

    :goto_1
    move-wide v11, v1

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 142
    sget-object v1, Lexpo/modules/ui/ModifierRegistry;->INSTANCE:Lexpo/modules/ui/ModifierRegistry;

    iget-object v2, v0, Lexpo/modules/ui/TooltipBoxView$Content$1;->$plainTooltipView:Lexpo/modules/ui/PlainTooltipView;

    invoke-virtual {v2}, Lexpo/modules/ui/PlainTooltipView;->getProps()Lexpo/modules/ui/PlainTooltipViewProps;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/ui/PlainTooltipViewProps;->getModifiers()Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v3, v0, Lexpo/modules/ui/TooltipBoxView$Content$1;->this$0:Lexpo/modules/ui/TooltipBoxView;

    invoke-virtual {v3}, Lexpo/modules/ui/TooltipBoxView;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v3

    iget-object v4, v0, Lexpo/modules/ui/TooltipBoxView$Content$1;->$this_Content:Lexpo/modules/kotlin/views/ComposableScope;

    iget-object v5, v0, Lexpo/modules/ui/TooltipBoxView$Content$1;->this$0:Lexpo/modules/ui/TooltipBoxView;

    invoke-virtual {v5}, Lexpo/modules/ui/TooltipBoxView;->getGlobalEventDispatcher()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    sget v7, Lexpo/modules/kotlin/AppContext;->$stable:I

    shl-int/lit8 v7, v7, 0x3

    sget v16, Lexpo/modules/kotlin/views/ComposableScope;->$stable:I

    shl-int/lit8 v16, v16, 0x6

    or-int v7, v7, v16

    invoke-virtual/range {v1 .. v7}, Lexpo/modules/ui/ModifierRegistry;->applyModifiers(Ljava/util/List;Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/views/ComposableScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 143
    new-instance v1, Lexpo/modules/ui/TooltipBoxView$Content$1$1;

    iget-object v3, v0, Lexpo/modules/ui/TooltipBoxView$Content$1;->$plainTooltipView:Lexpo/modules/ui/PlainTooltipView;

    invoke-direct {v1, v3}, Lexpo/modules/ui/TooltipBoxView$Content$1$1;-><init>(Lexpo/modules/ui/PlainTooltipView;)V

    const v3, 0xadf9494    # 2.1530008E-32f

    invoke-static {v3, v15, v1, v6, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/high16 v3, 0x30000000

    and-int/lit8 v4, v13, 0xe

    or-int v14, v4, v3

    const/16 v15, 0xce

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide v8, v9

    const/4 v10, 0x0

    move-wide v6, v11

    const/4 v11, 0x0

    move-object/from16 v13, p2

    move-object v12, v1

    move-object/from16 v1, p1

    .line 137
    invoke-static/range {v1 .. v15}, Landroidx/compose/material3/TooltipKt;->PlainTooltip-gv3ox5I(Landroidx/compose/material3/TooltipScope;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;FLandroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    move-object v6, v13

    .line 136
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_8

    .line 146
    :cond_3
    iget-object v1, v0, Lexpo/modules/ui/TooltipBoxView$Content$1;->$richTooltipView:Lexpo/modules/ui/RichTooltipView;

    if-eqz v1, :cond_a

    const v1, -0x395b354b

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v1, "148@5783L19,153@5994L594,163@6630L102,164@6745L52,150@5814L983"

    invoke-static {v6, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 147
    iget-object v1, v0, Lexpo/modules/ui/TooltipBoxView$Content$1;->$richTooltipView:Lexpo/modules/ui/RichTooltipView;

    check-cast v1, Landroid/view/ViewGroup;

    const-string v2, "title"

    invoke-static {v1, v2}, Lexpo/modules/ui/SlotViewKt;->findChildSlotView(Landroid/view/ViewGroup;Ljava/lang/String;)Lexpo/modules/ui/SlotView;

    move-result-object v1

    .line 148
    iget-object v2, v0, Lexpo/modules/ui/TooltipBoxView$Content$1;->$richTooltipView:Lexpo/modules/ui/RichTooltipView;

    check-cast v2, Landroid/view/ViewGroup;

    const-string v3, "text"

    invoke-static {v2, v3}, Lexpo/modules/ui/SlotViewKt;->findChildSlotView(Landroid/view/ViewGroup;Ljava/lang/String;)Lexpo/modules/ui/SlotView;

    move-result-object v2

    .line 149
    sget-object v3, Landroidx/compose/material3/TooltipDefaults;->INSTANCE:Landroidx/compose/material3/TooltipDefaults;

    sget v4, Landroidx/compose/material3/TooltipDefaults;->$stable:I

    invoke-virtual {v3, v6, v4}, Landroidx/compose/material3/TooltipDefaults;->richTooltipColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/RichTooltipColors;

    move-result-object v3

    const v4, -0x64f24f9a

    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v4, "*151@5868L19"

    invoke-static {v6, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v4, 0x0

    if-nez v1, :cond_4

    move-object/from16 v16, v4

    goto :goto_2

    .line 152
    :cond_4
    new-instance v5, Lexpo/modules/ui/TooltipBoxView$Content$1$2$1;

    invoke-direct {v5, v1}, Lexpo/modules/ui/TooltipBoxView$Content$1$2$1;-><init>(Lexpo/modules/ui/SlotView;)V

    const v1, 0x465a536a

    invoke-static {v1, v15, v5, v6, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object/from16 v16, v1

    :goto_2
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 153
    iget-object v1, v0, Lexpo/modules/ui/TooltipBoxView$Content$1;->$actionSlotView:Lexpo/modules/ui/SlotView;

    const v5, -0x64f2475a

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v5, "*152@5934L19"

    invoke-static {v6, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    new-instance v4, Lexpo/modules/ui/TooltipBoxView$Content$1$3$1;

    invoke-direct {v4, v1}, Lexpo/modules/ui/TooltipBoxView$Content$1$3$1;-><init>(Lexpo/modules/ui/SlotView;)V

    const v1, 0x52ee05c3

    invoke-static {v1, v15, v4, v6, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function2;

    :goto_3
    move-object/from16 v17, v4

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 154
    sget-object v1, Landroidx/compose/material3/TooltipDefaults;->INSTANCE:Landroidx/compose/material3/TooltipDefaults;

    .line 155
    iget-object v4, v0, Lexpo/modules/ui/TooltipBoxView$Content$1;->$richTooltipView:Lexpo/modules/ui/RichTooltipView;

    invoke-virtual {v4}, Lexpo/modules/ui/RichTooltipView;->getProps()Lexpo/modules/ui/RichTooltipViewProps;

    move-result-object v4

    invoke-virtual {v4}, Lexpo/modules/ui/RichTooltipViewProps;->getContainerColor()Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Color;

    invoke-static {v4}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v4

    goto :goto_4

    .line 156
    :cond_6
    invoke-virtual {v3}, Landroidx/compose/material3/RichTooltipColors;->getContainerColor-0d7_KjU()J

    move-result-wide v4

    .line 157
    :goto_4
    iget-object v7, v0, Lexpo/modules/ui/TooltipBoxView$Content$1;->$richTooltipView:Lexpo/modules/ui/RichTooltipView;

    invoke-virtual {v7}, Lexpo/modules/ui/RichTooltipView;->getProps()Lexpo/modules/ui/RichTooltipViewProps;

    move-result-object v7

    invoke-virtual {v7}, Lexpo/modules/ui/RichTooltipViewProps;->getContentColor()Landroidx/compose/runtime/MutableState;

    move-result-object v7

    invoke-interface {v7}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Color;

    invoke-static {v7}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v7

    goto :goto_5

    .line 158
    :cond_7
    invoke-virtual {v3}, Landroidx/compose/material3/RichTooltipColors;->getContentColor-0d7_KjU()J

    move-result-wide v7

    .line 159
    :goto_5
    iget-object v9, v0, Lexpo/modules/ui/TooltipBoxView$Content$1;->$richTooltipView:Lexpo/modules/ui/RichTooltipView;

    invoke-virtual {v9}, Lexpo/modules/ui/RichTooltipView;->getProps()Lexpo/modules/ui/RichTooltipViewProps;

    move-result-object v9

    invoke-virtual {v9}, Lexpo/modules/ui/RichTooltipViewProps;->getTitleContentColor()Landroidx/compose/runtime/MutableState;

    move-result-object v9

    invoke-interface {v9}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Color;

    invoke-static {v9}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v9

    goto :goto_6

    .line 160
    :cond_8
    invoke-virtual {v3}, Landroidx/compose/material3/RichTooltipColors;->getTitleContentColor-0d7_KjU()J

    move-result-wide v9

    .line 161
    :goto_6
    iget-object v11, v0, Lexpo/modules/ui/TooltipBoxView$Content$1;->$richTooltipView:Lexpo/modules/ui/RichTooltipView;

    invoke-virtual {v11}, Lexpo/modules/ui/RichTooltipView;->getProps()Lexpo/modules/ui/RichTooltipViewProps;

    move-result-object v11

    invoke-virtual {v11}, Lexpo/modules/ui/RichTooltipViewProps;->getActionContentColor()Landroidx/compose/runtime/MutableState;

    move-result-object v11

    invoke-interface {v11}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Color;

    invoke-static {v11}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v11

    goto :goto_7

    .line 162
    :cond_9
    invoke-virtual {v3}, Landroidx/compose/material3/RichTooltipColors;->getActionContentColor-0d7_KjU()J

    move-result-wide v11

    :goto_7
    sget v3, Landroidx/compose/material3/TooltipDefaults;->$stable:I

    shl-int/lit8 v3, v3, 0xc

    move-wide/from16 v18, v9

    move-wide/from16 v20, v7

    move-object v7, v2

    move-wide v8, v11

    move v11, v3

    move-wide v2, v4

    move-wide/from16 v4, v20

    const/4 v12, 0x0

    move-object v10, v6

    move-object v14, v7

    move-wide/from16 v6, v18

    .line 154
    invoke-virtual/range {v1 .. v12}, Landroidx/compose/material3/TooltipDefaults;->richTooltipColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/RichTooltipColors;

    move-result-object v8

    .line 164
    sget-object v1, Lexpo/modules/ui/ModifierRegistry;->INSTANCE:Lexpo/modules/ui/ModifierRegistry;

    iget-object v2, v0, Lexpo/modules/ui/TooltipBoxView$Content$1;->$richTooltipView:Lexpo/modules/ui/RichTooltipView;

    invoke-virtual {v2}, Lexpo/modules/ui/RichTooltipView;->getProps()Lexpo/modules/ui/RichTooltipViewProps;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/ui/RichTooltipViewProps;->getModifiers()Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v3, v0, Lexpo/modules/ui/TooltipBoxView$Content$1;->this$0:Lexpo/modules/ui/TooltipBoxView;

    invoke-virtual {v3}, Lexpo/modules/ui/TooltipBoxView;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v3

    iget-object v4, v0, Lexpo/modules/ui/TooltipBoxView$Content$1;->$this_Content:Lexpo/modules/kotlin/views/ComposableScope;

    iget-object v5, v0, Lexpo/modules/ui/TooltipBoxView$Content$1;->this$0:Lexpo/modules/ui/TooltipBoxView;

    invoke-virtual {v5}, Lexpo/modules/ui/TooltipBoxView;->getGlobalEventDispatcher()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    sget v6, Lexpo/modules/kotlin/AppContext;->$stable:I

    shl-int/lit8 v6, v6, 0x3

    sget v7, Lexpo/modules/kotlin/views/ComposableScope;->$stable:I

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v7, v6

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v7}, Lexpo/modules/ui/ModifierRegistry;->applyModifiers(Ljava/util/List;Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/views/ComposableScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 165
    new-instance v1, Lexpo/modules/ui/TooltipBoxView$Content$1$4;

    invoke-direct {v1, v14}, Lexpo/modules/ui/TooltipBoxView$Content$1$4;-><init>(Lexpo/modules/ui/SlotView;)V

    const v3, -0x6a91337e

    const/16 v4, 0x36

    invoke-static {v3, v15, v1, v6, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lkotlin/jvm/functions/Function2;

    and-int/lit8 v13, v13, 0xe

    const/4 v14, 0x6

    const/16 v15, 0x1b8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p1

    move-object/from16 v12, p2

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    .line 151
    invoke-static/range {v1 .. v15}, Landroidx/compose/material3/TooltipKt;->RichTooltip-EkvW5A0(Landroidx/compose/material3/TooltipScope;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;FLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/RichTooltipColors;FFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V

    move-object v6, v12

    .line 146
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_8

    :cond_a
    const v1, -0x39495909

    .line 168
    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_8
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_b
    return-void
.end method
