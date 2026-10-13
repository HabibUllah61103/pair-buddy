.class public final Lcom/swmansion/pulsar/presets/SystemReleasePreset;
.super Lcom/swmansion/pulsar/presets/Player;
.source "SystemViewBasedPresets.kt"

# interfaces
.implements Lcom/swmansion/pulsar/types/Preset;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/pulsar/presets/SystemReleasePreset$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000b2\u00020\u00012\u00020\u0002:\u0001\u000bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/swmansion/pulsar/presets/SystemReleasePreset;",
        "Lcom/swmansion/pulsar/types/Preset;",
        "Lcom/swmansion/pulsar/presets/Player;",
        "haptics",
        "Lcom/swmansion/pulsar/Pulsar;",
        "systemPresets",
        "Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;",
        "<init>",
        "(Lcom/swmansion/pulsar/Pulsar;Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;)V",
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
.field public static final Companion:Lcom/swmansion/pulsar/presets/SystemReleasePreset$Companion;

.field private static final name:Ljava/lang/String;


# instance fields
.field private final systemPresets:Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;


# direct methods
.method public static synthetic $r8$lambda$PjJpGF6vq5JIJmsHv9lsql9yNAo(Lcom/swmansion/pulsar/presets/SystemReleasePreset;)Z
    .locals 0

    invoke-static {p0}, Lcom/swmansion/pulsar/presets/SystemReleasePreset;->play$lambda$0(Lcom/swmansion/pulsar/presets/SystemReleasePreset;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/pulsar/presets/SystemReleasePreset$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/pulsar/presets/SystemReleasePreset$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/pulsar/presets/SystemReleasePreset;->Companion:Lcom/swmansion/pulsar/presets/SystemReleasePreset$Companion;

    .line 467
    const-string v0, "SystemRelease"

    sput-object v0, Lcom/swmansion/pulsar/presets/SystemReleasePreset;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/swmansion/pulsar/Pulsar;Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;)V
    .locals 9

    const-string v0, "haptics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "systemPresets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    new-instance v0, Lcom/swmansion/pulsar/types/PatternData;

    const/4 v1, 0x2

    .line 453
    new-array v2, v1, [Ljava/util/List;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 454
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 452
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 457
    new-array v3, v1, [Ljava/util/List;

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Float;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v4

    const v8, 0x3f4f5c29    # 0.81f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v5

    const v8, 0x3f1c28f6    # 0.61f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    aput-object v7, v3, v4

    .line 458
    new-array v6, v6, [Ljava/lang/Float;

    const/high16 v7, 0x42f00000    # 120.0f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v4

    const v4, 0x3f333333    # 0.7f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v6, v5

    const v4, 0x3eb33333    # 0.35f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v3, v5

    .line 456
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 451
    invoke-direct {v0, v2, v1}, Lcom/swmansion/pulsar/types/PatternData;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 448
    invoke-direct {p0, p1, v0, v5}, Lcom/swmansion/pulsar/presets/Player;-><init>(Lcom/swmansion/pulsar/Pulsar;Lcom/swmansion/pulsar/types/PatternData;Z)V

    .line 447
    iput-object p2, p0, Lcom/swmansion/pulsar/presets/SystemReleasePreset;->systemPresets:Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;

    return-void
.end method

.method public static final synthetic access$getName$cp()Ljava/lang/String;
    .locals 1

    .line 447
    sget-object v0, Lcom/swmansion/pulsar/presets/SystemReleasePreset;->name:Ljava/lang/String;

    return-object v0
.end method

.method private static final play$lambda$0(Lcom/swmansion/pulsar/presets/SystemReleasePreset;)Z
    .locals 0

    .line 465
    iget-object p0, p0, Lcom/swmansion/pulsar/presets/SystemReleasePreset;->systemPresets:Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;

    invoke-virtual {p0}, Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;->release()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public play()V
    .locals 1

    .line 465
    new-instance v0, Lcom/swmansion/pulsar/presets/SystemReleasePreset$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/swmansion/pulsar/presets/SystemReleasePreset$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/pulsar/presets/SystemReleasePreset;)V

    invoke-virtual {p0, v0}, Lcom/swmansion/pulsar/presets/SystemReleasePreset;->playSystemOrFallback(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
