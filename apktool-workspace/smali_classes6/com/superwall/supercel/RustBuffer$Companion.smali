.class public final Lcom/superwall/supercel/RustBuffer$Companion;
.super Ljava/lang/Object;
.source "CEL.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/supercel/RustBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCEL.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CEL.kt\ncom/superwall/supercel/RustBuffer$Companion\n+ 2 CEL.kt\ncom/superwall/supercel/CELKt\n*L\n1#1,1830:1\n308#2:1831\n268#2,4:1832\n308#2:1836\n268#2,4:1837\n*S KotlinDebug\n*F\n+ 1 CEL.kt\ncom/superwall/supercel/RustBuffer$Companion\n*L\n60#1:1831\n60#1:1832,4\n77#1:1836\n77#1:1837,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001f\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J/\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0015\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0004H\u0000\u00a2\u0006\u0002\u0008\u0013\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/superwall/supercel/RustBuffer$Companion;",
        "",
        "()V",
        "alloc",
        "Lcom/superwall/supercel/RustBuffer$ByValue;",
        "size",
        "Lkotlin/ULong;",
        "alloc-VKZWuLQ$supercel_release",
        "(J)Lcom/superwall/supercel/RustBuffer$ByValue;",
        "create",
        "capacity",
        "len",
        "data",
        "Lcom/sun/jna/Pointer;",
        "create-twO9MuI$supercel_release",
        "(JJLcom/sun/jna/Pointer;)Lcom/superwall/supercel/RustBuffer$ByValue;",
        "free",
        "",
        "buf",
        "free$supercel_release",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/supercel/RustBuffer$Companion;-><init>()V

    return-void
.end method

.method public static synthetic alloc-VKZWuLQ$supercel_release$default(Lcom/superwall/supercel/RustBuffer$Companion;JILjava/lang/Object;)Lcom/superwall/supercel/RustBuffer$ByValue;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x0

    .line 60
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/superwall/supercel/RustBuffer$Companion;->alloc-VKZWuLQ$supercel_release(J)Lcom/superwall/supercel/RustBuffer$ByValue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final alloc-VKZWuLQ$supercel_release(J)Lcom/superwall/supercel/RustBuffer$ByValue;
    .locals 3

    .line 1831
    sget-object v0, Lcom/superwall/supercel/UniffiNullRustCallStatusErrorHandler;->INSTANCE:Lcom/superwall/supercel/UniffiNullRustCallStatusErrorHandler;

    check-cast v0, Lcom/superwall/supercel/UniffiRustCallStatusErrorHandler;

    .line 1832
    new-instance v1, Lcom/superwall/supercel/UniffiRustCallStatus;

    invoke-direct {v1}, Lcom/superwall/supercel/UniffiRustCallStatus;-><init>()V

    .line 62
    sget-object v2, Lcom/superwall/supercel/UniffiLib;->Companion:Lcom/superwall/supercel/UniffiLib$Companion;

    invoke-virtual {v2}, Lcom/superwall/supercel/UniffiLib$Companion;->getINSTANCE$supercel_release()Lcom/superwall/supercel/UniffiLib;

    move-result-object v2

    invoke-interface {v2, p1, p2, v1}, Lcom/superwall/supercel/UniffiLib;->ffi_cel_eval_rustbuffer_alloc(JLcom/superwall/supercel/UniffiRustCallStatus;)Lcom/superwall/supercel/RustBuffer$ByValue;

    move-result-object v2

    .line 1834
    invoke-static {v0, v1}, Lcom/superwall/supercel/CELKt;->access$uniffiCheckCallStatus(Lcom/superwall/supercel/UniffiRustCallStatusErrorHandler;Lcom/superwall/supercel/UniffiRustCallStatus;)V

    .line 64
    iget-object v0, v2, Lcom/superwall/supercel/RustBuffer$ByValue;->data:Lcom/sun/jna/Pointer;

    if-eqz v0, :cond_0

    return-object v2

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RustBuffer.alloc() returned null data pointer (size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/ULong;->toString-impl(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final create-twO9MuI$supercel_release(JJLcom/sun/jna/Pointer;)Lcom/superwall/supercel/RustBuffer$ByValue;
    .locals 1

    .line 70
    new-instance v0, Lcom/superwall/supercel/RustBuffer$ByValue;

    invoke-direct {v0}, Lcom/superwall/supercel/RustBuffer$ByValue;-><init>()V

    .line 71
    iput-wide p1, v0, Lcom/superwall/supercel/RustBuffer$ByValue;->capacity:J

    .line 72
    iput-wide p3, v0, Lcom/superwall/supercel/RustBuffer$ByValue;->len:J

    .line 73
    iput-object p5, v0, Lcom/superwall/supercel/RustBuffer$ByValue;->data:Lcom/sun/jna/Pointer;

    return-object v0
.end method

.method public final free$supercel_release(Lcom/superwall/supercel/RustBuffer$ByValue;)V
    .locals 3

    const-string v0, "buf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1836
    sget-object v0, Lcom/superwall/supercel/UniffiNullRustCallStatusErrorHandler;->INSTANCE:Lcom/superwall/supercel/UniffiNullRustCallStatusErrorHandler;

    check-cast v0, Lcom/superwall/supercel/UniffiRustCallStatusErrorHandler;

    .line 1837
    new-instance v1, Lcom/superwall/supercel/UniffiRustCallStatus;

    invoke-direct {v1}, Lcom/superwall/supercel/UniffiRustCallStatus;-><init>()V

    .line 78
    sget-object v2, Lcom/superwall/supercel/UniffiLib;->Companion:Lcom/superwall/supercel/UniffiLib$Companion;

    invoke-virtual {v2}, Lcom/superwall/supercel/UniffiLib$Companion;->getINSTANCE$supercel_release()Lcom/superwall/supercel/UniffiLib;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/superwall/supercel/UniffiLib;->ffi_cel_eval_rustbuffer_free(Lcom/superwall/supercel/RustBuffer$ByValue;Lcom/superwall/supercel/UniffiRustCallStatus;)V

    .line 79
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1839
    invoke-static {v0, v1}, Lcom/superwall/supercel/CELKt;->access$uniffiCheckCallStatus(Lcom/superwall/supercel/UniffiRustCallStatusErrorHandler;Lcom/superwall/supercel/UniffiRustCallStatus;)V

    return-void
.end method
