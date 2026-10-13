.class public final Landroidx/compose/material3/TypographyKt;
.super Ljava/lang/Object;
.source "Typography.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/TypographyKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\"\u0018\u0010\u0003\u001a\u00020\u0001*\u00020\u00048AX\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\"\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "fromToken",
        "Landroidx/compose/ui/text/TextStyle;",
        "Landroidx/compose/material3/Typography;",
        "value",
        "Landroidx/compose/material3/tokens/TypographyKeyTokens;",
        "getValue",
        "(Landroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/text/TextStyle;",
        "LocalTypography",
        "Landroidx/compose/runtime/ProvidableCompositionLocal;",
        "getLocalTypography",
        "()Landroidx/compose/runtime/ProvidableCompositionLocal;",
        "material3"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final LocalTypography:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/material3/Typography;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$8mpOFH9czLLBXUsu4Dr4skTts1k()Landroidx/compose/material3/Typography;
    .locals 1

    invoke-static {}, Landroidx/compose/material3/TypographyKt;->LocalTypography$lambda$0()Landroidx/compose/material3/Typography;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 559
    new-instance v0, Landroidx/compose/material3/TypographyKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/compose/material3/TypographyKt$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-void
.end method

.method private static final LocalTypography$lambda$0()Landroidx/compose/material3/Typography;
    .locals 18

    .line 559
    new-instance v0, Landroidx/compose/material3/Typography;

    const/16 v16, 0x7fff

    const/16 v17, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v0 .. v17}, Landroidx/compose/material3/Typography;-><init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final fromToken(Landroidx/compose/material3/Typography;Landroidx/compose/material3/tokens/TypographyKeyTokens;)Landroidx/compose/ui/text/TextStyle;
    .locals 1

    .line 522
    sget-object v0, Landroidx/compose/material3/TypographyKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Landroidx/compose/material3/tokens/TypographyKeyTokens;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 552
    :pswitch_0
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getLabelSmallEmphasized()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    return-object p0

    .line 551
    :pswitch_1
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getLabelMediumEmphasized()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    return-object p0

    .line 550
    :pswitch_2
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getLabelLargeEmphasized()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    return-object p0

    .line 549
    :pswitch_3
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getBodySmallEmphasized()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    return-object p0

    .line 548
    :pswitch_4
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getBodyMediumEmphasized()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    return-object p0

    .line 547
    :pswitch_5
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getBodyLargeEmphasized()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    return-object p0

    .line 546
    :pswitch_6
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getTitleSmallEmphasized()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    return-object p0

    .line 545
    :pswitch_7
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getTitleMediumEmphasized()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    return-object p0

    .line 544
    :pswitch_8
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getTitleLargeEmphasized()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    return-object p0

    .line 543
    :pswitch_9
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getHeadlineSmallEmphasized()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    return-object p0

    .line 542
    :pswitch_a
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getHeadlineMediumEmphasized()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    return-object p0

    .line 541
    :pswitch_b
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getHeadlineLargeEmphasized()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    return-object p0

    .line 540
    :pswitch_c
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getDisplaySmallEmphasized()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    return-object p0

    .line 539
    :pswitch_d
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getDisplayMediumEmphasized()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    return-object p0

    .line 538
    :pswitch_e
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getDisplayLargeEmphasized()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    return-object p0

    .line 537
    :pswitch_f
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getLabelSmall()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    return-object p0

    .line 536
    :pswitch_10
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getLabelMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    return-object p0

    .line 535
    :pswitch_11
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getLabelLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    return-object p0

    .line 534
    :pswitch_12
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getBodySmall()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    return-object p0

    .line 533
    :pswitch_13
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getBodyMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    return-object p0

    .line 532
    :pswitch_14
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getBodyLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    return-object p0

    .line 531
    :pswitch_15
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getTitleSmall()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    return-object p0

    .line 530
    :pswitch_16
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getTitleMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    return-object p0

    .line 529
    :pswitch_17
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getTitleLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    return-object p0

    .line 528
    :pswitch_18
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getHeadlineSmall()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    return-object p0

    .line 527
    :pswitch_19
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getHeadlineMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    return-object p0

    .line 526
    :pswitch_1a
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getHeadlineLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    return-object p0

    .line 525
    :pswitch_1b
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getDisplaySmall()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    return-object p0

    .line 524
    :pswitch_1c
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getDisplayMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    return-object p0

    .line 523
    :pswitch_1d
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getDisplayLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getLocalTypography()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/material3/Typography;",
            ">;"
        }
    .end annotation

    .line 559
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getValue(Landroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/text/TextStyle;
    .locals 3

    const-string v0, "C(<get-value>)556@30586L10:Typography.kt#uh7d8r"

    const v1, -0x3e879211

    .line 557
    invoke-static {p1, v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v2, "androidx.compose.material3.<get-value> (Typography.kt:556)"

    invoke-static {v1, p2, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v0, 0x6

    invoke-virtual {p2, p1, v0}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object p2

    invoke-static {p2, p0}, Landroidx/compose/material3/TypographyKt;->fromToken(Landroidx/compose/material3/Typography;Landroidx/compose/material3/tokens/TypographyKeyTokens;)Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    return-object p0
.end method
