.class public final Lcom/swmansion/pulsar/presets/generated/SonarPreset;
.super Lcom/swmansion/pulsar/presets/Player;
.source "SonarPreset.kt"

# interfaces
.implements Lcom/swmansion/pulsar/types/Preset;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/pulsar/presets/generated/SonarPreset$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00072\u00020\u00012\u00020\u0002:\u0001\u0007B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/swmansion/pulsar/presets/generated/SonarPreset;",
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
.field public static final Companion:Lcom/swmansion/pulsar/presets/generated/SonarPreset$Companion;

.field private static final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/pulsar/presets/generated/SonarPreset$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/pulsar/presets/generated/SonarPreset$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/pulsar/presets/generated/SonarPreset;->Companion:Lcom/swmansion/pulsar/presets/generated/SonarPreset$Companion;

    .line 25
    const-string v0, "Sonar"

    sput-object v0, Lcom/swmansion/pulsar/presets/generated/SonarPreset;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/swmansion/pulsar/Pulsar;)V
    .locals 22

    const-string v0, "haptics"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v3, Lcom/swmansion/pulsar/types/PatternData;

    const/4 v0, 0x2

    .line 13
    new-array v1, v0, [Ljava/util/List;

    const/16 v4, 0x11

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

    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v7

    const v9, 0x3eb33333    # 0.35f

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v8

    new-array v5, v0, [Ljava/lang/Float;

    const/high16 v10, 0x43020000    # 130.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v5, v7

    const v10, 0x3d23d70a    # 0.04f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v0

    new-array v5, v0, [Ljava/lang/Float;

    const/high16 v11, 0x43fa0000    # 500.0f

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v5, v7

    aput-object v6, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v11, 0x3

    aput-object v5, v4, v11

    new-array v5, v0, [Ljava/lang/Float;

    const/high16 v12, 0x44160000    # 600.0f

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v5, v7

    aput-object v9, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v13, 0x4

    aput-object v5, v4, v13

    new-array v5, v0, [Ljava/lang/Float;

    const v14, 0x44368000    # 730.0f

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v5, v7

    aput-object v10, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v14, 0x5

    aput-object v5, v4, v14

    new-array v5, v0, [Ljava/lang/Float;

    const v15, 0x44898000    # 1100.0f

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v5, v7

    aput-object v6, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v15, 0x6

    aput-object v5, v4, v15

    new-array v5, v0, [Ljava/lang/Float;

    const/high16 v15, 0x44960000    # 1200.0f

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v5, v7

    aput-object v9, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v16, 0x7

    aput-object v5, v4, v16

    new-array v5, v0, [Ljava/lang/Float;

    const v16, 0x44a64000    # 1330.0f

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v5, v7

    aput-object v10, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v10, 0x8

    aput-object v5, v4, v10

    new-array v5, v0, [Ljava/lang/Float;

    const v10, 0x44c1c000    # 1550.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v5, v7

    aput-object v6, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v16, 0x9

    aput-object v5, v4, v16

    new-array v5, v0, [Ljava/lang/Float;

    const v16, 0x44ca8000    # 1620.0f

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v5, v7

    aput-object v6, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v16, 0xa

    aput-object v5, v4, v16

    new-array v5, v0, [Ljava/lang/Float;

    const v16, 0x44cfe000    # 1663.0f

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v5, v7

    const v16, 0x3f5ae148    # 0.855f

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v16, 0xb

    aput-object v5, v4, v16

    new-array v5, v0, [Ljava/lang/Float;

    const v16, 0x44d48000    # 1700.0f

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v5, v7

    aput-object v6, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v16, 0xc

    aput-object v5, v4, v16

    new-array v5, v0, [Ljava/lang/Float;

    const/high16 v16, 0x44e10000    # 1800.0f

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v5, v7

    const v17, 0x3f266666    # 0.65f

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v18, 0xd

    aput-object v5, v4, v18

    new-array v5, v0, [Ljava/lang/Float;

    const v18, 0x44e7e000    # 1855.0f

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    aput-object v18, v5, v7

    aput-object v6, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v18, 0xe

    aput-object v5, v4, v18

    new-array v5, v0, [Ljava/lang/Float;

    const/high16 v18, 0x44f00000    # 1920.0f

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    aput-object v18, v5, v7

    const v19, 0x3ecccccd    # 0.4f

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    aput-object v19, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v20, 0xf

    aput-object v5, v4, v20

    new-array v5, v0, [Ljava/lang/Float;

    const/high16 v20, 0x44fa0000    # 2000.0f

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    aput-object v20, v5, v7

    aput-object v6, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v21, 0x10

    aput-object v5, v4, v21

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    aput-object v4, v1, v7

    .line 14
    new-array v4, v13, [Ljava/util/List;

    new-array v5, v0, [Ljava/lang/Float;

    aput-object v6, v5, v7

    const v21, 0x3f3851ec    # 0.72f

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    aput-object v21, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v7

    new-array v5, v0, [Ljava/lang/Float;

    aput-object v10, v5, v7

    aput-object v21, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v8

    new-array v5, v0, [Ljava/lang/Float;

    const v10, 0x44cee000    # 1655.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v5, v7

    const v10, 0x3f4ccccd    # 0.8f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v0

    new-array v5, v0, [Ljava/lang/Float;

    aput-object v20, v5, v7

    const v10, 0x3f333333    # 0.7f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    aput-object v4, v1, v8

    .line 12
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 17
    new-array v4, v14, [Ljava/util/List;

    new-array v5, v11, [Ljava/lang/Float;

    aput-object v6, v5, v7

    aput-object v9, v5, v8

    aput-object v10, v5, v0

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v7

    .line 18
    new-array v5, v11, [Ljava/lang/Float;

    aput-object v12, v5, v7

    aput-object v9, v5, v8

    aput-object v10, v5, v0

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v8

    .line 19
    new-array v5, v11, [Ljava/lang/Float;

    aput-object v15, v5, v7

    aput-object v9, v5, v8

    aput-object v10, v5, v0

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v0

    .line 20
    new-array v5, v11, [Ljava/lang/Float;

    aput-object v16, v5, v7

    aput-object v17, v5, v8

    aput-object v17, v5, v0

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v11

    .line 21
    new-array v5, v11, [Ljava/lang/Float;

    aput-object v18, v5, v7

    aput-object v19, v5, v8

    const v6, 0x3f19999a    # 0.6f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    aput-object v0, v4, v13

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
    sget-object v0, Lcom/swmansion/pulsar/presets/generated/SonarPreset;->name:Ljava/lang/String;

    return-object v0
.end method
