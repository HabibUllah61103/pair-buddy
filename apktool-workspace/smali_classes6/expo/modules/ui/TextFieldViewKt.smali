.class public final Lexpo/modules/ui/TextFieldViewKt;
.super Ljava/lang/Object;
.source "TextFieldView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0007\u00a2\u0006\u0002\u0010\u0005\u001a\u0013\u0010\u0006\u001a\u00020\u0007*\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0002\u0010\t\u001a\u0013\u0010\n\u001a\u00020\u000b*\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0002\u0010\t\u001a\u0013\u0010\u000c\u001a\u00020\r*\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0002\u0010\t\u00a8\u0006\u000e"
    }
    d2 = {
        "toColors",
        "Landroidx/compose/material3/TextFieldColors;",
        "Lexpo/modules/ui/TextFieldColorsRecord;",
        "isOutlined",
        "",
        "(Lexpo/modules/ui/TextFieldColorsRecord;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/material3/TextFieldColors;",
        "toKeyboardType",
        "Landroidx/compose/ui/text/input/KeyboardType;",
        "",
        "(Ljava/lang/String;)I",
        "toCapitalization",
        "Landroidx/compose/ui/text/input/KeyboardCapitalization;",
        "toImeAction",
        "Landroidx/compose/ui/text/input/ImeAction;",
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
.method public static final synthetic access$toCapitalization(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lexpo/modules/ui/TextFieldViewKt;->toCapitalization(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$toImeAction(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lexpo/modules/ui/TextFieldViewKt;->toImeAction(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$toKeyboardType(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lexpo/modules/ui/TextFieldViewKt;->toKeyboardType(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static final toCapitalization(Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_4

    .line 195
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "characters"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    sget-object p0, Landroidx/compose/ui/text/input/KeyboardCapitalization;->Companion:Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;->getCharacters-IUNYP9k()I

    move-result p0

    return p0

    .line 195
    :sswitch_1
    const-string v0, "sentences"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 198
    :cond_1
    sget-object p0, Landroidx/compose/ui/text/input/KeyboardCapitalization;->Companion:Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;->getSentences-IUNYP9k()I

    move-result p0

    return p0

    .line 195
    :sswitch_2
    const-string v0, "words"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 199
    :cond_2
    sget-object p0, Landroidx/compose/ui/text/input/KeyboardCapitalization;->Companion:Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;->getWords-IUNYP9k()I

    move-result p0

    return p0

    .line 195
    :sswitch_3
    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    .line 197
    :cond_3
    sget-object p0, Landroidx/compose/ui/text/input/KeyboardCapitalization;->Companion:Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;->getNone-IUNYP9k()I

    move-result p0

    return p0

    .line 200
    :cond_4
    :goto_0
    sget-object p0, Landroidx/compose/ui/text/input/KeyboardCapitalization;->Companion:Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;->getNone-IUNYP9k()I

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x33af38 -> :sswitch_3
        0x6c11aa9 -> :sswitch_2
        0x1d36f670 -> :sswitch_1
        0x4a3baa6a -> :sswitch_0
    .end sparse-switch
.end method

.method public static final toColors(Lexpo/modules/ui/TextFieldColorsRecord;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/material3/TextFieldColors;
    .locals 97

    move-object/from16 v0, p2

    const-string v1, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, -0x79814445

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v3, "C(toColors)111@4467L4118:TextFieldView.kt#v15e7d"

    invoke-static {v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    const-string v4, "expo.modules.ui.toColors (TextFieldView.kt:108)"

    move/from16 v5, p3

    invoke-static {v1, v5, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const/4 v1, 0x6

    if-eqz p1, :cond_1

    const v3, -0x1e4134bd

    .line 110
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v3, "109@4331L8"

    invoke-static {v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object v3, Landroidx/compose/material3/OutlinedTextFieldDefaults;->INSTANCE:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    invoke-virtual {v3, v0, v1}, Landroidx/compose/material3/OutlinedTextFieldDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/TextFieldColors;

    move-result-object v1

    goto :goto_0

    :cond_1
    const v3, -0x1e4130bd

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v3, "109@4363L8"

    invoke-static {v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object v3, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

    invoke-virtual {v3, v0, v1}, Landroidx/compose/material3/TextFieldDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/TextFieldColors;

    move-result-object v1

    :goto_0
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 112
    sget-object v3, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

    .line 113
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getFocusedTextColor()Landroid/graphics/Color;

    move-result-object v4

    invoke-static {v4}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v4

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getFocusedTextColor-0d7_KjU()J

    move-result-wide v4

    .line 114
    :goto_1
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getUnfocusedTextColor()Landroid/graphics/Color;

    move-result-object v6

    invoke-static {v6}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v6

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getUnfocusedTextColor-0d7_KjU()J

    move-result-wide v6

    .line 115
    :goto_2
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getDisabledTextColor()Landroid/graphics/Color;

    move-result-object v8

    invoke-static {v8}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v8

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getDisabledTextColor-0d7_KjU()J

    move-result-wide v8

    .line 116
    :goto_3
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getErrorTextColor()Landroid/graphics/Color;

    move-result-object v10

    invoke-static {v10}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v10

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getErrorTextColor-0d7_KjU()J

    move-result-wide v10

    .line 117
    :goto_4
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getFocusedContainerColor()Landroid/graphics/Color;

    move-result-object v12

    invoke-static {v12}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v12

    goto :goto_5

    :cond_6
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getFocusedContainerColor-0d7_KjU()J

    move-result-wide v12

    .line 118
    :goto_5
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getUnfocusedContainerColor()Landroid/graphics/Color;

    move-result-object v14

    invoke-static {v14}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v14

    if-eqz v14, :cond_7

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v14

    goto :goto_6

    :cond_7
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getUnfocusedContainerColor-0d7_KjU()J

    move-result-wide v14

    .line 119
    :goto_6
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getDisabledContainerColor()Landroid/graphics/Color;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v16

    if-eqz v16, :cond_8

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v16

    goto :goto_7

    :cond_8
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getDisabledContainerColor-0d7_KjU()J

    move-result-wide v16

    .line 120
    :goto_7
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getErrorContainerColor()Landroid/graphics/Color;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v18

    if-eqz v18, :cond_9

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v18

    goto :goto_8

    :cond_9
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getErrorContainerColor-0d7_KjU()J

    move-result-wide v18

    .line 121
    :goto_8
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getCursorColor()Landroid/graphics/Color;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v20

    if-eqz v20, :cond_a

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v20

    goto :goto_9

    :cond_a
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getCursorColor-0d7_KjU()J

    move-result-wide v20

    .line 122
    :goto_9
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getErrorCursorColor()Landroid/graphics/Color;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v22

    if-eqz v22, :cond_b

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v22

    goto :goto_a

    :cond_b
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getErrorCursorColor-0d7_KjU()J

    move-result-wide v22

    .line 123
    :goto_a
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getFocusedIndicatorColor()Landroid/graphics/Color;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v24

    if-eqz v24, :cond_c

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v24

    goto :goto_b

    :cond_c
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getFocusedIndicatorColor-0d7_KjU()J

    move-result-wide v24

    .line 124
    :goto_b
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getUnfocusedIndicatorColor()Landroid/graphics/Color;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v26

    if-eqz v26, :cond_d

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v26

    goto :goto_c

    :cond_d
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getUnfocusedIndicatorColor-0d7_KjU()J

    move-result-wide v26

    .line 125
    :goto_c
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getDisabledIndicatorColor()Landroid/graphics/Color;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v28

    if-eqz v28, :cond_e

    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v28

    goto :goto_d

    :cond_e
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getDisabledIndicatorColor-0d7_KjU()J

    move-result-wide v28

    .line 126
    :goto_d
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getErrorIndicatorColor()Landroid/graphics/Color;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v30

    if-eqz v30, :cond_f

    invoke-virtual/range {v30 .. v30}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v30

    goto :goto_e

    :cond_f
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getErrorIndicatorColor-0d7_KjU()J

    move-result-wide v30

    .line 127
    :goto_e
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getFocusedLeadingIconColor()Landroid/graphics/Color;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v32

    if-eqz v32, :cond_10

    invoke-virtual/range {v32 .. v32}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v32

    goto :goto_f

    :cond_10
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getFocusedLeadingIconColor-0d7_KjU()J

    move-result-wide v32

    .line 128
    :goto_f
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getUnfocusedLeadingIconColor()Landroid/graphics/Color;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v34

    if-eqz v34, :cond_11

    invoke-virtual/range {v34 .. v34}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v34

    goto :goto_10

    :cond_11
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getUnfocusedLeadingIconColor-0d7_KjU()J

    move-result-wide v34

    .line 129
    :goto_10
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getDisabledLeadingIconColor()Landroid/graphics/Color;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v36

    if-eqz v36, :cond_12

    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v36

    goto :goto_11

    :cond_12
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getDisabledLeadingIconColor-0d7_KjU()J

    move-result-wide v36

    .line 130
    :goto_11
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getErrorLeadingIconColor()Landroid/graphics/Color;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v38

    if-eqz v38, :cond_13

    invoke-virtual/range {v38 .. v38}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v38

    goto :goto_12

    :cond_13
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getErrorLeadingIconColor-0d7_KjU()J

    move-result-wide v38

    .line 131
    :goto_12
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getFocusedTrailingIconColor()Landroid/graphics/Color;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v40

    if-eqz v40, :cond_14

    invoke-virtual/range {v40 .. v40}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v40

    goto :goto_13

    :cond_14
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getFocusedTrailingIconColor-0d7_KjU()J

    move-result-wide v40

    .line 132
    :goto_13
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getUnfocusedTrailingIconColor()Landroid/graphics/Color;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v42

    if-eqz v42, :cond_15

    invoke-virtual/range {v42 .. v42}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v42

    goto :goto_14

    :cond_15
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getUnfocusedTrailingIconColor-0d7_KjU()J

    move-result-wide v42

    .line 133
    :goto_14
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getDisabledTrailingIconColor()Landroid/graphics/Color;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v44

    if-eqz v44, :cond_16

    invoke-virtual/range {v44 .. v44}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v44

    goto :goto_15

    :cond_16
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getDisabledTrailingIconColor-0d7_KjU()J

    move-result-wide v44

    .line 134
    :goto_15
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getErrorTrailingIconColor()Landroid/graphics/Color;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v46

    if-eqz v46, :cond_17

    invoke-virtual/range {v46 .. v46}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v46

    goto :goto_16

    :cond_17
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getErrorTrailingIconColor-0d7_KjU()J

    move-result-wide v46

    .line 135
    :goto_16
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getFocusedLabelColor()Landroid/graphics/Color;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v48

    if-eqz v48, :cond_18

    invoke-virtual/range {v48 .. v48}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v48

    goto :goto_17

    :cond_18
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getFocusedLabelColor-0d7_KjU()J

    move-result-wide v48

    .line 136
    :goto_17
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getUnfocusedLabelColor()Landroid/graphics/Color;

    move-result-object v50

    invoke-static/range {v50 .. v50}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v50

    if-eqz v50, :cond_19

    invoke-virtual/range {v50 .. v50}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v50

    goto :goto_18

    :cond_19
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getUnfocusedLabelColor-0d7_KjU()J

    move-result-wide v50

    .line 137
    :goto_18
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getDisabledLabelColor()Landroid/graphics/Color;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v52

    if-eqz v52, :cond_1a

    invoke-virtual/range {v52 .. v52}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v52

    goto :goto_19

    :cond_1a
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getDisabledLabelColor-0d7_KjU()J

    move-result-wide v52

    .line 138
    :goto_19
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getErrorLabelColor()Landroid/graphics/Color;

    move-result-object v54

    invoke-static/range {v54 .. v54}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v54

    if-eqz v54, :cond_1b

    invoke-virtual/range {v54 .. v54}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v54

    goto :goto_1a

    :cond_1b
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getErrorLabelColor-0d7_KjU()J

    move-result-wide v54

    .line 139
    :goto_1a
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getFocusedPlaceholderColor()Landroid/graphics/Color;

    move-result-object v56

    invoke-static/range {v56 .. v56}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v56

    if-eqz v56, :cond_1c

    invoke-virtual/range {v56 .. v56}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v56

    goto :goto_1b

    :cond_1c
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getFocusedPlaceholderColor-0d7_KjU()J

    move-result-wide v56

    .line 140
    :goto_1b
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getUnfocusedPlaceholderColor()Landroid/graphics/Color;

    move-result-object v58

    invoke-static/range {v58 .. v58}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v58

    if-eqz v58, :cond_1d

    invoke-virtual/range {v58 .. v58}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v58

    goto :goto_1c

    :cond_1d
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getUnfocusedPlaceholderColor-0d7_KjU()J

    move-result-wide v58

    .line 141
    :goto_1c
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getDisabledPlaceholderColor()Landroid/graphics/Color;

    move-result-object v60

    invoke-static/range {v60 .. v60}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v60

    if-eqz v60, :cond_1e

    invoke-virtual/range {v60 .. v60}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v60

    goto :goto_1d

    :cond_1e
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getDisabledPlaceholderColor-0d7_KjU()J

    move-result-wide v60

    .line 142
    :goto_1d
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getErrorPlaceholderColor()Landroid/graphics/Color;

    move-result-object v62

    invoke-static/range {v62 .. v62}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v62

    if-eqz v62, :cond_1f

    invoke-virtual/range {v62 .. v62}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v62

    goto :goto_1e

    :cond_1f
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getErrorPlaceholderColor-0d7_KjU()J

    move-result-wide v62

    .line 143
    :goto_1e
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getFocusedSupportingTextColor()Landroid/graphics/Color;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v64

    if-eqz v64, :cond_20

    invoke-virtual/range {v64 .. v64}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v64

    goto :goto_1f

    :cond_20
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getFocusedSupportingTextColor-0d7_KjU()J

    move-result-wide v64

    .line 144
    :goto_1f
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getUnfocusedSupportingTextColor()Landroid/graphics/Color;

    move-result-object v66

    invoke-static/range {v66 .. v66}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v66

    if-eqz v66, :cond_21

    invoke-virtual/range {v66 .. v66}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v66

    goto :goto_20

    :cond_21
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getUnfocusedSupportingTextColor-0d7_KjU()J

    move-result-wide v66

    .line 145
    :goto_20
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getDisabledSupportingTextColor()Landroid/graphics/Color;

    move-result-object v68

    invoke-static/range {v68 .. v68}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v68

    if-eqz v68, :cond_22

    invoke-virtual/range {v68 .. v68}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v68

    goto :goto_21

    :cond_22
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getDisabledSupportingTextColor-0d7_KjU()J

    move-result-wide v68

    .line 146
    :goto_21
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getErrorSupportingTextColor()Landroid/graphics/Color;

    move-result-object v70

    invoke-static/range {v70 .. v70}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v70

    if-eqz v70, :cond_23

    invoke-virtual/range {v70 .. v70}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v70

    goto :goto_22

    :cond_23
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getErrorSupportingTextColor-0d7_KjU()J

    move-result-wide v70

    .line 147
    :goto_22
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getFocusedPrefixColor()Landroid/graphics/Color;

    move-result-object v72

    invoke-static/range {v72 .. v72}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v72

    if-eqz v72, :cond_24

    invoke-virtual/range {v72 .. v72}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v72

    goto :goto_23

    :cond_24
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getFocusedPrefixColor-0d7_KjU()J

    move-result-wide v72

    .line 148
    :goto_23
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getUnfocusedPrefixColor()Landroid/graphics/Color;

    move-result-object v74

    invoke-static/range {v74 .. v74}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v74

    if-eqz v74, :cond_25

    invoke-virtual/range {v74 .. v74}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v74

    goto :goto_24

    :cond_25
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getUnfocusedPrefixColor-0d7_KjU()J

    move-result-wide v74

    .line 149
    :goto_24
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getDisabledPrefixColor()Landroid/graphics/Color;

    move-result-object v76

    invoke-static/range {v76 .. v76}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v76

    if-eqz v76, :cond_26

    invoke-virtual/range {v76 .. v76}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v76

    goto :goto_25

    :cond_26
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getDisabledPrefixColor-0d7_KjU()J

    move-result-wide v76

    .line 150
    :goto_25
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getErrorPrefixColor()Landroid/graphics/Color;

    move-result-object v78

    invoke-static/range {v78 .. v78}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v78

    if-eqz v78, :cond_27

    invoke-virtual/range {v78 .. v78}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v78

    goto :goto_26

    :cond_27
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getErrorPrefixColor-0d7_KjU()J

    move-result-wide v78

    .line 151
    :goto_26
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getFocusedSuffixColor()Landroid/graphics/Color;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v80

    if-eqz v80, :cond_28

    invoke-virtual/range {v80 .. v80}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v80

    goto :goto_27

    :cond_28
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getFocusedSuffixColor-0d7_KjU()J

    move-result-wide v80

    .line 152
    :goto_27
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getUnfocusedSuffixColor()Landroid/graphics/Color;

    move-result-object v82

    invoke-static/range {v82 .. v82}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v82

    if-eqz v82, :cond_29

    invoke-virtual/range {v82 .. v82}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v82

    goto :goto_28

    :cond_29
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getUnfocusedSuffixColor-0d7_KjU()J

    move-result-wide v82

    .line 153
    :goto_28
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getDisabledSuffixColor()Landroid/graphics/Color;

    move-result-object v84

    invoke-static/range {v84 .. v84}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v84

    if-eqz v84, :cond_2a

    invoke-virtual/range {v84 .. v84}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v84

    goto :goto_29

    :cond_2a
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getDisabledSuffixColor-0d7_KjU()J

    move-result-wide v84

    .line 154
    :goto_29
    invoke-virtual {v2}, Lexpo/modules/ui/TextFieldColorsRecord;->getErrorSuffixColor()Landroid/graphics/Color;

    move-result-object v2

    invoke-static {v2}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v1

    goto :goto_2a

    :cond_2b
    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldColors;->getErrorSuffixColor-0d7_KjU()J

    move-result-wide v1

    :goto_2a
    const/16 v93, 0x400

    const/16 v94, 0x0

    move-wide/from16 v95, v1

    move-object v1, v3

    move-wide v2, v4

    move-wide v4, v6

    move-wide v6, v8

    move-wide v8, v10

    move-wide v10, v12

    move-wide v12, v14

    move-wide/from16 v14, v16

    move-wide/from16 v16, v18

    move-wide/from16 v18, v20

    move-wide/from16 v20, v22

    move-wide/from16 v23, v24

    move-wide/from16 v25, v26

    move-wide/from16 v27, v28

    move-wide/from16 v29, v30

    move-wide/from16 v31, v32

    move-wide/from16 v33, v34

    move-wide/from16 v35, v36

    move-wide/from16 v37, v38

    move-wide/from16 v39, v40

    move-wide/from16 v41, v42

    move-wide/from16 v43, v44

    move-wide/from16 v45, v46

    move-wide/from16 v47, v48

    move-wide/from16 v49, v50

    move-wide/from16 v51, v52

    move-wide/from16 v53, v54

    move-wide/from16 v55, v56

    move-wide/from16 v57, v58

    move-wide/from16 v59, v60

    move-wide/from16 v61, v62

    move-wide/from16 v63, v64

    move-wide/from16 v65, v66

    move-wide/from16 v67, v68

    move-wide/from16 v69, v70

    move-wide/from16 v71, v72

    move-wide/from16 v73, v74

    move-wide/from16 v75, v76

    move-wide/from16 v77, v78

    move-wide/from16 v79, v80

    move-wide/from16 v81, v82

    move-wide/from16 v83, v84

    move-wide/from16 v85, v95

    const/16 v22, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    const/16 v92, 0xc00

    move-object/from16 v87, v0

    .line 112
    invoke-virtual/range {v1 .. v94}, Landroidx/compose/material3/TextFieldDefaults;->colors-0hiis_0(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIIIIII)Landroidx/compose/material3/TextFieldColors;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2c
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    return-object v0
.end method

.method private static final toImeAction(Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_8

    .line 203
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "default"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    .line 204
    :cond_0
    sget-object p0, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getDefault-eUduSuo()I

    move-result p0

    return p0

    .line 203
    :sswitch_1
    const-string v0, "send"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 208
    :cond_1
    sget-object p0, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getSend-eUduSuo()I

    move-result p0

    return p0

    .line 203
    :sswitch_2
    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 205
    :cond_2
    sget-object p0, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getNone-eUduSuo()I

    move-result p0

    return p0

    .line 203
    :sswitch_3
    const-string v0, "next"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    .line 210
    :cond_3
    sget-object p0, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getNext-eUduSuo()I

    move-result p0

    return p0

    .line 203
    :sswitch_4
    const-string v0, "done"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    .line 211
    :cond_4
    sget-object p0, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getDone-eUduSuo()I

    move-result p0

    return p0

    .line 203
    :sswitch_5
    const-string v0, "go"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    .line 206
    :cond_5
    sget-object p0, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getGo-eUduSuo()I

    move-result p0

    return p0

    .line 203
    :sswitch_6
    const-string v0, "search"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    .line 207
    :cond_6
    sget-object p0, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getSearch-eUduSuo()I

    move-result p0

    return p0

    .line 203
    :sswitch_7
    const-string v0, "previous"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    .line 209
    :cond_7
    sget-object p0, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getPrevious-eUduSuo()I

    move-result p0

    return p0

    .line 212
    :cond_8
    :goto_0
    sget-object p0, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getDefault-eUduSuo()I

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bec4509 -> :sswitch_7
        -0x36059a58 -> :sswitch_6
        0xce8 -> :sswitch_5
        0x2f2382 -> :sswitch_4
        0x338af3 -> :sswitch_3
        0x33af38 -> :sswitch_2
        0x35cf88 -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch
.end method

.method private static final toKeyboardType(Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_9

    .line 182
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "decimal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    .line 187
    :cond_0
    sget-object p0, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getDecimal-PjHm6EE()I

    move-result p0

    return p0

    .line 182
    :sswitch_1
    const-string v0, "password"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    .line 188
    :cond_1
    sget-object p0, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getPassword-PjHm6EE()I

    move-result p0

    return p0

    .line 182
    :sswitch_2
    const-string v0, "numberPassword"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 191
    :cond_2
    sget-object p0, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getNumberPassword-PjHm6EE()I

    move-result p0

    return p0

    .line 182
    :sswitch_3
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    .line 186
    :cond_3
    sget-object p0, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getPhone-PjHm6EE()I

    move-result p0

    return p0

    .line 182
    :sswitch_4
    const-string v0, "email"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    .line 185
    :cond_4
    sget-object p0, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getEmail-PjHm6EE()I

    move-result p0

    return p0

    .line 182
    :sswitch_5
    const-string v0, "ascii"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    .line 189
    :cond_5
    sget-object p0, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getAscii-PjHm6EE()I

    move-result p0

    return p0

    .line 182
    :sswitch_6
    const-string v0, "text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    .line 183
    :cond_6
    sget-object p0, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getText-PjHm6EE()I

    move-result p0

    return p0

    .line 182
    :sswitch_7
    const-string v0, "uri"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    .line 190
    :cond_7
    sget-object p0, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getUri-PjHm6EE()I

    move-result p0

    return p0

    .line 182
    :sswitch_8
    const-string v0, "number"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    .line 184
    :cond_8
    sget-object p0, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getNumber-PjHm6EE()I

    move-result p0

    return p0

    .line 192
    :cond_9
    :goto_0
    sget-object p0, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getText-PjHm6EE()I

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x3da724b7 -> :sswitch_8
        0x1c56c -> :sswitch_7
        0x36452d -> :sswitch_6
        0x58caf51 -> :sswitch_5
        0x5c24b9c -> :sswitch_4
        0x65b3d6e -> :sswitch_3
        0x935a104 -> :sswitch_2
        0x4889ba9b -> :sswitch_1
        0x5bed1351 -> :sswitch_0
    .end sparse-switch
.end method
