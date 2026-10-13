.class public final Lexpo/modules/video/VideoModule$definition$lambda$68$lambda$65$$inlined$Constructor$4;
.super Ljava/lang/Object;
.source "ClassComponentBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/video/VideoModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
    value = "SMAP\nClassComponentBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClassComponentBuilder.kt\nexpo/modules/kotlin/classcomponent/ClassComponentBuilder$Constructor$7\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 VideoModule.kt\nexpo/modules/video/VideoModule\n*L\n1#1,549:1\n25#2:550\n75#3,5:551\n*S KotlinDebug\n*F\n+ 1 ClassComponentBuilder.kt\nexpo/modules/kotlin/classcomponent/ClassComponentBuilder$Constructor$7\n*L\n138#1:550\n*E\n"
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
.field final synthetic this$0:Lexpo/modules/video/VideoModule;


# direct methods
.method public constructor <init>(Lexpo/modules/video/VideoModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/video/VideoModule$definition$lambda$68$lambda$65$$inlined$Constructor$4;->this$0:Lexpo/modules/video/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 140
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lexpo/modules/video/VideoModule$definition$lambda$68$lambda$65$$inlined$Constructor$4;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    const/4 v2, 0x2

    aget-object p1, p1, v2

    .line 139
    check-cast p1, Lexpo/modules/video/records/PlayerBuilderOptions;

    check-cast v1, Ljava/lang/Boolean;

    check-cast v0, Lexpo/modules/video/records/VideoSource;

    .line 551
    new-instance v1, Lexpo/modules/video/player/VideoPlayer;

    iget-object v2, p0, Lexpo/modules/video/VideoModule$definition$lambda$68$lambda$65$$inlined$Constructor$4;->this$0:Lexpo/modules/video/VideoModule;

    invoke-virtual {v2}, Lexpo/modules/video/VideoModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/kotlin/AppContext;->getThrowingActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getApplicationContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lexpo/modules/video/VideoModule$definition$lambda$68$lambda$65$$inlined$Constructor$4;->this$0:Lexpo/modules/video/VideoModule;

    invoke-virtual {v3}, Lexpo/modules/video/VideoModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, p1}, Lexpo/modules/video/player/VideoPlayer;-><init>(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;Lexpo/modules/video/records/VideoSource;Lexpo/modules/video/records/PlayerBuilderOptions;)V

    .line 552
    iget-object p1, p0, Lexpo/modules/video/VideoModule$definition$lambda$68$lambda$65$$inlined$Constructor$4;->this$0:Lexpo/modules/video/VideoModule;

    invoke-virtual {p1}, Lexpo/modules/video/VideoModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object p1

    invoke-virtual {p1}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance p1, Lexpo/modules/video/VideoModule$definition$1$9$1$1;

    const/4 v0, 0x0

    invoke-direct {p1, v1, v0}, Lexpo/modules/video/VideoModule$definition$1$9$1$1;-><init>(Lexpo/modules/video/player/VideoPlayer;Lkotlin/coroutines/Continuation;)V

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-object v1
.end method
