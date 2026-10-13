.class public final Lcom/superwall/sdk/network/device/Capability$PaywallEventReceiver;
.super Lcom/superwall/sdk/network/device/Capability;
.source "Capability.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/network/device/Capability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaywallEventReceiver"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCapability.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Capability.kt\ncom/superwall/sdk/network/device/Capability$PaywallEventReceiver\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,63:1\n1557#2:64\n1628#2,3:65\n*S KotlinDebug\n*F\n+ 1 Capability.kt\ncom/superwall/sdk/network/device/Capability$PaywallEventReceiver\n*L\n33#1:64\n33#1:65,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/superwall/sdk/network/device/Capability$PaywallEventReceiver;",
        "Lcom/superwall/sdk/network/device/Capability;",
        "<init>",
        "()V",
        "eventNames",
        "",
        "",
        "getEventNames",
        "()Ljava/util/List;",
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


# instance fields
.field private final eventNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 19
    const-string v0, "paywall_event_receiver"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/superwall/sdk/network/device/Capability;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v0, 0xb

    .line 22
    new-array v0, v0, [Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;

    const/4 v1, 0x0

    sget-object v2, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->TransactionStart:Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 23
    sget-object v2, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->TransactionRestore:Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 24
    sget-object v2, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->TransactionComplete:Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 25
    sget-object v2, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->RestoreStart:Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 26
    sget-object v2, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->RestoreFail:Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 27
    sget-object v2, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->RestoreComplete:Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 28
    sget-object v2, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->TransactionFail:Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 29
    sget-object v2, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->TransactionAbandon:Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 30
    sget-object v2, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->TransactionTimeout:Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 31
    sget-object v2, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->PaywallOpen:Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;

    aput-object v2, v0, v1

    .line 32
    sget-object v1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->PaywallClose:Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 21
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 65
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 66
    check-cast v2, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;

    .line 33
    invoke-virtual {v2}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->getRawName()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 33
    iput-object v1, p0, Lcom/superwall/sdk/network/device/Capability$PaywallEventReceiver;->eventNames:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getEventNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/superwall/sdk/network/device/Capability$PaywallEventReceiver;->eventNames:Ljava/util/List;

    return-object v0
.end method
