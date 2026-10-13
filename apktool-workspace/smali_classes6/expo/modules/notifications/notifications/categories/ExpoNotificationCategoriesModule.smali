.class public Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "ExpoNotificationCategoriesModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpoNotificationCategoriesModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpoNotificationCategoriesModule.kt\nexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 6 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 7 UntypedAsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/UntypedAsyncFunctionComponentKt\n+ 8 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 9 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,146:1\n69#2:147\n14#3:148\n25#3:149\n27#4,3:150\n31#4:279\n245#5,8:153\n253#5,2:205\n324#5:207\n327#5,3:253\n274#5:256\n277#5,3:276\n172#6,7:161\n169#6:168\n145#6,2:169\n159#6,8:171\n194#6,9:208\n169#6:217\n145#6,2:218\n159#6,8:220\n203#6:228\n169#6:229\n145#6,2:230\n159#6,8:232\n204#6:240\n169#6:241\n145#6,2:242\n159#6,8:244\n201#6:252\n172#6,7:257\n169#6:264\n145#6,2:265\n159#6,8:267\n177#6:275\n13#7,6:179\n19#7,19:186\n11#8:185\n1563#9:280\n1634#9,3:281\n*S KotlinDebug\n*F\n+ 1 ExpoNotificationCategoriesModule.kt\nexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule\n*L\n58#1:147\n58#1:148\n58#1:149\n58#1:150,3\n58#1:279\n61#1:153,8\n61#1:205,2\n75#1:207\n75#1:253,3\n77#1:256\n77#1:276,3\n61#1:161,7\n61#1:168\n61#1:169,2\n61#1:171,8\n75#1:208,9\n75#1:217\n75#1:218,2\n75#1:220,8\n75#1:228\n75#1:229\n75#1:230,2\n75#1:232,8\n75#1:240\n75#1:241\n75#1:242,2\n75#1:244,8\n75#1:252\n77#1:257,7\n77#1:264\n77#1:265,2\n77#1:267,8\n77#1:275\n61#1:179,6\n61#1:186,19\n61#1:185\n143#1:280\n143#1:281,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\rH\u0016JF\u0010\u000e\u001a\u00020\u000f2<\u0010\u0010\u001a8\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\u0015\u0012\u0015\u0012\u0013\u0018\u00010\u0016\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\u0017\u0012\u0004\u0012\u00020\u00180\u0011j\u0002`\u0019H\u0002J>\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001c2\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001e2\u0016\u0010 \u001a\u0012\u0012\u0004\u0012\u00020\u001c\u0012\u0006\u0012\u0004\u0018\u00010\"\u0018\u00010!2\u0006\u0010#\u001a\u00020$H\u0016J\u0018\u0010%\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010#\u001a\u00020$H\u0016J\u001e\u0010&\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u001e2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020)0(H\u0014R\u0014\u0010\u0004\u001a\u00020\u0005X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006*"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "<init>",
        "()V",
        "serializer",
        "Lexpo/modules/notifications/notifications/categories/serializers/ExpoNotificationsCategoriesSerializer;",
        "getSerializer",
        "()Lexpo/modules/notifications/notifications/categories/serializers/ExpoNotificationsCategoriesSerializer;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "createResultReceiver",
        "Landroid/os/ResultReceiver;",
        "body",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "resultCode",
        "Landroid/os/Bundle;",
        "resultData",
        "",
        "Lexpo/modules/notifications/ResultReceiverBody;",
        "setNotificationCategoryAsync",
        "identifier",
        "",
        "actionArguments",
        "",
        "Lexpo/modules/notifications/notifications/categories/NotificationActionRecord;",
        "categoryOptions",
        "",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "deleteNotificationCategoryAsync",
        "serializeCategories",
        "categories",
        "",
        "Lexpo/modules/notifications/notifications/model/NotificationCategory;",
        "expo-notifications_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final serializer:Lexpo/modules/notifications/notifications/categories/serializers/ExpoNotificationsCategoriesSerializer;


# direct methods
.method public static synthetic $r8$lambda$_GBatI2J5miN6IB6FQZXduXSL4s(Lexpo/modules/kotlin/Promise;ILandroid/os/Bundle;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;->deleteNotificationCategoryAsync$lambda$4(Lexpo/modules/kotlin/Promise;ILandroid/os/Bundle;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ofAN15wMdT58yFCcw8Ike560hQw(Lexpo/modules/kotlin/Promise;Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;ILandroid/os/Bundle;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;->setNotificationCategoryAsync$lambda$3(Lexpo/modules/kotlin/Promise;Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;ILandroid/os/Bundle;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    .line 53
    new-instance v0, Lexpo/modules/notifications/notifications/categories/serializers/ExpoNotificationsCategoriesSerializer;

    invoke-direct {v0}, Lexpo/modules/notifications/notifications/categories/serializers/ExpoNotificationsCategoriesSerializer;-><init>()V

    iput-object v0, p0, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;->serializer:Lexpo/modules/notifications/notifications/categories/serializers/ExpoNotificationsCategoriesSerializer;

    return-void
.end method

.method public static final synthetic access$createResultReceiver(Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;Lkotlin/jvm/functions/Function2;)Landroid/os/ResultReceiver;
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;->createResultReceiver(Lkotlin/jvm/functions/Function2;)Landroid/os/ResultReceiver;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContext(Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;)Landroid/content/Context;
    .locals 0

    .line 51
    invoke-direct {p0}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private final createResultReceiver(Lkotlin/jvm/functions/Function2;)Landroid/os/ResultReceiver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroid/os/Bundle;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/os/ResultReceiver;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 81
    invoke-static {v0, p1}, Lexpo/modules/notifications/UtilsKt;->createDefaultResultReceiver(Landroid/os/Handler;Lkotlin/jvm/functions/Function2;)Landroid/os/ResultReceiver;

    move-result-object p1

    return-object p1
.end method

.method private static final deleteNotificationCategoryAsync$lambda$4(Lexpo/modules/kotlin/Promise;ILandroid/os/Bundle;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    .line 134
    const-string p1, "succeeded"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    invoke-interface {p0, v0}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 136
    :cond_1
    const-string p1, "ERR_CATEGORY_DELETE_FAILED"

    const-string p2, "The category could not be deleted."

    invoke-interface {p0, p1, p2, v0}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final getContext()Landroid/content/Context;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;

    invoke-direct {v0}, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;-><init>()V

    throw v0
.end method

.method private static final setNotificationCategoryAsync$lambda$3(Lexpo/modules/kotlin/Promise;Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;ILandroid/os/Bundle;)Lkotlin/Unit;
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 118
    const-string v1, "notificationCategory"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Lexpo/modules/notifications/notifications/model/NotificationCategory;

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    .line 120
    iget-object p1, p1, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;->serializer:Lexpo/modules/notifications/notifications/categories/serializers/ExpoNotificationsCategoriesSerializer;

    invoke-virtual {p1, p3}, Lexpo/modules/notifications/notifications/categories/serializers/ExpoNotificationsCategoriesSerializer;->toBundle(Lexpo/modules/notifications/notifications/model/NotificationCategory;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p0, p1}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_1

    .line 122
    :cond_1
    const-string p1, "ERR_CATEGORY_SET_FAILED"

    const-string p2, "The provided category could not be set."

    invoke-interface {p0, p1, p2, v0}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 12

    .line 58
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/modules/Module;

    .line 147
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

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ExpoModulesCore] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 147
    :try_start_0
    new-instance v1, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    .line 59
    const-string v0, "ExpoNotificationCategoriesModule"

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 61
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "getNotificationCategoriesAsync"

    .line 153
    const-class v3, Lexpo/modules/kotlin/Promise;

    const-class v4, Lexpo/modules/kotlin/Promise;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 154
    new-instance v3, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v6, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 160
    new-instance v7, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunction$1;

    invoke-direct {v7, p0}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunction$1;-><init>(Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 154
    invoke-direct {v3, v2, v6, v7}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto/16 :goto_1

    .line 156
    :cond_0
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v3

    .line 163
    const-class v6, Lexpo/modules/kotlin/Promise;

    .line 167
    new-array v6, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 168
    sget-object v7, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 169
    new-instance v8, Lkotlin/Pair;

    const-class v9, Lexpo/modules/kotlin/Promise;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 170
    invoke-virtual {v7}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/kotlin/types/AnyType;

    if-nez v7, :cond_1

    .line 168
    sget-object v7, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunction$2;->INSTANCE:Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunction$2;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 171
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 172
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    const-class v10, Lexpo/modules/kotlin/Promise;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-direct {v9, v10, v5, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 171
    invoke-direct {v8, v9, v3}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v7, v8

    .line 168
    :cond_1
    aput-object v7, v6, v5

    .line 156
    new-instance v3, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunction$3;

    invoke-direct {v3, p0}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunction$3;-><init>(Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 182
    const-class v7, Lkotlin/Unit;

    .line 183
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 186
    new-instance v7, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v7, v2, v6, v3}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    :goto_0
    move-object v3, v7

    goto :goto_1

    .line 188
    :cond_2
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 190
    new-instance v7, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v7, v2, v6, v3}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 192
    :cond_3
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 194
    new-instance v7, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v7, v2, v6, v3}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 196
    :cond_4
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 198
    new-instance v7, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v7, v2, v6, v3}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 200
    :cond_5
    const-class v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 202
    new-instance v7, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v7, v2, v6, v3}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 204
    :cond_6
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v2, v6, v3}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 205
    :goto_1
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "setNotificationCategoryAsync"

    .line 207
    new-instance v3, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v6

    .line 210
    const-class v7, Ljava/lang/String;

    .line 211
    const-class v7, Ljava/util/List;

    .line 212
    const-class v7, Ljava/util/Map;

    const/4 v7, 0x3

    .line 216
    new-array v7, v7, [Lexpo/modules/kotlin/types/AnyType;

    .line 217
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 218
    new-instance v9, Lkotlin/Pair;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 219
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_7

    .line 217
    sget-object v8, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$1;->INSTANCE:Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$1;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 220
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 221
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v5, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 220
    invoke-direct {v9, v10, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v8, v9

    .line 217
    :cond_7
    aput-object v8, v7, v5

    .line 229
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 230
    new-instance v9, Lkotlin/Pair;

    const-class v10, Ljava/util/List;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 231
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_8

    .line 229
    sget-object v8, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$2;->INSTANCE:Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$2;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 232
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 233
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Ljava/util/List;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v5, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 232
    invoke-direct {v9, v10, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v8, v9

    .line 229
    :cond_8
    aput-object v8, v7, v4

    .line 241
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 242
    new-instance v9, Lkotlin/Pair;

    const-class v10, Ljava/util/Map;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 243
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_9

    .line 241
    sget-object v8, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$3;->INSTANCE:Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$3;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 244
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 245
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Ljava/util/Map;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v4, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 244
    invoke-direct {v9, v10, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v8, v9

    :cond_9
    const/4 v6, 0x2

    .line 241
    aput-object v8, v7, v6

    .line 253
    new-instance v6, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$4;

    invoke-direct {v6, p0}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$4;-><init>(Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 207
    invoke-direct {v3, v2, v7, v6}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 254
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 77
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "deleteNotificationCategoryAsync"

    .line 256
    new-instance v3, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v6

    .line 259
    const-class v7, Ljava/lang/String;

    .line 263
    new-array v4, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 264
    sget-object v7, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 265
    new-instance v8, Lkotlin/Pair;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 266
    invoke-virtual {v7}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/kotlin/types/AnyType;

    if-nez v7, :cond_a

    .line 264
    sget-object v7, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$5;->INSTANCE:Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$5;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 267
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 268
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-direct {v9, v10, v5, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 267
    invoke-direct {v8, v9, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v7, v8

    .line 264
    :cond_a
    aput-object v7, v4, v5

    .line 276
    new-instance v5, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$6;

    invoke-direct {v5, p0}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$6;-><init>(Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 256
    invoke-direct {v3, v2, v4, v5}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 277
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 147
    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

.method public deleteNotificationCategoryAsync(Ljava/lang/String;Lexpo/modules/kotlin/Promise;)V
    .locals 3

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    sget-object v0, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    .line 130
    invoke-direct {p0}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 132
    new-instance v2, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/kotlin/Promise;)V

    invoke-direct {p0, v2}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;->createResultReceiver(Lkotlin/jvm/functions/Function2;)Landroid/os/ResultReceiver;

    move-result-object p2

    .line 129
    invoke-virtual {v0, v1, p1, p2}, Lexpo/modules/notifications/service/NotificationsService$Companion;->deleteCategory(Landroid/content/Context;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method protected final getSerializer()Lexpo/modules/notifications/notifications/categories/serializers/ExpoNotificationsCategoriesSerializer;
    .locals 1

    .line 53
    iget-object v0, p0, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;->serializer:Lexpo/modules/notifications/notifications/categories/serializers/ExpoNotificationsCategoriesSerializer;

    return-object v0
.end method

.method protected serializeCategories(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lexpo/modules/notifications/notifications/model/NotificationCategory;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-string v0, "categories"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;->serializer:Lexpo/modules/notifications/notifications/categories/serializers/ExpoNotificationsCategoriesSerializer;

    .line 280
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 281
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 282
    check-cast v2, Lexpo/modules/notifications/notifications/model/NotificationCategory;

    .line 143
    invoke-virtual {v0, v2}, Lexpo/modules/notifications/notifications/categories/serializers/ExpoNotificationsCategoriesSerializer;->toBundle(Lexpo/modules/notifications/notifications/model/NotificationCategory;)Landroid/os/Bundle;

    move-result-object v2

    .line 282
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 283
    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public setNotificationCategoryAsync(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lexpo/modules/kotlin/Promise;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lexpo/modules/notifications/notifications/categories/NotificationActionRecord;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lexpo/modules/kotlin/Promise;",
            ")V"
        }
    .end annotation

    const-string p3, "identifier"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "actionArguments"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "promise"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    check-cast p3, Ljava/util/List;

    .line 90
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/notifications/categories/NotificationActionRecord;

    .line 91
    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/categories/NotificationActionRecord;->getTextInput()Lexpo/modules/notifications/notifications/categories/NotificationActionRecord$TextInput;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    new-instance v2, Lexpo/modules/notifications/notifications/model/TextInputNotificationAction;

    .line 95
    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/categories/NotificationActionRecord;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/categories/NotificationActionRecord;->getButtonTitle()Ljava/lang/String;

    move-result-object v4

    .line 97
    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/categories/NotificationActionRecord;->getOptions()Lexpo/modules/notifications/notifications/categories/NotificationActionRecord$Options;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/categories/NotificationActionRecord$Options;->getOpensAppToForeground()Z

    move-result v0

    .line 98
    invoke-virtual {v1}, Lexpo/modules/notifications/notifications/categories/NotificationActionRecord$TextInput;->getPlaceholder()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-direct {v2, v3, v4, v0, v1}, Lexpo/modules/notifications/notifications/model/TextInputNotificationAction;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 93
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_0
    new-instance v1, Lexpo/modules/notifications/notifications/model/NotificationAction;

    .line 104
    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/categories/NotificationActionRecord;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/categories/NotificationActionRecord;->getButtonTitle()Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/categories/NotificationActionRecord;->getOptions()Lexpo/modules/notifications/notifications/categories/NotificationActionRecord$Options;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/categories/NotificationActionRecord$Options;->getOpensAppToForeground()Z

    move-result v0

    .line 103
    invoke-direct {v1, v2, v3, v0}, Lexpo/modules/notifications/notifications/model/NotificationAction;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 102
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 114
    sget-object p2, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    .line 115
    invoke-direct {p0}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 116
    new-instance v1, Lexpo/modules/notifications/notifications/model/NotificationCategory;

    invoke-direct {v1, p1, p3}, Lexpo/modules/notifications/notifications/model/NotificationCategory;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 117
    new-instance p1, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$$ExternalSyntheticLambda1;

    invoke-direct {p1, p4, p0}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/kotlin/Promise;Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;)V

    invoke-direct {p0, p1}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;->createResultReceiver(Lkotlin/jvm/functions/Function2;)Landroid/os/ResultReceiver;

    move-result-object p1

    .line 114
    invoke-virtual {p2, v0, v1, p1}, Lexpo/modules/notifications/service/NotificationsService$Companion;->setCategory(Landroid/content/Context;Lexpo/modules/notifications/notifications/model/NotificationCategory;Landroid/os/ResultReceiver;)V

    return-void

    .line 112
    :cond_2
    new-instance p1, Lexpo/modules/core/errors/InvalidArgumentException;

    const-string p2, "Invalid arguments provided for notification category. Must provide at least one action."

    invoke-direct {p1, p2}, Lexpo/modules/core/errors/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
