.class public final Lcom/superwall/sdk/misc/SuperwallScope$DefaultImpls;
.super Ljava/lang/Object;
.source "Scopes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/misc/SuperwallScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScopes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Scopes.kt\ncom/superwall/sdk/misc/SuperwallScope$DefaultImpls\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,51:1\n46#2,4:52\n*S KotlinDebug\n*F\n+ 1 Scopes.kt\ncom/superwall/sdk/misc/SuperwallScope$DefaultImpls\n*L\n17#1:52,4\n*E\n"
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


# direct methods
.method public static getExceptionHandler(Lcom/superwall/sdk/misc/SuperwallScope;)Lkotlinx/coroutines/CoroutineExceptionHandler;
    .locals 1

    .line 52
    sget-object p0, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    new-instance v0, Lcom/superwall/sdk/misc/SuperwallScope$DefaultImpls$special$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {v0, p0}, Lcom/superwall/sdk/misc/SuperwallScope$DefaultImpls$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;)V

    check-cast v0, Lkotlinx/coroutines/CoroutineExceptionHandler;

    return-object v0
.end method
