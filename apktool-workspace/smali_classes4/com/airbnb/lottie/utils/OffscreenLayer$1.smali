.class synthetic Lcom/airbnb/lottie/utils/OffscreenLayer$1;
.super Ljava/lang/Object;
.source "OffscreenLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/utils/OffscreenLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$airbnb$lottie$utils$OffscreenLayer$RenderStrategy:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 248
    invoke-static {}, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;->values()[Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/airbnb/lottie/utils/OffscreenLayer$1;->$SwitchMap$com$airbnb$lottie$utils$OffscreenLayer$RenderStrategy:[I

    :try_start_0
    sget-object v1, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;->DIRECT:Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/airbnb/lottie/utils/OffscreenLayer$1;->$SwitchMap$com$airbnb$lottie$utils$OffscreenLayer$RenderStrategy:[I

    sget-object v1, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;->SAVE_LAYER:Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/airbnb/lottie/utils/OffscreenLayer$1;->$SwitchMap$com$airbnb$lottie$utils$OffscreenLayer$RenderStrategy:[I

    sget-object v1, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;->BITMAP:Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/airbnb/lottie/utils/OffscreenLayer$1;->$SwitchMap$com$airbnb$lottie$utils$OffscreenLayer$RenderStrategy:[I

    sget-object v1, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;->RENDER_NODE:Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
