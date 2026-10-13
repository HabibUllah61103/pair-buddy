.class final Lcom/superwall/supercel/ResultCallback$UniffiCleanAction;
.super Ljava/lang/Object;
.source "CEL.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/supercel/ResultCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UniffiCleanAction"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCEL.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CEL.kt\ncom/superwall/supercel/ResultCallback$UniffiCleanAction\n+ 2 CEL.kt\ncom/superwall/supercel/CELKt\n*L\n1#1,1830:1\n308#2:1831\n268#2,4:1832\n*S KotlinDebug\n*F\n+ 1 CEL.kt\ncom/superwall/supercel/ResultCallback$UniffiCleanAction\n*L\n1734#1:1831\n1734#1:1832,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/superwall/supercel/ResultCallback$UniffiCleanAction;",
        "Ljava/lang/Runnable;",
        "pointer",
        "Lcom/sun/jna/Pointer;",
        "(Lcom/sun/jna/Pointer;)V",
        "run",
        "",
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


# instance fields
.field private final pointer:Lcom/sun/jna/Pointer;


# direct methods
.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 1731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/supercel/ResultCallback$UniffiCleanAction;->pointer:Lcom/sun/jna/Pointer;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1733
    iget-object v0, p0, Lcom/superwall/supercel/ResultCallback$UniffiCleanAction;->pointer:Lcom/sun/jna/Pointer;

    if-eqz v0, :cond_0

    .line 1831
    sget-object v1, Lcom/superwall/supercel/UniffiNullRustCallStatusErrorHandler;->INSTANCE:Lcom/superwall/supercel/UniffiNullRustCallStatusErrorHandler;

    check-cast v1, Lcom/superwall/supercel/UniffiRustCallStatusErrorHandler;

    .line 1832
    new-instance v2, Lcom/superwall/supercel/UniffiRustCallStatus;

    invoke-direct {v2}, Lcom/superwall/supercel/UniffiRustCallStatus;-><init>()V

    .line 1735
    sget-object v3, Lcom/superwall/supercel/UniffiLib;->Companion:Lcom/superwall/supercel/UniffiLib$Companion;

    invoke-virtual {v3}, Lcom/superwall/supercel/UniffiLib$Companion;->getINSTANCE$supercel_release()Lcom/superwall/supercel/UniffiLib;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/superwall/supercel/UniffiLib;->uniffi_cel_eval_fn_free_resultcallback(Lcom/sun/jna/Pointer;Lcom/superwall/supercel/UniffiRustCallStatus;)V

    .line 1736
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1834
    invoke-static {v1, v2}, Lcom/superwall/supercel/CELKt;->access$uniffiCheckCallStatus(Lcom/superwall/supercel/UniffiRustCallStatusErrorHandler;Lcom/superwall/supercel/UniffiRustCallStatus;)V

    :cond_0
    return-void
.end method
