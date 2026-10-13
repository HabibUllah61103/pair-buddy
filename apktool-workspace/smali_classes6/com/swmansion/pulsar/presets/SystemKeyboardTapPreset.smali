.class public final Lcom/swmansion/pulsar/presets/SystemKeyboardTapPreset;
.super Lcom/swmansion/pulsar/presets/Player;
.source "SystemViewBasedPresets.kt"

# interfaces
.implements Lcom/swmansion/pulsar/types/Preset;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/pulsar/presets/SystemKeyboardTapPreset$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000b2\u00020\u00012\u00020\u0002:\u0001\u000bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/swmansion/pulsar/presets/SystemKeyboardTapPreset;",
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
.field public static final Companion:Lcom/swmansion/pulsar/presets/SystemKeyboardTapPreset$Companion;

.field private static final name:Ljava/lang/String;


# instance fields
.field private final systemPresets:Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;


# direct methods
.method public static synthetic $r8$lambda$MwgODrHVdrBGylIGAmj5rAQvqsA(Lcom/swmansion/pulsar/presets/SystemKeyboardTapPreset;)Z
    .locals 0

    invoke-static {p0}, Lcom/swmansion/pulsar/presets/SystemKeyboardTapPreset;->play$lambda$0(Lcom/swmansion/pulsar/presets/SystemKeyboardTapPreset;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/pulsar/presets/SystemKeyboardTapPreset$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/pulsar/presets/SystemKeyboardTapPreset$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/pulsar/presets/SystemKeyboardTapPreset;->Companion:Lcom/swmansion/pulsar/presets/SystemKeyboardTapPreset$Companion;

    .line 158
    const-string v0, "SystemKeyboardTap"

    sput-object v0, Lcom/swmansion/pulsar/presets/SystemKeyboardTapPreset;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/swmansion/pulsar/Pulsar;Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;)V
    .locals 7

    const-string v0, "haptics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "systemPresets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    new-instance v0, Lcom/swmansion/pulsar/types/PatternData;

    const/4 v1, 0x2

    .line 145
    new-array v2, v1, [Ljava/util/List;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 146
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 144
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x3

    .line 149
    new-array v3, v3, [Ljava/lang/Float;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v3, v4

    const v4, 0x3f266666    # 0.65f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x3f59999a    # 0.85f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 148
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 143
    invoke-direct {v0, v2, v1}, Lcom/swmansion/pulsar/types/PatternData;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 140
    invoke-direct {p0, p1, v0, v5}, Lcom/swmansion/pulsar/presets/Player;-><init>(Lcom/swmansion/pulsar/Pulsar;Lcom/swmansion/pulsar/types/PatternData;Z)V

    .line 139
    iput-object p2, p0, Lcom/swmansion/pulsar/presets/SystemKeyboardTapPreset;->systemPresets:Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;

    return-void
.end method

.method public static final synthetic access$getName$cp()Ljava/lang/String;
    .locals 1

    .line 139
    sget-object v0, Lcom/swmansion/pulsar/presets/SystemKeyboardTapPreset;->name:Ljava/lang/String;

    return-object v0
.end method

.method private static final play$lambda$0(Lcom/swmansion/pulsar/presets/SystemKeyboardTapPreset;)Z
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/swmansion/pulsar/presets/SystemKeyboardTapPreset;->systemPresets:Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;

    invoke-virtual {p0}, Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;->keyboardTap()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public play()V
    .locals 1

    .line 156
    new-instance v0, Lcom/swmansion/pulsar/presets/SystemKeyboardTapPreset$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/swmansion/pulsar/presets/SystemKeyboardTapPreset$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/pulsar/presets/SystemKeyboardTapPreset;)V

    invoke-virtual {p0, v0}, Lcom/swmansion/pulsar/presets/SystemKeyboardTapPreset;->playSystemOrFallback(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
