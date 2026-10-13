.class public final Lexpo/modules/blur/BlurModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "BlurModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlurModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlurModule.kt\nexpo/modules/blur/BlurModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder\n+ 6 ViewDefinitionBuilder.kt\nexpo/modules/kotlin/views/ViewDefinitionBuilder\n+ 7 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n*L\n1#1,45:1\n69#2:46\n14#3:47\n25#3:48\n27#4,3:49\n31#4:168\n94#5,9:52\n103#5,2:155\n94#5,11:157\n127#6,3:61\n130#6,3:76\n127#6,3:79\n130#6,3:94\n127#6,3:97\n130#6,3:112\n127#6,3:115\n130#6,3:130\n127#6,3:133\n130#6,3:148\n107#6,4:151\n168#7,2:64\n145#7,2:66\n159#7,8:68\n168#7,2:82\n145#7,2:84\n159#7,8:86\n168#7,2:100\n145#7,2:102\n159#7,8:104\n168#7,2:118\n145#7,2:120\n159#7,8:122\n168#7,2:136\n145#7,2:138\n159#7,8:140\n*S KotlinDebug\n*F\n+ 1 BlurModule.kt\nexpo/modules/blur/BlurModule\n*L\n9#1:46\n9#1:47\n9#1:48\n9#1:49,3\n9#1:168\n12#1:52,9\n12#1:155,2\n40#1:157,11\n15#1:61,3\n15#1:76,3\n19#1:79,3\n19#1:94,3\n23#1:97,3\n23#1:112,3\n27#1:115,3\n27#1:130,3\n31#1:133,3\n31#1:148,3\n35#1:151,4\n15#1:64,2\n15#1:66,2\n15#1:68,8\n19#1:82,2\n19#1:84,2\n19#1:86,8\n23#1:100,2\n23#1:102,2\n23#1:104,8\n27#1:118,2\n27#1:120,2\n27#1:122,8\n31#1:136,2\n31#1:138,2\n31#1:140,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lexpo/modules/blur/BlurModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "<init>",
        "()V",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "expo-blur_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    return-void
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 13

    .line 9
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/modules/Module;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ModuleDefinition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ExpoModulesCore] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 46
    :try_start_0
    new-instance v1, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    .line 10
    const-string v0, "ExpoBlur"

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 12
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    const-class v2, Lexpo/modules/blur/ExpoBlurView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 52
    new-instance v3, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;

    .line 54
    new-instance v4, Lexpo/modules/kotlin/types/LazyKType;

    const-class v5, Lexpo/modules/blur/ExpoBlurView;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    .line 52
    sget-object v6, Lexpo/modules/blur/BlurModule$definition$lambda$3$$inlined$View$1;->INSTANCE:Lexpo/modules/blur/BlurModule$definition$lambda$3$$inlined$View$1;

    move-object v7, v6

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 54
    invoke-direct/range {v4 .. v9}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v4, Lkotlin/reflect/KType;

    .line 55
    invoke-virtual {v0}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v5

    .line 52
    invoke-direct {v3, v2, v4, v5}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;-><init>(Lkotlin/reflect/KClass;Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 58
    invoke-static {v3}, Lexpo/modules/kotlin/views/decorators/CSSPropsKt;->UseCSSProps(Lexpo/modules/kotlin/views/ViewDefinitionBuilder;)V

    .line 13
    const-string v2, "ExpoBlurView"

    invoke-virtual {v3, v2}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 15
    const-string v2, "blurTargetId"

    sget-object v4, Lexpo/modules/blur/BlurModule$definition$1$1$1;->INSTANCE:Lexpo/modules/blur/BlurModule$definition$1$1$1;

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 61
    invoke-virtual {v3}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v5

    new-instance v6, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 65
    sget-object v7, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 66
    new-instance v8, Lkotlin/Pair;

    const-class v9, Ljava/lang/Integer;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v8, v9, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    invoke-virtual {v7}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/kotlin/types/AnyType;

    const/4 v8, 0x0

    if-nez v7, :cond_0

    .line 65
    sget-object v7, Lexpo/modules/blur/BlurModule$definition$lambda$3$lambda$1$$inlined$Prop$1;->INSTANCE:Lexpo/modules/blur/BlurModule$definition$lambda$3$lambda$1$$inlined$Prop$1;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 68
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 69
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Ljava/lang/Integer;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v10, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 68
    invoke-direct {v9, v11, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v7, v9

    .line 61
    :cond_0
    invoke-direct {v6, v2, v7, v4}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string v2, "intensity"

    sget-object v4, Lexpo/modules/blur/BlurModule$definition$1$1$2;->INSTANCE:Lexpo/modules/blur/BlurModule$definition$1$1$2;

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 79
    invoke-virtual {v3}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v5

    new-instance v6, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 83
    sget-object v7, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 84
    new-instance v9, Lkotlin/Pair;

    const-class v10, Ljava/lang/Float;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v9, v10, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    invoke-virtual {v7}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/kotlin/types/AnyType;

    if-nez v7, :cond_1

    .line 83
    sget-object v7, Lexpo/modules/blur/BlurModule$definition$lambda$3$lambda$1$$inlined$Prop$2;->INSTANCE:Lexpo/modules/blur/BlurModule$definition$lambda$3$lambda$1$$inlined$Prop$2;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 86
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 87
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Ljava/lang/Float;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v10, v12, v11, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 86
    invoke-direct {v9, v10, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v7, v9

    .line 79
    :cond_1
    invoke-direct {v6, v2, v7, v4}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v2, "tint"

    sget-object v4, Lexpo/modules/blur/BlurModule$definition$1$1$3;->INSTANCE:Lexpo/modules/blur/BlurModule$definition$1$1$3;

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 97
    invoke-virtual {v3}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v5

    new-instance v6, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 101
    sget-object v7, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 102
    new-instance v9, Lkotlin/Pair;

    const-class v10, Lexpo/modules/blur/enums/TintStyle;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v9, v10, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    invoke-virtual {v7}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/kotlin/types/AnyType;

    if-nez v7, :cond_2

    .line 101
    sget-object v7, Lexpo/modules/blur/BlurModule$definition$lambda$3$lambda$1$$inlined$Prop$3;->INSTANCE:Lexpo/modules/blur/BlurModule$definition$lambda$3$lambda$1$$inlined$Prop$3;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 104
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 105
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Lexpo/modules/blur/enums/TintStyle;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v10, v12, v11, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 104
    invoke-direct {v9, v10, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v7, v9

    .line 97
    :cond_2
    invoke-direct {v6, v2, v7, v4}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v2, "blurReductionFactor"

    sget-object v4, Lexpo/modules/blur/BlurModule$definition$1$1$4;->INSTANCE:Lexpo/modules/blur/BlurModule$definition$1$1$4;

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 115
    invoke-virtual {v3}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v5

    new-instance v6, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 119
    sget-object v7, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 120
    new-instance v9, Lkotlin/Pair;

    const-class v10, Ljava/lang/Float;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v9, v10, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    invoke-virtual {v7}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/kotlin/types/AnyType;

    if-nez v7, :cond_3

    .line 119
    sget-object v7, Lexpo/modules/blur/BlurModule$definition$lambda$3$lambda$1$$inlined$Prop$4;->INSTANCE:Lexpo/modules/blur/BlurModule$definition$lambda$3$lambda$1$$inlined$Prop$4;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 122
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 123
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Ljava/lang/Float;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v10, v12, v11, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 122
    invoke-direct {v9, v10, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v7, v9

    .line 115
    :cond_3
    invoke-direct {v6, v2, v7, v4}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v2, "blurMethod"

    sget-object v4, Lexpo/modules/blur/BlurModule$definition$1$1$5;->INSTANCE:Lexpo/modules/blur/BlurModule$definition$1$1$5;

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 133
    invoke-virtual {v3}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v5

    new-instance v6, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 137
    sget-object v7, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 138
    new-instance v9, Lkotlin/Pair;

    const-class v10, Lexpo/modules/blur/enums/BlurMethod;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v9, v10, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    invoke-virtual {v7}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/kotlin/types/AnyType;

    if-nez v7, :cond_4

    .line 137
    sget-object v7, Lexpo/modules/blur/BlurModule$definition$lambda$3$lambda$1$$inlined$Prop$5;->INSTANCE:Lexpo/modules/blur/BlurModule$definition$lambda$3$lambda$1$$inlined$Prop$5;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 140
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 141
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Lexpo/modules/blur/enums/BlurMethod;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v10, v12, v11, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 140
    invoke-direct {v9, v10, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v7, v9

    .line 133
    :cond_4
    invoke-direct {v6, v2, v7, v4}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    new-instance v2, Lexpo/modules/blur/BlurModule$definition$lambda$3$lambda$1$$inlined$OnViewDidUpdateProps$1;

    invoke-direct {v2}, Lexpo/modules/blur/BlurModule$definition$lambda$3$lambda$1$$inlined$OnViewDidUpdateProps$1;-><init>()V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3, v2}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->setOnViewDidUpdateProps(Lkotlin/jvm/functions/Function1;)V

    .line 155
    invoke-virtual {v3}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->build()Lexpo/modules/kotlin/views/ViewManagerDefinition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->registerViewDefinition(Lexpo/modules/kotlin/views/ViewManagerDefinition;)V

    .line 40
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    const-class v2, Lexpo/modules/blur/ExpoBlurTargetView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 157
    new-instance v3, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;

    .line 159
    new-instance v4, Lexpo/modules/kotlin/types/LazyKType;

    const-class v5, Lexpo/modules/blur/ExpoBlurTargetView;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    .line 157
    sget-object v6, Lexpo/modules/blur/BlurModule$definition$lambda$3$$inlined$View$2;->INSTANCE:Lexpo/modules/blur/BlurModule$definition$lambda$3$$inlined$View$2;

    move-object v7, v6

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 159
    invoke-direct/range {v4 .. v9}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v4, Lkotlin/reflect/KType;

    .line 160
    invoke-virtual {v0}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v5

    .line 157
    invoke-direct {v3, v2, v4, v5}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;-><init>(Lkotlin/reflect/KClass;Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 163
    invoke-static {v3}, Lexpo/modules/kotlin/views/decorators/CSSPropsKt;->UseCSSProps(Lexpo/modules/kotlin/views/ViewDefinitionBuilder;)V

    .line 41
    const-string v2, "ExpoBlurTargetView"

    invoke-virtual {v3, v2}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v3}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->build()Lexpo/modules/kotlin/views/ViewManagerDefinition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->registerViewDefinition(Lexpo/modules/kotlin/views/ViewManagerDefinition;)V

    .line 46
    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method
