.class public final Lcom/swmansion/pulsar/reactnative/PulsarModule;
.super Lcom/swmansion/pulsar/reactnative/NativeRNPulsarSpec;
.source "PulsarModule.kt"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RNPulsar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/pulsar/reactnative/PulsarModule$Companion;,
        Lcom/swmansion/pulsar/reactnative/PulsarModule$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPulsarModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PulsarModule.kt\ncom/swmansion/pulsar/reactnative/PulsarModule\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,229:1\n1#2:230\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 92\u00020\u0001:\u00019B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0012\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0012\u0010\u0013\u001a\u00020\u00102\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u0017H\u0016J\u0010\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0010\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0010\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010\u001f\u001a\u00020\u0010H\u0016J\u0008\u0010 \u001a\u00020\u0010H\u0016J\u0008\u0010!\u001a\u00020\u0010H\u0016J\u0010\u0010\"\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0010\u0010#\u001a\u00020\u00102\u0006\u0010$\u001a\u00020\u0017H\u0016J\u0010\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(H\u0002J\u0012\u0010)\u001a\u00020\u00172\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0016J\u0010\u0010*\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u0017H\u0016J\u0010\u0010,\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u0017H\u0016J\u0010\u0010-\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u0017H\u0016J\u0008\u0010.\u001a\u00020\u0010H\u0016J \u0010/\u001a\u00020\u00102\u0006\u00100\u001a\u00020\u00172\u0006\u00101\u001a\u00020\u00172\u0006\u00102\u001a\u00020\u001cH\u0016J\u0018\u00103\u001a\u00020\u00102\u0006\u00100\u001a\u00020\u00172\u0006\u00101\u001a\u00020\u0017H\u0016J\u0008\u00104\u001a\u00020\u0010H\u0016J\u0008\u00105\u001a\u00020\u001cH\u0016J\u0018\u00106\u001a\u0002072\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u00108\u001a\u000207H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006:"
    }
    d2 = {
        "Lcom/swmansion/pulsar/reactnative/PulsarModule;",
        "Lcom/swmansion/pulsar/reactnative/NativeRNPulsarSpec;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "<init>",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;)V",
        "pulsar",
        "Lcom/swmansion/pulsar/reactnative/PulsarReactNative;",
        "realtimeComposer",
        "Lcom/swmansion/pulsar/composers/RealtimeComposer;",
        "nextId",
        "",
        "patternComposersRegistry",
        "",
        "Lcom/swmansion/pulsar/composers/PatternComposer;",
        "Pulsar_play",
        "",
        "name",
        "",
        "Pulsar_preloadPresets",
        "presetNames",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "Pulsar_hapticSupport",
        "",
        "Pulsar_forceHapticsSupportLevel",
        "level",
        "Pulsar_enableHaptics",
        "state",
        "",
        "Pulsar_enableSound",
        "Pulsar_enableCache",
        "Pulsar_clearCache",
        "Pulsar_stopHaptics",
        "Pulsar_shutDownEngine",
        "Pulsar_enableImpulseCompositionMode",
        "Pulsar_setRealtimeComposerStrategy",
        "strategy",
        "patternDataFromJSPattern",
        "Lcom/swmansion/pulsar/types/PatternData;",
        "data",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "PatternComposer_parsePattern",
        "PatternComposer_play",
        "patternId",
        "PatternComposer_stop",
        "PatternComposer_release",
        "RealtimeComposer_start",
        "RealtimeComposer_set",
        "amplitude",
        "frequency",
        "startIfNeeded",
        "RealtimeComposer_playDiscrete",
        "RealtimeComposer_stop",
        "RealtimeComposer_isActive",
        "enumValueOrFallback",
        "Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;",
        "fallback",
        "Companion",
        "react-native-pulsar_release"
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
.field public static final Companion:Lcom/swmansion/pulsar/reactnative/PulsarModule$Companion;

.field public static final NAME:Ljava/lang/String; = "RNPulsar"


# instance fields
.field private nextId:I

.field private final patternComposersRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/swmansion/pulsar/composers/PatternComposer;",
            ">;"
        }
    .end annotation
.end field

.field private final pulsar:Lcom/swmansion/pulsar/reactnative/PulsarReactNative;

.field private realtimeComposer:Lcom/swmansion/pulsar/composers/RealtimeComposer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/pulsar/reactnative/PulsarModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/pulsar/reactnative/PulsarModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/pulsar/reactnative/PulsarModule;->Companion:Lcom/swmansion/pulsar/reactnative/PulsarModule$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/swmansion/pulsar/reactnative/NativeRNPulsarSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 20
    new-instance v0, Lcom/swmansion/pulsar/reactnative/PulsarReactNative;

    check-cast p1, Landroid/content/Context;

    invoke-direct {v0, p1}, Lcom/swmansion/pulsar/reactnative/PulsarReactNative;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/swmansion/pulsar/reactnative/PulsarModule;->pulsar:Lcom/swmansion/pulsar/reactnative/PulsarReactNative;

    .line 21
    check-cast v0, Lcom/swmansion/pulsar/Pulsar;

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, p1}, Lcom/swmansion/pulsar/Pulsar;->getRealtimeComposer$default(Lcom/swmansion/pulsar/Pulsar;Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;ILjava/lang/Object;)Lcom/swmansion/pulsar/composers/RealtimeComposer;

    move-result-object p1

    iput-object p1, p0, Lcom/swmansion/pulsar/reactnative/PulsarModule;->realtimeComposer:Lcom/swmansion/pulsar/composers/RealtimeComposer;

    .line 22
    iput v1, p0, Lcom/swmansion/pulsar/reactnative/PulsarModule;->nextId:I

    .line 23
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/swmansion/pulsar/reactnative/PulsarModule;->patternComposersRegistry:Ljava/util/Map;

    return-void
.end method

.method private final enumValueOrFallback(Ljava/lang/String;Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;)Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;
    .locals 1

    .line 225
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/swmansion/pulsar/reactnative/PulsarModule;

    const-class v0, Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;

    invoke-static {v0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 226
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    move-object p2, p1

    :goto_1
    check-cast p2, Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;

    return-object p2
.end method

.method private final patternDataFromJSPattern(Lcom/facebook/react/bridge/ReadableMap;)Lcom/swmansion/pulsar/types/PatternData;
    .locals 16

    move-object/from16 v0, p1

    .line 109
    const-string v1, "continuousPattern"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    .line 110
    const-string v2, "discretePattern"

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    .line 113
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 114
    const-string v3, "value"

    const-string v4, "amplitude"

    const-string v5, "time"

    if-eqz v1, :cond_1

    invoke-interface {v1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 115
    invoke-interface {v7}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_1

    .line 116
    invoke-interface {v7, v9}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 118
    new-instance v11, Lcom/swmansion/pulsar/types/ValuePoint;

    .line 119
    invoke-interface {v10, v5}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    double-to-long v12, v12

    .line 120
    invoke-interface {v10, v3}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v14

    double-to-float v10, v14

    .line 118
    invoke-direct {v11, v12, v13, v10}, Lcom/swmansion/pulsar/types/ValuePoint;-><init>(JF)V

    .line 117
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 128
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/List;

    .line 129
    const-string v8, "frequency"

    if-eqz v1, :cond_3

    invoke-interface {v1, v8}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 130
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_3

    .line 131
    invoke-interface {v1, v10}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 133
    new-instance v12, Lcom/swmansion/pulsar/types/ValuePoint;

    .line 134
    invoke-interface {v11, v5}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v13

    double-to-long v13, v13

    move-object v15, v7

    .line 135
    invoke-interface {v11, v3}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v6, v6

    .line 133
    invoke-direct {v12, v13, v14, v6}, Lcom/swmansion/pulsar/types/ValuePoint;-><init>(JF)V

    .line 132
    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object v15, v7

    :goto_2
    add-int/lit8 v10, v10, 0x1

    move-object v7, v15

    goto :goto_1

    :cond_3
    move-object v15, v7

    .line 142
    new-instance v1, Lcom/swmansion/pulsar/types/ContinuousPattern;

    invoke-direct {v1, v2, v15}, Lcom/swmansion/pulsar/types/ContinuousPattern;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 148
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    if-eqz v0, :cond_5

    .line 150
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_5

    .line 151
    invoke-interface {v0, v6}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 153
    new-instance v9, Lcom/swmansion/pulsar/types/ConfigPoint;

    .line 154
    invoke-interface {v7, v5}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-long v10, v10

    .line 155
    invoke-interface {v7, v4}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    double-to-float v12, v12

    .line 156
    invoke-interface {v7, v8}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v13

    double-to-float v7, v13

    .line 153
    invoke-direct {v9, v10, v11, v12, v7}, Lcom/swmansion/pulsar/types/ConfigPoint;-><init>(JFF)V

    .line 152
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 163
    :cond_5
    new-instance v0, Lcom/swmansion/pulsar/types/PatternData;

    invoke-direct {v0, v1, v2}, Lcom/swmansion/pulsar/types/PatternData;-><init>(Lcom/swmansion/pulsar/types/ContinuousPattern;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public PatternComposer_parsePattern(Lcom/facebook/react/bridge/ReadableMap;)D
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/swmansion/pulsar/reactnative/PulsarModule;->pulsar:Lcom/swmansion/pulsar/reactnative/PulsarReactNative;

    invoke-virtual {v0}, Lcom/swmansion/pulsar/reactnative/PulsarReactNative;->getPatternComposer()Lcom/swmansion/pulsar/composers/PatternComposer;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 173
    invoke-direct {p0, p1}, Lcom/swmansion/pulsar/reactnative/PulsarModule;->patternDataFromJSPattern(Lcom/facebook/react/bridge/ReadableMap;)Lcom/swmansion/pulsar/types/PatternData;

    move-result-object p1

    .line 174
    invoke-virtual {v0, p1}, Lcom/swmansion/pulsar/composers/PatternComposer;->parsePattern(Lcom/swmansion/pulsar/types/PatternData;)V

    .line 177
    :cond_0
    iget p1, p0, Lcom/swmansion/pulsar/reactnative/PulsarModule;->nextId:I

    add-int/lit8 v1, p1, 0x1

    .line 178
    iput v1, p0, Lcom/swmansion/pulsar/reactnative/PulsarModule;->nextId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 179
    iget-object v2, p0, Lcom/swmansion/pulsar/reactnative/PulsarModule;->patternComposersRegistry:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-double v0, p1

    return-wide v0
.end method

.method public PatternComposer_play(D)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/swmansion/pulsar/reactnative/PulsarModule;->patternComposersRegistry:Ljava/util/Map;

    double-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/swmansion/pulsar/composers/PatternComposer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/swmansion/pulsar/composers/PatternComposer;->play()V

    :cond_0
    return-void
.end method

.method public PatternComposer_release(D)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/swmansion/pulsar/reactnative/PulsarModule;->patternComposersRegistry:Ljava/util/Map;

    double-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public PatternComposer_stop(D)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/swmansion/pulsar/reactnative/PulsarModule;->patternComposersRegistry:Ljava/util/Map;

    double-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/swmansion/pulsar/composers/PatternComposer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/swmansion/pulsar/composers/PatternComposer;->stop()V

    :cond_0
    return-void
.end method

.method public Pulsar_clearCache()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/swmansion/pulsar/reactnative/PulsarModule;->pulsar:Lcom/swmansion/pulsar/reactnative/PulsarReactNative;

    invoke-virtual {v0}, Lcom/swmansion/pulsar/reactnative/PulsarReactNative;->clearCache()V

    return-void
.end method

.method public Pulsar_enableCache(Z)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/swmansion/pulsar/reactnative/PulsarModule;->pulsar:Lcom/swmansion/pulsar/reactnative/PulsarReactNative;

    invoke-virtual {v0, p1}, Lcom/swmansion/pulsar/reactnative/PulsarReactNative;->enableCache(Z)V

    return-void
.end method

.method public Pulsar_enableHaptics(Z)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/swmansion/pulsar/reactnative/PulsarModule;->pulsar:Lcom/swmansion/pulsar/reactnative/PulsarReactNative;

    invoke-virtual {v0, p1}, Lcom/swmansion/pulsar/reactnative/PulsarReactNative;->enableHaptics(Z)V

    return-void
.end method

.method public Pulsar_enableImpulseCompositionMode(Z)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/swmansion/pulsar/reactnative/PulsarModule;->pulsar:Lcom/swmansion/pulsar/reactnative/PulsarReactNative;

    invoke-virtual {v0, p1}, Lcom/swmansion/pulsar/reactnative/PulsarReactNative;->enableImpulseCompositionMode(Z)V

    return-void
.end method

.method public Pulsar_enableSound(Z)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/swmansion/pulsar/reactnative/PulsarModule;->pulsar:Lcom/swmansion/pulsar/reactnative/PulsarReactNative;

    invoke-virtual {v0, p1}, Lcom/swmansion/pulsar/reactnative/PulsarReactNative;->enableSound(Z)V

    return-void
.end method

.method public Pulsar_forceHapticsSupportLevel(D)V
    .locals 0

    double-to-int p1, p1

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    .line 59
    sget-object p1, Lcom/swmansion/pulsar/types/CompatibilityMode;->NO_SUPPORT:Lcom/swmansion/pulsar/types/CompatibilityMode;

    goto :goto_0

    .line 58
    :cond_0
    sget-object p1, Lcom/swmansion/pulsar/types/CompatibilityMode;->ADVANCED_SUPPORT:Lcom/swmansion/pulsar/types/CompatibilityMode;

    goto :goto_0

    .line 57
    :cond_1
    sget-object p1, Lcom/swmansion/pulsar/types/CompatibilityMode;->STANDARD_SUPPORT:Lcom/swmansion/pulsar/types/CompatibilityMode;

    goto :goto_0

    .line 56
    :cond_2
    sget-object p1, Lcom/swmansion/pulsar/types/CompatibilityMode;->LIMITED_SUPPORT:Lcom/swmansion/pulsar/types/CompatibilityMode;

    goto :goto_0

    .line 55
    :cond_3
    sget-object p1, Lcom/swmansion/pulsar/types/CompatibilityMode;->NO_SUPPORT:Lcom/swmansion/pulsar/types/CompatibilityMode;

    .line 61
    :goto_0
    iget-object p2, p0, Lcom/swmansion/pulsar/reactnative/PulsarModule;->pulsar:Lcom/swmansion/pulsar/reactnative/PulsarReactNative;

    invoke-virtual {p2, p1}, Lcom/swmansion/pulsar/reactnative/PulsarReactNative;->forceHapticsSupportLevel(Lcom/swmansion/pulsar/types/CompatibilityMode;)V

    return-void
.end method

.method public Pulsar_hapticSupport()D
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/swmansion/pulsar/reactnative/PulsarModule;->pulsar:Lcom/swmansion/pulsar/reactnative/PulsarReactNative;

    invoke-virtual {v0}, Lcom/swmansion/pulsar/reactnative/PulsarReactNative;->hapticSupport()Lcom/swmansion/pulsar/types/CompatibilityMode;

    move-result-object v0

    .line 45
    sget-object v1, Lcom/swmansion/pulsar/reactnative/PulsarModule$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/swmansion/pulsar/types/CompatibilityMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    return-wide v0

    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public Pulsar_play(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/swmansion/pulsar/reactnative/PulsarModule;->pulsar:Lcom/swmansion/pulsar/reactnative/PulsarReactNative;

    invoke-virtual {v0}, Lcom/swmansion/pulsar/reactnative/PulsarReactNative;->getPresets()Lcom/swmansion/pulsar/presets/PresetsWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/swmansion/pulsar/presets/PresetsWrapper;->getByName(Ljava/lang/String;)Lcom/swmansion/pulsar/types/Preset;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/swmansion/pulsar/types/Preset;->play()V

    :cond_0
    return-void
.end method

.method public Pulsar_preloadPresets(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 36
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 37
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
    :cond_1
    iget-object p1, p0, Lcom/swmansion/pulsar/reactnative/PulsarModule;->pulsar:Lcom/swmansion/pulsar/reactnative/PulsarReactNative;

    invoke-virtual {p1, v0}, Lcom/swmansion/pulsar/reactnative/PulsarReactNative;->preloadPresets(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public Pulsar_setRealtimeComposerStrategy(D)V
    .locals 0

    double-to-int p1, p1

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    return-void

    .line 98
    :cond_0
    const-string p1, "ENVELOPE_WITH_DISCRETE_PRIMITIVES"

    .line 99
    sget-object p2, Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;->ENVELOPE:Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/swmansion/pulsar/reactnative/PulsarModule;->enumValueOrFallback(Ljava/lang/String;Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;)Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;

    move-result-object p1

    goto :goto_0

    .line 96
    :cond_1
    sget-object p1, Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;->PRIMITIVE_COMPLEX:Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;

    goto :goto_0

    .line 95
    :cond_2
    sget-object p1, Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;->PRIMITIVE_TICK:Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;

    goto :goto_0

    .line 94
    :cond_3
    sget-object p1, Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;->ENVELOPE:Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;

    .line 103
    :goto_0
    iget-object p2, p0, Lcom/swmansion/pulsar/reactnative/PulsarModule;->pulsar:Lcom/swmansion/pulsar/reactnative/PulsarReactNative;

    invoke-virtual {p2, p1}, Lcom/swmansion/pulsar/reactnative/PulsarReactNative;->getRealtimeComposer(Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;)Lcom/swmansion/pulsar/composers/RealtimeComposer;

    move-result-object p1

    iput-object p1, p0, Lcom/swmansion/pulsar/reactnative/PulsarModule;->realtimeComposer:Lcom/swmansion/pulsar/composers/RealtimeComposer;

    return-void
.end method

.method public Pulsar_shutDownEngine()V
    .locals 0

    return-void
.end method

.method public Pulsar_stopHaptics()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/swmansion/pulsar/reactnative/PulsarModule;->pulsar:Lcom/swmansion/pulsar/reactnative/PulsarReactNative;

    invoke-virtual {v0}, Lcom/swmansion/pulsar/reactnative/PulsarReactNative;->stopHaptics()V

    return-void
.end method

.method public RealtimeComposer_isActive()Z
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/swmansion/pulsar/reactnative/PulsarModule;->realtimeComposer:Lcom/swmansion/pulsar/composers/RealtimeComposer;

    invoke-virtual {v0}, Lcom/swmansion/pulsar/composers/RealtimeComposer;->isActive()Z

    move-result v0

    return v0
.end method

.method public RealtimeComposer_playDiscrete(DD)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/swmansion/pulsar/reactnative/PulsarModule;->realtimeComposer:Lcom/swmansion/pulsar/composers/RealtimeComposer;

    double-to-float p1, p1

    double-to-float p2, p3

    invoke-virtual {v0, p1, p2}, Lcom/swmansion/pulsar/composers/RealtimeComposer;->playDiscrete(FF)V

    return-void
.end method

.method public RealtimeComposer_set(DDZ)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/swmansion/pulsar/reactnative/PulsarModule;->realtimeComposer:Lcom/swmansion/pulsar/composers/RealtimeComposer;

    double-to-float p1, p1

    double-to-float p2, p3

    invoke-virtual {v0, p1, p2, p5}, Lcom/swmansion/pulsar/composers/RealtimeComposer;->set(FFZ)V

    return-void
.end method

.method public RealtimeComposer_start()V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/swmansion/pulsar/reactnative/PulsarModule;->realtimeComposer:Lcom/swmansion/pulsar/composers/RealtimeComposer;

    invoke-virtual {v0}, Lcom/swmansion/pulsar/composers/RealtimeComposer;->start()V

    return-void
.end method

.method public RealtimeComposer_stop()V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/swmansion/pulsar/reactnative/PulsarModule;->realtimeComposer:Lcom/swmansion/pulsar/composers/RealtimeComposer;

    invoke-virtual {v0}, Lcom/swmansion/pulsar/composers/RealtimeComposer;->stop()V

    return-void
.end method
