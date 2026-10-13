.class public final Lexpo/modules/ui/ShapeViewKt;
.super Ljava/lang/Object;
.source "ShapeView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/ui/ShapeViewKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShapeView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeView.kt\nexpo/modules/ui/ShapeViewKt\n+ 2 Size.kt\nandroidx/compose/ui/geometry/Size\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 4 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 5 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 7 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,212:1\n57#2:213\n61#2:216\n57#2:219\n61#2:222\n57#2:225\n61#2:228\n57#2:231\n61#2:234\n60#3:214\n70#3:217\n60#3:220\n70#3:223\n60#3:226\n70#3:229\n60#3:232\n70#3:235\n22#4:215\n22#4:218\n22#4:221\n22#4:224\n22#4:227\n22#4:230\n22#4:233\n22#4:236\n132#5:237\n132#5:238\n132#5:239\n132#5:240\n1#6:241\n1128#7,6:242\n*S KotlinDebug\n*F\n+ 1 ShapeView.kt\nexpo/modules/ui/ShapeViewKt\n*L\n61#1:213\n62#1:216\n80#1:219\n81#1:222\n93#1:225\n94#1:228\n125#1:231\n126#1:234\n61#1:214\n62#1:217\n80#1:220\n81#1:223\n93#1:226\n94#1:229\n125#1:232\n126#1:235\n61#1:215\n62#1:218\n80#1:221\n81#1:224\n93#1:227\n94#1:230\n125#1:233\n126#1:236\n133#1:237\n134#1:238\n135#1:239\n136#1:240\n190#1:242,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0000\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0013\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u001a\u0013\u0010\u0005\u001a\u00020\u0001*\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004\u001a?\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u000c\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u001a7\u0010\u0012\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u000c\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u001a\u001f\u0010\u0015\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0001H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u001a/\u0010\u0018\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001a\u001a\'\u0010\u001b\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001d\u001a\'\u0010\u001e\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u0001H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 \u001a)\u0010!\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00022\u0008\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010$\u001a\u00020%H\u0002\u00a2\u0006\u0004\u0008&\u0010\'\u001a%\u0010(\u001a\u00020\u00082\u0006\u0010)\u001a\u00020*2\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010$\u001a\u00020%\u00a2\u0006\u0004\u0008+\u0010,\u001a\u0012\u0010-\u001a\u0004\u0018\u00010.2\u0008\u0010/\u001a\u0004\u0018\u00010*\u001a\u0019\u00100\u001a\u000201*\u0002022\u0006\u00103\u001a\u000204H\u0007\u00a2\u0006\u0002\u00105\u00a8\u00066"
    }
    d2 = {
        "centerX",
        "",
        "Landroidx/compose/ui/geometry/Size;",
        "centerX-uvyYCjk",
        "(J)F",
        "centerY",
        "centerY-uvyYCjk",
        "createStarPath",
        "Landroidx/compose/ui/graphics/Path;",
        "size",
        "cornerRounding",
        "smoothing",
        "innerRadius",
        "radius",
        "verticesCount",
        "",
        "createStarPath-LjSzlW0",
        "(JFFFFI)Landroidx/compose/ui/graphics/Path;",
        "createPillStarPath",
        "createPillStarPath-_93gMUo",
        "(JFFFI)Landroidx/compose/ui/graphics/Path;",
        "createPillPath",
        "createPillPath-TmRCtEA",
        "(JF)Landroidx/compose/ui/graphics/Path;",
        "createPolygonPath",
        "createPolygonPath-Cqks5Fs",
        "(JFFI)Landroidx/compose/ui/graphics/Path;",
        "createCirclePath",
        "createCirclePath-Pq9zytI",
        "(JFI)Landroidx/compose/ui/graphics/Path;",
        "createRectanglePath",
        "createRectanglePath-Pq9zytI",
        "(JFF)Landroidx/compose/ui/graphics/Path;",
        "createRoundedCornerPath",
        "cornerRadii",
        "Lexpo/modules/ui/CornerRadii;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "createRoundedCornerPath-Pq9zytI",
        "(JLexpo/modules/ui/CornerRadii;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Path;",
        "pathFromShapeRecord",
        "record",
        "Lexpo/modules/ui/ShapeRecord;",
        "pathFromShapeRecord-12SF9DM",
        "(Lexpo/modules/ui/ShapeRecord;JLandroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Path;",
        "shapeFromShapeRecord",
        "Landroidx/compose/ui/graphics/Shape;",
        "shapeRecord",
        "ShapeContent",
        "",
        "Lexpo/modules/kotlin/views/FunctionalComposableScope;",
        "props",
        "Lexpo/modules/ui/ShapeProps;",
        "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/ShapeProps;Landroidx/compose/runtime/Composer;I)V",
        "expo-ui_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$rLHWZRoiNlP26bvHP3OHVqn522A(Lexpo/modules/ui/ShapeProps;Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/ui/ShapeViewKt;->ShapeContent$lambda$5$lambda$4(Lexpo/modules/ui/ShapeProps;Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$u7azSTmYu0bjW2ckE_LdGmu_BYs(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/ShapeProps;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lexpo/modules/ui/ShapeViewKt;->ShapeContent$lambda$6(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/ShapeProps;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yWwAppSr1ahNvYXgcTvJ19GcoZo(Landroidx/compose/ui/graphics/Path;Lexpo/modules/ui/ShapeProps;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/ui/ShapeViewKt;->ShapeContent$lambda$5$lambda$4$lambda$3(Landroidx/compose/ui/graphics/Path;Lexpo/modules/ui/ShapeProps;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final ShapeContent(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/ShapeProps;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "props"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x1fe125e0

    .line 187
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v6

    const-string p2, "C(ShapeContent)188@7279L83,189@7384L537,187@7242L704:ShapeView.kt#v15e7d"

    invoke-static {v6, p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 p2, p3, 0x6

    if-nez p2, :cond_2

    and-int/lit8 p2, p3, 0x8

    if-nez p2, :cond_0

    invoke-interface {v6, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p2

    goto :goto_0

    :cond_0
    invoke-interface {v6, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result p2

    :goto_0
    if-eqz p2, :cond_1

    const/4 p2, 0x4

    goto :goto_1

    :cond_1
    const/4 p2, 0x2

    :goto_1
    or-int/2addr p2, p3

    goto :goto_2

    :cond_2
    move p2, p3

    :goto_2
    and-int/lit8 v1, p3, 0x30

    if-nez v1, :cond_4

    invoke-interface {v6, p1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x20

    goto :goto_3

    :cond_3
    const/16 v1, 0x10

    :goto_3
    or-int/2addr p2, v1

    :cond_4
    and-int/lit8 v1, p2, 0x13

    const/16 v2, 0x12

    if-ne v1, v2, :cond_6

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_4

    .line 188
    :cond_5
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_5

    .line 187
    :cond_6
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, -0x1

    const-string v2, "expo.modules.ui.ShapeContent (ShapeView.kt:186)"

    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 189
    :cond_7
    sget-object v1, Lexpo/modules/ui/ModifierRegistry;->INSTANCE:Lexpo/modules/ui/ModifierRegistry;

    invoke-virtual {p1}, Lexpo/modules/ui/ShapeProps;->getModifiers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v3

    invoke-virtual {p0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getComposableScope()Lexpo/modules/kotlin/views/ComposableScope;

    move-result-object v4

    invoke-virtual {p0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getGlobalEventDispatcher()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    sget p2, Lexpo/modules/kotlin/AppContext;->$stable:I

    shl-int/lit8 p2, p2, 0x3

    sget v0, Lexpo/modules/kotlin/views/ComposableScope;->$stable:I

    shl-int/lit8 v0, v0, 0x6

    or-int v7, p2, v0

    invoke-virtual/range {v1 .. v7}, Lexpo/modules/ui/ModifierRegistry;->applyModifiers(Ljava/util/List;Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/views/ComposableScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p2

    const v0, 0x4c5de2

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "CC(remember):ShapeView.kt#9igjgp"

    invoke-static {v6, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v6, p1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    .line 242
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_8

    .line 243
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_9

    .line 190
    :cond_8
    new-instance v1, Lexpo/modules/ui/ShapeViewKt$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lexpo/modules/ui/ShapeViewKt$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/ui/ShapeProps;)V

    .line 245
    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 190
    :cond_9
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static {p2, v1}, Landroidx/compose/ui/draw/DrawModifierKt;->drawWithCache(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 209
    invoke-static {p2, v2, v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    const/4 v0, 0x0

    .line 188
    invoke-static {p2, v6, v0}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_a
    :goto_5
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p2

    if-eqz p2, :cond_b

    new-instance v0, Lexpo/modules/ui/ShapeViewKt$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p3}, Lexpo/modules/ui/ShapeViewKt$$ExternalSyntheticLambda2;-><init>(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/ShapeProps;I)V

    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_b
    return-void
.end method

.method private static final ShapeContent$lambda$5$lambda$4(Lexpo/modules/ui/ShapeProps;Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;
    .locals 9

    const-string v0, "$this$drawWithCache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lexpo/modules/ui/ShapeProps;->getCornerRounding()F

    move-result v2

    .line 194
    invoke-virtual {p0}, Lexpo/modules/ui/ShapeProps;->getSmoothing()F

    move-result v3

    .line 195
    invoke-virtual {p0}, Lexpo/modules/ui/ShapeProps;->getInnerRadius()F

    move-result v5

    .line 196
    invoke-virtual {p0}, Lexpo/modules/ui/ShapeProps;->getRadius()F

    move-result v6

    .line 197
    invoke-virtual {p0}, Lexpo/modules/ui/ShapeProps;->getCornerRadii()Lexpo/modules/ui/CornerRadii;

    move-result-object v7

    .line 198
    invoke-virtual {p0}, Lexpo/modules/ui/ShapeProps;->getType()Lexpo/modules/ui/ShapeType;

    move-result-object v8

    .line 199
    invoke-virtual {p0}, Lexpo/modules/ui/ShapeProps;->getVerticesCount()I

    move-result v4

    .line 192
    new-instance v1, Lexpo/modules/ui/ShapeRecord;

    invoke-direct/range {v1 .. v8}, Lexpo/modules/ui/ShapeRecord;-><init>(FFIFFLexpo/modules/ui/CornerRadii;Lexpo/modules/ui/ShapeType;)V

    .line 201
    invoke-virtual {p1}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    .line 202
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/unit/Density;

    .line 191
    invoke-static {v1, v2, v3, v0}, Lexpo/modules/ui/ShapeViewKt;->pathFromShapeRecord-12SF9DM(Lexpo/modules/ui/ShapeRecord;JLandroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    .line 205
    new-instance v1, Lexpo/modules/ui/ShapeViewKt$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p0}, Lexpo/modules/ui/ShapeViewKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/graphics/Path;Lexpo/modules/ui/ShapeProps;)V

    invoke-virtual {p1, v1}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawBehind(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object p0

    return-object p0
.end method

.method private static final ShapeContent$lambda$5$lambda$4$lambda$3(Landroidx/compose/ui/graphics/Path;Lexpo/modules/ui/ShapeProps;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lkotlin/Unit;
    .locals 12

    const-string v0, "$this$onDrawBehind"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1}, Lexpo/modules/ui/ShapeProps;->getColor()Landroid/graphics/Color;

    move-result-object p1

    invoke-static {p1}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Color$Companion;->getTransparent-0d7_KjU()J

    move-result-wide v0

    :goto_0
    move-wide v4, v0

    const/16 v10, 0x3c

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v2, p2

    invoke-static/range {v2 .. v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-LG529CI$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 207
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final ShapeContent$lambda$6(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/ShapeProps;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p2

    invoke-static {p0, p1, p3, p2}, Lexpo/modules/ui/ShapeViewKt;->ShapeContent(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/ShapeProps;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final centerX-uvyYCjk(J)F
    .locals 1

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    .line 215
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    const/4 p1, 0x2

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method

.method private static final centerY-uvyYCjk(J)F
    .locals 2

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    .line 218
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    const/4 p1, 0x2

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method

.method private static final createCirclePath-Pq9zytI(JFI)Landroidx/compose/ui/graphics/Path;
    .locals 3

    .line 111
    sget-object v0, Landroidx/graphics/shapes/RoundedPolygon;->Companion:Landroidx/graphics/shapes/RoundedPolygon$Companion;

    .line 112
    invoke-static {p0, p1}, Lexpo/modules/ui/ShapeViewKt;->centerX-uvyYCjk(J)F

    move-result v1

    .line 113
    invoke-static {p0, p1}, Lexpo/modules/ui/ShapeViewKt;->centerY-uvyYCjk(J)F

    move-result v2

    .line 114
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->getMinDimension-impl(J)F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr p0, p1

    const p1, 0x3b03126f    # 0.002f

    invoke-static {p2, p1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p1

    mul-float/2addr p0, p1

    const/4 p1, 0x3

    .line 115
    invoke-static {p3, p1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    .line 111
    invoke-static {v0, p1, p0, v1, v2}, Landroidx/graphics/shapes/ShapesKt;->circle(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFF)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 116
    invoke-static {p0, p1, p2, p1}, Landroidx/graphics/shapes/Shapes_androidKt;->toPath$default(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/Path;ILjava/lang/Object;)Landroid/graphics/Path;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->asComposePath(Landroid/graphics/Path;)Landroidx/compose/ui/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method private static final createPillPath-TmRCtEA(JF)Landroidx/compose/ui/graphics/Path;
    .locals 6

    .line 90
    sget-object v0, Landroidx/graphics/shapes/RoundedPolygon;->Companion:Landroidx/graphics/shapes/RoundedPolygon$Companion;

    .line 91
    invoke-static {p0, p1}, Lexpo/modules/ui/ShapeViewKt;->centerX-uvyYCjk(J)F

    move-result v4

    .line 92
    invoke-static {p0, p1}, Lexpo/modules/ui/ShapeViewKt;->centerY-uvyYCjk(J)F

    move-result v5

    const/16 v1, 0x20

    shr-long v1, p0, v1

    long-to-int v1, v1

    .line 227
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    long-to-int p0, p0

    .line 230
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    move v3, p2

    .line 90
    invoke-static/range {v0 .. v5}, Landroidx/graphics/shapes/ShapesKt;->pill(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFFFF)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 96
    invoke-static {p0, p1, p2, p1}, Landroidx/graphics/shapes/Shapes_androidKt;->toPath$default(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/Path;ILjava/lang/Object;)Landroid/graphics/Path;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->asComposePath(Landroid/graphics/Path;)Landroidx/compose/ui/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method private static final createPillStarPath-_93gMUo(JFFFI)Landroidx/compose/ui/graphics/Path;
    .locals 14

    .line 77
    new-instance v5, Landroidx/graphics/shapes/CornerRounding;

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->getMinDimension-impl(J)F

    move-result v0

    mul-float v0, v0, p2

    move/from16 v1, p3

    invoke-direct {v5, v0, v1}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 78
    sget-object v0, Landroidx/graphics/shapes/RoundedPolygon;->Companion:Landroidx/graphics/shapes/RoundedPolygon$Companion;

    const/16 v1, 0x20

    shr-long v1, p0, v1

    long-to-int v1, v1

    .line 221
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const-wide v3, 0xffffffffL

    and-long/2addr v3, p0

    long-to-int v3, v3

    .line 224
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    div-float v2, v3, v2

    const v3, 0x3f7fbe77    # 0.999f

    move/from16 v4, p4

    .line 82
    invoke-static {v4, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v3

    const v4, 0x3a83126f    # 0.001f

    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v4

    .line 83
    invoke-static {p0, p1}, Lexpo/modules/ui/ShapeViewKt;->centerX-uvyYCjk(J)F

    move-result v10

    .line 84
    invoke-static {p0, p1}, Lexpo/modules/ui/ShapeViewKt;->centerY-uvyYCjk(J)F

    move-result v11

    const/16 v12, 0x1e0

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v3, p5

    .line 78
    invoke-static/range {v0 .. v13}, Landroidx/graphics/shapes/ShapesKt;->pillStar$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFIFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFFFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 86
    invoke-static {p0, p1, v0, p1}, Landroidx/graphics/shapes/Shapes_androidKt;->toPath$default(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/Path;ILjava/lang/Object;)Landroid/graphics/Path;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->asComposePath(Landroid/graphics/Path;)Landroidx/compose/ui/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method private static final createPolygonPath-Cqks5Fs(JFFI)Landroidx/compose/ui/graphics/Path;
    .locals 8

    .line 100
    new-instance v4, Landroidx/graphics/shapes/CornerRounding;

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->getMinDimension-impl(J)F

    move-result v0

    mul-float/2addr v0, p2

    invoke-direct {v4, v0, p3}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    const/4 p2, 0x3

    .line 102
    invoke-static {p4, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 103
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->getMinDimension-impl(J)F

    move-result p2

    const/4 p3, 0x2

    int-to-float p3, p3

    div-float v1, p2, p3

    .line 104
    invoke-static {p0, p1}, Lexpo/modules/ui/ShapeViewKt;->centerX-uvyYCjk(J)F

    move-result v2

    .line 105
    invoke-static {p0, p1}, Lexpo/modules/ui/ShapeViewKt;->centerY-uvyYCjk(J)F

    move-result v3

    const/16 v6, 0x20

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 101
    invoke-static/range {v0 .. v7}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon$default(IFFFLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;ILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 107
    invoke-static {p0, p1, p2, p1}, Landroidx/graphics/shapes/Shapes_androidKt;->toPath$default(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/Path;ILjava/lang/Object;)Landroid/graphics/Path;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->asComposePath(Landroid/graphics/Path;)Landroidx/compose/ui/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method private static final createRectanglePath-Pq9zytI(JFF)Landroidx/compose/ui/graphics/Path;
    .locals 9

    .line 120
    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->getMinDimension-impl(J)F

    move-result v0

    mul-float/2addr v0, p2

    invoke-direct {v3, v0, p3}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 121
    sget-object v0, Landroidx/graphics/shapes/RoundedPolygon;->Companion:Landroidx/graphics/shapes/RoundedPolygon$Companion;

    .line 122
    invoke-static {p0, p1}, Lexpo/modules/ui/ShapeViewKt;->centerX-uvyYCjk(J)F

    move-result v5

    .line 123
    invoke-static {p0, p1}, Lexpo/modules/ui/ShapeViewKt;->centerY-uvyYCjk(J)F

    move-result v6

    const/16 p2, 0x20

    shr-long p2, p0, p2

    long-to-int p2, p2

    .line 233
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    const-wide p2, 0xffffffffL

    and-long/2addr p0, p2

    long-to-int p0, p0

    .line 236
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 121
    invoke-static/range {v0 .. v8}, Landroidx/graphics/shapes/ShapesKt;->rectangle$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 127
    invoke-static {p0, p1, p2, p1}, Landroidx/graphics/shapes/Shapes_androidKt;->toPath$default(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/Path;ILjava/lang/Object;)Landroid/graphics/Path;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->asComposePath(Landroid/graphics/Path;)Landroidx/compose/ui/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method private static final createRoundedCornerPath-Pq9zytI(JLexpo/modules/ui/CornerRadii;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Path;
    .locals 7

    if-nez p2, :cond_0

    .line 131
    new-instance v0, Lexpo/modules/ui/CornerRadii;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lexpo/modules/ui/CornerRadii;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p2, v0

    .line 133
    :cond_0
    invoke-virtual {p2}, Lexpo/modules/ui/CornerRadii;->getTopStart()F

    move-result v0

    .line 237
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 134
    invoke-virtual {p2}, Lexpo/modules/ui/CornerRadii;->getTopEnd()F

    move-result v1

    .line 238
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 135
    invoke-virtual {p2}, Lexpo/modules/ui/CornerRadii;->getBottomStart()F

    move-result v2

    .line 239
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 136
    invoke-virtual {p2}, Lexpo/modules/ui/CornerRadii;->getBottomEnd()F

    move-result p2

    .line 240
    invoke-static {p2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p2

    .line 132
    invoke-static {v0, v1, p2, v2}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-a9UjIt4(FFFF)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object p2

    .line 138
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-virtual {p2, p0, p1, v0, p3}, Landroidx/compose/foundation/shape/RoundedCornerShape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;

    move-result-object p0

    .line 139
    instance-of p1, p0, Landroidx/compose/ui/graphics/Outline$Rectangle;

    const/4 p2, 0x2

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object p1

    check-cast p0, Landroidx/compose/ui/graphics/Outline$Rectangle;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Outline$Rectangle;->getRect()Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    invoke-static {p1, p0, p3, p2, p3}, Landroidx/compose/ui/graphics/Path;->addRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Path$Direction;ILjava/lang/Object;)V

    return-object p1

    .line 140
    :cond_1
    instance-of p1, p0, Landroidx/compose/ui/graphics/Outline$Rounded;

    if-eqz p1, :cond_2

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object p1

    check-cast p0, Landroidx/compose/ui/graphics/Outline$Rounded;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Outline$Rounded;->getRoundRect()Landroidx/compose/ui/geometry/RoundRect;

    move-result-object p0

    invoke-static {p1, p0, p3, p2, p3}, Landroidx/compose/ui/graphics/Path;->addRoundRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;Landroidx/compose/ui/graphics/Path$Direction;ILjava/lang/Object;)V

    return-object p1

    .line 141
    :cond_2
    instance-of p1, p0, Landroidx/compose/ui/graphics/Outline$Generic;

    if-eqz p1, :cond_3

    check-cast p0, Landroidx/compose/ui/graphics/Outline$Generic;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Outline$Generic;->getPath()Landroidx/compose/ui/graphics/Path;

    move-result-object p0

    return-object p0

    .line 138
    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private static final createStarPath-LjSzlW0(JFFFFI)Landroidx/compose/ui/graphics/Path;
    .locals 11

    move/from16 v0, p5

    .line 65
    new-instance v4, Landroidx/graphics/shapes/CornerRounding;

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->getMinDimension-impl(J)F

    move-result v1

    mul-float/2addr v1, p2

    invoke-direct {v4, v1, p3}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 66
    sget-object p2, Landroidx/graphics/shapes/RoundedPolygon;->Companion:Landroidx/graphics/shapes/RoundedPolygon$Companion;

    .line 68
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->getMinDimension-impl(J)F

    move-result p3

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p3, v1

    const v2, 0x3a83126f    # 0.001f

    sub-float v3, v0, v2

    invoke-static {p4, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p4

    invoke-static {p4, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p4

    mul-float v3, p3, p4

    .line 69
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->getMinDimension-impl(J)F

    move-result p3

    mul-float/2addr p3, v1

    const p4, 0x3b03126f    # 0.002f

    invoke-static {v0, p4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p4

    mul-float v2, p3, p4

    .line 70
    invoke-static {p0, p1}, Lexpo/modules/ui/ShapeViewKt;->centerX-uvyYCjk(J)F

    move-result v7

    .line 71
    invoke-static {p0, p1}, Lexpo/modules/ui/ShapeViewKt;->centerY-uvyYCjk(J)F

    move-result v8

    const/16 v9, 0x30

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    move/from16 v1, p6

    .line 66
    invoke-static/range {v0 .. v10}, Landroidx/graphics/shapes/ShapesKt;->star$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 73
    invoke-static {p0, p1, p2, p1}, Landroidx/graphics/shapes/Shapes_androidKt;->toPath$default(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/Path;ILjava/lang/Object;)Landroid/graphics/Path;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->asComposePath(Landroid/graphics/Path;)Landroidx/compose/ui/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final pathFromShapeRecord-12SF9DM(Lexpo/modules/ui/ShapeRecord;JLandroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Path;
    .locals 7

    const-string v0, "record"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "density"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 164
    invoke-virtual {p0}, Lexpo/modules/ui/ShapeRecord;->getType()Lexpo/modules/ui/ShapeType;

    move-result-object v0

    sget-object v1, Lexpo/modules/ui/ShapeViewKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lexpo/modules/ui/ShapeType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    goto/16 :goto_1

    .line 171
    :pswitch_0
    invoke-virtual {p0}, Lexpo/modules/ui/ShapeRecord;->getCornerRadii()Lexpo/modules/ui/CornerRadii;

    move-result-object p0

    invoke-static {p1, p2, p0, p3}, Lexpo/modules/ui/ShapeViewKt;->createRoundedCornerPath-Pq9zytI(JLexpo/modules/ui/CornerRadii;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Path;

    move-result-object p0

    goto :goto_0

    .line 170
    :pswitch_1
    invoke-virtual {p0}, Lexpo/modules/ui/ShapeRecord;->getCornerRounding()F

    move-result p3

    invoke-virtual {p0}, Lexpo/modules/ui/ShapeRecord;->getSmoothing()F

    move-result v0

    invoke-virtual {p0}, Lexpo/modules/ui/ShapeRecord;->getVerticesCount()I

    move-result p0

    invoke-static {p1, p2, p3, v0, p0}, Lexpo/modules/ui/ShapeViewKt;->createPolygonPath-Cqks5Fs(JFFI)Landroidx/compose/ui/graphics/Path;

    move-result-object p0

    goto :goto_0

    .line 169
    :pswitch_2
    invoke-virtual {p0}, Lexpo/modules/ui/ShapeRecord;->getCornerRounding()F

    move-result p3

    invoke-virtual {p0}, Lexpo/modules/ui/ShapeRecord;->getSmoothing()F

    move-result p0

    invoke-static {p1, p2, p3, p0}, Lexpo/modules/ui/ShapeViewKt;->createRectanglePath-Pq9zytI(JFF)Landroidx/compose/ui/graphics/Path;

    move-result-object p0

    goto :goto_0

    .line 168
    :pswitch_3
    invoke-virtual {p0}, Lexpo/modules/ui/ShapeRecord;->getRadius()F

    move-result p3

    invoke-virtual {p0}, Lexpo/modules/ui/ShapeRecord;->getVerticesCount()I

    move-result p0

    invoke-static {p1, p2, p3, p0}, Lexpo/modules/ui/ShapeViewKt;->createCirclePath-Pq9zytI(JFI)Landroidx/compose/ui/graphics/Path;

    move-result-object p0

    goto :goto_0

    .line 167
    :pswitch_4
    invoke-virtual {p0}, Lexpo/modules/ui/ShapeRecord;->getSmoothing()F

    move-result p0

    invoke-static {p1, p2, p0}, Lexpo/modules/ui/ShapeViewKt;->createPillPath-TmRCtEA(JF)Landroidx/compose/ui/graphics/Path;

    move-result-object p0

    goto :goto_0

    .line 166
    :pswitch_5
    invoke-virtual {p0}, Lexpo/modules/ui/ShapeRecord;->getCornerRounding()F

    move-result v2

    invoke-virtual {p0}, Lexpo/modules/ui/ShapeRecord;->getSmoothing()F

    move-result v3

    invoke-virtual {p0}, Lexpo/modules/ui/ShapeRecord;->getInnerRadius()F

    move-result v4

    invoke-virtual {p0}, Lexpo/modules/ui/ShapeRecord;->getVerticesCount()I

    move-result v5

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lexpo/modules/ui/ShapeViewKt;->createPillStarPath-_93gMUo(JFFFI)Landroidx/compose/ui/graphics/Path;

    move-result-object p0

    goto :goto_0

    :pswitch_6
    move-wide v0, p1

    .line 165
    invoke-virtual {p0}, Lexpo/modules/ui/ShapeRecord;->getCornerRounding()F

    move-result v2

    invoke-virtual {p0}, Lexpo/modules/ui/ShapeRecord;->getSmoothing()F

    move-result v3

    invoke-virtual {p0}, Lexpo/modules/ui/ShapeRecord;->getInnerRadius()F

    move-result v4

    invoke-virtual {p0}, Lexpo/modules/ui/ShapeRecord;->getRadius()F

    move-result v5

    invoke-virtual {p0}, Lexpo/modules/ui/ShapeRecord;->getVerticesCount()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lexpo/modules/ui/ShapeViewKt;->createStarPath-LjSzlW0(JFFFFI)Landroidx/compose/ui/graphics/Path;

    move-result-object p0

    .line 163
    :goto_0
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    .line 164
    :goto_1
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 163
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 173
    :goto_2
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Landroidx/compose/ui/graphics/Path;

    if-nez p0, :cond_1

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object p0

    :cond_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final shapeFromShapeRecord(Lexpo/modules/ui/ShapeRecord;)Landroidx/compose/ui/graphics/Shape;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 178
    :cond_0
    new-instance v0, Lexpo/modules/ui/ShapeViewKt$shapeFromShapeRecord$1;

    invoke-direct {v0, p0}, Lexpo/modules/ui/ShapeViewKt$shapeFromShapeRecord$1;-><init>(Lexpo/modules/ui/ShapeRecord;)V

    check-cast v0, Landroidx/compose/ui/graphics/Shape;

    return-object v0
.end method
