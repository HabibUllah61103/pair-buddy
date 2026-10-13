.class public final synthetic Lcom/superwall/sdk/misc/primitives/DebugInterceptor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/superwall/sdk/logger/LogLevel;

.field public final synthetic f$1:Lcom/superwall/sdk/logger/LogScope;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/misc/primitives/DebugInterceptor$$ExternalSyntheticLambda0;->f$0:Lcom/superwall/sdk/logger/LogLevel;

    iput-object p2, p0, Lcom/superwall/sdk/misc/primitives/DebugInterceptor$$ExternalSyntheticLambda0;->f$1:Lcom/superwall/sdk/logger/LogScope;

    iput-object p3, p0, Lcom/superwall/sdk/misc/primitives/DebugInterceptor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/misc/primitives/DebugInterceptor$$ExternalSyntheticLambda0;->f$0:Lcom/superwall/sdk/logger/LogLevel;

    iget-object v1, p0, Lcom/superwall/sdk/misc/primitives/DebugInterceptor$$ExternalSyntheticLambda0;->f$1:Lcom/superwall/sdk/logger/LogScope;

    iget-object v2, p0, Lcom/superwall/sdk/misc/primitives/DebugInterceptor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    check-cast p1, Lcom/superwall/sdk/misc/primitives/Reducer;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/superwall/sdk/misc/primitives/DebugInterceptor;->$r8$lambda$AWu-vKyrq5Ef_ZlFnhW_K8rnbmw(Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Lcom/superwall/sdk/misc/primitives/Reducer;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
