.class public final Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$lambda$37$$inlined$Function$6;
.super Ljava/lang/Object;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/superwallexpo/SuperwallExpoModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "[",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$Function$6\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 SuperwallExpoModule.kt\nexpo/modules/superwallexpo/SuperwallExpoModule\n*L\n1#1,613:1\n11#2:614\n409#3,2:615\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$Function$6\n*L\n130#1:614\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;


# direct methods
.method public constructor <init>(Lexpo/modules/superwallexpo/SuperwallExpoModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$lambda$37$$inlined$Function$6;->this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 132
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$lambda$37$$inlined$Function$6;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 131
    check-cast p1, Ljava/util/Map;

    .line 615
    invoke-static {p1}, Lexpo/modules/superwallexpo/json/RestorationResultKt;->restorationResultFromJson(Ljava/util/Map;)Lcom/superwall/sdk/delegate/RestorationResult;

    move-result-object p1

    .line 616
    iget-object v0, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$lambda$37$$inlined$Function$6;->this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;

    invoke-virtual {v0}, Lexpo/modules/superwallexpo/SuperwallExpoModule;->getPurchaseController()Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;->getRestorePromise()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
