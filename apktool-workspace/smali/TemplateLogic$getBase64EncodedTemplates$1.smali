.class final LTemplateLogic$getBase64EncodedTemplates$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "TemplateLogic.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTemplateLogic;->getBase64EncodedTemplates(Lkotlinx/serialization/json/Json;Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/dependencies/VariablesFactory;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "TemplateLogic"
    f = "TemplateLogic.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x31
    }
    m = "getBase64EncodedTemplates"
    n = {
        "json",
        "paywall",
        "encodeToBase64",
        "productsTemplate"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:LTemplateLogic;


# direct methods
.method constructor <init>(LTemplateLogic;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTemplateLogic;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "LTemplateLogic$getBase64EncodedTemplates$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LTemplateLogic$getBase64EncodedTemplates$1;->this$0:LTemplateLogic;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iput-object p1, p0, LTemplateLogic$getBase64EncodedTemplates$1;->result:Ljava/lang/Object;

    iget p1, p0, LTemplateLogic$getBase64EncodedTemplates$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LTemplateLogic$getBase64EncodedTemplates$1;->label:I

    iget-object v0, p0, LTemplateLogic$getBase64EncodedTemplates$1;->this$0:LTemplateLogic;

    const/4 v5, 0x0

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, LTemplateLogic;->getBase64EncodedTemplates(Lkotlinx/serialization/json/Json;Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/dependencies/VariablesFactory;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
