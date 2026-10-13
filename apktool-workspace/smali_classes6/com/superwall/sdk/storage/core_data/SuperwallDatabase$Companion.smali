.class public final Lcom/superwall/sdk/storage/core_data/SuperwallDatabase$Companion;
.super Ljava/lang/Object;
.source "SuperwallDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/superwall/sdk/storage/core_data/SuperwallDatabase$Companion;",
        "",
        "<init>",
        "()V",
        "INSTANCE",
        "Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;",
        "getDatabase",
        "context",
        "Landroid/content/Context;",
        "superwall_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDatabase(Landroid/content/Context;)Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;->access$getINSTANCE$cp()Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-enter p0

    .line 33
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getApplicationContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    const-class v0, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;

    .line 35
    const-string v1, "superwall_database"

    .line 32
    invoke-static {p1, v0, v1}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;

    .line 37
    sget-object v0, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;->Companion:Lcom/superwall/sdk/storage/core_data/SuperwallDatabase$Companion;

    invoke-static {p1}, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;->access$setINSTANCE$cp(Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    return-object v0
.end method
