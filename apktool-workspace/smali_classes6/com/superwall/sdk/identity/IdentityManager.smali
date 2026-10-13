.class public final Lcom/superwall/sdk/identity/IdentityManager;
.super Ljava/lang/Object;
.source "IdentityManager.kt"

# interfaces
.implements Lcom/superwall/sdk/identity/IdentityContext;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIdentityManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IdentityManager.kt\ncom/superwall/sdk/identity/IdentityManager\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,114:1\n49#2:115\n51#2:119\n17#2,3:120\n46#3:116\n51#3:118\n105#4:117\n*S KotlinDebug\n*F\n+ 1 IdentityManager.kt\ncom/superwall/sdk/identity/IdentityManager\n*L\n63#1:115\n63#1:119\n63#1:120,3\n63#1:116\n63#1:118\n63#1:117\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u00ca\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0014\u0008\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012-\u0010\t\u001a)\u0012\u001f\u0012\u001d\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000f0\u0007\u0012\u000e\u0008\u0002\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0011\u0012$\u0008\u0002\u0010\u0012\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0013\u0012\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0011\u0012\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0011\u0012\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u001c0\u001b\u0012\u0006\u0010\u001d\u001a\u00020\u001e\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000e\u0010M\u001a\u00020\u000f2\u0006\u0010N\u001a\u00020EJ\u001a\u0010O\u001a\u00020\u000f2\u0006\u0010?\u001a\u00020\u00082\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010PJ\u0006\u0010Q\u001a\u00020\u000fJ&\u0010R\u001a\u00020\u000f2\u0014\u0010S\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\n2\u0008\u0008\u0002\u0010T\u001a\u00020EJ-\u0010U\u001a\u00020\u000f2\u0014\u0010S\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\n2\u0008\u0008\u0002\u0010T\u001a\u00020EH\u0000\u00a2\u0006\u0002\u0008VJ\u000e\u0010W\u001a\u00020\u001cH\u0086@\u00a2\u0006\u0002\u0010XR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R;\u0010\t\u001a)\u0012\u001f\u0012\u001d\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000f0\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u001a\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0011X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R2\u0010\u0012\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0013X\u0096\u0004\u00a2\u0006\n\n\u0002\u0010)\u001a\u0004\u0008\'\u0010(R\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0011X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010&R \u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u001c0\u001bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R\u0014\u0010\u001d\u001a\u00020\u001eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010.R\u0014\u0010/\u001a\u0002008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00081\u00102R\u0014\u00103\u001a\u00020\u001c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00084\u00105R\u0013\u00106\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0006\u001a\u0004\u00087\u00108R\u0011\u00109\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008:\u00108R\u0011\u0010;\u001a\u00020<8F\u00a2\u0006\u0006\u001a\u0004\u0008=\u0010>R\u0011\u0010?\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008@\u00108R\u001d\u0010A\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u000b0\n8F\u00a2\u0006\u0006\u001a\u0004\u0008B\u0010CR\u0011\u0010D\u001a\u00020E8F\u00a2\u0006\u0006\u001a\u0004\u0008D\u0010FR\u0011\u0010G\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008H\u00108R\u0017\u0010I\u001a\u0008\u0012\u0004\u0012\u00020E0J8F\u00a2\u0006\u0006\u001a\u0004\u0008K\u0010L\u00a8\u0006Y"
    }
    d2 = {
        "Lcom/superwall/sdk/identity/IdentityManager;",
        "Lcom/superwall/sdk/identity/IdentityContext;",
        "storage",
        "Lcom/superwall/sdk/storage/Storage;",
        "ioScope",
        "Lcom/superwall/sdk/misc/IOScope;",
        "stringToSha",
        "Lkotlin/Function1;",
        "",
        "notifyUserChange",
        "",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "change",
        "",
        "completeReset",
        "Lkotlin/Function0;",
        "tracker",
        "Lkotlin/Function2;",
        "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;",
        "Lkotlin/coroutines/Continuation;",
        "options",
        "Lcom/superwall/sdk/config/options/SuperwallOptions;",
        "webPaywallRedeemer",
        "Lcom/superwall/sdk/web/WebPaywallRedeemer;",
        "actor",
        "Lcom/superwall/sdk/misc/primitives/StateActor;",
        "Lcom/superwall/sdk/identity/IdentityState;",
        "sdkContext",
        "Lcom/superwall/sdk/SdkContext;",
        "<init>",
        "(Lcom/superwall/sdk/storage/Storage;Lcom/superwall/sdk/misc/IOScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/misc/primitives/StateActor;Lcom/superwall/sdk/SdkContext;)V",
        "getStorage",
        "()Lcom/superwall/sdk/storage/Storage;",
        "getNotifyUserChange",
        "()Lkotlin/jvm/functions/Function1;",
        "getCompleteReset",
        "()Lkotlin/jvm/functions/Function0;",
        "getTracker",
        "()Lkotlin/jvm/functions/Function2;",
        "Lkotlin/jvm/functions/Function2;",
        "getWebPaywallRedeemer",
        "getActor",
        "()Lcom/superwall/sdk/misc/primitives/StateActor;",
        "getSdkContext",
        "()Lcom/superwall/sdk/SdkContext;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "identity",
        "getIdentity",
        "()Lcom/superwall/sdk/identity/IdentityState;",
        "appUserId",
        "getAppUserId",
        "()Ljava/lang/String;",
        "aliasId",
        "getAliasId",
        "seed",
        "",
        "getSeed",
        "()I",
        "userId",
        "getUserId",
        "userAttributes",
        "getUserAttributes",
        "()Ljava/util/Map;",
        "isLoggedIn",
        "",
        "()Z",
        "externalAccountId",
        "getExternalAccountId",
        "hasIdentity",
        "Lkotlinx/coroutines/flow/Flow;",
        "getHasIdentity",
        "()Lkotlinx/coroutines/flow/Flow;",
        "configure",
        "neverCalledStaticConfig",
        "identify",
        "Lcom/superwall/sdk/identity/IdentityOptions;",
        "reset",
        "mergeUserAttributes",
        "newUserAttributes",
        "shouldTrackMerge",
        "mergeAndNotify",
        "mergeAndNotify$superwall_release",
        "awaitLatestIdentity",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final actor:Lcom/superwall/sdk/misc/primitives/StateActor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/superwall/sdk/misc/primitives/StateActor<",
            "Lcom/superwall/sdk/identity/IdentityContext;",
            "Lcom/superwall/sdk/identity/IdentityState;",
            ">;"
        }
    .end annotation
.end field

.field private final completeReset:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final ioScope:Lcom/superwall/sdk/misc/IOScope;

.field private final notifyUserChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/superwall/sdk/config/options/SuperwallOptions;",
            ">;"
        }
    .end annotation
.end field

.field private final sdkContext:Lcom/superwall/sdk/SdkContext;

.field private final storage:Lcom/superwall/sdk/storage/Storage;

.field private final stringToSha:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final tracker:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final webPaywallRedeemer:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/superwall/sdk/web/WebPaywallRedeemer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$YGtLHKcME-pirpNbPAtaHPWaZGs(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/identity/IdentityManager;->_init_$lambda$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$d8PA9CYFQqHlmEvWJX9OzQ1oh8U()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/identity/IdentityManager;->_init_$lambda$1()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lcom/superwall/sdk/storage/Storage;Lcom/superwall/sdk/misc/IOScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/misc/primitives/StateActor;Lcom/superwall/sdk/SdkContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/storage/Storage;",
            "Lcom/superwall/sdk/misc/IOScope;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/superwall/sdk/config/options/SuperwallOptions;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/superwall/sdk/web/WebPaywallRedeemer;",
            ">;",
            "Lcom/superwall/sdk/misc/primitives/StateActor<",
            "Lcom/superwall/sdk/identity/IdentityContext;",
            "Lcom/superwall/sdk/identity/IdentityState;",
            ">;",
            "Lcom/superwall/sdk/SdkContext;",
            ")V"
        }
    .end annotation

    const-string v0, "storage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringToSha"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notifyUserChange"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completeReset"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tracker"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webPaywallRedeemer"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actor"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkContext"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/superwall/sdk/identity/IdentityManager;->storage:Lcom/superwall/sdk/storage/Storage;

    .line 28
    iput-object p2, p0, Lcom/superwall/sdk/identity/IdentityManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    .line 29
    iput-object p3, p0, Lcom/superwall/sdk/identity/IdentityManager;->stringToSha:Lkotlin/jvm/functions/Function1;

    .line 30
    iput-object p4, p0, Lcom/superwall/sdk/identity/IdentityManager;->notifyUserChange:Lkotlin/jvm/functions/Function1;

    .line 31
    iput-object p5, p0, Lcom/superwall/sdk/identity/IdentityManager;->completeReset:Lkotlin/jvm/functions/Function0;

    .line 34
    iput-object p6, p0, Lcom/superwall/sdk/identity/IdentityManager;->tracker:Lkotlin/jvm/functions/Function2;

    .line 37
    iput-object p7, p0, Lcom/superwall/sdk/identity/IdentityManager;->options:Lkotlin/jvm/functions/Function0;

    .line 38
    iput-object p8, p0, Lcom/superwall/sdk/identity/IdentityManager;->webPaywallRedeemer:Lkotlin/jvm/functions/Function0;

    .line 39
    iput-object p9, p0, Lcom/superwall/sdk/identity/IdentityManager;->actor:Lcom/superwall/sdk/misc/primitives/StateActor;

    .line 40
    iput-object p10, p0, Lcom/superwall/sdk/identity/IdentityManager;->sdkContext:Lcom/superwall/sdk/SdkContext;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/superwall/sdk/storage/Storage;Lcom/superwall/sdk/misc/IOScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/misc/primitives/StateActor;Lcom/superwall/sdk/SdkContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    and-int/lit8 v0, p11, 0x4

    if-eqz v0, :cond_0

    .line 29
    new-instance p3, Lcom/superwall/sdk/identity/IdentityManager$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/superwall/sdk/identity/IdentityManager$$ExternalSyntheticLambda0;-><init>()V

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p11, 0x10

    if-eqz p3, :cond_1

    .line 31
    new-instance p3, Lcom/superwall/sdk/identity/IdentityManager$$ExternalSyntheticLambda1;

    invoke-direct {p3}, Lcom/superwall/sdk/identity/IdentityManager$$ExternalSyntheticLambda1;-><init>()V

    move-object v5, p3

    goto :goto_0

    :cond_1
    move-object/from16 v5, p5

    :goto_0
    and-int/lit8 p3, p11, 0x20

    if-eqz p3, :cond_2

    .line 34
    new-instance p3, Lcom/superwall/sdk/identity/IdentityManager$3;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/superwall/sdk/identity/IdentityManager$3;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast p3, Lkotlin/jvm/functions/Function2;

    move-object v6, p3

    goto :goto_1

    :cond_2
    move-object/from16 v6, p6

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 26
    invoke-direct/range {v0 .. v10}, Lcom/superwall/sdk/identity/IdentityManager;-><init>(Lcom/superwall/sdk/storage/Storage;Lcom/superwall/sdk/misc/IOScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/misc/primitives/StateActor;Lcom/superwall/sdk/SdkContext;)V

    return-void
.end method

.method private static final _init_$lambda$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final _init_$lambda$1()Lkotlin/Unit;
    .locals 2

    .line 32
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/Superwall;->reset$superwall_release(Z)V

    .line 33
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final getIdentity()Lcom/superwall/sdk/identity/IdentityState;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/superwall/sdk/identity/IdentityManager;->getActor()Lcom/superwall/sdk/misc/primitives/StateActor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/primitives/StateActor;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/identity/IdentityState;

    return-object v0
.end method

.method public static synthetic identify$default(Lcom/superwall/sdk/identity/IdentityManager;Ljava/lang/String;Lcom/superwall/sdk/identity/IdentityOptions;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 73
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/identity/IdentityManager;->identify(Ljava/lang/String;Lcom/superwall/sdk/identity/IdentityOptions;)V

    return-void
.end method

.method public static synthetic mergeAndNotify$superwall_release$default(Lcom/superwall/sdk/identity/IdentityManager;Ljava/util/Map;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 97
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/identity/IdentityManager;->mergeAndNotify$superwall_release(Ljava/util/Map;Z)V

    return-void
.end method

.method public static synthetic mergeUserAttributes$default(Lcom/superwall/sdk/identity/IdentityManager;Ljava/util/Map;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 84
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/identity/IdentityManager;->mergeUserAttributes(Ljava/util/Map;Z)V

    return-void
.end method


# virtual methods
.method public final awaitLatestIdentity(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/identity/IdentityState;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Lcom/superwall/sdk/identity/IdentityManager;->getActor()Lcom/superwall/sdk/misc/primitives/StateActor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/primitives/StateActor;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    new-instance v1, Lcom/superwall/sdk/identity/IdentityManager$awaitLatestIdentity$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/superwall/sdk/identity/IdentityManager$awaitLatestIdentity$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final configure(Z)V
    .locals 1

    .line 67
    new-instance v0, Lcom/superwall/sdk/identity/IdentityState$Actions$Configure;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/identity/IdentityState$Actions$Configure;-><init>(Z)V

    check-cast v0, Lcom/superwall/sdk/misc/primitives/TypedAction;

    .line 66
    invoke-virtual {p0, v0}, Lcom/superwall/sdk/identity/IdentityManager;->effect(Lcom/superwall/sdk/misc/primitives/TypedAction;)V

    return-void
.end method

.method public delete(Lcom/superwall/sdk/storage/Storable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/storage/Storable<",
            "*>;)V"
        }
    .end annotation

    .line 26
    invoke-static {p0, p1}, Lcom/superwall/sdk/identity/IdentityContext$DefaultImpls;->delete(Lcom/superwall/sdk/identity/IdentityContext;Lcom/superwall/sdk/storage/Storable;)V

    return-void
.end method

.method public effect(Lcom/superwall/sdk/misc/primitives/TypedAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/misc/primitives/TypedAction<",
            "Lcom/superwall/sdk/identity/IdentityContext;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-static {p0, p1}, Lcom/superwall/sdk/identity/IdentityContext$DefaultImpls;->effect(Lcom/superwall/sdk/identity/IdentityContext;Lcom/superwall/sdk/misc/primitives/TypedAction;)V

    return-void
.end method

.method public getActor()Lcom/superwall/sdk/misc/primitives/StateActor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/superwall/sdk/misc/primitives/StateActor<",
            "Lcom/superwall/sdk/identity/IdentityContext;",
            "Lcom/superwall/sdk/identity/IdentityState;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityManager;->actor:Lcom/superwall/sdk/misc/primitives/StateActor;

    return-object v0
.end method

.method public final getAliasId()Ljava/lang/String;
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/superwall/sdk/identity/IdentityManager;->getIdentity()Lcom/superwall/sdk/identity/IdentityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/identity/IdentityState;->getAliasId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAppUserId()Ljava/lang/String;
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/superwall/sdk/identity/IdentityManager;->getIdentity()Lcom/superwall/sdk/identity/IdentityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/identity/IdentityState;->getAppUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompleteReset()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityManager;->completeReset:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getExternalAccountId()Ljava/lang/String;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityManager;->options:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/config/options/SuperwallOptions;

    invoke-virtual {v0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getPassIdentifiersToPlayStore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/superwall/sdk/identity/IdentityManager;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityManager;->stringToSha:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Lcom/superwall/sdk/identity/IdentityManager;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getHasIdentity()Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/superwall/sdk/identity/IdentityManager;->getActor()Lcom/superwall/sdk/misc/primitives/StateActor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/primitives/StateActor;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .line 117
    new-instance v1, Lcom/superwall/sdk/identity/IdentityManager$special$$inlined$map$1;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/identity/IdentityManager$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    new-instance v0, Lcom/superwall/sdk/identity/IdentityManager$special$$inlined$filter$1;

    invoke-direct {v0, v1}, Lcom/superwall/sdk/identity/IdentityManager$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public getNotifyUserChange()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityManager;->notifyUserChange:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public getSdkContext()Lcom/superwall/sdk/SdkContext;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityManager;->sdkContext:Lcom/superwall/sdk/SdkContext;

    return-object v0
.end method

.method public final getSeed()I
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/superwall/sdk/identity/IdentityManager;->getIdentity()Lcom/superwall/sdk/identity/IdentityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/identity/IdentityState;->getSeed()I

    move-result v0

    return v0
.end method

.method public getState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/superwall/sdk/identity/IdentityState;",
            ">;"
        }
    .end annotation

    .line 26
    invoke-static {p0}, Lcom/superwall/sdk/identity/IdentityContext$DefaultImpls;->getState(Lcom/superwall/sdk/identity/IdentityContext;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    return-object v0
.end method

.method public getStorage()Lcom/superwall/sdk/storage/Storage;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityManager;->storage:Lcom/superwall/sdk/storage/Storage;

    return-object v0
.end method

.method public getTracker()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityManager;->tracker:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getUserAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lcom/superwall/sdk/identity/IdentityManager;->getIdentity()Lcom/superwall/sdk/identity/IdentityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/identity/IdentityState;->getEnrichedAttributes()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/superwall/sdk/identity/IdentityManager;->getIdentity()Lcom/superwall/sdk/identity/IdentityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/identity/IdentityState;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebPaywallRedeemer()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/superwall/sdk/web/WebPaywallRedeemer;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityManager;->webPaywallRedeemer:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final identify(Ljava/lang/String;Lcom/superwall/sdk/identity/IdentityOptions;)V
    .locals 1

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance v0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;

    invoke-direct {v0, p1, p2}, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;-><init>(Ljava/lang/String;Lcom/superwall/sdk/identity/IdentityOptions;)V

    check-cast v0, Lcom/superwall/sdk/misc/primitives/TypedAction;

    invoke-virtual {p0, v0}, Lcom/superwall/sdk/identity/IdentityManager;->effect(Lcom/superwall/sdk/misc/primitives/TypedAction;)V

    return-void
.end method

.method public immediate(Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/misc/primitives/TypedAction<",
            "Lcom/superwall/sdk/identity/IdentityContext;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 26
    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/identity/IdentityContext$DefaultImpls;->immediate(Lcom/superwall/sdk/identity/IdentityContext;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public immediateUntil(Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/misc/primitives/TypedAction<",
            "Lcom/superwall/sdk/identity/IdentityContext;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/identity/IdentityState;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 26
    invoke-static {p0, p1, p2, p3}, Lcom/superwall/sdk/identity/IdentityContext$DefaultImpls;->immediateUntil(Lcom/superwall/sdk/identity/IdentityContext;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isLoggedIn()Z
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/superwall/sdk/identity/IdentityManager;->getIdentity()Lcom/superwall/sdk/identity/IdentityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/identity/IdentityState;->isLoggedIn()Z

    move-result v0

    return v0
.end method

.method public final mergeAndNotify$superwall_release(Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "newUserAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    new-instance v0, Lcom/superwall/sdk/identity/IdentityState$Actions$MergeAttributes;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/superwall/sdk/identity/IdentityState$Actions$MergeAttributes;-><init>(Ljava/util/Map;ZZ)V

    check-cast v0, Lcom/superwall/sdk/misc/primitives/TypedAction;

    .line 101
    invoke-virtual {p0, v0}, Lcom/superwall/sdk/identity/IdentityManager;->effect(Lcom/superwall/sdk/misc/primitives/TypedAction;)V

    return-void
.end method

.method public final mergeUserAttributes(Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "newUserAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    new-instance v0, Lcom/superwall/sdk/identity/IdentityState$Actions$MergeAttributes;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/superwall/sdk/identity/IdentityState$Actions$MergeAttributes;-><init>(Ljava/util/Map;ZZ)V

    check-cast v0, Lcom/superwall/sdk/misc/primitives/TypedAction;

    .line 88
    invoke-virtual {p0, v0}, Lcom/superwall/sdk/identity/IdentityManager;->effect(Lcom/superwall/sdk/misc/primitives/TypedAction;)V

    return-void
.end method

.method public persist(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/superwall/sdk/storage/Storable<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 26
    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/identity/IdentityContext$DefaultImpls;->persist(Lcom/superwall/sdk/identity/IdentityContext;Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    return-void
.end method

.method public read-IoAF18A(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/superwall/sdk/storage/Storable<",
            "TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 26
    invoke-static {p0, p1}, Lcom/superwall/sdk/identity/IdentityContext$DefaultImpls;->read-IoAF18A(Lcom/superwall/sdk/identity/IdentityContext;Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final reset()V
    .locals 1

    .line 81
    sget-object v0, Lcom/superwall/sdk/identity/IdentityState$Actions$FullReset;->INSTANCE:Lcom/superwall/sdk/identity/IdentityState$Actions$FullReset;

    check-cast v0, Lcom/superwall/sdk/misc/primitives/TypedAction;

    invoke-virtual {p0, v0}, Lcom/superwall/sdk/identity/IdentityManager;->effect(Lcom/superwall/sdk/misc/primitives/TypedAction;)V

    return-void
.end method

.method public sideEffect(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-static {p0, p1}, Lcom/superwall/sdk/identity/IdentityContext$DefaultImpls;->sideEffect(Lcom/superwall/sdk/identity/IdentityContext;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public track(Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;)V
    .locals 0

    .line 26
    invoke-static {p0, p1}, Lcom/superwall/sdk/identity/IdentityContext$DefaultImpls;->track(Lcom/superwall/sdk/identity/IdentityContext;Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;)V

    return-void
.end method

.method public update(Lcom/superwall/sdk/misc/primitives/Reducer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/misc/primitives/Reducer<",
            "Lcom/superwall/sdk/identity/IdentityState;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-static {p0, p1}, Lcom/superwall/sdk/identity/IdentityContext$DefaultImpls;->update(Lcom/superwall/sdk/identity/IdentityContext;Lcom/superwall/sdk/misc/primitives/Reducer;)V

    return-void
.end method
