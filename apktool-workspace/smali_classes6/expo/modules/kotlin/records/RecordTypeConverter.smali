.class public final Lexpo/modules/kotlin/records/RecordTypeConverter;
.super Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;
.source "RecordTypeConverter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lexpo/modules/kotlin/records/Record;",
        ">",
        "Lexpo/modules/kotlin/types/DynamicAwareTypeConverters<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecordTypeConverter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecordTypeConverter.kt\nexpo/modules/kotlin/records/RecordTypeConverter\n+ 2 ExceptionDecorator.kt\nexpo/modules/kotlin/exception/ExceptionDecoratorKt\n+ 3 CodedException.kt\nexpo/modules/kotlin/exception/CodedExceptionKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 DynamicExtenstions.kt\nexpo/modules/kotlin/DynamicExtenstionsKt\n+ 7 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 8 KAnnotatedElements.kt\nkotlin/reflect/full/KAnnotatedElements\n*L\n1#1,180:1\n10#2,4:181\n10#2,4:195\n10#2,4:208\n11#3,6:185\n11#3,6:199\n11#3,6:212\n216#4:191\n217#4:206\n216#4:207\n217#4:218\n1#5:192\n1#5:235\n7#6,2:193\n10#6:205\n1617#7,9:219\n1869#7:228\n295#7,2:230\n295#7,2:233\n1870#7:236\n1626#7:237\n20#8:229\n20#8:232\n*S KotlinDebug\n*F\n+ 1 RecordTypeConverter.kt\nexpo/modules/kotlin/records/RecordTypeConverter\n*L\n48#1:181,4\n90#1:195,4\n134#1:208,4\n48#1:185,6\n90#1:199,6\n134#1:212,6\n76#1:191\n76#1:206\n108#1:207\n108#1:218\n34#1:235\n87#1:193,2\n87#1:205\n34#1:219,9\n34#1:228\n35#1:230,2\n41#1:233,2\n34#1:236\n34#1:237\n35#1:229\n41#1:232\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u00011B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\'\u0010\u0017\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016\u00a2\u0006\u0002\u0010\u001eJ\'\u0010\u001f\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u00112\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016\u00a2\u0006\u0002\u0010 J\u0008\u0010!\u001a\u00020\"H\u0016J\u0008\u0010#\u001a\u00020\u001dH\u0016J\'\u0010$\u001a\u00028\u00002\u0006\u0010%\u001a\u00020&2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002\u00a2\u0006\u0002\u0010\'J;\u0010(\u001a\u00028\u00002\u0014\u0010)\u001a\u0010\u0012\u0004\u0012\u00020*\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u000f2\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001dH\u0000\u00a2\u0006\u0004\u0008+\u0010,J&\u0010-\u001a\u0008\u0012\u0004\u0012\u0002H\u00010.\"\u0008\u0008\u0001\u0010\u0001*\u00020\u00112\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u0002H\u000100H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R3\u0010\u000e\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u0011\u0012\u0002\u0008\u00030\u0010\u0012\u0004\u0012\u00020\u00120\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u00062"
    }
    d2 = {
        "Lexpo/modules/kotlin/records/RecordTypeConverter;",
        "T",
        "Lexpo/modules/kotlin/records/Record;",
        "Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;",
        "converterProvider",
        "Lexpo/modules/kotlin/types/TypeConverterProvider;",
        "type",
        "Lkotlin/reflect/KType;",
        "<init>",
        "(Lexpo/modules/kotlin/types/TypeConverterProvider;Lkotlin/reflect/KType;)V",
        "getType",
        "()Lkotlin/reflect/KType;",
        "objectConstructorFactory",
        "Lexpo/modules/kotlin/allocators/ObjectConstructorFactory;",
        "propertyDescriptors",
        "",
        "Lkotlin/reflect/KProperty1;",
        "",
        "Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;",
        "getPropertyDescriptors",
        "()Ljava/util/Map;",
        "propertyDescriptors$delegate",
        "Lkotlin/Lazy;",
        "convertFromDynamic",
        "value",
        "Lcom/facebook/react/bridge/Dynamic;",
        "context",
        "Lexpo/modules/kotlin/AppContext;",
        "forceConversion",
        "",
        "(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;Z)Lexpo/modules/kotlin/records/Record;",
        "convertFromAny",
        "(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;Z)Lexpo/modules/kotlin/records/Record;",
        "getCppRequiredTypes",
        "Lexpo/modules/kotlin/jni/ExpectedType;",
        "isTrivial",
        "convertFromReadableMap",
        "jsMap",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "(Lcom/facebook/react/bridge/ReadableMap;Lexpo/modules/kotlin/AppContext;Z)Lexpo/modules/kotlin/records/Record;",
        "convertFromMap",
        "map",
        "",
        "convertFromMap$expo_modules_core_release",
        "(Ljava/util/Map;Lexpo/modules/kotlin/AppContext;Z)Lexpo/modules/kotlin/records/Record;",
        "getObjectConstructor",
        "Lexpo/modules/kotlin/allocators/ObjectConstructor;",
        "clazz",
        "Lkotlin/reflect/KClass;",
        "PropertyDescriptor",
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
.field private final converterProvider:Lexpo/modules/kotlin/types/TypeConverterProvider;

.field private final objectConstructorFactory:Lexpo/modules/kotlin/allocators/ObjectConstructorFactory;

.field private final propertyDescriptors$delegate:Lkotlin/Lazy;

.field private final type:Lkotlin/reflect/KType;


# direct methods
.method public static synthetic $r8$lambda$Pg-rYOFJE7hy7A4chFKJ066Ogug(Lexpo/modules/kotlin/records/RecordTypeConverter;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lexpo/modules/kotlin/records/RecordTypeConverter;->propertyDescriptors_delegate$lambda$1(Lexpo/modules/kotlin/records/RecordTypeConverter;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lexpo/modules/kotlin/types/TypeConverterProvider;Lkotlin/reflect/KType;)V
    .locals 1

    const-string v0, "converterProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;-><init>()V

    .line 27
    iput-object p1, p0, Lexpo/modules/kotlin/records/RecordTypeConverter;->converterProvider:Lexpo/modules/kotlin/types/TypeConverterProvider;

    .line 28
    iput-object p2, p0, Lexpo/modules/kotlin/records/RecordTypeConverter;->type:Lkotlin/reflect/KType;

    .line 30
    new-instance p1, Lexpo/modules/kotlin/allocators/ObjectConstructorFactory;

    invoke-direct {p1}, Lexpo/modules/kotlin/allocators/ObjectConstructorFactory;-><init>()V

    iput-object p1, p0, Lexpo/modules/kotlin/records/RecordTypeConverter;->objectConstructorFactory:Lexpo/modules/kotlin/allocators/ObjectConstructorFactory;

    .line 31
    new-instance p1, Lexpo/modules/kotlin/records/RecordTypeConverter$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lexpo/modules/kotlin/records/RecordTypeConverter$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/kotlin/records/RecordTypeConverter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/kotlin/records/RecordTypeConverter;->propertyDescriptors$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$convertFromReadableMap(Lexpo/modules/kotlin/records/RecordTypeConverter;Lcom/facebook/react/bridge/ReadableMap;Lexpo/modules/kotlin/AppContext;Z)Lexpo/modules/kotlin/records/Record;
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/kotlin/records/RecordTypeConverter;->convertFromReadableMap(Lcom/facebook/react/bridge/ReadableMap;Lexpo/modules/kotlin/AppContext;Z)Lexpo/modules/kotlin/records/Record;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic convertFromMap$expo_modules_core_release$default(Lexpo/modules/kotlin/records/RecordTypeConverter;Ljava/util/Map;Lexpo/modules/kotlin/AppContext;ZILjava/lang/Object;)Lexpo/modules/kotlin/records/Record;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 103
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/kotlin/records/RecordTypeConverter;->convertFromMap$expo_modules_core_release(Ljava/util/Map;Lexpo/modules/kotlin/AppContext;Z)Lexpo/modules/kotlin/records/Record;

    move-result-object p0

    return-object p0
.end method

.method private final convertFromReadableMap(Lcom/facebook/react/bridge/ReadableMap;Lexpo/modules/kotlin/AppContext;Z)Lexpo/modules/kotlin/records/Record;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReadableMap;",
            "Lexpo/modules/kotlin/AppContext;",
            "Z)TT;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lexpo/modules/kotlin/records/RecordTypeConverter;->type:Lkotlin/reflect/KType;

    invoke-interface {v0}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.reflect.KClass<*>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlin/reflect/KClass;

    .line 73
    invoke-direct {p0, v0}, Lexpo/modules/kotlin/records/RecordTypeConverter;->getObjectConstructor(Lkotlin/reflect/KClass;)Lexpo/modules/kotlin/allocators/ObjectConstructor;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/kotlin/allocators/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v0

    .line 75
    invoke-direct {p0}, Lexpo/modules/kotlin/records/RecordTypeConverter;->getPropertyDescriptors()Ljava/util/Map;

    move-result-object v1

    .line 191
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KProperty1;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;

    .line 77
    invoke-virtual {v2}, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->getFieldAnnotation()Lexpo/modules/kotlin/records/Field;

    move-result-object v4

    invoke-interface {v4}, Lexpo/modules/kotlin/records/Field;->key()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_1

    invoke-interface {v3}, Lkotlin/reflect/KProperty1;->getName()Ljava/lang/String;

    move-result-object v4

    .line 79
    :cond_1
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 80
    invoke-virtual {v2}, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->isRequired()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 81
    :cond_2
    new-instance p1, Lexpo/modules/kotlin/exception/FieldRequiredException;

    invoke-direct {p1, v3}, Lexpo/modules/kotlin/exception/FieldRequiredException;-><init>(Lkotlin/reflect/KProperty1;)V

    throw p1

    .line 87
    :cond_3
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getDynamic(Ljava/lang/String;)Lcom/facebook/react/bridge/Dynamic;

    move-result-object v4

    .line 88
    :try_start_0
    move-object v5, v3

    check-cast v5, Lkotlin/reflect/KProperty;

    invoke-static {v5}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaField(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 91
    :try_start_1
    invoke-virtual {v2}, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->getTypeConverter()Lexpo/modules/kotlin/types/TypeConverter;

    move-result-object v2

    invoke-interface {v2, v4, p2, p3}, Lexpo/modules/kotlin/types/TypeConverter;->convert(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;Z)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    .line 94
    :try_start_2
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 95
    invoke-virtual {v5, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 205
    invoke-interface {v4}, Lcom/facebook/react/bridge/Dynamic;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 201
    :try_start_3
    instance-of p2, p1, Lexpo/modules/kotlin/exception/CodedException;

    if-nez p2, :cond_5

    .line 202
    instance-of p2, p1, Lexpo/modules/core/errors/CodedException;

    if-eqz p2, :cond_4

    new-instance p2, Lexpo/modules/kotlin/exception/CodedException;

    move-object p3, p1

    check-cast p3, Lexpo/modules/core/errors/CodedException;

    invoke-virtual {p3}, Lexpo/modules/core/errors/CodedException;->getCode()Ljava/lang/String;

    move-result-object p3

    const-string v0, "getCode(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lexpo/modules/core/errors/CodedException;

    invoke-virtual {v0}, Lexpo/modules/core/errors/CodedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lexpo/modules/core/errors/CodedException;

    invoke-virtual {p1}, Lexpo/modules/core/errors/CodedException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p3, v0, p1}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 203
    :cond_4
    new-instance p2, Lexpo/modules/kotlin/exception/UnexpectedException;

    invoke-direct {p2, p1}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    check-cast p2, Lexpo/modules/kotlin/exception/CodedException;

    goto :goto_2

    .line 201
    :cond_5
    move-object p2, p1

    check-cast p2, Lexpo/modules/kotlin/exception/CodedException;

    .line 90
    :goto_2
    new-instance p1, Lexpo/modules/kotlin/exception/FieldCastException;

    invoke-interface {v3}, Lkotlin/reflect/KProperty1;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v3}, Lkotlin/reflect/KProperty1;->getReturnType()Lkotlin/reflect/KType;

    move-result-object v0

    invoke-interface {v4}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v1

    invoke-direct {p1, p3, v0, v1, p2}, Lexpo/modules/kotlin/exception/FieldCastException;-><init>(Ljava/lang/String;Lkotlin/reflect/KType;Lcom/facebook/react/bridge/ReadableType;Lexpo/modules/kotlin/exception/CodedException;)V

    check-cast p1, Ljava/lang/Throwable;

    .line 198
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 205
    invoke-interface {v4}, Lcom/facebook/react/bridge/Dynamic;->recycle()V

    throw p1

    .line 100
    :cond_6
    const-string p1, "null cannot be cast to non-null type T of expo.modules.kotlin.records.RecordTypeConverter"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lexpo/modules/kotlin/records/Record;

    return-object v0
.end method

.method private final getObjectConstructor(Lkotlin/reflect/KClass;)Lexpo/modules/kotlin/allocators/ObjectConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TT;>;)",
            "Lexpo/modules/kotlin/allocators/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lexpo/modules/kotlin/records/RecordTypeConverter;->objectConstructorFactory:Lexpo/modules/kotlin/allocators/ObjectConstructorFactory;

    invoke-virtual {v0, p1}, Lexpo/modules/kotlin/allocators/ObjectConstructorFactory;->get(Lkotlin/reflect/KClass;)Lexpo/modules/kotlin/allocators/ObjectConstructor;

    move-result-object p1

    return-object p1
.end method

.method private final getPropertyDescriptors()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KProperty1<",
            "+",
            "Ljava/lang/Object;",
            "*>;",
            "Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lexpo/modules/kotlin/records/RecordTypeConverter;->propertyDescriptors$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private static final propertyDescriptors_delegate$lambda$1(Lexpo/modules/kotlin/records/RecordTypeConverter;)Ljava/util/Map;
    .locals 9

    .line 32
    iget-object v0, p0, Lexpo/modules/kotlin/records/RecordTypeConverter;->type:Lkotlin/reflect/KType;

    invoke-interface {v0}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.reflect.KClass<*>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlin/reflect/KClass;

    .line 33
    invoke-static {v0}, Lkotlin/reflect/full/KClasses;->getMemberProperties(Lkotlin/reflect/KClass;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 228
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 227
    check-cast v2, Lkotlin/reflect/KProperty1;

    .line 35
    move-object v3, v2

    check-cast v3, Lkotlin/reflect/KAnnotatedElement;

    .line 229
    invoke-interface {v3}, Lkotlin/reflect/KAnnotatedElement;->getAnnotations()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 230
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/annotation/Annotation;

    .line 229
    instance-of v7, v7, Lexpo/modules/kotlin/records/Field;

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_2
    move-object v5, v6

    .line 231
    :goto_1
    check-cast v5, Lexpo/modules/kotlin/records/Field;

    check-cast v5, Ljava/lang/annotation/Annotation;

    .line 35
    check-cast v5, Lexpo/modules/kotlin/records/Field;

    if-nez v5, :cond_3

    goto :goto_3

    .line 36
    :cond_3
    iget-object v4, p0, Lexpo/modules/kotlin/records/RecordTypeConverter;->converterProvider:Lexpo/modules/kotlin/types/TypeConverterProvider;

    invoke-interface {v2}, Lkotlin/reflect/KProperty1;->getReturnType()Lkotlin/reflect/KType;

    move-result-object v7

    invoke-interface {v4, v7}, Lexpo/modules/kotlin/types/TypeConverterProvider;->obtainTypeConverter(Lkotlin/reflect/KType;)Lexpo/modules/kotlin/types/TypeConverter;

    move-result-object v4

    .line 232
    invoke-interface {v3}, Lkotlin/reflect/KAnnotatedElement;->getAnnotations()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 233
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/annotation/Annotation;

    .line 232
    instance-of v8, v8, Lexpo/modules/kotlin/records/Required;

    if-eqz v8, :cond_4

    move-object v6, v7

    .line 234
    :cond_5
    check-cast v6, Lexpo/modules/kotlin/records/Required;

    check-cast v6, Ljava/lang/annotation/Annotation;

    if-eqz v6, :cond_6

    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    .line 38
    :goto_2
    new-instance v6, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;

    invoke-direct {v6, v4, v5, v3}, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;-><init>(Lexpo/modules/kotlin/types/TypeConverter;Lexpo/modules/kotlin/records/Field;Z)V

    invoke-static {v2, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    :goto_3
    if-eqz v6, :cond_0

    .line 227
    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 237
    :cond_7
    check-cast v1, Ljava/util/List;

    .line 219
    check-cast v1, Ljava/lang/Iterable;

    .line 44
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public convertFromAny(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;Z)Lexpo/modules/kotlin/records/Record;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lexpo/modules/kotlin/AppContext;",
            "Z)TT;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    instance-of v0, p1, Lcom/facebook/react/bridge/ReadableMap;

    if-eqz v0, :cond_0

    .line 55
    check-cast p1, Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/kotlin/records/RecordTypeConverter;->convertFromReadableMap(Lcom/facebook/react/bridge/ReadableMap;Lexpo/modules/kotlin/AppContext;Z)Lexpo/modules/kotlin/records/Record;

    move-result-object p1

    return-object p1

    .line 58
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 60
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/kotlin/records/RecordTypeConverter;->convertFromMap$expo_modules_core_release(Ljava/util/Map;Lexpo/modules/kotlin/AppContext;Z)Lexpo/modules/kotlin/records/Record;

    move-result-object p1

    return-object p1

    .line 64
    :cond_1
    check-cast p1, Lexpo/modules/kotlin/records/Record;

    return-object p1
.end method

.method public bridge synthetic convertFromAny(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;Z)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/kotlin/records/RecordTypeConverter;->convertFromAny(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;Z)Lexpo/modules/kotlin/records/Record;

    move-result-object p1

    return-object p1
.end method

.method public convertFromDynamic(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;Z)Lexpo/modules/kotlin/records/Record;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/Dynamic;",
            "Lexpo/modules/kotlin/AppContext;",
            "Z)TT;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    :try_start_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asMap()Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 50
    invoke-static {p0, p1, p2, p3}, Lexpo/modules/kotlin/records/RecordTypeConverter;->access$convertFromReadableMap(Lexpo/modules/kotlin/records/RecordTypeConverter;Lcom/facebook/react/bridge/ReadableMap;Lexpo/modules/kotlin/AppContext;Z)Lexpo/modules/kotlin/records/Record;

    move-result-object p1

    return-object p1

    .line 49
    :cond_0
    new-instance p1, Lexpo/modules/kotlin/exception/DynamicCastException;

    const-class p2, Lcom/facebook/react/bridge/ReadableMap;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-direct {p1, p2}, Lexpo/modules/kotlin/exception/DynamicCastException;-><init>(Lkotlin/reflect/KClass;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 187
    instance-of p2, p1, Lexpo/modules/kotlin/exception/CodedException;

    if-nez p2, :cond_2

    .line 188
    instance-of p2, p1, Lexpo/modules/core/errors/CodedException;

    if-eqz p2, :cond_1

    new-instance p2, Lexpo/modules/kotlin/exception/CodedException;

    check-cast p1, Lexpo/modules/core/errors/CodedException;

    invoke-virtual {p1}, Lexpo/modules/core/errors/CodedException;->getCode()Ljava/lang/String;

    move-result-object p3

    const-string v0, "getCode(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lexpo/modules/core/errors/CodedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lexpo/modules/core/errors/CodedException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p3, v0, p1}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 189
    :cond_1
    new-instance p2, Lexpo/modules/kotlin/exception/UnexpectedException;

    invoke-direct {p2, p1}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    check-cast p2, Lexpo/modules/kotlin/exception/CodedException;

    goto :goto_0

    .line 187
    :cond_2
    move-object p2, p1

    check-cast p2, Lexpo/modules/kotlin/exception/CodedException;

    .line 48
    :goto_0
    new-instance p1, Lexpo/modules/kotlin/exception/RecordCastException;

    invoke-virtual {p0}, Lexpo/modules/kotlin/records/RecordTypeConverter;->getType()Lkotlin/reflect/KType;

    move-result-object p3

    invoke-direct {p1, p3, p2}, Lexpo/modules/kotlin/exception/RecordCastException;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/exception/CodedException;)V

    check-cast p1, Ljava/lang/Throwable;

    .line 184
    throw p1
.end method

.method public bridge synthetic convertFromDynamic(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;Z)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/kotlin/records/RecordTypeConverter;->convertFromDynamic(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;Z)Lexpo/modules/kotlin/records/Record;

    move-result-object p1

    return-object p1
.end method

.method public final convertFromMap$expo_modules_core_release(Ljava/util/Map;Lexpo/modules/kotlin/AppContext;Z)Lexpo/modules/kotlin/records/Record;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lexpo/modules/kotlin/AppContext;",
            "Z)TT;"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lexpo/modules/kotlin/records/RecordTypeConverter;->type:Lkotlin/reflect/KType;

    invoke-interface {v0}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.reflect.KClass<*>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlin/reflect/KClass;

    .line 105
    invoke-direct {p0, v0}, Lexpo/modules/kotlin/records/RecordTypeConverter;->getObjectConstructor(Lkotlin/reflect/KClass;)Lexpo/modules/kotlin/allocators/ObjectConstructor;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/kotlin/allocators/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v0

    .line 107
    invoke-direct {p0}, Lexpo/modules/kotlin/records/RecordTypeConverter;->getPropertyDescriptors()Ljava/util/Map;

    move-result-object v1

    .line 207
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KProperty1;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;

    .line 109
    invoke-virtual {v2}, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->getFieldAnnotation()Lexpo/modules/kotlin/records/Field;

    move-result-object v4

    invoke-interface {v4}, Lexpo/modules/kotlin/records/Field;->key()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_1

    invoke-interface {v3}, Lkotlin/reflect/KProperty1;->getName()Ljava/lang/String;

    move-result-object v4

    .line 111
    :cond_1
    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 112
    invoke-virtual {v2}, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->isRequired()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 113
    :cond_2
    new-instance p1, Lexpo/modules/kotlin/exception/FieldRequiredException;

    invoke-direct {p1, v3}, Lexpo/modules/kotlin/exception/FieldRequiredException;-><init>(Lkotlin/reflect/KProperty1;)V

    throw p1

    .line 119
    :cond_3
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 121
    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_8

    .line 122
    invoke-interface {v3}, Lkotlin/reflect/KProperty1;->getReturnType()Lkotlin/reflect/KType;

    move-result-object v5

    invoke-interface {v5}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v5

    .line 123
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    goto :goto_2

    .line 124
    :cond_4
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    goto :goto_2

    .line 125
    :cond_5
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    goto :goto_2

    .line 126
    :cond_6
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    goto :goto_2

    .line 127
    :cond_7
    check-cast v4, Ljava/lang/Number;

    .line 132
    :cond_8
    :goto_2
    move-object v5, v3

    check-cast v5, Lkotlin/reflect/KProperty;

    invoke-static {v5}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaField(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 135
    :try_start_0
    invoke-virtual {v2}, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->getTypeConverter()Lexpo/modules/kotlin/types/TypeConverter;

    move-result-object v2

    invoke-interface {v2, v4, p2, p3}, Lexpo/modules/kotlin/types/TypeConverter;->convert(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;Z)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    .line 138
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 139
    invoke-virtual {v5, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 214
    instance-of p2, p1, Lexpo/modules/kotlin/exception/CodedException;

    if-nez p2, :cond_a

    .line 215
    instance-of p2, p1, Lexpo/modules/core/errors/CodedException;

    if-eqz p2, :cond_9

    new-instance p2, Lexpo/modules/kotlin/exception/CodedException;

    check-cast p1, Lexpo/modules/core/errors/CodedException;

    invoke-virtual {p1}, Lexpo/modules/core/errors/CodedException;->getCode()Ljava/lang/String;

    move-result-object p3

    const-string v0, "getCode(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lexpo/modules/core/errors/CodedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lexpo/modules/core/errors/CodedException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p3, v0, p1}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 216
    :cond_9
    new-instance p2, Lexpo/modules/kotlin/exception/UnexpectedException;

    invoke-direct {p2, p1}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    check-cast p2, Lexpo/modules/kotlin/exception/CodedException;

    goto :goto_3

    .line 214
    :cond_a
    move-object p2, p1

    check-cast p2, Lexpo/modules/kotlin/exception/CodedException;

    .line 134
    :goto_3
    new-instance p1, Lexpo/modules/kotlin/exception/FieldCastException;

    invoke-interface {v3}, Lkotlin/reflect/KProperty1;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v3}, Lkotlin/reflect/KProperty1;->getReturnType()Lkotlin/reflect/KType;

    move-result-object v0

    invoke-virtual {p0}, Lexpo/modules/kotlin/records/RecordTypeConverter;->getType()Lkotlin/reflect/KType;

    move-result-object v1

    invoke-direct {p1, p3, v0, v1, p2}, Lexpo/modules/kotlin/exception/FieldCastException;-><init>(Ljava/lang/String;Lkotlin/reflect/KType;Lkotlin/reflect/KType;Lexpo/modules/kotlin/exception/CodedException;)V

    check-cast p1, Ljava/lang/Throwable;

    .line 211
    throw p1

    .line 143
    :cond_b
    const-string p1, "null cannot be cast to non-null type T of expo.modules.kotlin.records.RecordTypeConverter"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lexpo/modules/kotlin/records/Record;

    return-object v0
.end method

.method public getCppRequiredTypes()Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 4

    .line 67
    new-instance v0, Lexpo/modules/kotlin/jni/ExpectedType;

    const/4 v1, 0x1

    new-array v1, v1, [Lexpo/modules/kotlin/jni/CppType;

    const/4 v2, 0x0

    sget-object v3, Lexpo/modules/kotlin/jni/CppType;->READABLE_MAP:Lexpo/modules/kotlin/jni/CppType;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/CppType;)V

    return-object v0
.end method

.method public final getType()Lkotlin/reflect/KType;
    .locals 1

    .line 28
    iget-object v0, p0, Lexpo/modules/kotlin/records/RecordTypeConverter;->type:Lkotlin/reflect/KType;

    return-object v0
.end method

.method public isTrivial()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
