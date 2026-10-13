.class public final Lexpo/modules/ui/convertibles/ArrangementKt;
.super Ljava/lang/Object;
.source "Arrangement.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArrangement.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Arrangement.kt\nexpo/modules/ui/convertibles/ArrangementKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,73:1\n1#2:74\n122#3:75\n122#3:76\n*S KotlinDebug\n*F\n+ 1 Arrangement.kt\nexpo/modules/ui/convertibles/ArrangementKt\n*L\n39#1:75\n71#1:76\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001a\u0010\u0004\u001a\u00020\u0005*\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001j\u0002`\u0006\u001a\u001a\u0010\u0004\u001a\u00020\n*\u0012\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0001j\u0002`\u000b*\"\u0010\u0000\"\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\"\u0010\u0007\"\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u00012\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0001\u00a8\u0006\u000c"
    }
    d2 = {
        "HorizontalArrangement",
        "Lexpo/modules/kotlin/types/Either;",
        "Lexpo/modules/ui/convertibles/HorizontalArrangementDefault;",
        "Lexpo/modules/ui/convertibles/HorizontalArrangementCustom;",
        "toComposeArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
        "Lexpo/modules/ui/convertibles/HorizontalArrangement;",
        "VerticalArrangement",
        "Lexpo/modules/ui/convertibles/VerticalArrangementDefault;",
        "Lexpo/modules/ui/convertibles/VerticalArrangementCustom;",
        "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
        "Lexpo/modules/ui/convertibles/VerticalArrangement;",
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
.method public static final toComposeArrangement(Lexpo/modules/kotlin/types/Either;)Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/types/Either<",
            "Lexpo/modules/ui/convertibles/HorizontalArrangementDefault;",
            "Lexpo/modules/ui/convertibles/HorizontalArrangementCustom;",
            ">;)",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    const-class v0, Lexpo/modules/ui/convertibles/HorizontalArrangementDefault;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexpo/modules/kotlin/types/Either;->isFirstType(Lkotlin/reflect/KClass;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lexpo/modules/kotlin/types/Either;->first()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lexpo/modules/ui/convertibles/HorizontalArrangementDefault;

    invoke-virtual {p0}, Lexpo/modules/ui/convertibles/HorizontalArrangementDefault;->toComposeArrangement()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object p0

    return-object p0

    .line 39
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/types/Either;->second()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lexpo/modules/ui/convertibles/HorizontalArrangementCustom;

    invoke-virtual {p0}, Lexpo/modules/ui/convertibles/HorizontalArrangementCustom;->getSpacedBy()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    int-to-float p0, p0

    .line 75
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    .line 39
    invoke-virtual {v0, p0}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    return-object p0

    :cond_1
    sget-object p0, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object p0

    return-object p0
.end method

.method public static final toComposeArrangement(Lexpo/modules/kotlin/types/Either;)Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/types/Either<",
            "Lexpo/modules/ui/convertibles/VerticalArrangementDefault;",
            "Lexpo/modules/ui/convertibles/VerticalArrangementCustom;",
            ">;)",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    const-class v0, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexpo/modules/kotlin/types/Either;->isFirstType(Lkotlin/reflect/KClass;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lexpo/modules/kotlin/types/Either;->first()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;

    invoke-virtual {p0}, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;->toComposeArrangement()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object p0

    return-object p0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/types/Either;->second()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lexpo/modules/ui/convertibles/VerticalArrangementCustom;

    invoke-virtual {p0}, Lexpo/modules/ui/convertibles/VerticalArrangementCustom;->getSpacedBy()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    int-to-float p0, p0

    .line 76
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    .line 71
    invoke-virtual {v0, p0}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    return-object p0

    :cond_1
    sget-object p0, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object p0

    return-object p0
.end method
