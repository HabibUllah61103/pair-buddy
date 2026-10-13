.class public Lcom/superwall/supercel/ResultCallback;
.super Ljava/lang/Object;
.source "CEL.kt"

# interfaces
.implements Lcom/superwall/supercel/Disposable;
.implements Ljava/lang/AutoCloseable;
.implements Lcom/superwall/supercel/ResultCallbackInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/supercel/ResultCallback$Companion;,
        Lcom/superwall/supercel/ResultCallback$UniffiCleanAction;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCEL.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CEL.kt\ncom/superwall/supercel/ResultCallback\n+ 2 CEL.kt\ncom/superwall/supercel/CELKt\n*L\n1#1,1830:1\n1710#1,11:1836\n1723#1,2:1852\n308#2:1831\n268#2,4:1832\n308#2:1847\n268#2,4:1848\n*S KotlinDebug\n*F\n+ 1 CEL.kt\ncom/superwall/supercel/ResultCallback\n*L\n1749#1:1836,11\n1749#1:1852,2\n1742#1:1831\n1742#1:1832,4\n1750#1:1847\n1750#1:1848,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000 $2\u00020\u00012\u00020\u00022\u00020\u0003:\u0002$%B\u000f\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u000f\u0008\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ<\u0010\u0014\u001a\u0002H\u0015\"\u0004\u0008\u0000\u0010\u00152!\u0010\u0016\u001a\u001d\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0018\u0012\u0008\u0008\u0019\u0012\u0004\u0008\u0008(\u001a\u0012\u0004\u0012\u0002H\u00150\u0017H\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0008\u0010\u001d\u001a\u00020\u001eH\u0016J\u0008\u0010\u001f\u001a\u00020\u001eH\u0016J\u0010\u0010 \u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\"H\u0016J\u0006\u0010#\u001a\u00020\u0005R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00020\rX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006&"
    }
    d2 = {
        "Lcom/superwall/supercel/ResultCallback;",
        "Lcom/superwall/supercel/Disposable;",
        "Ljava/lang/AutoCloseable;",
        "Lcom/superwall/supercel/ResultCallbackInterface;",
        "pointer",
        "Lcom/sun/jna/Pointer;",
        "(Lcom/sun/jna/Pointer;)V",
        "noPointer",
        "Lcom/superwall/supercel/NoPointer;",
        "(Lcom/superwall/supercel/NoPointer;)V",
        "callCounter",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "cleanable",
        "Lcom/superwall/supercel/UniffiCleaner$Cleanable;",
        "getCleanable",
        "()Lcom/superwall/supercel/UniffiCleaner$Cleanable;",
        "getPointer",
        "()Lcom/sun/jna/Pointer;",
        "wasDestroyed",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "callWithPointer",
        "R",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "ptr",
        "callWithPointer$supercel_release",
        "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "close",
        "",
        "destroy",
        "onResult",
        "result",
        "",
        "uniffiClonePointer",
        "Companion",
        "UniffiCleanAction",
        "supercel_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/superwall/supercel/ResultCallback$Companion;


# instance fields
.field private final callCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field private final cleanable:Lcom/superwall/supercel/UniffiCleaner$Cleanable;

.field private final pointer:Lcom/sun/jna/Pointer;

.field private final wasDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/supercel/ResultCallback$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/supercel/ResultCallback$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/supercel/ResultCallback;->Companion:Lcom/superwall/supercel/ResultCallback$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 3

    const-string v0, "pointer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1687
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/superwall/supercel/ResultCallback;->wasDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1688
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/superwall/supercel/ResultCallback;->callCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1669
    iput-object p1, p0, Lcom/superwall/supercel/ResultCallback;->pointer:Lcom/sun/jna/Pointer;

    .line 1670
    sget-object v0, Lcom/superwall/supercel/UniffiLib;->Companion:Lcom/superwall/supercel/UniffiLib$Companion;

    invoke-virtual {v0}, Lcom/superwall/supercel/UniffiLib$Companion;->getCLEANER$supercel_release()Lcom/superwall/supercel/UniffiCleaner;

    move-result-object v0

    new-instance v1, Lcom/superwall/supercel/ResultCallback$UniffiCleanAction;

    invoke-direct {v1, p1}, Lcom/superwall/supercel/ResultCallback$UniffiCleanAction;-><init>(Lcom/sun/jna/Pointer;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, p0, v1}, Lcom/superwall/supercel/UniffiCleaner;->register(Ljava/lang/Object;Ljava/lang/Runnable;)Lcom/superwall/supercel/UniffiCleaner$Cleanable;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/supercel/ResultCallback;->cleanable:Lcom/superwall/supercel/UniffiCleaner$Cleanable;

    return-void
.end method

.method public constructor <init>(Lcom/superwall/supercel/NoPointer;)V
    .locals 2

    const-string v0, "noPointer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1687
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/superwall/supercel/ResultCallback;->wasDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1688
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x1

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/superwall/supercel/ResultCallback;->callCounter:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 p1, 0x0

    .line 1680
    iput-object p1, p0, Lcom/superwall/supercel/ResultCallback;->pointer:Lcom/sun/jna/Pointer;

    .line 1681
    sget-object v0, Lcom/superwall/supercel/UniffiLib;->Companion:Lcom/superwall/supercel/UniffiLib$Companion;

    invoke-virtual {v0}, Lcom/superwall/supercel/UniffiLib$Companion;->getCLEANER$supercel_release()Lcom/superwall/supercel/UniffiCleaner;

    move-result-object v0

    new-instance v1, Lcom/superwall/supercel/ResultCallback$UniffiCleanAction;

    invoke-direct {v1, p1}, Lcom/superwall/supercel/ResultCallback$UniffiCleanAction;-><init>(Lcom/sun/jna/Pointer;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, p0, v1}, Lcom/superwall/supercel/UniffiCleaner;->register(Ljava/lang/Object;Ljava/lang/Runnable;)Lcom/superwall/supercel/UniffiCleaner$Cleanable;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/supercel/ResultCallback;->cleanable:Lcom/superwall/supercel/UniffiCleaner$Cleanable;

    return-void
.end method

.method public static final synthetic access$getCallCounter$p(Lcom/superwall/supercel/ResultCallback;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 1665
    iget-object p0, p0, Lcom/superwall/supercel/ResultCallback;->callCounter:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method public static final synthetic access$getCleanable(Lcom/superwall/supercel/ResultCallback;)Lcom/superwall/supercel/UniffiCleaner$Cleanable;
    .locals 0

    .line 1665
    iget-object p0, p0, Lcom/superwall/supercel/ResultCallback;->cleanable:Lcom/superwall/supercel/UniffiCleaner$Cleanable;

    return-object p0
.end method


# virtual methods
.method public final callWithPointer$supercel_release(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/sun/jna/Pointer;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1710
    :cond_0
    invoke-static {p0}, Lcom/superwall/supercel/ResultCallback;->access$getCallCounter$p(Lcom/superwall/supercel/ResultCallback;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v0, v4

    if-eqz v4, :cond_3

    .line 1717
    invoke-static {p0}, Lcom/superwall/supercel/ResultCallback;->access$getCallCounter$p(Lcom/superwall/supercel/ResultCallback;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    const-wide/16 v5, 0x1

    add-long/2addr v5, v0

    invoke-virtual {v4, v0, v1, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1720
    :try_start_0
    invoke-virtual {p0}, Lcom/superwall/supercel/ResultCallback;->uniffiClonePointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1723
    invoke-static {p0}, Lcom/superwall/supercel/ResultCallback;->access$getCallCounter$p(Lcom/superwall/supercel/ResultCallback;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1724
    invoke-static {p0}, Lcom/superwall/supercel/ResultCallback;->access$getCleanable(Lcom/superwall/supercel/ResultCallback;)Lcom/superwall/supercel/UniffiCleaner$Cleanable;

    move-result-object v0

    invoke-interface {v0}, Lcom/superwall/supercel/UniffiCleaner$Cleanable;->clean()V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    .line 1723
    invoke-static {p0}, Lcom/superwall/supercel/ResultCallback;->access$getCallCounter$p(Lcom/superwall/supercel/ResultCallback;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1724
    invoke-static {p0}, Lcom/superwall/supercel/ResultCallback;->access$getCleanable(Lcom/superwall/supercel/ResultCallback;)Lcom/superwall/supercel/UniffiCleaner$Cleanable;

    move-result-object v0

    invoke-interface {v0}, Lcom/superwall/supercel/UniffiCleaner$Cleanable;->clean()V

    :cond_2
    throw p1

    .line 1715
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " call counter would overflow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1712
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " object has already been destroyed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 1703
    :try_start_0
    invoke-virtual {p0}, Lcom/superwall/supercel/ResultCallback;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1704
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public destroy()V
    .locals 4

    .line 1693
    iget-object v0, p0, Lcom/superwall/supercel/ResultCallback;->wasDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1695
    iget-object v0, p0, Lcom/superwall/supercel/ResultCallback;->callCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1696
    iget-object v0, p0, Lcom/superwall/supercel/ResultCallback;->cleanable:Lcom/superwall/supercel/UniffiCleaner$Cleanable;

    invoke-interface {v0}, Lcom/superwall/supercel/UniffiCleaner$Cleanable;->clean()V

    :cond_0
    return-void
.end method

.method protected final getCleanable()Lcom/superwall/supercel/UniffiCleaner$Cleanable;
    .locals 1

    .line 1685
    iget-object v0, p0, Lcom/superwall/supercel/ResultCallback;->cleanable:Lcom/superwall/supercel/UniffiCleaner$Cleanable;

    return-object v0
.end method

.method protected final getPointer()Lcom/sun/jna/Pointer;
    .locals 1

    .line 1684
    iget-object v0, p0, Lcom/superwall/supercel/ResultCallback;->pointer:Lcom/sun/jna/Pointer;

    return-object v0
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 7

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1836
    :cond_0
    invoke-static {p0}, Lcom/superwall/supercel/ResultCallback;->access$getCallCounter$p(Lcom/superwall/supercel/ResultCallback;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v0, v4

    if-eqz v4, :cond_3

    .line 1843
    invoke-static {p0}, Lcom/superwall/supercel/ResultCallback;->access$getCallCounter$p(Lcom/superwall/supercel/ResultCallback;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    const-wide/16 v5, 0x1

    add-long/2addr v5, v0

    invoke-virtual {v4, v0, v1, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1846
    :try_start_0
    invoke-virtual {p0}, Lcom/superwall/supercel/ResultCallback;->uniffiClonePointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    .line 1847
    sget-object v1, Lcom/superwall/supercel/UniffiNullRustCallStatusErrorHandler;->INSTANCE:Lcom/superwall/supercel/UniffiNullRustCallStatusErrorHandler;

    check-cast v1, Lcom/superwall/supercel/UniffiRustCallStatusErrorHandler;

    .line 1848
    new-instance v4, Lcom/superwall/supercel/UniffiRustCallStatus;

    invoke-direct {v4}, Lcom/superwall/supercel/UniffiRustCallStatus;-><init>()V

    .line 1751
    sget-object v5, Lcom/superwall/supercel/UniffiLib;->Companion:Lcom/superwall/supercel/UniffiLib$Companion;

    invoke-virtual {v5}, Lcom/superwall/supercel/UniffiLib$Companion;->getINSTANCE$supercel_release()Lcom/superwall/supercel/UniffiLib;

    move-result-object v5

    .line 1752
    sget-object v6, Lcom/superwall/supercel/FfiConverterString;->INSTANCE:Lcom/superwall/supercel/FfiConverterString;

    invoke-virtual {v6, p1}, Lcom/superwall/supercel/FfiConverterString;->lower(Ljava/lang/String;)Lcom/superwall/supercel/RustBuffer$ByValue;

    move-result-object p1

    .line 1751
    invoke-interface {v5, v0, p1, v4}, Lcom/superwall/supercel/UniffiLib;->uniffi_cel_eval_fn_method_resultcallback_on_result(Lcom/sun/jna/Pointer;Lcom/superwall/supercel/RustBuffer$ByValue;Lcom/superwall/supercel/UniffiRustCallStatus;)V

    .line 1753
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1850
    invoke-static {v1, v4}, Lcom/superwall/supercel/CELKt;->access$uniffiCheckCallStatus(Lcom/superwall/supercel/UniffiRustCallStatusErrorHandler;Lcom/superwall/supercel/UniffiRustCallStatus;)V

    .line 1754
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1852
    invoke-static {p0}, Lcom/superwall/supercel/ResultCallback;->access$getCallCounter$p(Lcom/superwall/supercel/ResultCallback;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 1853
    invoke-static {p0}, Lcom/superwall/supercel/ResultCallback;->access$getCleanable(Lcom/superwall/supercel/ResultCallback;)Lcom/superwall/supercel/UniffiCleaner$Cleanable;

    move-result-object p1

    invoke-interface {p1}, Lcom/superwall/supercel/UniffiCleaner$Cleanable;->clean()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 1852
    invoke-static {p0}, Lcom/superwall/supercel/ResultCallback;->access$getCallCounter$p(Lcom/superwall/supercel/ResultCallback;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1853
    invoke-static {p0}, Lcom/superwall/supercel/ResultCallback;->access$getCleanable(Lcom/superwall/supercel/ResultCallback;)Lcom/superwall/supercel/UniffiCleaner$Cleanable;

    move-result-object v0

    invoke-interface {v0}, Lcom/superwall/supercel/UniffiCleaner$Cleanable;->clean()V

    :cond_2
    throw p1

    .line 1841
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " call counter would overflow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1838
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " object has already been destroyed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final uniffiClonePointer()Lcom/sun/jna/Pointer;
    .locals 4

    .line 1831
    sget-object v0, Lcom/superwall/supercel/UniffiNullRustCallStatusErrorHandler;->INSTANCE:Lcom/superwall/supercel/UniffiNullRustCallStatusErrorHandler;

    check-cast v0, Lcom/superwall/supercel/UniffiRustCallStatusErrorHandler;

    .line 1832
    new-instance v1, Lcom/superwall/supercel/UniffiRustCallStatus;

    invoke-direct {v1}, Lcom/superwall/supercel/UniffiRustCallStatus;-><init>()V

    .line 1743
    sget-object v2, Lcom/superwall/supercel/UniffiLib;->Companion:Lcom/superwall/supercel/UniffiLib$Companion;

    invoke-virtual {v2}, Lcom/superwall/supercel/UniffiLib$Companion;->getINSTANCE$supercel_release()Lcom/superwall/supercel/UniffiLib;

    move-result-object v2

    iget-object v3, p0, Lcom/superwall/supercel/ResultCallback;->pointer:Lcom/sun/jna/Pointer;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v3, v1}, Lcom/superwall/supercel/UniffiLib;->uniffi_cel_eval_fn_clone_resultcallback(Lcom/sun/jna/Pointer;Lcom/superwall/supercel/UniffiRustCallStatus;)Lcom/sun/jna/Pointer;

    move-result-object v2

    .line 1834
    invoke-static {v0, v1}, Lcom/superwall/supercel/CELKt;->access$uniffiCheckCallStatus(Lcom/superwall/supercel/UniffiRustCallStatusErrorHandler;Lcom/superwall/supercel/UniffiRustCallStatus;)V

    return-object v2
.end method
