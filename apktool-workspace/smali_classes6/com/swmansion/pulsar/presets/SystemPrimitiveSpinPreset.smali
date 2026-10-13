.class public final Lcom/swmansion/pulsar/presets/SystemPrimitiveSpinPreset;
.super Lcom/swmansion/pulsar/presets/Player;
.source "SystemPrimitivePresets.kt"

# interfaces
.implements Lcom/swmansion/pulsar/types/Preset;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/pulsar/presets/SystemPrimitiveSpinPreset$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000b2\u00020\u00012\u00020\u0002:\u0001\u000bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/swmansion/pulsar/presets/SystemPrimitiveSpinPreset;",
        "Lcom/swmansion/pulsar/types/Preset;",
        "Lcom/swmansion/pulsar/presets/Player;",
        "haptics",
        "Lcom/swmansion/pulsar/Pulsar;",
        "systemPresets",
        "Lcom/swmansion/pulsar/presets/SystemPrimitivePresets;",
        "<init>",
        "(Lcom/swmansion/pulsar/Pulsar;Lcom/swmansion/pulsar/presets/SystemPrimitivePresets;)V",
        "play",
        "",
        "Companion",
        "Pulsar_release"
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
.field public static final Companion:Lcom/swmansion/pulsar/presets/SystemPrimitiveSpinPreset$Companion;

.field private static final name:Ljava/lang/String;


# instance fields
.field private final systemPresets:Lcom/swmansion/pulsar/presets/SystemPrimitivePresets;


# direct methods
.method public static synthetic $r8$lambda$JuljMUPA0N8dUrbxSCtZN-XZe7U(Lcom/swmansion/pulsar/presets/SystemPrimitiveSpinPreset;)Z
    .locals 0

    invoke-static {p0}, Lcom/swmansion/pulsar/presets/SystemPrimitiveSpinPreset;->play$lambda$0(Lcom/swmansion/pulsar/presets/SystemPrimitiveSpinPreset;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/pulsar/presets/SystemPrimitiveSpinPreset$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/pulsar/presets/SystemPrimitiveSpinPreset$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/pulsar/presets/SystemPrimitiveSpinPreset;->Companion:Lcom/swmansion/pulsar/presets/SystemPrimitiveSpinPreset$Companion;

    .line 134
    const-string v0, "SystemPrimitiveSpin"

    sput-object v0, Lcom/swmansion/pulsar/presets/SystemPrimitiveSpinPreset;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/swmansion/pulsar/Pulsar;Lcom/swmansion/pulsar/presets/SystemPrimitivePresets;)V
    .locals 11

    const-string v0, "haptics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "systemPresets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    new-instance v0, Lcom/swmansion/pulsar/types/PatternData;

    const/4 v1, 0x2

    .line 122
    new-array v2, v1, [Ljava/util/List;

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/util/List;

    new-array v5, v1, [Ljava/lang/Float;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v7

    new-array v5, v1, [Ljava/lang/Float;

    const/high16 v9, 0x42960000    # 75.0f

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v7

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v8

    new-array v5, v1, [Ljava/lang/Float;

    const/high16 v10, 0x43160000    # 150.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v5, v7

    aput-object v6, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    aput-object v4, v2, v7

    .line 123
    new-array v3, v3, [Ljava/util/List;

    new-array v4, v1, [Ljava/lang/Float;

    aput-object v6, v4, v7

    const v5, 0x3ea8f5c3    # 0.33f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    aput-object v4, v3, v7

    new-array v4, v1, [Ljava/lang/Float;

    aput-object v9, v4, v7

    const v5, 0x3e2e147b    # 0.17f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    aput-object v4, v3, v8

    new-array v4, v1, [Ljava/lang/Float;

    aput-object v10, v4, v7

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v2, v8

    .line 121
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 125
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 120
    invoke-direct {v0, v1, v2}, Lcom/swmansion/pulsar/types/PatternData;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 117
    invoke-direct {p0, p1, v0, v8}, Lcom/swmansion/pulsar/presets/Player;-><init>(Lcom/swmansion/pulsar/Pulsar;Lcom/swmansion/pulsar/types/PatternData;Z)V

    .line 116
    iput-object p2, p0, Lcom/swmansion/pulsar/presets/SystemPrimitiveSpinPreset;->systemPresets:Lcom/swmansion/pulsar/presets/SystemPrimitivePresets;

    return-void
.end method

.method public static final synthetic access$getName$cp()Ljava/lang/String;
    .locals 1

    .line 116
    sget-object v0, Lcom/swmansion/pulsar/presets/SystemPrimitiveSpinPreset;->name:Ljava/lang/String;

    return-object v0
.end method

.method private static final play$lambda$0(Lcom/swmansion/pulsar/presets/SystemPrimitiveSpinPreset;)Z
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/swmansion/pulsar/presets/SystemPrimitiveSpinPreset;->systemPresets:Lcom/swmansion/pulsar/presets/SystemPrimitivePresets;

    invoke-virtual {p0}, Lcom/swmansion/pulsar/presets/SystemPrimitivePresets;->primitiveSpin()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public play()V
    .locals 1

    .line 132
    new-instance v0, Lcom/swmansion/pulsar/presets/SystemPrimitiveSpinPreset$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/swmansion/pulsar/presets/SystemPrimitiveSpinPreset$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/pulsar/presets/SystemPrimitiveSpinPreset;)V

    invoke-virtual {p0, v0}, Lcom/swmansion/pulsar/presets/SystemPrimitiveSpinPreset;->playSystemOrFallback(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
