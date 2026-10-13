.class public final Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;
.super Ljava/lang/Object;
.source "JSDecoratorsBridgingObject.kt"

# interfaces
.implements Lexpo/modules/kotlin/jni/Destructible;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJSDecoratorsBridgingObject.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JSDecoratorsBridgingObject.kt\nexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject\n+ 2 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 3 Trace.kt\nandroidx/tracing/TraceKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 7 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,269:1\n14#2:270\n25#2:271\n14#2:278\n25#2:279\n14#2:286\n25#2:287\n14#2:294\n25#2:295\n14#2:302\n25#2:303\n14#2:312\n25#2:313\n14#2:320\n25#2:321\n14#2:327\n25#2:328\n27#3,3:272\n31#3:277\n27#3,3:280\n31#3:285\n27#3,3:288\n31#3:293\n27#3,3:296\n31#3:301\n27#3,3:304\n31#3:311\n27#3,3:314\n31#3:319\n27#3,5:322\n27#3,3:329\n31#3:334\n216#4,2:275\n216#4,2:291\n32#5,2:283\n32#5,2:317\n1869#6,2:299\n1869#6,2:332\n37#7:307\n36#7,3:308\n*S KotlinDebug\n*F\n+ 1 JSDecoratorsBridgingObject.kt\nexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject\n*L\n117#1:270\n117#1:271\n136#1:278\n136#1:279\n148#1:286\n148#1:287\n164#1:294\n164#1:295\n175#1:302\n175#1:303\n211#1:312\n211#1:313\n227#1:320\n227#1:321\n251#1:327\n251#1:328\n117#1:272,3\n117#1:277\n136#1:280,3\n136#1:285\n148#1:288,3\n148#1:293\n164#1:296,3\n164#1:301\n175#1:304,3\n175#1:311\n211#1:314,3\n211#1:319\n227#1:322,5\n251#1:329,3\n251#1:334\n124#1:275,2\n150#1:291,2\n137#1:283,2\n212#1:317,2\n165#1:299,2\n254#1:332,2\n199#1:307\n199#1:308,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\u0008\u001a\u00020\u0007H\u0082 J\u0011\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0086 JD\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0086 \u00a2\u0006\u0002\u0010\u001aJ<\u0010\u001b\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u0018\u001a\u00020\u001cH\u0086 \u00a2\u0006\u0002\u0010\u001dJV\u0010\u001e\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u00112\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u0008\u0010!\u001a\u0004\u0018\u00010\u00192\u0006\u0010\"\u001a\u00020\u00112\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u0008\u0010$\u001a\u0004\u0018\u00010\u0019H\u0086 \u00a2\u0006\u0002\u0010%J\u001b\u0010&\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010!\u001a\u0004\u0018\u00010\'H\u0086 J\u0019\u0010(\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010)\u001a\u00020\u0000H\u0086 JZ\u0010*\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010+\u001a\u00020\u00002\u0006\u0010,\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u00112\u000c\u0010-\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010.2\u0006\u0010/\u001a\u00020\u00112\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u0018\u001a\u00020\u0019H\u0086 \u00a2\u0006\u0002\u00100J\u000e\u00101\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0008\u00102\u001a\u00020\nH\u0004J\u0008\u00103\u001a\u00020\u0007H\u0016J\n\u00104\u001a\u00020\n*\u000205J\u001a\u00106\u001a\u00020\n*\u0002052\u0006\u00107\u001a\u00020\u000f2\u0006\u00108\u001a\u000209J\u0012\u0010:\u001a\u00020\n*\u0002052\u0006\u00108\u001a\u000209J \u0010;\u001a\u00020\n*\u0008\u0012\u0004\u0012\u00020=0<2\u0006\u00108\u001a\u0002092\u0006\u0010>\u001a\u00020?J\u001a\u0010@\u001a\u00020\n*\u00020=2\u0006\u00108\u001a\u0002092\u0006\u0010>\u001a\u00020?J\u001a\u0010A\u001a\u00020\n*\u00020=2\u0006\u00107\u001a\u00020\u000f2\u0006\u00108\u001a\u000209J.\u0010B\u001a\u00020\n*\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020D0C2\u0006\u0010E\u001a\u00020\u000f2\u0006\u00108\u001a\u0002092\u0006\u0010>\u001a\u00020?J*\u0010F\u001a\u00020\n*\u00020D2\u0006\u0010G\u001a\u00020\u000f2\u0006\u0010H\u001a\u00020\u000f2\u0006\u00108\u001a\u0002092\u0006\u0010>\u001a\u00020?R\u0010\u0010\u0006\u001a\u00020\u00078\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006I"
    }
    d2 = {
        "Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;",
        "Lexpo/modules/kotlin/jni/Destructible;",
        "jniDeallocator",
        "Lexpo/modules/kotlin/jni/JNIDeallocator;",
        "<init>",
        "(Lexpo/modules/kotlin/jni/JNIDeallocator;)V",
        "mHybridData",
        "Lcom/facebook/jni/HybridData;",
        "initHybrid",
        "registerConstants",
        "",
        "constants",
        "Lcom/facebook/react/bridge/NativeMap;",
        "registerSyncFunction",
        "name",
        "",
        "takesOwner",
        "",
        "enumerable",
        "desiredTypes",
        "",
        "Lexpo/modules/kotlin/jni/ExpectedType;",
        "cppReturnType",
        "",
        "body",
        "Lexpo/modules/kotlin/jni/JNIFunctionBody;",
        "(Ljava/lang/String;ZZ[Lexpo/modules/kotlin/jni/ExpectedType;ILexpo/modules/kotlin/jni/JNIFunctionBody;)V",
        "registerAsyncFunction",
        "Lexpo/modules/kotlin/jni/JNIAsyncFunctionBody;",
        "(Ljava/lang/String;ZZ[Lexpo/modules/kotlin/jni/ExpectedType;Lexpo/modules/kotlin/jni/JNIAsyncFunctionBody;)V",
        "registerProperty",
        "getterTakesOwner",
        "getterExpectedType",
        "getter",
        "setterTakesOwner",
        "setterExpectedType",
        "setter",
        "(Ljava/lang/String;Z[Lexpo/modules/kotlin/jni/ExpectedType;Lexpo/modules/kotlin/jni/JNIFunctionBody;Z[Lexpo/modules/kotlin/jni/ExpectedType;Lexpo/modules/kotlin/jni/JNIFunctionBody;)V",
        "registerConstant",
        "Lexpo/modules/kotlin/jni/JNINoArgsFunctionBody;",
        "registerObject",
        "jsDecoratorsBridgingObject",
        "registerClass",
        "prototypeDecorator",
        "constructorDecorator",
        "ownerClass",
        "Ljava/lang/Class;",
        "isSharedRef",
        "(Ljava/lang/String;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;ZLjava/lang/Class;Z[Lexpo/modules/kotlin/jni/ExpectedType;Lexpo/modules/kotlin/jni/JNIFunctionBody;)V",
        "registerModuleName",
        "finalize",
        "getHybridDataForJNIDeallocator",
        "exportConstants",
        "Lexpo/modules/kotlin/objects/ObjectDefinitionData;",
        "exportFunctions",
        "objectName",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "exportProperties",
        "exportClasses",
        "",
        "Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;",
        "runtime",
        "Lexpo/modules/kotlin/runtime/Runtime;",
        "exportClass",
        "exportStaticFunctions",
        "exportViewPrototypes",
        "",
        "Lexpo/modules/kotlin/views/ViewManagerDefinition;",
        "modulesName",
        "exportViewPrototype",
        "moduleName",
        "viewKey",
        "expo-modules-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final mHybridData:Lcom/facebook/jni/HybridData;


# direct methods
.method public static synthetic $r8$lambda$KHzmHYA3nE3UAeYsO9ci4ke2OYc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->registerModuleName$lambda$0(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lexpo/modules/kotlin/jni/JNIDeallocator;)V
    .locals 1

    const-string v0, "jniDeallocator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-direct {p0}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->initHybrid()Lcom/facebook/jni/HybridData;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 37
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/jni/Destructible;

    invoke-virtual {p1, v0}, Lexpo/modules/kotlin/jni/JNIDeallocator;->addReference(Lexpo/modules/kotlin/jni/Destructible;)V

    return-void
.end method

.method private final native initHybrid()Lcom/facebook/jni/HybridData;
.end method

.method private static final registerModuleName$lambda$0(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final exportClass(Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/runtime/Runtime;)V
    .locals 10

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runtime"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attaching class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ExpoModulesCore] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 176
    :try_start_0
    new-instance v3, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;

    invoke-virtual {p3}, Lexpo/modules/kotlin/runtime/Runtime;->getDeallocator()Lexpo/modules/kotlin/jni/JNIDeallocator;

    move-result-object v0

    invoke-direct {v3, v0}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;-><init>(Lexpo/modules/kotlin/jni/JNIDeallocator;)V

    .line 177
    new-instance v4, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;

    invoke-virtual {p3}, Lexpo/modules/kotlin/runtime/Runtime;->getDeallocator()Lexpo/modules/kotlin/jni/JNIDeallocator;

    move-result-object p3

    invoke-direct {v4, p3}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;-><init>(Lexpo/modules/kotlin/jni/JNIDeallocator;)V

    .line 180
    invoke-virtual {p1}, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->getObjectDefinition()Lexpo/modules/kotlin/objects/ObjectDefinitionData;

    move-result-object p3

    invoke-virtual {v3, p3}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->exportConstants(Lexpo/modules/kotlin/objects/ObjectDefinitionData;)V

    .line 181
    invoke-virtual {p1}, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->getObjectDefinition()Lexpo/modules/kotlin/objects/ObjectDefinitionData;

    move-result-object p3

    invoke-virtual {p1}, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p3, v0, p2}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->exportFunctions(Lexpo/modules/kotlin/objects/ObjectDefinitionData;Ljava/lang/String;Lexpo/modules/kotlin/AppContext;)V

    .line 182
    invoke-virtual {p1}, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->getObjectDefinition()Lexpo/modules/kotlin/objects/ObjectDefinitionData;

    move-result-object p3

    invoke-virtual {v3, p3, p2}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->exportProperties(Lexpo/modules/kotlin/objects/ObjectDefinitionData;Lexpo/modules/kotlin/AppContext;)V

    .line 186
    invoke-virtual {p1}, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p1, p3, p2}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->exportStaticFunctions(Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;Ljava/lang/String;Lexpo/modules/kotlin/AppContext;)V

    .line 189
    invoke-virtual {p1}, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->getConstructor()Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    move-result-object p3

    .line 190
    invoke-virtual {p3}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;->getOwnerType()Lkotlin/reflect/KType;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lkotlin/reflect/KClass;

    if-eqz v2, :cond_1

    check-cast v0, Lkotlin/reflect/KClass;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v1

    :cond_2
    move-object v6, v1

    .line 193
    invoke-virtual {p1}, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->getName()Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-virtual {p3}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;->getTakesOwner$expo_modules_core_release()Z

    move-result v5

    .line 198
    invoke-virtual {p1}, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->isSharedRef()Z

    move-result v7

    .line 199
    invoke-virtual {p3}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;->getCppRequiredTypes$expo_modules_core_release()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    .line 310
    new-array v1, v1, [Lexpo/modules/kotlin/jni/ExpectedType;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [Lexpo/modules/kotlin/jni/ExpectedType;

    .line 200
    invoke-virtual {p1}, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;->getJNIFunctionBody$expo_modules_core_release(Ljava/lang/String;Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/jni/JNIFunctionBody;

    move-result-object v9

    move-object v1, p0

    .line 192
    invoke-virtual/range {v1 .. v9}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->registerClass(Ljava/lang/String;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;ZLjava/lang/Class;Z[Lexpo/modules/kotlin/jni/ExpectedType;Lexpo/modules/kotlin/jni/JNIFunctionBody;)V

    .line 202
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw p1
.end method

.method public final exportClasses(Ljava/util/List;Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/runtime/Runtime;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;",
            ">;",
            "Lexpo/modules/kotlin/AppContext;",
            "Lexpo/modules/kotlin/runtime/Runtime;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runtime"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 295
    :cond_0
    const-string v0, "[ExpoModulesCore] Attaching classes"

    .line 296
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 165
    :try_start_0
    check-cast p1, Ljava/lang/Iterable;

    .line 299
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;

    .line 166
    invoke-virtual {p0, v0, p2, p3}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->exportClass(Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/runtime/Runtime;)V

    goto :goto_0

    .line 168
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw p1
.end method

.method public final exportConstants(Lexpo/modules/kotlin/objects/ObjectDefinitionData;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Lexpo/modules/kotlin/objects/ObjectDefinitionData;->getLegacyConstantsProvider()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 113
    invoke-virtual {p1}, Lexpo/modules/kotlin/objects/ObjectDefinitionData;->getConstants()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 271
    :cond_0
    const-string v1, "[ExpoModulesCore] Exporting constants"

    .line 272
    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 118
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    invoke-static {v0}, Lcom/facebook/react/bridge/Arguments;->makeNativeMap(Ljava/util/Map;)Lcom/facebook/react/bridge/WritableNativeMap;

    move-result-object v0

    .line 120
    check-cast v0, Lcom/facebook/react/bridge/NativeMap;

    invoke-virtual {p0, v0}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->registerConstants(Lcom/facebook/react/bridge/NativeMap;)V

    .line 123
    :cond_1
    invoke-virtual {p1}, Lexpo/modules/kotlin/objects/ObjectDefinitionData;->getConstants()Ljava/util/Map;

    move-result-object p1

    .line 275
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/objects/ConstantComponent;

    .line 125
    invoke-virtual {v0, p0}, Lexpo/modules/kotlin/objects/ConstantComponent;->attachToJSObject(Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;)V

    goto :goto_0

    .line 127
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw p1
.end method

.method public final exportFunctions(Lexpo/modules/kotlin/objects/ObjectDefinitionData;Ljava/lang/String;Lexpo/modules/kotlin/AppContext;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "objectName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Lexpo/modules/kotlin/objects/ObjectDefinitionData;->getFunctions()Lexpo/modules/kotlin/ConcatIterator;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Lexpo/modules/kotlin/ConcatIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 279
    :cond_0
    const-string v0, "[ExpoModulesCore] Attaching functions"

    .line 280
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 137
    :try_start_0
    check-cast p1, Ljava/util/Iterator;

    .line 283
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/functions/AnyFunction;

    .line 138
    invoke-virtual {v0, p3, p0, p2}, Lexpo/modules/kotlin/functions/AnyFunction;->attachToJSObject(Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw p1
.end method

.method public final exportProperties(Lexpo/modules/kotlin/objects/ObjectDefinitionData;Lexpo/modules/kotlin/AppContext;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Lexpo/modules/kotlin/objects/ObjectDefinitionData;->getProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 287
    :cond_0
    const-string v0, "[ExpoModulesCore] Attaching properties"

    .line 288
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 149
    :try_start_0
    invoke-virtual {p1}, Lexpo/modules/kotlin/objects/ObjectDefinitionData;->getProperties()Ljava/util/Map;

    move-result-object p1

    .line 291
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/objects/PropertyComponent;

    .line 151
    invoke-virtual {v0, p2, p0}, Lexpo/modules/kotlin/objects/PropertyComponent;->attachToJSObject(Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;)V

    goto :goto_0

    .line 153
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw p1
.end method

.method public final exportStaticFunctions(Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;Ljava/lang/String;Lexpo/modules/kotlin/AppContext;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "objectName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1}, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->getStaticFunctions()Lexpo/modules/kotlin/ConcatIterator;

    move-result-object p1

    .line 207
    invoke-virtual {p1}, Lexpo/modules/kotlin/ConcatIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 313
    :cond_0
    const-string v0, "[ExpoModulesCore] Attaching static functions"

    .line 314
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 212
    :try_start_0
    check-cast p1, Ljava/util/Iterator;

    .line 317
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/functions/AnyFunction;

    .line 213
    invoke-virtual {v0, p3, p0, p2}, Lexpo/modules/kotlin/functions/AnyFunction;->attachToJSObject(Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw p1
.end method

.method public final exportViewPrototype(Lexpo/modules/kotlin/views/ViewManagerDefinition;Ljava/lang/String;Ljava/lang/String;Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/runtime/Runtime;)V
    .locals 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewKey"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appContext"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runtime"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p1}, Lexpo/modules/kotlin/views/ViewManagerDefinition;->getAsyncFunctions()Ljava/util/List;

    move-result-object v0

    .line 247
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 251
    :cond_0
    invoke-virtual {p1}, Lexpo/modules/kotlin/views/ViewManagerDefinition;->getName$expo_modules_core_release()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attaching view prototype for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ExpoModulesCore] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 329
    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 252
    :try_start_0
    new-instance v1, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;

    invoke-virtual {p5}, Lexpo/modules/kotlin/runtime/Runtime;->getDeallocator()Lexpo/modules/kotlin/jni/JNIDeallocator;

    move-result-object p5

    invoke-direct {v1, p5}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;-><init>(Lexpo/modules/kotlin/jni/JNIDeallocator;)V

    .line 254
    check-cast v0, Ljava/lang/Iterable;

    .line 332
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    .line 255
    invoke-virtual {p1}, Lexpo/modules/kotlin/views/ViewManagerDefinition;->getName$expo_modules_core_release()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p4, v1, v2}, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;->attachToJSObject(Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_1
    const-string p4, "DEFAULT_MODULE_VIEW"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    .line 262
    :cond_2
    invoke-virtual {p1}, Lexpo/modules/kotlin/views/ViewManagerDefinition;->getName$expo_modules_core_release()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 258
    :goto_1
    invoke-virtual {p0, p2, v1}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->registerObject(Ljava/lang/String;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;)V

    .line 266
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw p1
.end method

.method public final exportViewPrototypes(Ljava/util/Map;Ljava/lang/String;Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/runtime/Runtime;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lexpo/modules/kotlin/views/ViewManagerDefinition;",
            ">;",
            "Ljava/lang/String;",
            "Lexpo/modules/kotlin/AppContext;",
            "Lexpo/modules/kotlin/runtime/Runtime;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modulesName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runtime"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 321
    :cond_0
    const-string v0, "[ExpoModulesCore] Attaching view prototypes"

    .line 322
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 228
    :try_start_0
    new-instance v1, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;

    invoke-virtual {p4}, Lexpo/modules/kotlin/runtime/Runtime;->getDeallocator()Lexpo/modules/kotlin/jni/JNIDeallocator;

    move-result-object v0

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;-><init>(Lexpo/modules/kotlin/jni/JNIDeallocator;)V

    .line 230
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lexpo/modules/kotlin/views/ViewManagerDefinition;

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    .line 232
    invoke-virtual/range {v1 .. v6}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->exportViewPrototype(Lexpo/modules/kotlin/views/ViewManagerDefinition;Ljava/lang/String;Ljava/lang/String;Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/runtime/Runtime;)V

    move-object p2, v3

    move-object p3, v5

    move-object p4, v6

    goto :goto_0

    .line 236
    :cond_1
    const-string p1, "ViewPrototypes"

    invoke-virtual {p0, p1, v1}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->registerObject(Ljava/lang/String;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;)V

    .line 237
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw p1
.end method

.method protected final finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->resetNative()V

    return-void
.end method

.method public getHybridDataForJNIDeallocator()Lcom/facebook/jni/HybridData;
    .locals 1

    .line 108
    iget-object v0, p0, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->mHybridData:Lcom/facebook/jni/HybridData;

    return-object v0
.end method

.method public final native registerAsyncFunction(Ljava/lang/String;ZZ[Lexpo/modules/kotlin/jni/ExpectedType;Lexpo/modules/kotlin/jni/JNIAsyncFunctionBody;)V
.end method

.method public final native registerClass(Ljava/lang/String;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;ZLjava/lang/Class;Z[Lexpo/modules/kotlin/jni/ExpectedType;Lexpo/modules/kotlin/jni/JNIFunctionBody;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;",
            "Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;",
            "Z",
            "Ljava/lang/Class<",
            "*>;Z[",
            "Lexpo/modules/kotlin/jni/ExpectedType;",
            "Lexpo/modules/kotlin/jni/JNIFunctionBody;",
            ")V"
        }
    .end annotation
.end method

.method public final native registerConstant(Ljava/lang/String;Lexpo/modules/kotlin/jni/JNINoArgsFunctionBody;)V
.end method

.method public final native registerConstants(Lcom/facebook/react/bridge/NativeMap;)V
.end method

.method public final registerModuleName(Ljava/lang/String;)V
    .locals 9

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 94
    new-array v4, v0, [Lexpo/modules/kotlin/jni/ExpectedType;

    .line 91
    new-instance v5, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 97
    new-array v7, v0, [Lexpo/modules/kotlin/jni/ExpectedType;

    const/4 v8, 0x0

    .line 91
    const-string v2, "__expo_module_name__"

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->registerProperty(Ljava/lang/String;Z[Lexpo/modules/kotlin/jni/ExpectedType;Lexpo/modules/kotlin/jni/JNIFunctionBody;Z[Lexpo/modules/kotlin/jni/ExpectedType;Lexpo/modules/kotlin/jni/JNIFunctionBody;)V

    return-void
.end method

.method public final native registerObject(Ljava/lang/String;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;)V
.end method

.method public final native registerProperty(Ljava/lang/String;Z[Lexpo/modules/kotlin/jni/ExpectedType;Lexpo/modules/kotlin/jni/JNIFunctionBody;Z[Lexpo/modules/kotlin/jni/ExpectedType;Lexpo/modules/kotlin/jni/JNIFunctionBody;)V
.end method

.method public final native registerSyncFunction(Ljava/lang/String;ZZ[Lexpo/modules/kotlin/jni/ExpectedType;ILexpo/modules/kotlin/jni/JNIFunctionBody;)V
.end method
