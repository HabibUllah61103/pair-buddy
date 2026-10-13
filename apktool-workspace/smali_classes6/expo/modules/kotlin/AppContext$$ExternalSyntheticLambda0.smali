.class public final synthetic Lexpo/modules/kotlin/AppContext$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lexpo/modules/kotlin/AppContext;

.field public final synthetic f$1:Ljava/lang/ref/WeakReference;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/kotlin/AppContext;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/kotlin/AppContext$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/kotlin/AppContext;

    iput-object p2, p0, Lexpo/modules/kotlin/AppContext$$ExternalSyntheticLambda0;->f$1:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/kotlin/AppContext;

    iget-object v1, p0, Lexpo/modules/kotlin/AppContext$$ExternalSyntheticLambda0;->f$1:Ljava/lang/ref/WeakReference;

    invoke-static {v0, v1}, Lexpo/modules/kotlin/AppContext;->$r8$lambda$Hvboc68TRq9ApoND6EbRKvKpF_k(Lexpo/modules/kotlin/AppContext;Ljava/lang/ref/WeakReference;)Lexpo/modules/kotlin/runtime/WorkletRuntime;

    move-result-object v0

    return-object v0
.end method
