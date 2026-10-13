.class public final Lcom/superwall/sdk/paywall/presentation/RegisterContext;
.super Ljava/lang/Object;
.source "PublicPresentation.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0080\u0008\u0018\u00002\u00020\u0001By\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00128\u0008\u0002\u0010\n\u001a2\u0012\u0004\u0012\u00020\u000c\u0012 \u0012\u001e\u0008\u0001\u0012\u0004\u0012\u00020\r\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000b\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000b\u0012\u0016\u0008\u0002\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\t\u0010!\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0005H\u00c6\u0003J\t\u0010#\u001a\u00020\u0007H\u00c6\u0003J\t\u0010$\u001a\u00020\tH\u00c6\u0003J9\u0010%\u001a2\u0012\u0004\u0012\u00020\u000c\u0012 \u0012\u001e\u0008\u0001\u0012\u0004\u0012\u00020\r\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000b\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000bH\u00c6\u0003J\u0017\u0010&\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0012H\u00c6\u0003J\u0083\u0001\u0010\'\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t28\u0008\u0002\u0010\n\u001a2\u0012\u0004\u0012\u00020\u000c\u0012 \u0012\u001e\u0008\u0001\u0012\u0004\u0012\u00020\r\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000b\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000b2\u0016\u0008\u0002\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0012H\u00c6\u0001J\u0013\u0010(\u001a\u00020)2\u0008\u0010*\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010+\u001a\u00020,H\u00d6\u0001J\t\u0010-\u001a\u00020\u000cH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cRA\u0010\n\u001a2\u0012\u0004\u0012\u00020\u000c\u0012 \u0012\u001e\u0008\u0001\u0012\u0004\u0012\u00020\r\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000b\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u001f\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006."
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/presentation/RegisterContext;",
        "",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "collectionScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "serialTaskManager",
        "Lcom/superwall/sdk/misc/SerialTaskManager;",
        "trackAndPresentContext",
        "Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;",
        "registerCustomCallback",
        "Lkotlin/Function2;",
        "",
        "Lcom/superwall/sdk/paywall/presentation/CustomCallback;",
        "Lkotlin/coroutines/Continuation;",
        "Lcom/superwall/sdk/paywall/presentation/CustomCallbackResult;",
        "",
        "unregisterCustomCallback",
        "Lkotlin/Function1;",
        "<init>",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;Lcom/superwall/sdk/misc/SerialTaskManager;Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V",
        "getDispatcher",
        "()Lkotlinx/coroutines/CoroutineDispatcher;",
        "getCollectionScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "getSerialTaskManager",
        "()Lcom/superwall/sdk/misc/SerialTaskManager;",
        "getTrackAndPresentContext",
        "()Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;",
        "getRegisterCustomCallback",
        "()Lkotlin/jvm/functions/Function2;",
        "getUnregisterCustomCallback",
        "()Lkotlin/jvm/functions/Function1;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "superwall_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final collectionScope:Lkotlinx/coroutines/CoroutineScope;

.field private final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final registerCustomCallback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/CustomCallback;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/CustomCallbackResult;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final serialTaskManager:Lcom/superwall/sdk/misc/SerialTaskManager;

.field private final trackAndPresentContext:Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;

.field private final unregisterCustomCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;Lcom/superwall/sdk/misc/SerialTaskManager;Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/superwall/sdk/misc/SerialTaskManager;",
            "Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/CustomCallback;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/CustomCallbackResult;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collectionScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialTaskManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackAndPresentContext"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 118
    iput-object p2, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->collectionScope:Lkotlinx/coroutines/CoroutineScope;

    .line 119
    iput-object p3, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->serialTaskManager:Lcom/superwall/sdk/misc/SerialTaskManager;

    .line 120
    iput-object p4, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->trackAndPresentContext:Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;

    .line 121
    iput-object p5, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->registerCustomCallback:Lkotlin/jvm/functions/Function2;

    .line 122
    iput-object p6, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->unregisterCustomCallback:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;Lcom/superwall/sdk/misc/SerialTaskManager;Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x10

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p5, v0

    :cond_0
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_1

    move-object p7, v0

    goto :goto_0

    :cond_1
    move-object p7, p6

    :goto_0
    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 116
    invoke-direct/range {p1 .. p7}, Lcom/superwall/sdk/paywall/presentation/RegisterContext;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;Lcom/superwall/sdk/misc/SerialTaskManager;Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/paywall/presentation/RegisterContext;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;Lcom/superwall/sdk/misc/SerialTaskManager;Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/superwall/sdk/paywall/presentation/RegisterContext;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->collectionScope:Lkotlinx/coroutines/CoroutineScope;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget-object p3, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->serialTaskManager:Lcom/superwall/sdk/misc/SerialTaskManager;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget-object p4, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->trackAndPresentContext:Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget-object p5, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->registerCustomCallback:Lkotlin/jvm/functions/Function2;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget-object p6, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->unregisterCustomCallback:Lkotlin/jvm/functions/Function1;

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->copy(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;Lcom/superwall/sdk/misc/SerialTaskManager;Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Lcom/superwall/sdk/paywall/presentation/RegisterContext;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public final component2()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->collectionScope:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final component3()Lcom/superwall/sdk/misc/SerialTaskManager;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->serialTaskManager:Lcom/superwall/sdk/misc/SerialTaskManager;

    return-object v0
.end method

.method public final component4()Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->trackAndPresentContext:Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;

    return-object v0
.end method

.method public final component5()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/CustomCallback;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/CustomCallbackResult;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->registerCustomCallback:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final component6()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->unregisterCustomCallback:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final copy(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;Lcom/superwall/sdk/misc/SerialTaskManager;Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Lcom/superwall/sdk/paywall/presentation/RegisterContext;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/superwall/sdk/misc/SerialTaskManager;",
            "Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/CustomCallback;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/CustomCallbackResult;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/superwall/sdk/paywall/presentation/RegisterContext;"
        }
    .end annotation

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collectionScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialTaskManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackAndPresentContext"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/superwall/sdk/paywall/presentation/RegisterContext;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/superwall/sdk/paywall/presentation/RegisterContext;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;Lcom/superwall/sdk/misc/SerialTaskManager;Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/paywall/presentation/RegisterContext;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/paywall/presentation/RegisterContext;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->collectionScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->collectionScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->serialTaskManager:Lcom/superwall/sdk/misc/SerialTaskManager;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->serialTaskManager:Lcom/superwall/sdk/misc/SerialTaskManager;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->trackAndPresentContext:Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->trackAndPresentContext:Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->registerCustomCallback:Lkotlin/jvm/functions/Function2;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->registerCustomCallback:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->unregisterCustomCallback:Lkotlin/jvm/functions/Function1;

    iget-object p1, p1, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->unregisterCustomCallback:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getCollectionScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->collectionScope:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final getDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public final getRegisterCustomCallback()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/CustomCallback;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/CustomCallbackResult;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->registerCustomCallback:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getSerialTaskManager()Lcom/superwall/sdk/misc/SerialTaskManager;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->serialTaskManager:Lcom/superwall/sdk/misc/SerialTaskManager;

    return-object v0
.end method

.method public final getTrackAndPresentContext()Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->trackAndPresentContext:Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;

    return-object v0
.end method

.method public final getUnregisterCustomCallback()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->unregisterCustomCallback:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {v0}, Lkotlinx/coroutines/CoroutineDispatcher;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->collectionScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->serialTaskManager:Lcom/superwall/sdk/misc/SerialTaskManager;

    invoke-virtual {v1}, Lcom/superwall/sdk/misc/SerialTaskManager;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->trackAndPresentContext:Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->registerCustomCallback:Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->unregisterCustomCallback:Lkotlin/jvm/functions/Function1;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->collectionScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->serialTaskManager:Lcom/superwall/sdk/misc/SerialTaskManager;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->trackAndPresentContext:Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;

    iget-object v4, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->registerCustomCallback:Lkotlin/jvm/functions/Function2;

    iget-object v5, p0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->unregisterCustomCallback:Lkotlin/jvm/functions/Function1;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "RegisterContext(dispatcher="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", collectionScope="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serialTaskManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trackAndPresentContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", registerCustomCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", unregisterCustomCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
