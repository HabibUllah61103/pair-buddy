.class public abstract Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;
.super Ljava/lang/Object;
.source "PaywallWebEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$Closed;,
        Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$Companion;,
        Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$Custom;,
        Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$CustomPlacement;,
        Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$InitiatePurchase;,
        Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$InitiateRestore;,
        Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$OpenedDeepLink;,
        Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$OpenedURL;,
        Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$OpenedUrlInChrome;,
        Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestCallback;,
        Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestPermission;,
        Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestReview;,
        Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$ScheduleNotification;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u0000 \u001c2\u00020\u0001:\r\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001cB\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u001b\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0008J \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007\u0082\u0001\u000c\u001d\u001e\u001f !\"#$%&\'(\u00a8\u0006)"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;",
        "",
        "<init>",
        "()V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "Closed",
        "InitiatePurchase",
        "InitiateRestore",
        "Custom",
        "OpenedURL",
        "OpenedUrlInChrome",
        "OpenedDeepLink",
        "CustomPlacement",
        "ScheduleNotification",
        "RequestReview",
        "RequestPermission",
        "RequestCallback",
        "Companion",
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$Closed;",
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$Custom;",
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$CustomPlacement;",
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$InitiatePurchase;",
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$InitiateRestore;",
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$OpenedDeepLink;",
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$OpenedURL;",
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$OpenedUrlInChrome;",
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestCallback;",
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestPermission;",
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestReview;",
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$ScheduleNotification;",
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

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final $cachedSerializer$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$Companion;


# direct methods
.method public static synthetic $r8$lambda$m9gQrZO2niD6FEHD9vy2f4BmygY()Lkotlinx/serialization/KSerializer;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;->_init_$_anonymous_()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;->Companion:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$Companion;

    .line 12
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;-><init>()V

    return-void
.end method

.method private static final synthetic _init_$_anonymous_()Lkotlinx/serialization/KSerializer;
    .locals 6

    .line 12
    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v1, 0x0

    new-array v3, v1, [Lkotlin/reflect/KClass;

    new-array v4, v1, [Lkotlinx/serialization/KSerializer;

    new-array v5, v1, [Ljava/lang/annotation/Annotation;

    const-string v1, "com.superwall.sdk.paywall.view.webview.messaging.PaywallWebEvent"

    invoke-direct/range {v0 .. v5}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 12
    sget-object v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic write$Self(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method
