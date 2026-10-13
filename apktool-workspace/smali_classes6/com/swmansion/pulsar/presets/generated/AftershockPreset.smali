.class public final Lcom/swmansion/pulsar/presets/generated/AftershockPreset;
.super Lcom/swmansion/pulsar/presets/Player;
.source "AftershockPreset.kt"

# interfaces
.implements Lcom/swmansion/pulsar/types/Preset;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/pulsar/presets/generated/AftershockPreset$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00072\u00020\u00012\u00020\u0002:\u0001\u0007B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/swmansion/pulsar/presets/generated/AftershockPreset;",
        "Lcom/swmansion/pulsar/types/Preset;",
        "Lcom/swmansion/pulsar/presets/Player;",
        "haptics",
        "Lcom/swmansion/pulsar/Pulsar;",
        "<init>",
        "(Lcom/swmansion/pulsar/Pulsar;)V",
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
.field public static final Companion:Lcom/swmansion/pulsar/presets/generated/AftershockPreset$Companion;

.field private static final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/pulsar/presets/generated/AftershockPreset$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/pulsar/presets/generated/AftershockPreset$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/pulsar/presets/generated/AftershockPreset;->Companion:Lcom/swmansion/pulsar/presets/generated/AftershockPreset$Companion;

    .line 24
    const-string v0, "Aftershock"

    sput-object v0, Lcom/swmansion/pulsar/presets/generated/AftershockPreset;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/swmansion/pulsar/Pulsar;)V
    .locals 9

    const-string v0, "haptics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v3, Lcom/swmansion/pulsar/types/PatternData;

    const/4 v0, 0x2

    .line 13
    new-array v1, v0, [Ljava/util/List;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 14
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v1, v5

    .line 12
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x4

    .line 17
    new-array v2, v2, [Ljava/util/List;

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Float;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v4

    const v8, 0x3f4ccccd    # 0.8f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v5

    aput-object v8, v7, v0

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    aput-object v7, v2, v4

    .line 18
    new-array v7, v6, [Ljava/lang/Float;

    const v8, 0x43958000    # 299.0f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v4

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v5

    const v8, 0x3e7ced91    # 0.247f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    aput-object v7, v2, v5

    .line 19
    new-array v7, v6, [Ljava/lang/Float;

    const v8, 0x43c78000    # 399.0f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v4

    const v8, 0x3efced91    # 0.494f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v5

    const v8, 0x3e883127    # 0.266f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    aput-object v7, v2, v0

    .line 20
    new-array v7, v6, [Ljava/lang/Float;

    const/high16 v8, 0x43fa0000    # 500.0f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v4

    const v4, 0x3efe76c9    # 0.497f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v7, v5

    const v4, 0x3e86a7f0    # 0.263f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v7, v0

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    aput-object v0, v2, v6

    .line 16
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 11
    invoke-direct {v3, v1, v0}, Lcom/swmansion/pulsar/types/PatternData;-><init>(Ljava/util/List;Ljava/util/List;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/swmansion/pulsar/presets/Player;-><init>(Lcom/swmansion/pulsar/Pulsar;Lcom/swmansion/pulsar/types/PatternData;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public static final synthetic access$getName$cp()Ljava/lang/String;
    .locals 1

    .line 9
    sget-object v0, Lcom/swmansion/pulsar/presets/generated/AftershockPreset;->name:Ljava/lang/String;

    return-object v0
.end method
