.class public final Lexpo/modules/location/services/LocationTaskService$ServiceBinder;
.super Landroid/os/Binder;
.source "LocationTaskService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/location/services/LocationTaskService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ServiceBinder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lexpo/modules/location/services/LocationTaskService$ServiceBinder;",
        "Landroid/os/Binder;",
        "<init>",
        "(Lexpo/modules/location/services/LocationTaskService;)V",
        "service",
        "Lexpo/modules/location/services/LocationTaskService;",
        "getService",
        "()Lexpo/modules/location/services/LocationTaskService;",
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
.field final synthetic this$0:Lexpo/modules/location/services/LocationTaskService;


# direct methods
.method public constructor <init>(Lexpo/modules/location/services/LocationTaskService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lexpo/modules/location/services/LocationTaskService$ServiceBinder;->this$0:Lexpo/modules/location/services/LocationTaskService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public final getService()Lexpo/modules/location/services/LocationTaskService;
    .locals 1

    .line 27
    iget-object v0, p0, Lexpo/modules/location/services/LocationTaskService$ServiceBinder;->this$0:Lexpo/modules/location/services/LocationTaskService;

    return-object v0
.end method
