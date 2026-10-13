.class public final Lexpo/modules/location/taskConsumers/LocationTaskConsumer$maybeStartForegroundService$1;
.super Ljava/lang/Object;
.source "LocationTaskConsumer.kt"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/location/taskConsumers/LocationTaskConsumer;->maybeStartForegroundService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "expo/modules/location/taskConsumers/LocationTaskConsumer$maybeStartForegroundService$1",
        "Landroid/content/ServiceConnection;",
        "onServiceConnected",
        "",
        "name",
        "Landroid/content/ComponentName;",
        "service",
        "Landroid/os/IBinder;",
        "onServiceDisconnected",
        "expo-location_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $serviceOptions:Landroid/os/Bundle;

.field final synthetic this$0:Lexpo/modules/location/taskConsumers/LocationTaskConsumer;


# direct methods
.method constructor <init>(Lexpo/modules/location/taskConsumers/LocationTaskConsumer;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/location/taskConsumers/LocationTaskConsumer$maybeStartForegroundService$1;->this$0:Lexpo/modules/location/taskConsumers/LocationTaskConsumer;

    iput-object p2, p0, Lexpo/modules/location/taskConsumers/LocationTaskConsumer$maybeStartForegroundService$1;->$serviceOptions:Landroid/os/Bundle;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "service"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    iget-object p1, p0, Lexpo/modules/location/taskConsumers/LocationTaskConsumer$maybeStartForegroundService$1;->this$0:Lexpo/modules/location/taskConsumers/LocationTaskConsumer;

    instance-of v0, p2, Lexpo/modules/location/services/LocationTaskService$ServiceBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p2, Lexpo/modules/location/services/LocationTaskService$ServiceBinder;

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lexpo/modules/location/services/LocationTaskService$ServiceBinder;->getService()Lexpo/modules/location/services/LocationTaskService;

    move-result-object v1

    :cond_1
    invoke-static {p1, v1}, Lexpo/modules/location/taskConsumers/LocationTaskConsumer;->access$setMService$p(Lexpo/modules/location/taskConsumers/LocationTaskConsumer;Lexpo/modules/location/services/LocationTaskService;)V

    .line 220
    iget-object p1, p0, Lexpo/modules/location/taskConsumers/LocationTaskConsumer$maybeStartForegroundService$1;->this$0:Lexpo/modules/location/taskConsumers/LocationTaskConsumer;

    invoke-static {p1}, Lexpo/modules/location/taskConsumers/LocationTaskConsumer;->access$getMService$p(Lexpo/modules/location/taskConsumers/LocationTaskConsumer;)Lexpo/modules/location/services/LocationTaskService;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lexpo/modules/location/taskConsumers/LocationTaskConsumer$maybeStartForegroundService$1;->this$0:Lexpo/modules/location/taskConsumers/LocationTaskConsumer;

    iget-object v0, p0, Lexpo/modules/location/taskConsumers/LocationTaskConsumer$maybeStartForegroundService$1;->$serviceOptions:Landroid/os/Bundle;

    .line 221
    invoke-static {p2}, Lexpo/modules/location/taskConsumers/LocationTaskConsumer;->access$getContext(Lexpo/modules/location/taskConsumers/LocationTaskConsumer;)Landroid/content/Context;

    move-result-object p2

    const-string v1, "access$getContext(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lexpo/modules/location/services/LocationTaskService;->setParentContext(Landroid/content/Context;)V

    .line 222
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lexpo/modules/location/services/LocationTaskService;->startForeground(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    iget-object p1, p0, Lexpo/modules/location/taskConsumers/LocationTaskConsumer$maybeStartForegroundService$1;->this$0:Lexpo/modules/location/taskConsumers/LocationTaskConsumer;

    invoke-static {p1}, Lexpo/modules/location/taskConsumers/LocationTaskConsumer;->access$getMService$p(Lexpo/modules/location/taskConsumers/LocationTaskConsumer;)Lexpo/modules/location/services/LocationTaskService;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lexpo/modules/location/services/LocationTaskService;->stop()V

    .line 228
    :cond_0
    iget-object p1, p0, Lexpo/modules/location/taskConsumers/LocationTaskConsumer$maybeStartForegroundService$1;->this$0:Lexpo/modules/location/taskConsumers/LocationTaskConsumer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lexpo/modules/location/taskConsumers/LocationTaskConsumer;->access$setMService$p(Lexpo/modules/location/taskConsumers/LocationTaskConsumer;Lexpo/modules/location/services/LocationTaskService;)V

    return-void
.end method
