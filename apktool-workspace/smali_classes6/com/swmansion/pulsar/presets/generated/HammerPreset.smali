.class public final Lcom/swmansion/pulsar/presets/generated/HammerPreset;
.super Lcom/swmansion/pulsar/presets/Player;
.source "HammerPreset.kt"

# interfaces
.implements Lcom/swmansion/pulsar/types/Preset;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/pulsar/presets/generated/HammerPreset$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00072\u00020\u00012\u00020\u0002:\u0001\u0007B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/swmansion/pulsar/presets/generated/HammerPreset;",
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
.field public static final Companion:Lcom/swmansion/pulsar/presets/generated/HammerPreset$Companion;

.field private static final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/pulsar/presets/generated/HammerPreset$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/pulsar/presets/generated/HammerPreset$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/pulsar/presets/generated/HammerPreset;->Companion:Lcom/swmansion/pulsar/presets/generated/HammerPreset$Companion;

    .line 26
    const-string v0, "Hammer"

    sput-object v0, Lcom/swmansion/pulsar/presets/generated/HammerPreset;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/swmansion/pulsar/Pulsar;)V
    .locals 25

    const-string v0, "haptics"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v3, Lcom/swmansion/pulsar/types/PatternData;

    const/4 v0, 0x2

    .line 13
    new-array v1, v0, [Ljava/util/List;

    const/16 v4, 0x13

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

    const/high16 v9, 0x3f400000    # 0.75f

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v8

    new-array v5, v0, [Ljava/lang/Float;

    const/high16 v10, 0x42b40000    # 90.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v5, v7

    const v10, 0x3d4ccccd    # 0.05f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v0

    new-array v5, v0, [Ljava/lang/Float;

    const/high16 v11, 0x43340000    # 180.0f

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v5, v7

    aput-object v6, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v11, 0x3

    aput-object v5, v4, v11

    new-array v5, v0, [Ljava/lang/Float;

    const/high16 v12, 0x435c0000    # 220.0f

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v5, v7

    const v13, 0x3f4ccccd    # 0.8f

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v14, 0x4

    aput-object v5, v4, v14

    new-array v5, v0, [Ljava/lang/Float;

    const/high16 v15, 0x439b0000    # 310.0f

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v5, v7

    aput-object v10, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v15, 0x5

    aput-object v5, v4, v15

    new-array v5, v0, [Ljava/lang/Float;

    const/high16 v16, 0x43be0000    # 380.0f

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v5, v7

    aput-object v6, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move/from16 v16, v7

    const/4 v7, 0x6

    aput-object v5, v4, v7

    new-array v5, v0, [Ljava/lang/Float;

    const/high16 v17, 0x43d20000    # 420.0f

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v5, v16

    const v18, 0x3f6147ae    # 0.88f

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    aput-object v18, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v19, 0x7

    aput-object v5, v4, v19

    new-array v5, v0, [Ljava/lang/Float;

    const/high16 v19, 0x43fe0000    # 508.0f

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    aput-object v19, v5, v16

    aput-object v10, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v19, 0x8

    aput-object v5, v4, v19

    new-array v5, v0, [Ljava/lang/Float;

    const v19, 0x44098000    # 550.0f

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    aput-object v19, v5, v16

    aput-object v6, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v19, 0x9

    aput-object v5, v4, v19

    new-array v5, v0, [Ljava/lang/Float;

    const v19, 0x44138000    # 590.0f

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    aput-object v19, v5, v16

    const v20, 0x3f6b851f    # 0.92f

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    aput-object v20, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v21, 0xa

    aput-object v5, v4, v21

    new-array v5, v0, [Ljava/lang/Float;

    const v21, 0x44298000    # 678.0f

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    aput-object v21, v5, v16

    aput-object v10, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v21, 0xb

    aput-object v5, v4, v21

    new-array v5, v0, [Ljava/lang/Float;

    const v21, 0x44318000    # 710.0f

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    aput-object v21, v5, v16

    aput-object v6, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v21, 0xc

    aput-object v5, v4, v21

    new-array v5, v0, [Ljava/lang/Float;

    const/high16 v21, 0x44390000    # 740.0f

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    aput-object v21, v5, v16

    const/high16 v22, 0x3f800000    # 1.0f

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    aput-object v22, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v23, 0xd

    aput-object v5, v4, v23

    new-array v5, v0, [Ljava/lang/Float;

    const/high16 v23, 0x444c0000    # 816.0f

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    aput-object v23, v5, v16

    aput-object v10, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v23, 0xe

    aput-object v5, v4, v23

    new-array v5, v0, [Ljava/lang/Float;

    const/high16 v23, 0x44520000    # 840.0f

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    aput-object v23, v5, v16

    aput-object v6, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v23, 0xf

    aput-object v5, v4, v23

    new-array v5, v0, [Ljava/lang/Float;

    const v23, 0x44598000    # 870.0f

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    aput-object v23, v5, v16

    aput-object v22, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v24, 0x10

    aput-object v5, v4, v24

    new-array v5, v0, [Ljava/lang/Float;

    const v24, 0x446d8000    # 950.0f

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    aput-object v24, v5, v16

    aput-object v10, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v10, 0x11

    aput-object v5, v4, v10

    new-array v5, v0, [Ljava/lang/Float;

    const v10, 0x44834000    # 1050.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v5, v16

    aput-object v6, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v24, 0x12

    aput-object v5, v4, v24

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    aput-object v4, v1, v16

    .line 14
    new-array v4, v0, [Ljava/util/List;

    new-array v5, v0, [Ljava/lang/Float;

    aput-object v6, v5, v16

    const v24, 0x3e8f5c29    # 0.28f

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    aput-object v24, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v16

    new-array v5, v0, [Ljava/lang/Float;

    aput-object v10, v5, v16

    aput-object v24, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    aput-object v4, v1, v8

    .line 12
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 17
    new-array v4, v7, [Ljava/util/List;

    new-array v5, v11, [Ljava/lang/Float;

    aput-object v6, v5, v16

    aput-object v9, v5, v8

    const v6, 0x3e99999a    # 0.3f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v16

    .line 18
    new-array v5, v11, [Ljava/lang/Float;

    aput-object v12, v5, v16

    aput-object v13, v5, v8

    const v7, 0x3ea3d70a    # 0.32f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v0

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v8

    .line 19
    new-array v5, v11, [Ljava/lang/Float;

    aput-object v17, v5, v16

    aput-object v18, v5, v8

    aput-object v6, v5, v0

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v0

    .line 20
    new-array v5, v11, [Ljava/lang/Float;

    aput-object v19, v5, v16

    aput-object v20, v5, v8

    const v7, 0x3ea3d70a    # 0.32f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v0

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v11

    .line 21
    new-array v5, v11, [Ljava/lang/Float;

    aput-object v21, v5, v16

    aput-object v22, v5, v8

    aput-object v6, v5, v0

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v14

    .line 22
    new-array v5, v11, [Ljava/lang/Float;

    aput-object v23, v5, v16

    aput-object v22, v5, v8

    aput-object v6, v5, v0

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    aput-object v0, v4, v15

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
    sget-object v0, Lcom/swmansion/pulsar/presets/generated/HammerPreset;->name:Ljava/lang/String;

    return-object v0
.end method
