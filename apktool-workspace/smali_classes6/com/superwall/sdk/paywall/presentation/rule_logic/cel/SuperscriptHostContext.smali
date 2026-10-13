.class public final Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;
.super Ljava/lang/Object;
.source "SuperscriptHostContext.kt"

# interfaces
.implements Lcom/superwall/supercel/HostContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext$ComputedProperties;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuperscriptHostContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuperscriptHostContext.kt\ncom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext\n+ 2 Json.kt\nkotlinx/serialization/json/Json\n+ 3 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,82:1\n147#2:83\n147#2:86\n113#3:84\n113#3:85\n113#3:87\n113#3:88\n1557#4:89\n1628#4,3:90\n*S KotlinDebug\n*F\n+ 1 SuperscriptHostContext.kt\ncom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext\n*L\n28#1:83\n58#1:86\n31#1:84\n49#1:85\n61#1:87\n79#1:88\n17#1:89\n17#1:90,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J \u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0016J \u0010\u000f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;",
        "Lcom/superwall/supercel/HostContext;",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "storage",
        "Lcom/superwall/sdk/storage/core_data/CoreDataManager;",
        "<init>",
        "(Lkotlinx/serialization/json/Json;Lcom/superwall/sdk/storage/core_data/CoreDataManager;)V",
        "computedProperty",
        "",
        "name",
        "",
        "args",
        "callback",
        "Lcom/superwall/supercel/ResultCallback;",
        "deviceProperty",
        "ComputedProperties",
        "superwall_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ComputedProperties:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext$ComputedProperties;

.field private static final availableComputedProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final availableDeviceProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final json:Lkotlinx/serialization/json/Json;

.field private final storage:Lcom/superwall/sdk/storage/core_data/CoreDataManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext$ComputedProperties;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext$ComputedProperties;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;->ComputedProperties:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext$ComputedProperties;

    .line 17
    invoke-static {}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 90
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 91
    check-cast v2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;

    .line 18
    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;->getRawName()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 17
    sput-object v1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;->availableComputedProperties:Ljava/util/List;

    .line 20
    sput-object v1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;->availableDeviceProperties:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lkotlinx/serialization/json/Json;Lcom/superwall/sdk/storage/core_data/CoreDataManager;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;->json:Lkotlinx/serialization/json/Json;

    .line 13
    iput-object p2, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;->storage:Lcom/superwall/sdk/storage/core_data/CoreDataManager;

    return-void
.end method

.method public static final synthetic access$getAvailableComputedProperties$cp()Ljava/util/List;
    .locals 1

    .line 11
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;->availableComputedProperties:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getAvailableDeviceProperties$cp()Ljava/util/List;
    .locals 1

    .line 11
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;->availableDeviceProperties:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getStorage$p(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;)Lcom/superwall/sdk/storage/core_data/CoreDataManager;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;->storage:Lcom/superwall/sdk/storage/core_data/CoreDataManager;

    return-object p0
.end method


# virtual methods
.method public computedProperty(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/supercel/ResultCallback;)V
    .locals 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;->json:Lkotlinx/serialization/json/Json;

    .line 83
    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;->Companion:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$Companion;

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v1, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v0, v1, p2}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 28
    check-cast p2, Ljava/util/List;

    .line 29
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;->availableComputedProperties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    iget-object p1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;->json:Lkotlinx/serialization/json/Json;

    check-cast p1, Lkotlinx/serialization/StringFormat;

    .line 32
    new-instance p2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$BoolValue;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$BoolValue;-><init>(Z)V

    .line 84
    invoke-interface {p1}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;->Companion:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p1, v0, p2}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-virtual {p3, p1}, Lcom/superwall/supercel/ResultCallback;->onResult(Ljava/lang/String;)V

    return-void

    .line 39
    :cond_0
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext$computedProperty$res$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext$computedProperty$res$1;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 49
    iget-object p2, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;->json:Lkotlinx/serialization/json/Json;

    check-cast p2, Lkotlinx/serialization/StringFormat;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluatorKt;->toPassableValue(Ljava/lang/Object;)Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;

    move-result-object p1

    if-nez p1, :cond_2

    :cond_1
    sget-object p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$NullValue;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$NullValue;

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;

    .line 85
    :cond_2
    invoke-interface {p2}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;->Companion:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p2, v0, p1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-virtual {p3, p1}, Lcom/superwall/supercel/ResultCallback;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public deviceProperty(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/supercel/ResultCallback;)V
    .locals 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;->json:Lkotlinx/serialization/json/Json;

    .line 86
    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;->Companion:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$Companion;

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v1, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v0, v1, p2}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 58
    check-cast p2, Ljava/util/List;

    .line 59
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;->availableDeviceProperties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object p1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;->json:Lkotlinx/serialization/json/Json;

    check-cast p1, Lkotlinx/serialization/StringFormat;

    .line 62
    new-instance p2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$BoolValue;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$BoolValue;-><init>(Z)V

    .line 87
    invoke-interface {p1}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;->Companion:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p1, v0, p2}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-virtual {p3, p1}, Lcom/superwall/supercel/ResultCallback;->onResult(Ljava/lang/String;)V

    return-void

    .line 69
    :cond_0
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext$deviceProperty$res$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext$deviceProperty$res$1;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 79
    iget-object p2, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;->json:Lkotlinx/serialization/json/Json;

    check-cast p2, Lkotlinx/serialization/StringFormat;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluatorKt;->toPassableValue(Ljava/lang/Object;)Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;

    move-result-object p1

    if-nez p1, :cond_2

    :cond_1
    sget-object p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$NullValue;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$NullValue;

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;

    .line 88
    :cond_2
    invoke-interface {p2}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;->Companion:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p2, v0, p1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-virtual {p3, p1}, Lcom/superwall/supercel/ResultCallback;->onResult(Ljava/lang/String;)V

    return-void
.end method
