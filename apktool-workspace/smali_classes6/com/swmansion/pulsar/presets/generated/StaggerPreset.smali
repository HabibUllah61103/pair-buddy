.class public final Lcom/swmansion/pulsar/presets/generated/StaggerPreset;
.super Lcom/swmansion/pulsar/presets/Player;
.source "StaggerPreset.kt"

# interfaces
.implements Lcom/swmansion/pulsar/types/Preset;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/pulsar/presets/generated/StaggerPreset$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00072\u00020\u00012\u00020\u0002:\u0001\u0007B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/swmansion/pulsar/presets/generated/StaggerPreset;",
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
.field public static final Companion:Lcom/swmansion/pulsar/presets/generated/StaggerPreset$Companion;

.field private static final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/pulsar/presets/generated/StaggerPreset$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/pulsar/presets/generated/StaggerPreset$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/pulsar/presets/generated/StaggerPreset;->Companion:Lcom/swmansion/pulsar/presets/generated/StaggerPreset$Companion;

    .line 24
    const-string v0, "Stagger"

    sput-object v0, Lcom/swmansion/pulsar/presets/generated/StaggerPreset;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/swmansion/pulsar/Pulsar;)V
    .locals 19

    const-string v0, "haptics"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v3, Lcom/swmansion/pulsar/types/PatternData;

    const/4 v0, 0x2

    .line 13
    new-array v1, v0, [Ljava/util/List;

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/util/List;

    new-array v5, v0, [Ljava/lang/Float;

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

    new-array v5, v0, [Ljava/lang/Float;

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v7

    const v9, 0x3f2e147b    # 0.68f

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v8

    new-array v5, v0, [Ljava/lang/Float;

    const/high16 v9, 0x42340000    # 45.0f

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v7

    const v9, 0x3e19999a    # 0.15f

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v0

    new-array v5, v0, [Ljava/lang/Float;

    const/high16 v10, 0x42700000    # 60.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v5, v7

    const v11, 0x3ec28f5c    # 0.38f

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v11, 0x3

    aput-object v5, v4, v11

    new-array v5, v0, [Ljava/lang/Float;

    const/high16 v12, 0x42c80000    # 100.0f

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v5, v7

    aput-object v9, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v9, 0x4

    aput-object v5, v4, v9

    new-array v5, v0, [Ljava/lang/Float;

    const/high16 v12, 0x42f00000    # 120.0f

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v5, v7

    const v13, 0x3f051eb8    # 0.52f

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v13, 0x5

    aput-object v5, v4, v13

    new-array v5, v0, [Ljava/lang/Float;

    const/high16 v14, 0x43220000    # 162.0f

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v5, v7

    const v14, 0x3df5c28f    # 0.12f

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v14, 0x6

    aput-object v5, v4, v14

    new-array v5, v0, [Ljava/lang/Float;

    const/high16 v14, 0x43340000    # 180.0f

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v5, v7

    const v15, 0x3ea8f5c3    # 0.33f

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v15, 0x7

    aput-object v5, v4, v15

    new-array v5, v0, [Ljava/lang/Float;

    const/high16 v15, 0x43a00000    # 320.0f

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v5, v7

    aput-object v6, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v16, 0x8

    aput-object v5, v4, v16

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    aput-object v4, v1, v7

    .line 14
    new-array v4, v13, [Ljava/util/List;

    new-array v5, v0, [Ljava/lang/Float;

    aput-object v6, v5, v7

    const v13, 0x3f0ccccd    # 0.55f

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v7

    new-array v5, v0, [Ljava/lang/Float;

    aput-object v10, v5, v7

    const v16, 0x3f266666    # 0.65f

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v8

    new-array v5, v0, [Ljava/lang/Float;

    aput-object v12, v5, v7

    const/high16 v17, 0x3f000000    # 0.5f

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v0

    new-array v5, v0, [Ljava/lang/Float;

    aput-object v14, v5, v7

    const v18, 0x3f19999a    # 0.6f

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    aput-object v18, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v11

    new-array v5, v0, [Ljava/lang/Float;

    aput-object v15, v5, v7

    aput-object v13, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    aput-object v4, v1, v8

    .line 12
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 17
    new-array v4, v9, [Ljava/util/List;

    new-array v5, v11, [Ljava/lang/Float;

    aput-object v6, v5, v7

    const v6, 0x3f333333    # 0.7f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    aput-object v13, v5, v0

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v7

    .line 18
    new-array v5, v11, [Ljava/lang/Float;

    aput-object v10, v5, v7

    const v6, 0x3ecccccd    # 0.4f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    aput-object v16, v5, v0

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v8

    .line 19
    new-array v5, v11, [Ljava/lang/Float;

    aput-object v12, v5, v7

    aput-object v13, v5, v8

    aput-object v17, v5, v0

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v0

    .line 20
    new-array v5, v11, [Ljava/lang/Float;

    aput-object v14, v5, v7

    const v6, 0x3eb33333    # 0.35f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    aput-object v18, v5, v0

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    aput-object v0, v4, v11

    .line 16
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 11
    invoke-direct {v3, v1, v0}, Lcom/swmansion/pulsar/types/PatternData;-><init>(Ljava/util/List;Ljava/util/List;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/swmansion/pulsar/presets/Player;-><init>(Lcom/swmansion/pulsar/Pulsar;Lcom/swmansion/pulsar/types/PatternData;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public static final synthetic access$getName$cp()Ljava/lang/String;
    .locals 1

    .line 9
    sget-object v0, Lcom/swmansion/pulsar/presets/generated/StaggerPreset;->name:Ljava/lang/String;

    return-object v0
.end method
