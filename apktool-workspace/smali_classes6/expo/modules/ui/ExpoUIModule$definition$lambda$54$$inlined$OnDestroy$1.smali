.class public final Lexpo/modules/ui/ExpoUIModule$definition$lambda$54$$inlined$OnDestroy$1;
.super Ljava/lang/Object;
.source "ModuleDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/ui/ExpoUIModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModuleDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder$OnDestroy$1\n+ 2 ExpoUIModule.kt\nexpo/modules/ui/ExpoUIModule\n*L\n1#1,124:1\n49#2,5:125\n*E\n"
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
.field final synthetic this$0:Lexpo/modules/ui/ExpoUIModule;


# direct methods
.method public constructor <init>(Lexpo/modules/ui/ExpoUIModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/ui/ExpoUIModule$definition$lambda$54$$inlined$OnDestroy$1;->this$0:Lexpo/modules/ui/ExpoUIModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 124
    invoke-virtual {p0}, Lexpo/modules/ui/ExpoUIModule$definition$lambda$54$$inlined$OnDestroy$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 125
    iget-object v0, p0, Lexpo/modules/ui/ExpoUIModule$definition$lambda$54$$inlined$OnDestroy$1;->this$0:Lexpo/modules/ui/ExpoUIModule;

    invoke-virtual {v0}, Lexpo/modules/ui/ExpoUIModule;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 126
    :cond_0
    iget-object v0, p0, Lexpo/modules/ui/ExpoUIModule$definition$lambda$54$$inlined$OnDestroy$1;->this$0:Lexpo/modules/ui/ExpoUIModule;

    invoke-virtual {v0}, Lexpo/modules/ui/ExpoUIModule;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lokhttp3/ConnectionPool;->evictAll()V

    .line 127
    :cond_1
    iget-object v0, p0, Lexpo/modules/ui/ExpoUIModule$definition$lambda$54$$inlined$OnDestroy$1;->this$0:Lexpo/modules/ui/ExpoUIModule;

    invoke-virtual {v0}, Lexpo/modules/ui/ExpoUIModule;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->cache()Lokhttp3/Cache;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lokhttp3/Cache;->close()V

    .line 128
    :cond_2
    iget-object v0, p0, Lexpo/modules/ui/ExpoUIModule$definition$lambda$54$$inlined$OnDestroy$1;->this$0:Lexpo/modules/ui/ExpoUIModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lexpo/modules/ui/ExpoUIModule;->access$setOkHttpClient$p(Lexpo/modules/ui/ExpoUIModule;Lokhttp3/OkHttpClient;)V

    return-void
.end method
