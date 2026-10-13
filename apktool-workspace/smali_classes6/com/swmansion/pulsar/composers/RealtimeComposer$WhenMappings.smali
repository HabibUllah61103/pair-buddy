.class public final synthetic Lcom/swmansion/pulsar/composers/RealtimeComposer$WhenMappings;
.super Ljava/lang/Object;
.source "RealtimeComposer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/pulsar/composers/RealtimeComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;->values()[Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;->ENVELOPE:Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;

    invoke-virtual {v1}, Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;->ENVELOPE_WITH_DISCRETE_PRIMITIVES:Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;

    invoke-virtual {v1}, Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;->PRIMITIVE_TICK:Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;

    invoke-virtual {v1}, Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;->PRIMITIVE_COMPLEX:Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;

    invoke-virtual {v1}, Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    sput-object v0, Lcom/swmansion/pulsar/composers/RealtimeComposer$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
