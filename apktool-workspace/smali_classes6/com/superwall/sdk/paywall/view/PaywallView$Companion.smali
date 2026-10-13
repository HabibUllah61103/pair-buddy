.class final Lcom/superwall/sdk/paywall/view/PaywallView$Companion;
.super Ljava/lang/Object;
.source "PaywallView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/paywall/view/PaywallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0082\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0008\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/view/PaywallView$Companion;",
        "",
        "<init>",
        "()V",
        "mainScope",
        "Lcom/superwall/sdk/misc/MainScope;",
        "ioScope",
        "Lcom/superwall/sdk/misc/IOScope;",
        "gameControllerJson",
        "Lkotlinx/serialization/json/Json;",
        "getGameControllerJson",
        "()Lkotlinx/serialization/json/Json;",
        "gameControllerJson$delegate",
        "Lkotlin/Lazy;",
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

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/PaywallView$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getGameControllerJson(Lcom/superwall/sdk/paywall/view/PaywallView$Companion;)Lkotlinx/serialization/json/Json;
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/PaywallView$Companion;->getGameControllerJson()Lkotlinx/serialization/json/Json;

    move-result-object p0

    return-object p0
.end method

.method private final getGameControllerJson()Lkotlinx/serialization/json/Json;
    .locals 1

    .line 142
    invoke-static {}, Lcom/superwall/sdk/paywall/view/PaywallView;->access$getGameControllerJson$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/Json;

    return-object v0
.end method
