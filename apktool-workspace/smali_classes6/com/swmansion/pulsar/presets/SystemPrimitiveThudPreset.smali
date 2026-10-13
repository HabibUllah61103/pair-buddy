.class public final Lcom/swmansion/pulsar/presets/SystemPrimitiveThudPreset;
.super Lcom/swmansion/pulsar/presets/Player;
.source "SystemPrimitivePresets.kt"

# interfaces
.implements Lcom/swmansion/pulsar/types/Preset;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/pulsar/presets/SystemPrimitiveThudPreset$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000b2\u00020\u00012\u00020\u0002:\u0001\u000bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/swmansion/pulsar/presets/SystemPrimitiveThudPreset;",
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
.field public static final Companion:Lcom/swmansion/pulsar/presets/SystemPrimitiveThudPreset$Companion;

.field private static final name:Ljava/lang/String;


# instance fields
.field private final systemPresets:Lcom/swmansion/pulsar/presets/SystemPrimitivePresets;


# direct methods
.method public static synthetic $r8$lambda$s83Mu80lV22AbBajxhvDAQCH9Hg(Lcom/swmansion/pulsar/presets/SystemPrimitiveThudPreset;)Z
    .locals 0

    invoke-static {p0}, Lcom/swmansion/pulsar/presets/SystemPrimitiveThudPreset;->play$lambda$0(Lcom/swmansion/pulsar/presets/SystemPrimitiveThudPreset;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/pulsar/presets/SystemPrimitiveThudPreset$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/pulsar/presets/SystemPrimitiveThudPreset$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/pulsar/presets/SystemPrimitiveThudPreset;->Companion:Lcom/swmansion/pulsar/presets/SystemPrimitiveThudPreset$Companion;

    .line 113
    const-string v0, "SystemPrimitiveThud"

    sput-object v0, Lcom/swmansion/pulsar/presets/SystemPrimitiveThudPreset;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/swmansion/pulsar/Pulsar;Lcom/swmansion/pulsar/presets/SystemPrimitivePresets;)V
    .locals 9

    const-string v0, "haptics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "systemPresets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lcom/swmansion/pulsar/types/PatternData;

    const/4 v1, 0x2

    .line 101
    new-array v2, v1, [Ljava/util/List;

    new-array v3, v1, [Ljava/util/List;

    new-array v4, v1, [Ljava/lang/Float;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v7, 0x3e4ccccd    # 0.2f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v4, v8

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    aput-object v4, v3, v6

    new-array v4, v1, [Ljava/lang/Float;

    const/high16 v7, 0x43960000    # 300.0f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v4, v6

    aput-object v5, v4, v8

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    aput-object v3, v2, v6

    .line 102
    new-array v3, v1, [Ljava/util/List;

    new-array v4, v1, [Ljava/lang/Float;

    aput-object v5, v4, v6

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    aput-object v4, v3, v6

    new-array v1, v1, [Ljava/lang/Float;

    aput-object v7, v1, v6

    const v4, 0x3e2e147b    # 0.17f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v8

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v2, v8

    .line 100
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 104
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 99
    invoke-direct {v0, v1, v2}, Lcom/swmansion/pulsar/types/PatternData;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 96
    invoke-direct {p0, p1, v0, v8}, Lcom/swmansion/pulsar/presets/Player;-><init>(Lcom/swmansion/pulsar/Pulsar;Lcom/swmansion/pulsar/types/PatternData;Z)V

    .line 95
    iput-object p2, p0, Lcom/swmansion/pulsar/presets/SystemPrimitiveThudPreset;->systemPresets:Lcom/swmansion/pulsar/presets/SystemPrimitivePresets;

    return-void
.end method

.method public static final synthetic access$getName$cp()Ljava/lang/String;
    .locals 1

    .line 95
    sget-object v0, Lcom/swmansion/pulsar/presets/SystemPrimitiveThudPreset;->name:Ljava/lang/String;

    return-object v0
.end method

.method private static final play$lambda$0(Lcom/swmansion/pulsar/presets/SystemPrimitiveThudPreset;)Z
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/swmansion/pulsar/presets/SystemPrimitiveThudPreset;->systemPresets:Lcom/swmansion/pulsar/presets/SystemPrimitivePresets;

    invoke-virtual {p0}, Lcom/swmansion/pulsar/presets/SystemPrimitivePresets;->primitiveThud()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public play()V
    .locals 1

    .line 111
    new-instance v0, Lcom/swmansion/pulsar/presets/SystemPrimitiveThudPreset$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/swmansion/pulsar/presets/SystemPrimitiveThudPreset$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/pulsar/presets/SystemPrimitiveThudPreset;)V

    invoke-virtual {p0, v0}, Lcom/swmansion/pulsar/presets/SystemPrimitiveThudPreset;->playSystemOrFallback(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
