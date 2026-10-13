.class public final Lexpo/modules/ui/convertibles/AnimationSpecParamsKt;
.super Ljava/lang/Object;
.source "AnimationSpecParams.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimationSpecParams.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimationSpecParams.kt\nexpo/modules/ui/convertibles/AnimationSpecParamsKt\n+ 2 RecordTypeConverter.kt\nexpo/modules/kotlin/records/RecordTypeConverterKt\n*L\n1#1,94:1\n176#2,3:95\n176#2,3:98\n176#2,3:101\n176#2,3:104\n*S KotlinDebug\n*F\n+ 1 AnimationSpecParams.kt\nexpo/modules/ui/convertibles/AnimationSpecParamsKt\n*L\n87#1:95,3\n88#1:98,3\n89#1:101,3\n90#1:104,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0000\n\u0000\u001a\u001a\u0010\u0000\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "parseAnimationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "",
        "raw",
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
.method public static final parseAnimationSpec(Ljava/lang/Object;)Landroidx/compose/animation/core/AnimationSpec;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 84
    instance-of v0, p0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 85
    :cond_0
    check-cast p0, Ljava/util/Map;

    .line 86
    const-string v0, "$type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    const-string v2, "spring"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "null cannot be cast to non-null type expo.modules.kotlin.records.RecordTypeConverter<T of expo.modules.kotlin.records.RecordTypeConverterKt.recordFromMap>"

    if-eqz v2, :cond_1

    .line 95
    sget-object v0, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->INSTANCE:Lexpo/modules/kotlin/types/TypeConverterProviderImpl;

    const-class v1, Lexpo/modules/ui/convertibles/SpringSpecParams;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->obtainTypeConverter(Lkotlin/reflect/KType;)Lexpo/modules/kotlin/types/TypeConverter;

    move-result-object v0

    .line 97
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lexpo/modules/kotlin/records/RecordTypeConverter;

    invoke-static {p0, v0}, Lexpo/modules/kotlin/records/RecordTypeConverterKt;->recordFromMap(Ljava/util/Map;Lexpo/modules/kotlin/records/RecordTypeConverter;)Lexpo/modules/kotlin/records/Record;

    move-result-object p0

    check-cast p0, Lexpo/modules/ui/convertibles/SpringSpecParams;

    .line 87
    invoke-virtual {p0}, Lexpo/modules/ui/convertibles/SpringSpecParams;->toAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;

    move-result-object p0

    return-object p0

    .line 88
    :cond_1
    const-string v2, "tween"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    sget-object v0, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->INSTANCE:Lexpo/modules/kotlin/types/TypeConverterProviderImpl;

    const-class v1, Lexpo/modules/ui/convertibles/TweenSpecParams;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->obtainTypeConverter(Lkotlin/reflect/KType;)Lexpo/modules/kotlin/types/TypeConverter;

    move-result-object v0

    .line 100
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lexpo/modules/kotlin/records/RecordTypeConverter;

    invoke-static {p0, v0}, Lexpo/modules/kotlin/records/RecordTypeConverterKt;->recordFromMap(Ljava/util/Map;Lexpo/modules/kotlin/records/RecordTypeConverter;)Lexpo/modules/kotlin/records/Record;

    move-result-object p0

    check-cast p0, Lexpo/modules/ui/convertibles/TweenSpecParams;

    .line 88
    invoke-virtual {p0}, Lexpo/modules/ui/convertibles/TweenSpecParams;->toAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;

    move-result-object p0

    return-object p0

    .line 89
    :cond_2
    const-string v2, "snap"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 101
    sget-object v0, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->INSTANCE:Lexpo/modules/kotlin/types/TypeConverterProviderImpl;

    const-class v1, Lexpo/modules/ui/convertibles/SnapSpecParams;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->obtainTypeConverter(Lkotlin/reflect/KType;)Lexpo/modules/kotlin/types/TypeConverter;

    move-result-object v0

    .line 103
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lexpo/modules/kotlin/records/RecordTypeConverter;

    invoke-static {p0, v0}, Lexpo/modules/kotlin/records/RecordTypeConverterKt;->recordFromMap(Ljava/util/Map;Lexpo/modules/kotlin/records/RecordTypeConverter;)Lexpo/modules/kotlin/records/Record;

    move-result-object p0

    check-cast p0, Lexpo/modules/ui/convertibles/SnapSpecParams;

    .line 89
    invoke-virtual {p0}, Lexpo/modules/ui/convertibles/SnapSpecParams;->toAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;

    move-result-object p0

    return-object p0

    .line 90
    :cond_3
    const-string v2, "keyframes"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    sget-object v0, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->INSTANCE:Lexpo/modules/kotlin/types/TypeConverterProviderImpl;

    const-class v1, Lexpo/modules/ui/convertibles/KeyframesSpecParams;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->obtainTypeConverter(Lkotlin/reflect/KType;)Lexpo/modules/kotlin/types/TypeConverter;

    move-result-object v0

    .line 106
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lexpo/modules/kotlin/records/RecordTypeConverter;

    invoke-static {p0, v0}, Lexpo/modules/kotlin/records/RecordTypeConverterKt;->recordFromMap(Ljava/util/Map;Lexpo/modules/kotlin/records/RecordTypeConverter;)Lexpo/modules/kotlin/records/Record;

    move-result-object v0

    check-cast v0, Lexpo/modules/ui/convertibles/KeyframesSpecParams;

    .line 90
    invoke-virtual {v0, p0}, Lexpo/modules/ui/convertibles/KeyframesSpecParams;->toAnimationSpec(Ljava/util/Map;)Landroidx/compose/animation/core/AnimationSpec;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v1
.end method
