.class public final Lexpo/modules/ui/TextViewKt;
.super Ljava/lang/Object;
.source "TextView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextView.kt\nexpo/modules/ui/TextViewKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 AnnotatedString.kt\nandroidx/compose/ui/text/AnnotatedStringKt\n*L\n1#1,328:1\n1#2:329\n1398#3,6:330\n1398#3,6:336\n1580#3:342\n*S KotlinDebug\n*F\n+ 1 TextView.kt\nexpo/modules/ui/TextViewKt\n*L\n273#1:330,6\n277#1:336,6\n310#1:342\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001a\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005\u001a$\u0010\u0006\u001a\u00020\u0007*\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0002\u001a\u0019\u0010\u000c\u001a\u00020\u0007*\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007\u00a2\u0006\u0002\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "resolveFontFamily",
        "Landroidx/compose/ui/text/font/FontFamily;",
        "name",
        "",
        "context",
        "Landroid/content/Context;",
        "appendSpans",
        "",
        "Landroidx/compose/ui/text/AnnotatedString$Builder;",
        "spans",
        "",
        "Lexpo/modules/ui/TextSpanRecord;",
        "TextContent",
        "Lexpo/modules/kotlin/views/FunctionalComposableScope;",
        "props",
        "Lexpo/modules/ui/TextProps;",
        "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/TextProps;Landroidx/compose/runtime/Composer;I)V",
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
.method public static synthetic $r8$lambda$HGhd5EOiaB91Vw0LZLldA-US-og(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/TextProps;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lexpo/modules/ui/TextViewKt;->TextContent$lambda$5(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/TextProps;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final TextContent(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/TextProps;Landroidx/compose/runtime/Composer;I)V
    .locals 46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "props"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, -0x7d8bf962

    move-object/from16 v4, p2

    .line 285
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    const-string v4, "C(TextContent)305@10156L83,316@10451L335:TextView.kt#v15e7d"

    invoke-static {v9, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v4, v2, 0x6

    const/4 v11, 0x2

    if-nez v4, :cond_2

    and-int/lit8 v4, v2, 0x8

    if-nez v4, :cond_0

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    :cond_0
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    :goto_0
    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_1

    :cond_1
    move v4, v11

    :goto_1
    or-int/2addr v4, v2

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    and-int/lit8 v5, v2, 0x30

    if-nez v5, :cond_4

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x20

    goto :goto_3

    :cond_3
    const/16 v5, 0x10

    :goto_3
    or-int/2addr v4, v5

    :cond_4
    and-int/lit8 v5, v4, 0x13

    const/16 v6, 0x12

    if-ne v5, v6, :cond_6

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_4

    .line 317
    :cond_5
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_14

    .line 285
    :cond_6
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, -0x1

    const-string v6, "expo.modules.ui.TextContent (TextView.kt:284)"

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 287
    :cond_7
    invoke-virtual {v1}, Lexpo/modules/ui/TextProps;->getTypography()Lexpo/modules/ui/TypographyStyle;

    move-result-object v3

    const v4, -0x4a731295    # -1.049991E-6f

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v4, "286@9102L13"

    invoke-static {v9, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-nez v3, :cond_8

    move-object v3, v13

    goto :goto_5

    :cond_8
    invoke-virtual {v3, v9, v12}, Lexpo/modules/ui/TypographyStyle;->toTextStyle(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v3

    :goto_5
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    if-nez v3, :cond_9

    sget-object v3, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v3

    .line 292
    :cond_9
    invoke-virtual {v1}, Lexpo/modules/ui/TextProps;->getColor()Landroid/graphics/Color;

    move-result-object v4

    invoke-static {v4}, Lexpo/modules/ui/UtilsKt;->colorToComposeColor(Landroid/graphics/Color;)J

    move-result-wide v15

    .line 293
    invoke-virtual {v1}, Lexpo/modules/ui/TextProps;->getFontSize()Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(F)J

    move-result-wide v4

    goto :goto_6

    :cond_a
    sget-object v4, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v4

    :goto_6
    move-wide/from16 v17, v4

    .line 294
    invoke-virtual {v1}, Lexpo/modules/ui/TextProps;->getFontWeight()Lexpo/modules/ui/TextFontWeight;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lexpo/modules/ui/TextFontWeight;->toComposeFontWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v4

    move-object/from16 v19, v4

    goto :goto_7

    :cond_b
    move-object/from16 v19, v13

    .line 295
    :goto_7
    invoke-virtual {v1}, Lexpo/modules/ui/TextProps;->getFontStyle()Lexpo/modules/ui/TextFontStyle;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lexpo/modules/ui/TextFontStyle;->toComposeFontStyle-_-LCdwA()I

    move-result v4

    invoke-static {v4}, Landroidx/compose/ui/text/font/FontStyle;->box-impl(I)Landroidx/compose/ui/text/font/FontStyle;

    move-result-object v4

    move-object/from16 v20, v4

    goto :goto_8

    :cond_c
    move-object/from16 v20, v13

    .line 296
    :goto_8
    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v4

    invoke-virtual {v4}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v1}, Lexpo/modules/ui/TextProps;->getFontFamily()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lexpo/modules/ui/TextViewKt;->resolveFontFamily(Ljava/lang/String;Landroid/content/Context;)Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v4

    move-object/from16 v22, v4

    goto :goto_9

    :cond_d
    move-object/from16 v22, v13

    .line 297
    :goto_9
    invoke-virtual {v1}, Lexpo/modules/ui/TextProps;->getTextDecoration()Lexpo/modules/ui/TextDecorationType;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lexpo/modules/ui/TextDecorationType;->toComposeTextDecoration()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v4

    move-object/from16 v31, v4

    goto :goto_a

    :cond_e
    move-object/from16 v31, v13

    .line 298
    :goto_a
    invoke-virtual {v1}, Lexpo/modules/ui/TextProps;->getLetterSpacing()Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(F)J

    move-result-wide v4

    goto :goto_b

    :cond_f
    sget-object v4, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v4

    :goto_b
    move-wide/from16 v24, v4

    .line 299
    invoke-virtual {v1}, Lexpo/modules/ui/TextProps;->getLineHeight()Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(F)J

    move-result-wide v4

    goto :goto_c

    :cond_10
    sget-object v4, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v4

    :goto_c
    move-wide/from16 v36, v4

    .line 300
    invoke-virtual {v1}, Lexpo/modules/ui/TextProps;->getLineBreak()Lexpo/modules/ui/TextLineBreakType;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Lexpo/modules/ui/TextLineBreakType;->toComposeLineBreak-rAG3T2k()I

    move-result v4

    goto :goto_d

    :cond_11
    sget-object v4, Landroidx/compose/ui/text/style/LineBreak;->Companion:Landroidx/compose/ui/text/style/LineBreak$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/text/style/LineBreak$Companion;->getUnspecified-rAG3T2k()I

    move-result v4

    :goto_d
    move/from16 v41, v4

    .line 301
    invoke-virtual {v1}, Lexpo/modules/ui/TextProps;->getBackground()Landroid/graphics/Color;

    move-result-object v4

    invoke-static {v4}, Lexpo/modules/ui/UtilsKt;->colorToComposeColorOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v4

    goto :goto_e

    :cond_12
    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v4

    :goto_e
    move-wide/from16 v29, v4

    .line 302
    invoke-virtual {v1}, Lexpo/modules/ui/TextProps;->getShadow()Lexpo/modules/ui/TextShadowRecord;

    move-result-object v4

    if-eqz v4, :cond_13

    invoke-virtual {v4}, Lexpo/modules/ui/TextShadowRecord;->toComposeShadow()Landroidx/compose/ui/graphics/Shadow;

    move-result-object v4

    move-object/from16 v32, v4

    goto :goto_f

    :cond_13
    move-object/from16 v32, v13

    .line 291
    :goto_f
    new-instance v14, Landroidx/compose/ui/text/TextStyle;

    const v44, 0xddc750

    const/16 v45, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    invoke-direct/range {v14 .. v45}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 290
    invoke-virtual {v3, v14}, Landroidx/compose/ui/text/TextStyle;->merge(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v26

    .line 306
    sget-object v4, Lexpo/modules/ui/ModifierRegistry;->INSTANCE:Lexpo/modules/ui/ModifierRegistry;

    invoke-virtual {v1}, Lexpo/modules/ui/TextProps;->getModifiers()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v6

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getComposableScope()Lexpo/modules/kotlin/views/ComposableScope;

    move-result-object v7

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getGlobalEventDispatcher()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    sget v3, Lexpo/modules/kotlin/AppContext;->$stable:I

    shl-int/lit8 v3, v3, 0x3

    sget v10, Lexpo/modules/kotlin/views/ComposableScope;->$stable:I

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v10, v3

    invoke-virtual/range {v4 .. v10}, Lexpo/modules/ui/ModifierRegistry;->applyModifiers(Ljava/util/List;Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/views/ComposableScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 308
    invoke-virtual {v1}, Lexpo/modules/ui/TextProps;->getSpans()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_14

    .line 309
    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v3

    invoke-virtual {v3}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v3

    .line 342
    new-instance v6, Landroidx/compose/ui/text/AnnotatedString$Builder;

    invoke-direct {v6, v12, v4, v13}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 311
    invoke-virtual {v1}, Lexpo/modules/ui/TextProps;->getSpans()Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7, v3}, Lexpo/modules/ui/TextViewKt;->appendSpans(Landroidx/compose/ui/text/AnnotatedString$Builder;Ljava/util/List;Landroid/content/Context;)V

    .line 342
    invoke-virtual {v6}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v3

    goto :goto_10

    .line 314
    :cond_14
    new-instance v3, Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {v1}, Lexpo/modules/ui/TextProps;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v13, v11, v13}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 320
    :goto_10
    invoke-virtual {v1}, Lexpo/modules/ui/TextProps;->getTextAlign()Lexpo/modules/ui/TextAlignType;

    move-result-object v6

    if-eqz v6, :cond_15

    invoke-virtual {v6}, Lexpo/modules/ui/TextAlignType;->toComposeTextAlign-e0LSkKk()I

    move-result v6

    invoke-static {v6}, Landroidx/compose/ui/text/style/TextAlign;->box-impl(I)Landroidx/compose/ui/text/style/TextAlign;

    move-result-object v13

    :cond_15
    move-object/from16 v17, v13

    .line 321
    invoke-virtual {v1}, Lexpo/modules/ui/TextProps;->getOverflow()Lexpo/modules/ui/TextOverflowType;

    move-result-object v6

    if-eqz v6, :cond_16

    invoke-virtual {v6}, Lexpo/modules/ui/TextOverflowType;->toComposeTextOverflow-gIe3tQ8()I

    move-result v6

    goto :goto_11

    :cond_16
    sget-object v6, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v6

    :goto_11
    move/from16 v20, v6

    .line 322
    invoke-virtual {v1}, Lexpo/modules/ui/TextProps;->getSoftWrap()Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v6, :cond_17

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move/from16 v21, v6

    goto :goto_12

    :cond_17
    move/from16 v21, v4

    .line 323
    :goto_12
    invoke-virtual {v1}, Lexpo/modules/ui/TextProps;->getMaxLines()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_18

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_13

    :cond_18
    const v6, 0x7fffffff

    :goto_13
    move/from16 v22, v6

    .line 324
    invoke-virtual {v1}, Lexpo/modules/ui/TextProps;->getMinLines()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_19

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_19
    move/from16 v23, v4

    const/16 v29, 0x0

    const v30, 0x30bfc

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v27, v9

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    move-object v4, v3

    .line 317
    invoke-static/range {v4 .. v30}, Landroidx/compose/material3/TextKt;->Text-Z58ophY(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/TextAutoSize;JLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v9, v27

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1a
    :goto_14
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v3

    if-eqz v3, :cond_1b

    new-instance v4, Lexpo/modules/ui/TextViewKt$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v1, v2}, Lexpo/modules/ui/TextViewKt$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/TextProps;I)V

    invoke-interface {v3, v4}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_1b
    return-void
.end method

.method private static final TextContent$lambda$5(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/TextProps;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p2

    invoke-static {p0, p1, p3, p2}, Lexpo/modules/ui/TextViewKt;->TextContent(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/TextProps;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final appendSpans(Landroidx/compose/ui/text/AnnotatedString$Builder;Ljava/util/List;Landroid/content/Context;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/AnnotatedString$Builder;",
            "Ljava/util/List<",
            "Lexpo/modules/ui/TextSpanRecord;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 260
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lexpo/modules/ui/TextSpanRecord;

    .line 262
    invoke-virtual {v3}, Lexpo/modules/ui/TextSpanRecord;->getColor()Landroid/graphics/Color;

    move-result-object v4

    invoke-static {v4}, Lexpo/modules/ui/UtilsKt;->colorToComposeColorOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v4

    goto :goto_1

    :cond_0
    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v4

    :goto_1
    move-wide v7, v4

    .line 263
    invoke-virtual {v3}, Lexpo/modules/ui/TextSpanRecord;->getFontSize()Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(F)J

    move-result-wide v4

    goto :goto_2

    :cond_1
    sget-object v4, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v4

    :goto_2
    move-wide v9, v4

    .line 264
    invoke-virtual {v3}, Lexpo/modules/ui/TextSpanRecord;->getFontWeight()Lexpo/modules/ui/TextFontWeight;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lexpo/modules/ui/TextFontWeight;->toComposeFontWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v4

    move-object v11, v4

    goto :goto_3

    :cond_2
    move-object v11, v5

    .line 265
    :goto_3
    invoke-virtual {v3}, Lexpo/modules/ui/TextSpanRecord;->getFontStyle()Lexpo/modules/ui/TextFontStyle;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lexpo/modules/ui/TextFontStyle;->toComposeFontStyle-_-LCdwA()I

    move-result v4

    invoke-static {v4}, Landroidx/compose/ui/text/font/FontStyle;->box-impl(I)Landroidx/compose/ui/text/font/FontStyle;

    move-result-object v4

    move-object v12, v4

    goto :goto_4

    :cond_3
    move-object v12, v5

    :goto_4
    if-eqz v0, :cond_4

    .line 266
    invoke-virtual {v3}, Lexpo/modules/ui/TextSpanRecord;->getFontFamily()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lexpo/modules/ui/TextViewKt;->resolveFontFamily(Ljava/lang/String;Landroid/content/Context;)Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v4

    move-object v14, v4

    goto :goto_5

    :cond_4
    move-object v14, v5

    .line 267
    :goto_5
    invoke-virtual {v3}, Lexpo/modules/ui/TextSpanRecord;->getTextDecoration()Lexpo/modules/ui/TextDecorationType;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lexpo/modules/ui/TextDecorationType;->toComposeTextDecoration()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v4

    move-object/from16 v23, v4

    goto :goto_6

    :cond_5
    move-object/from16 v23, v5

    .line 268
    :goto_6
    invoke-virtual {v3}, Lexpo/modules/ui/TextSpanRecord;->getLetterSpacing()Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(F)J

    move-result-wide v15

    goto :goto_7

    :cond_6
    sget-object v4, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v15

    :goto_7
    move-wide/from16 v16, v15

    .line 269
    invoke-virtual {v3}, Lexpo/modules/ui/TextSpanRecord;->getBackground()Landroid/graphics/Color;

    move-result-object v4

    invoke-static {v4}, Lexpo/modules/ui/UtilsKt;->colorToComposeColorOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v18

    goto :goto_8

    :cond_7
    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v18

    :goto_8
    move-wide/from16 v21, v18

    .line 270
    invoke-virtual {v3}, Lexpo/modules/ui/TextSpanRecord;->getShadow()Lexpo/modules/ui/TextShadowRecord;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lexpo/modules/ui/TextShadowRecord;->toComposeShadow()Landroidx/compose/ui/graphics/Shadow;

    move-result-object v5

    :cond_8
    move-object/from16 v24, v5

    .line 261
    new-instance v6, Landroidx/compose/ui/text/SpanStyle;

    const v27, 0xc750

    const/16 v28, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v6 .. v28}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 272
    invoke-virtual {v3}, Lexpo/modules/ui/TextSpanRecord;->getChildren()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 330
    invoke-virtual {v1, v6}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pushStyle(Landroidx/compose/ui/text/SpanStyle;)I

    move-result v4

    .line 274
    :try_start_0
    invoke-virtual {v3}, Lexpo/modules/ui/TextSpanRecord;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lexpo/modules/ui/TextViewKt;->appendSpans(Landroidx/compose/ui/text/AnnotatedString$Builder;Ljava/util/List;Landroid/content/Context;)V

    .line 275
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    invoke-virtual {v1, v4}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v4}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    throw v0

    .line 336
    :cond_9
    invoke-virtual {v1, v6}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pushStyle(Landroidx/compose/ui/text/SpanStyle;)I

    move-result v4

    .line 278
    :try_start_1
    invoke-virtual {v3}, Lexpo/modules/ui/TextSpanRecord;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V

    .line 279
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 340
    invoke-virtual {v1, v4}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v4}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    throw v0

    :cond_a
    return-void
.end method

.method public static final resolveFontFamily(Ljava/lang/String;Landroid/content/Context;)Landroidx/compose/ui/text/font/FontFamily;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 136
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "sansSerif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 138
    :cond_1
    sget-object p0, Landroidx/compose/ui/text/font/FontFamily;->Companion:Landroidx/compose/ui/text/font/FontFamily$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontFamily$Companion;->getSansSerif()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/font/FontFamily;

    return-object p0

    .line 136
    :sswitch_1
    const-string v0, "default"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 137
    :cond_2
    sget-object p0, Landroidx/compose/ui/text/font/FontFamily;->Companion:Landroidx/compose/ui/text/font/FontFamily$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontFamily$Companion;->getDefault()Landroidx/compose/ui/text/font/SystemFontFamily;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/font/FontFamily;

    return-object p0

    .line 136
    :sswitch_2
    const-string v0, "cursive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 141
    :cond_3
    sget-object p0, Landroidx/compose/ui/text/font/FontFamily;->Companion:Landroidx/compose/ui/text/font/FontFamily$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontFamily$Companion;->getCursive()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/font/FontFamily;

    return-object p0

    .line 136
    :sswitch_3
    const-string v0, "serif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 139
    :cond_4
    sget-object p0, Landroidx/compose/ui/text/font/FontFamily;->Companion:Landroidx/compose/ui/text/font/FontFamily$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontFamily$Companion;->getSerif()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/font/FontFamily;

    return-object p0

    .line 136
    :sswitch_4
    const-string v0, "monospace"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 140
    :cond_5
    sget-object p0, Landroidx/compose/ui/text/font/FontFamily;->Companion:Landroidx/compose/ui/text/font/FontFamily$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontFamily$Companion;->getMonospace()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/font/FontFamily;

    return-object p0

    .line 143
    :goto_0
    sget-object v0, Lcom/facebook/react/common/assets/ReactFontManager;->Companion:Lcom/facebook/react/common/assets/ReactFontManager$Companion;

    invoke-virtual {v0}, Lcom/facebook/react/common/assets/ReactFontManager$Companion;->getInstance()Lcom/facebook/react/common/assets/ReactFontManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/facebook/react/common/assets/ReactFontManager;->getTypeface(Ljava/lang/String;ILandroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object p0

    .line 144
    invoke-static {p0}, Landroidx/compose/ui/text/font/AndroidTypeface_androidKt;->FontFamily(Landroid/graphics/Typeface;)Landroidx/compose/ui/text/font/FontFamily;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5559f3fd -> :sswitch_4
        0x684317d -> :sswitch_3
        0x432c41c5 -> :sswitch_2
        0x5c13d641 -> :sswitch_1
        0x7afbe4aa -> :sswitch_0
    .end sparse-switch
.end method
