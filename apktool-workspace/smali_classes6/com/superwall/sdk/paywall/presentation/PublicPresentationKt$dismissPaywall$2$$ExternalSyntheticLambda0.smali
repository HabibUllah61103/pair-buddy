.class public final synthetic Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/CompletableDeferred;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/CompletableDeferred;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/CompletableDeferred;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/CompletableDeferred;

    invoke-static {v0}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2;->$r8$lambda$UnqBw7WC0HeoYR1R6zwrsEZ4hFs(Lkotlinx/coroutines/CompletableDeferred;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
