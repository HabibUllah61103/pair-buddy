.class public final Lexpo/modules/lineargradient/LinearGradientModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "LinearGradientModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLinearGradientModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LinearGradientModule.kt\nexpo/modules/lineargradient/LinearGradientModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder\n+ 6 ViewDefinitionBuilder.kt\nexpo/modules/kotlin/views/ViewDefinitionBuilder\n+ 7 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n*L\n1#1,39:1\n69#2:40\n14#3:41\n25#3:42\n27#4,3:43\n31#4:165\n94#5,9:46\n103#5,2:163\n127#6,3:55\n130#6,3:70\n127#6,3:73\n130#6,3:88\n127#6,3:91\n130#6,3:106\n127#6,3:109\n130#6,3:124\n127#6,3:127\n130#6,3:142\n127#6,3:145\n130#6,3:160\n168#7,2:58\n145#7,2:60\n159#7,8:62\n168#7,2:76\n145#7,2:78\n159#7,8:80\n168#7,2:94\n145#7,2:96\n159#7,8:98\n168#7,2:112\n145#7,2:114\n159#7,8:116\n168#7,2:130\n145#7,2:132\n159#7,8:134\n168#7,2:148\n145#7,2:150\n159#7,8:152\n*S KotlinDebug\n*F\n+ 1 LinearGradientModule.kt\nexpo/modules/lineargradient/LinearGradientModule\n*L\n7#1:40\n7#1:41\n7#1:42\n7#1:43,3\n7#1:165\n10#1:46,9\n10#1:163,2\n11#1:55,3\n11#1:70,3\n15#1:73,3\n15#1:88,3\n21#1:91,3\n21#1:106,3\n25#1:109,3\n25#1:124,3\n29#1:127,3\n29#1:142,3\n33#1:145,3\n33#1:160,3\n11#1:58,2\n11#1:60,2\n11#1:62,8\n15#1:76,2\n15#1:78,2\n15#1:80,8\n21#1:94,2\n21#1:96,2\n21#1:98,8\n25#1:112,2\n25#1:114,2\n25#1:116,8\n29#1:130,2\n29#1:132,2\n29#1:134,8\n33#1:148,2\n33#1:150,2\n33#1:152,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lexpo/modules/lineargradient/LinearGradientModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "<init>",
        "()V",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "expo-linear-gradient_release"
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

    .line 6
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    return-void
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 14

    .line 7
    const-class v0, [I

    const-class v1, [F

    move-object v2, p0

    check-cast v2, Lexpo/modules/kotlin/modules/Module;

    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".ModuleDefinition"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ExpoModulesCore] "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-static {v3}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 40
    :try_start_0
    new-instance v3, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v3, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    .line 8
    const-string v2, "ExpoLinearGradient"

    invoke-virtual {v3, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 10
    move-object v2, v3

    check-cast v2, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    const-class v4, Lexpo/modules/lineargradient/LinearGradientView;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 46
    new-instance v5, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;

    .line 48
    new-instance v6, Lexpo/modules/kotlin/types/LazyKType;

    const-class v7, Lexpo/modules/lineargradient/LinearGradientView;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    .line 46
    sget-object v8, Lexpo/modules/lineargradient/LinearGradientModule$definition$lambda$1$$inlined$View$1;->INSTANCE:Lexpo/modules/lineargradient/LinearGradientModule$definition$lambda$1$$inlined$View$1;

    move-object v9, v8

    check-cast v9, Lkotlin/jvm/functions/Function0;

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 48
    invoke-direct/range {v6 .. v11}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v6, Lkotlin/reflect/KType;

    .line 49
    invoke-virtual {v2}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v7

    .line 46
    invoke-direct {v5, v4, v6, v7}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;-><init>(Lkotlin/reflect/KClass;Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 52
    invoke-static {v5}, Lexpo/modules/kotlin/views/decorators/CSSPropsKt;->UseCSSProps(Lexpo/modules/kotlin/views/ViewDefinitionBuilder;)V

    .line 11
    const-string v4, "colors"

    sget-object v6, Lexpo/modules/lineargradient/LinearGradientModule$definition$1$1$1;->INSTANCE:Lexpo/modules/lineargradient/LinearGradientModule$definition$1$1$1;

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 55
    invoke-virtual {v5}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v7

    new-instance v8, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 59
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 60
    new-instance v10, Lkotlin/Pair;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-direct {v10, v11, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    const/4 v10, 0x0

    if-nez v9, :cond_0

    .line 59
    sget-object v9, Lexpo/modules/lineargradient/LinearGradientModule$definition$lambda$1$lambda$0$$inlined$Prop$1;->INSTANCE:Lexpo/modules/lineargradient/LinearGradientModule$definition$lambda$1$lambda$0$$inlined$Prop$1;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 62
    new-instance v11, Lexpo/modules/kotlin/types/AnyType;

    .line 63
    new-instance v13, Lexpo/modules/kotlin/types/LazyKType;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-direct {v13, v0, v12, v9}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v13, Lkotlin/reflect/KType;

    .line 62
    invoke-direct {v11, v13, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v9, v11

    .line 55
    :cond_0
    invoke-direct {v8, v4, v9, v6}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string v0, "locations"

    sget-object v4, Lexpo/modules/lineargradient/LinearGradientModule$definition$1$1$2;->INSTANCE:Lexpo/modules/lineargradient/LinearGradientModule$definition$1$1$2;

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 73
    invoke-virtual {v5}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v6

    new-instance v7, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 77
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 78
    new-instance v9, Lkotlin/Pair;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-direct {v9, v11, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_1

    .line 77
    sget-object v8, Lexpo/modules/lineargradient/LinearGradientModule$definition$lambda$1$lambda$0$$inlined$Prop$2;->INSTANCE:Lexpo/modules/lineargradient/LinearGradientModule$definition$lambda$1$lambda$0$$inlined$Prop$2;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 80
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 81
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-direct {v11, v13, v12, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 80
    invoke-direct {v9, v11, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v8, v9

    .line 73
    :cond_1
    invoke-direct {v7, v0, v8, v4}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string v0, "startPoint"

    sget-object v4, Lexpo/modules/lineargradient/LinearGradientModule$definition$1$1$3;->INSTANCE:Lexpo/modules/lineargradient/LinearGradientModule$definition$1$1$3;

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 91
    invoke-virtual {v5}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v6

    new-instance v7, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 95
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 96
    new-instance v9, Lkotlin/Pair;

    const-class v11, Lkotlin/Pair;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-direct {v9, v11, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_2

    .line 95
    sget-object v8, Lexpo/modules/lineargradient/LinearGradientModule$definition$lambda$1$lambda$0$$inlined$Prop$3;->INSTANCE:Lexpo/modules/lineargradient/LinearGradientModule$definition$lambda$1$lambda$0$$inlined$Prop$3;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 98
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 99
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v13, Lkotlin/Pair;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-direct {v11, v13, v12, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 98
    invoke-direct {v9, v11, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v8, v9

    .line 91
    :cond_2
    invoke-direct {v7, v0, v8, v4}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v0, "endPoint"

    sget-object v4, Lexpo/modules/lineargradient/LinearGradientModule$definition$1$1$4;->INSTANCE:Lexpo/modules/lineargradient/LinearGradientModule$definition$1$1$4;

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 109
    invoke-virtual {v5}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v6

    new-instance v7, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 113
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 114
    new-instance v9, Lkotlin/Pair;

    const-class v11, Lkotlin/Pair;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-direct {v9, v11, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_3

    .line 113
    sget-object v8, Lexpo/modules/lineargradient/LinearGradientModule$definition$lambda$1$lambda$0$$inlined$Prop$4;->INSTANCE:Lexpo/modules/lineargradient/LinearGradientModule$definition$lambda$1$lambda$0$$inlined$Prop$4;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 116
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 117
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v13, Lkotlin/Pair;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-direct {v11, v13, v12, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 116
    invoke-direct {v9, v11, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v8, v9

    .line 109
    :cond_3
    invoke-direct {v7, v0, v8, v4}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v0, "borderRadii"

    sget-object v4, Lexpo/modules/lineargradient/LinearGradientModule$definition$1$1$5;->INSTANCE:Lexpo/modules/lineargradient/LinearGradientModule$definition$1$1$5;

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 127
    invoke-virtual {v5}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v6

    new-instance v7, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 131
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 132
    new-instance v9, Lkotlin/Pair;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-direct {v9, v11, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_4

    .line 131
    sget-object v8, Lexpo/modules/lineargradient/LinearGradientModule$definition$lambda$1$lambda$0$$inlined$Prop$5;->INSTANCE:Lexpo/modules/lineargradient/LinearGradientModule$definition$lambda$1$lambda$0$$inlined$Prop$5;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 134
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 135
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-direct {v11, v1, v12, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 134
    invoke-direct {v9, v11, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v8, v9

    .line 127
    :cond_4
    invoke-direct {v7, v0, v8, v4}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v0, "dither"

    sget-object v1, Lexpo/modules/lineargradient/LinearGradientModule$definition$1$1$6;->INSTANCE:Lexpo/modules/lineargradient/LinearGradientModule$definition$1$1$6;

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 145
    invoke-virtual {v5}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v4

    new-instance v6, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 149
    sget-object v7, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 150
    new-instance v8, Lkotlin/Pair;

    const-class v9, Ljava/lang/Boolean;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v8, v9, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    invoke-virtual {v7}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/kotlin/types/AnyType;

    if-nez v7, :cond_5

    .line 149
    sget-object v7, Lexpo/modules/lineargradient/LinearGradientModule$definition$lambda$1$lambda$0$$inlined$Prop$6;->INSTANCE:Lexpo/modules/lineargradient/LinearGradientModule$definition$lambda$1$lambda$0$$inlined$Prop$6;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 152
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 153
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Ljava/lang/Boolean;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v9, v11, v12, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 152
    invoke-direct {v8, v9, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v7, v8

    .line 145
    :cond_5
    invoke-direct {v6, v0, v7, v1}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-virtual {v5}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->build()Lexpo/modules/kotlin/views/ViewManagerDefinition;

    move-result-object v0

    invoke-virtual {v2, v0}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->registerViewDefinition(Lexpo/modules/kotlin/views/ViewManagerDefinition;)V

    .line 40
    invoke-virtual {v3}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method
