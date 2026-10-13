.class public final Lexpo/modules/kotlin/views/ComposeViewProp;
.super Lexpo/modules/kotlin/views/AnyViewProp;
.source "ComposeViewProp.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComposeViewProp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComposeViewProp.kt\nexpo/modules/kotlin/views/ComposeViewProp\n+ 2 ExceptionDecorator.kt\nexpo/modules/kotlin/exception/ExceptionDecoratorKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 CodedException.kt\nexpo/modules/kotlin/exception/CodedExceptionKt\n*L\n1#1,55:1\n10#2,2:56\n12#2,2:62\n295#3,2:58\n295#3,2:60\n11#4,6:64\n*S KotlinDebug\n*F\n+ 1 ComposeViewProp.kt\nexpo/modules/kotlin/views/ComposeViewProp\n*L\n23#1:56,2\n23#1:62,2\n31#1:58,2\n37#1:60,2\n23#1:64,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\"\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016R\u0019\u0010\u0006\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0014\u001a\u00020\u0015X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lexpo/modules/kotlin/views/ComposeViewProp;",
        "Lexpo/modules/kotlin/views/AnyViewProp;",
        "name",
        "",
        "anyType",
        "Lexpo/modules/kotlin/types/AnyType;",
        "property",
        "Lkotlin/reflect/KProperty1;",
        "<init>",
        "(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/reflect/KProperty1;)V",
        "getProperty",
        "()Lkotlin/reflect/KProperty1;",
        "set",
        "",
        "prop",
        "Lcom/facebook/react/bridge/Dynamic;",
        "onView",
        "Landroid/view/View;",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "isNullable",
        "",
        "()Z",
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
.field private final isNullable:Z

.field private final property:Lkotlin/reflect/KProperty1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KProperty1<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/reflect/KProperty1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lexpo/modules/kotlin/types/AnyType;",
            "Lkotlin/reflect/KProperty1<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anyType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "property"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/views/AnyViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;)V

    .line 18
    iput-object p3, p0, Lexpo/modules/kotlin/views/ComposeViewProp;->property:Lkotlin/reflect/KProperty1;

    .line 53
    invoke-virtual {p2}, Lexpo/modules/kotlin/types/AnyType;->getKType()Lkotlin/reflect/KType;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/KType;->isMarkedNullable()Z

    move-result p1

    iput-boolean p1, p0, Lexpo/modules/kotlin/views/ComposeViewProp;->isNullable:Z

    return-void
.end method


# virtual methods
.method public final getProperty()Lkotlin/reflect/KProperty1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/KProperty1<",
            "**>;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lexpo/modules/kotlin/views/ComposeViewProp;->property:Lkotlin/reflect/KProperty1;

    return-object v0
.end method

.method public isNullable()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lexpo/modules/kotlin/views/ComposeViewProp;->isNullable:Z

    return v0
.end method

.method public set(Lcom/facebook/react/bridge/Dynamic;Landroid/view/View;Lexpo/modules/kotlin/AppContext;)V
    .locals 11

    const-string v0, "\u26a0\ufe0f Property "

    const-string v1, "prop"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onView"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    :try_start_0
    move-object v1, p2

    check-cast v1, Lexpo/modules/kotlin/views/ExpoComposeView;

    invoke-virtual {v1}, Lexpo/modules/kotlin/views/ExpoComposeView;->getProps()Lexpo/modules/kotlin/views/ComposeProps;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 28
    :cond_0
    instance-of v2, p2, Lexpo/modules/kotlin/views/ComposeFunctionHolder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    .line 30
    move-object v0, p2

    check-cast v0, Lexpo/modules/kotlin/views/ComposeFunctionHolder;

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/ComposeFunctionHolder;->getPropsMutableState()Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/views/ComposeProps;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v1}, Lkotlin/reflect/full/KClasses;->getMemberFunctions(Lkotlin/reflect/KClass;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 58
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lkotlin/reflect/KFunction;

    .line 31
    invoke-interface {v5}, Lkotlin/reflect/KFunction;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "copy"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_2
    move-object v2, v4

    :goto_0
    check-cast v2, Lkotlin/reflect/KFunction;

    if-nez v2, :cond_3

    .line 33
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object p1

    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ComposeViewProp;->getName()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u26a0\ufe0f Props are not a data class with default values for all properties, cannot set prop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " dynamically."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, v4, v3, v4}, Lexpo/modules/core/logging/Logger;->warn$default(Lexpo/modules/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 36
    :cond_3
    move-object v1, v2

    check-cast v1, Lkotlin/reflect/KCallable;

    invoke-static {v1}, Lkotlin/reflect/full/KCallables;->getInstanceParameter(Lkotlin/reflect/KCallable;)Lkotlin/reflect/KParameter;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 37
    invoke-interface {v2}, Lkotlin/reflect/KFunction;->getParameters()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 60
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lkotlin/reflect/KParameter;

    .line 37
    invoke-interface {v7}, Lkotlin/reflect/KParameter;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ComposeViewProp;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v4, v6

    :cond_5
    check-cast v4, Lkotlin/reflect/KParameter;

    if-nez v4, :cond_6

    goto/16 :goto_1

    .line 38
    :cond_6
    new-array v3, v3, [Lkotlin/Pair;

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v3, v1

    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ComposeViewProp;->getType$expo_modules_core_release()Lexpo/modules/kotlin/types/AnyType;

    move-result-object v5

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v6, p1

    move-object v7, p3

    invoke-static/range {v5 .. v10}, Lexpo/modules/kotlin/types/AnyType;->convert$default(Lexpo/modules/kotlin/types/AnyType;Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;ZILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v4, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v3, p3

    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v2, p1}, Lkotlin/reflect/KFunction;->callBy(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    .line 40
    move-object p3, p2

    check-cast p3, Lexpo/modules/kotlin/views/ComposeFunctionHolder;

    invoke-virtual {p3}, Lexpo/modules/kotlin/views/ComposeFunctionHolder;->getPropsMutableState()Landroidx/compose/runtime/MutableState;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.MutableState<kotlin.Any?>"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    move-object v6, p1

    move-object v2, p3

    .line 44
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ComposeViewProp;->getProperty()Lkotlin/reflect/KProperty1;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/KProperty1;->getGetter()Lkotlin/reflect/KProperty1$Getter;

    move-result-object p1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p1, p3}, Lkotlin/reflect/KProperty1$Getter;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 45
    instance-of p3, p1, Landroidx/compose/runtime/MutableState;

    if-eqz p3, :cond_8

    .line 46
    check-cast p1, Landroidx/compose/runtime/MutableState;

    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ComposeViewProp;->getType$expo_modules_core_release()Lexpo/modules/kotlin/types/AnyType;

    move-result-object v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, v6

    invoke-static/range {v0 .. v5}, Lexpo/modules/kotlin/types/AnyType;->convert$default(Lexpo/modules/kotlin/types/AnyType;Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;ZILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p1, p3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 48
    :cond_8
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object p1

    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ComposeViewProp;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " is not a MutableState in "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, v4, v3, v4}, Lexpo/modules/core/logging/Logger;->warn$default(Lexpo/modules/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 50
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 66
    instance-of p3, p1, Lexpo/modules/kotlin/exception/CodedException;

    if-nez p3, :cond_a

    .line 67
    instance-of p3, p1, Lexpo/modules/core/errors/CodedException;

    if-eqz p3, :cond_9

    new-instance p3, Lexpo/modules/kotlin/exception/CodedException;

    check-cast p1, Lexpo/modules/core/errors/CodedException;

    invoke-virtual {p1}, Lexpo/modules/core/errors/CodedException;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCode(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lexpo/modules/core/errors/CodedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lexpo/modules/core/errors/CodedException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p3, v0, v1, p1}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 68
    :cond_9
    new-instance p3, Lexpo/modules/kotlin/exception/UnexpectedException;

    invoke-direct {p3, p1}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    check-cast p3, Lexpo/modules/kotlin/exception/CodedException;

    goto :goto_2

    .line 66
    :cond_a
    move-object p3, p1

    check-cast p3, Lexpo/modules/kotlin/exception/CodedException;

    .line 24
    :goto_2
    new-instance p1, Lexpo/modules/kotlin/exception/PropSetException;

    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ComposeViewProp;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-direct {p1, v0, p2, p3}, Lexpo/modules/kotlin/exception/PropSetException;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;Lexpo/modules/kotlin/exception/CodedException;)V

    check-cast p1, Ljava/lang/Throwable;

    .line 63
    throw p1
.end method
