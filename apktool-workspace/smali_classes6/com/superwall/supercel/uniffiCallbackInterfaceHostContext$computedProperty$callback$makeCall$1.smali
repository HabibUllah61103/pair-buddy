.class final Lcom/superwall/supercel/uniffiCallbackInterfaceHostContext$computedProperty$callback$makeCall$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CEL.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/supercel/uniffiCallbackInterfaceHostContext$computedProperty;->callback(JLcom/superwall/supercel/RustBuffer$ByValue;Lcom/superwall/supercel/RustBuffer$ByValue;Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;Lcom/superwall/supercel/UniffiRustCallStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $args:Lcom/superwall/supercel/RustBuffer$ByValue;

.field final synthetic $callback:Lcom/sun/jna/Pointer;

.field final synthetic $name:Lcom/superwall/supercel/RustBuffer$ByValue;

.field final synthetic $uniffiObj:Lcom/superwall/supercel/HostContext;


# direct methods
.method constructor <init>(Lcom/superwall/supercel/HostContext;Lcom/superwall/supercel/RustBuffer$ByValue;Lcom/superwall/supercel/RustBuffer$ByValue;Lcom/sun/jna/Pointer;)V
    .locals 0

    iput-object p1, p0, Lcom/superwall/supercel/uniffiCallbackInterfaceHostContext$computedProperty$callback$makeCall$1;->$uniffiObj:Lcom/superwall/supercel/HostContext;

    iput-object p2, p0, Lcom/superwall/supercel/uniffiCallbackInterfaceHostContext$computedProperty$callback$makeCall$1;->$name:Lcom/superwall/supercel/RustBuffer$ByValue;

    iput-object p3, p0, Lcom/superwall/supercel/uniffiCallbackInterfaceHostContext$computedProperty$callback$makeCall$1;->$args:Lcom/superwall/supercel/RustBuffer$ByValue;

    iput-object p4, p0, Lcom/superwall/supercel/uniffiCallbackInterfaceHostContext$computedProperty$callback$makeCall$1;->$callback:Lcom/sun/jna/Pointer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1485
    invoke-virtual {p0}, Lcom/superwall/supercel/uniffiCallbackInterfaceHostContext$computedProperty$callback$makeCall$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 1486
    iget-object v0, p0, Lcom/superwall/supercel/uniffiCallbackInterfaceHostContext$computedProperty$callback$makeCall$1;->$uniffiObj:Lcom/superwall/supercel/HostContext;

    .line 1487
    sget-object v1, Lcom/superwall/supercel/FfiConverterString;->INSTANCE:Lcom/superwall/supercel/FfiConverterString;

    iget-object v2, p0, Lcom/superwall/supercel/uniffiCallbackInterfaceHostContext$computedProperty$callback$makeCall$1;->$name:Lcom/superwall/supercel/RustBuffer$ByValue;

    invoke-virtual {v1, v2}, Lcom/superwall/supercel/FfiConverterString;->lift(Lcom/superwall/supercel/RustBuffer$ByValue;)Ljava/lang/String;

    move-result-object v1

    .line 1488
    sget-object v2, Lcom/superwall/supercel/FfiConverterString;->INSTANCE:Lcom/superwall/supercel/FfiConverterString;

    iget-object v3, p0, Lcom/superwall/supercel/uniffiCallbackInterfaceHostContext$computedProperty$callback$makeCall$1;->$args:Lcom/superwall/supercel/RustBuffer$ByValue;

    invoke-virtual {v2, v3}, Lcom/superwall/supercel/FfiConverterString;->lift(Lcom/superwall/supercel/RustBuffer$ByValue;)Ljava/lang/String;

    move-result-object v2

    .line 1489
    sget-object v3, Lcom/superwall/supercel/FfiConverterTypeResultCallback;->INSTANCE:Lcom/superwall/supercel/FfiConverterTypeResultCallback;

    iget-object v4, p0, Lcom/superwall/supercel/uniffiCallbackInterfaceHostContext$computedProperty$callback$makeCall$1;->$callback:Lcom/sun/jna/Pointer;

    invoke-virtual {v3, v4}, Lcom/superwall/supercel/FfiConverterTypeResultCallback;->lift(Lcom/sun/jna/Pointer;)Lcom/superwall/supercel/ResultCallback;

    move-result-object v3

    .line 1486
    invoke-interface {v0, v1, v2, v3}, Lcom/superwall/supercel/HostContext;->computedProperty(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/supercel/ResultCallback;)V

    return-void
.end method
