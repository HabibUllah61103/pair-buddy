.class public final Lexpo/modules/ui/UtilsKt;
.super Ljava/lang/Object;
.source "Utils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0012\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u001a\u0015\u0010\u0004\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0005\u001a\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\"\u0017\u0010\u0006\u001a\u00020\u0001*\u0004\u0018\u00010\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0005\"\u0019\u0010\u0008\u001a\u0004\u0018\u00010\u0001*\u0004\u0018\u00010\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "colorToComposeColorOrNull",
        "Landroidx/compose/ui/graphics/Color;",
        "color",
        "Landroid/graphics/Color;",
        "colorToComposeColor",
        "(Landroid/graphics/Color;)J",
        "compose",
        "getCompose",
        "composeOrNull",
        "getComposeOrNull",
        "(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;",
        "getImageVector",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "icon",
        "",
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
.method public static final colorToComposeColor(Landroid/graphics/Color;)J
    .locals 2

    .line 21
    invoke-static {p0}, Lexpo/modules/ui/UtilsKt;->colorToComposeColorOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v0

    return-wide v0

    :cond_0
    sget-object p0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final colorToComposeColorOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;
    .locals 7

    if-eqz p0, :cond_0

    .line 13
    invoke-virtual {p0}, Landroid/graphics/Color;->red()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Color;->green()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Color;->blue()F

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Color;->alpha()F

    move-result v3

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/graphics/ColorKt;->Color$default(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;ILjava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getCompose(Landroid/graphics/Color;)J
    .locals 2

    .line 25
    invoke-static {p0}, Lexpo/modules/ui/UtilsKt;->colorToComposeColor(Landroid/graphics/Color;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;
    .locals 0

    .line 28
    invoke-static {p0}, Lexpo/modules/ui/UtilsKt;->colorToComposeColorOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object p0

    return-object p0
.end method

.method public static final getImageVector(Ljava/lang/String;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 11

    .line 34
    const-string v0, "."

    .line 0
    const-string v1, "androidx.compose.material.icons."

    .line 34
    move-object v2, p0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    :try_start_0
    move-object v4, p0

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v0, v5, v10

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Kt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    aget-object v1, v1, v10

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.graphics.vector.ImageVector"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/graphics/vector/ImageVector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 40
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The icon "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " couldn\'t be found."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ExpoUI"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v3
.end method
