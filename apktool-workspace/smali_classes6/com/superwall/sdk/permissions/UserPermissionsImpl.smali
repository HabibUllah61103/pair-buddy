.class public final Lcom/superwall/sdk/permissions/UserPermissionsImpl;
.super Ljava/lang/Object;
.source "UserPermissionsImpl.kt"

# interfaces
.implements Lcom/superwall/sdk/permissions/UserPermissions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/permissions/UserPermissionsImpl$Companion;,
        Lcom/superwall/sdk/permissions/UserPermissionsImpl$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserPermissionsImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserPermissionsImpl.kt\ncom/superwall/sdk/permissions/UserPermissionsImpl\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,233:1\n351#2,11:234\n*S KotlinDebug\n*F\n+ 1 UserPermissionsImpl.kt\ncom/superwall/sdk/permissions/UserPermissionsImpl\n*L\n184#1:234,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\u0007H\u0002J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u0008\u0010\u000c\u001a\u00020\u0007H\u0002J\u001e\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\tH\u0096@\u00a2\u0006\u0002\u0010\u0010J\u0016\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0082@\u00a2\u0006\u0002\u0010\u0012J\u001e\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\tH\u0082@\u00a2\u0006\u0002\u0010\u0010J\u0016\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0082@\u00a2\u0006\u0002\u0010\u0012J\u001e\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0082@\u00a2\u0006\u0002\u0010\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/superwall/sdk/permissions/UserPermissionsImpl;",
        "Lcom/superwall/sdk/permissions/UserPermissions;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "hasPermission",
        "Lcom/superwall/sdk/permissions/PermissionStatus;",
        "permission",
        "Lcom/superwall/sdk/permissions/PermissionType;",
        "checkNotificationPermission",
        "checkRuntimePermission",
        "checkBackgroundLocationPermission",
        "requestPermission",
        "activity",
        "Landroid/app/Activity;",
        "(Landroid/app/Activity;Lcom/superwall/sdk/permissions/PermissionType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "requestNotificationPermission",
        "(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "requestStandardPermission",
        "requestBackgroundLocationPermission",
        "requestRuntimePermission",
        "manifestPermission",
        "",
        "(Landroid/app/Activity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/superwall/sdk/permissions/UserPermissionsImpl$Companion;

.field private static final PERMISSION_REQUEST_CODE:I = 0x2711


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/permissions/UserPermissionsImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/permissions/UserPermissionsImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/permissions/UserPermissionsImpl;->Companion:Lcom/superwall/sdk/permissions/UserPermissionsImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/superwall/sdk/permissions/UserPermissionsImpl;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$requestBackgroundLocationPermission(Lcom/superwall/sdk/permissions/UserPermissionsImpl;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/permissions/UserPermissionsImpl;->requestBackgroundLocationPermission(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$requestNotificationPermission(Lcom/superwall/sdk/permissions/UserPermissionsImpl;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/permissions/UserPermissionsImpl;->requestNotificationPermission(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$requestRuntimePermission(Lcom/superwall/sdk/permissions/UserPermissionsImpl;Landroid/app/Activity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/superwall/sdk/permissions/UserPermissionsImpl;->requestRuntimePermission(Landroid/app/Activity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$requestStandardPermission(Lcom/superwall/sdk/permissions/UserPermissionsImpl;Landroid/app/Activity;Lcom/superwall/sdk/permissions/PermissionType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/superwall/sdk/permissions/UserPermissionsImpl;->requestStandardPermission(Landroid/app/Activity;Lcom/superwall/sdk/permissions/PermissionType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final checkBackgroundLocationPermission()Lcom/superwall/sdk/permissions/PermissionStatus;
    .locals 2

    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    .line 71
    sget-object v0, Lcom/superwall/sdk/permissions/PermissionStatus;->UNSUPPORTED:Lcom/superwall/sdk/permissions/PermissionStatus;

    return-object v0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/permissions/UserPermissionsImpl;->context:Landroid/content/Context;

    .line 78
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 76
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/superwall/sdk/permissions/UserPermissionsImpl;->context:Landroid/content/Context;

    .line 89
    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 87
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 92
    sget-object v0, Lcom/superwall/sdk/permissions/PermissionStatus;->GRANTED:Lcom/superwall/sdk/permissions/PermissionStatus;

    return-object v0

    :cond_1
    sget-object v0, Lcom/superwall/sdk/permissions/PermissionStatus;->DENIED:Lcom/superwall/sdk/permissions/PermissionStatus;

    return-object v0

    .line 82
    :cond_2
    sget-object v0, Lcom/superwall/sdk/permissions/PermissionStatus;->DENIED:Lcom/superwall/sdk/permissions/PermissionStatus;

    return-object v0
.end method

.method private final checkNotificationPermission()Lcom/superwall/sdk/permissions/PermissionStatus;
    .locals 2

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    .line 40
    iget-object v0, p0, Lcom/superwall/sdk/permissions/UserPermissionsImpl;->context:Landroid/content/Context;

    .line 41
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 39
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 43
    sget-object v0, Lcom/superwall/sdk/permissions/PermissionStatus;->GRANTED:Lcom/superwall/sdk/permissions/PermissionStatus;

    return-object v0

    :cond_0
    sget-object v0, Lcom/superwall/sdk/permissions/PermissionStatus;->DENIED:Lcom/superwall/sdk/permissions/PermissionStatus;

    return-object v0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/superwall/sdk/permissions/UserPermissionsImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    const-string v1, "from(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    sget-object v0, Lcom/superwall/sdk/permissions/PermissionStatus;->GRANTED:Lcom/superwall/sdk/permissions/PermissionStatus;

    return-object v0

    .line 51
    :cond_2
    sget-object v0, Lcom/superwall/sdk/permissions/PermissionStatus;->DENIED:Lcom/superwall/sdk/permissions/PermissionStatus;

    return-object v0
.end method

.method private final checkRuntimePermission(Lcom/superwall/sdk/permissions/PermissionType;)Lcom/superwall/sdk/permissions/PermissionStatus;
    .locals 1

    .line 57
    invoke-virtual {p1}, Lcom/superwall/sdk/permissions/PermissionType;->toManifestPermission()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 58
    sget-object p1, Lcom/superwall/sdk/permissions/PermissionStatus;->UNSUPPORTED:Lcom/superwall/sdk/permissions/PermissionStatus;

    return-object p1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/permissions/UserPermissionsImpl;->context:Landroid/content/Context;

    .line 61
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    .line 65
    sget-object p1, Lcom/superwall/sdk/permissions/PermissionStatus;->GRANTED:Lcom/superwall/sdk/permissions/PermissionStatus;

    return-object p1

    :cond_1
    sget-object p1, Lcom/superwall/sdk/permissions/PermissionStatus;->DENIED:Lcom/superwall/sdk/permissions/PermissionStatus;

    return-object p1
.end method

.method private final requestBackgroundLocationPermission(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/permissions/PermissionStatus;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/superwall/sdk/permissions/UserPermissionsImpl$requestBackgroundLocationPermission$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/permissions/UserPermissionsImpl$requestBackgroundLocationPermission$1;

    iget v1, v0, Lcom/superwall/sdk/permissions/UserPermissionsImpl$requestBackgroundLocationPermission$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/permissions/UserPermissionsImpl$requestBackgroundLocationPermission$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/permissions/UserPermissionsImpl$requestBackgroundLocationPermission$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/permissions/UserPermissionsImpl$requestBackgroundLocationPermission$1;

    invoke-direct {v0, p0, p2}, Lcom/superwall/sdk/permissions/UserPermissionsImpl$requestBackgroundLocationPermission$1;-><init>(Lcom/superwall/sdk/permissions/UserPermissionsImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/superwall/sdk/permissions/UserPermissionsImpl$requestBackgroundLocationPermission$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 150
    iget v2, v0, Lcom/superwall/sdk/permissions/UserPermissionsImpl$requestBackgroundLocationPermission$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/superwall/sdk/permissions/UserPermissionsImpl$requestBackgroundLocationPermission$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    iget-object v2, v0, Lcom/superwall/sdk/permissions/UserPermissionsImpl$requestBackgroundLocationPermission$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/permissions/UserPermissionsImpl;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 152
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge p2, v2, :cond_4

    .line 153
    sget-object p1, Lcom/superwall/sdk/permissions/PermissionStatus;->UNSUPPORTED:Lcom/superwall/sdk/permissions/PermissionStatus;

    return-object p1

    .line 157
    :cond_4
    sget-object p2, Lcom/superwall/sdk/permissions/PermissionType;->BACKGROUND_LOCATION:Lcom/superwall/sdk/permissions/PermissionType;

    invoke-virtual {p0, p2}, Lcom/superwall/sdk/permissions/UserPermissionsImpl;->hasPermission(Lcom/superwall/sdk/permissions/PermissionType;)Lcom/superwall/sdk/permissions/PermissionStatus;

    move-result-object p2

    .line 158
    sget-object v2, Lcom/superwall/sdk/permissions/PermissionStatus;->GRANTED:Lcom/superwall/sdk/permissions/PermissionStatus;

    if-ne p2, v2, :cond_5

    .line 159
    sget-object p1, Lcom/superwall/sdk/permissions/PermissionStatus;->GRANTED:Lcom/superwall/sdk/permissions/PermissionStatus;

    return-object p1

    .line 163
    :cond_5
    sget-object p2, Lcom/superwall/sdk/permissions/PermissionType;->LOCATION:Lcom/superwall/sdk/permissions/PermissionType;

    invoke-virtual {p0, p2}, Lcom/superwall/sdk/permissions/UserPermissionsImpl;->hasPermission(Lcom/superwall/sdk/permissions/PermissionType;)Lcom/superwall/sdk/permissions/PermissionStatus;

    move-result-object p2

    .line 164
    sget-object v2, Lcom/superwall/sdk/permissions/PermissionStatus;->GRANTED:Lcom/superwall/sdk/permissions/PermissionStatus;

    if-eq p2, v2, :cond_7

    .line 166
    sget-object p2, Lcom/superwall/sdk/permissions/PermissionType;->LOCATION:Lcom/superwall/sdk/permissions/PermissionType;

    iput-object p0, v0, Lcom/superwall/sdk/permissions/UserPermissionsImpl$requestBackgroundLocationPermission$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/superwall/sdk/permissions/UserPermissionsImpl$requestBackgroundLocationPermission$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/superwall/sdk/permissions/UserPermissionsImpl$requestBackgroundLocationPermission$1;->label:I

    invoke-direct {p0, p1, p2, v0}, Lcom/superwall/sdk/permissions/UserPermissionsImpl;->requestStandardPermission(Landroid/app/Activity;Lcom/superwall/sdk/permissions/PermissionType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    goto :goto_2

    :cond_6
    move-object v2, p0

    .line 150
    :goto_1
    check-cast p2, Lcom/superwall/sdk/permissions/PermissionStatus;

    .line 167
    sget-object v4, Lcom/superwall/sdk/permissions/PermissionStatus;->GRANTED:Lcom/superwall/sdk/permissions/PermissionStatus;

    if-eq p2, v4, :cond_8

    .line 168
    sget-object p1, Lcom/superwall/sdk/permissions/PermissionStatus;->DENIED:Lcom/superwall/sdk/permissions/PermissionStatus;

    return-object p1

    :cond_7
    move-object v2, p0

    .line 174
    :cond_8
    sget-object p2, Lcom/superwall/sdk/permissions/PermissionType;->BACKGROUND_LOCATION:Lcom/superwall/sdk/permissions/PermissionType;

    invoke-virtual {p2}, Lcom/superwall/sdk/permissions/PermissionType;->toManifestPermission()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_9

    .line 175
    sget-object p1, Lcom/superwall/sdk/permissions/PermissionStatus;->UNSUPPORTED:Lcom/superwall/sdk/permissions/PermissionStatus;

    return-object p1

    :cond_9
    const/4 v4, 0x0

    .line 177
    iput-object v4, v0, Lcom/superwall/sdk/permissions/UserPermissionsImpl$requestBackgroundLocationPermission$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lcom/superwall/sdk/permissions/UserPermissionsImpl$requestBackgroundLocationPermission$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/permissions/UserPermissionsImpl$requestBackgroundLocationPermission$1;->label:I

    invoke-direct {v2, p1, p2, v0}, Lcom/superwall/sdk/permissions/UserPermissionsImpl;->requestRuntimePermission(Landroid/app/Activity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    :goto_2
    return-object v1

    :cond_a
    return-object p1
.end method

.method private final requestNotificationPermission(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/permissions/PermissionStatus;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 113
    sget-object v0, Lcom/superwall/sdk/permissions/PermissionType;->NOTIFICATION:Lcom/superwall/sdk/permissions/PermissionType;

    invoke-virtual {p0, v0}, Lcom/superwall/sdk/permissions/UserPermissionsImpl;->hasPermission(Lcom/superwall/sdk/permissions/PermissionType;)Lcom/superwall/sdk/permissions/PermissionStatus;

    move-result-object v0

    .line 114
    sget-object v1, Lcom/superwall/sdk/permissions/PermissionStatus;->GRANTED:Lcom/superwall/sdk/permissions/PermissionStatus;

    if-ne v0, v1, :cond_0

    .line 115
    sget-object p1, Lcom/superwall/sdk/permissions/PermissionStatus;->GRANTED:Lcom/superwall/sdk/permissions/PermissionStatus;

    return-object p1

    .line 120
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-ge v1, v2, :cond_1

    return-object v0

    .line 127
    :cond_1
    sget-object v0, Lcom/superwall/sdk/permissions/PermissionType;->NOTIFICATION:Lcom/superwall/sdk/permissions/PermissionType;

    invoke-virtual {v0}, Lcom/superwall/sdk/permissions/PermissionType;->toManifestPermission()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 128
    sget-object p1, Lcom/superwall/sdk/permissions/PermissionStatus;->UNSUPPORTED:Lcom/superwall/sdk/permissions/PermissionStatus;

    return-object p1

    .line 130
    :cond_2
    invoke-direct {p0, p1, v0, p2}, Lcom/superwall/sdk/permissions/UserPermissionsImpl;->requestRuntimePermission(Landroid/app/Activity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final requestRuntimePermission(Landroid/app/Activity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/permissions/PermissionStatus;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 235
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 241
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 242
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 186
    instance-of v3, p1, Landroidx/activity/ComponentActivity;

    if-eqz v3, :cond_0

    .line 188
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 190
    check-cast p1, Landroidx/activity/ComponentActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object p1

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "permission_request_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 192
    new-instance v4, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    invoke-direct {v4}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    check-cast v4, Landroidx/activity/result/contract/ActivityResultContract;

    .line 190
    new-instance v5, Lcom/superwall/sdk/permissions/UserPermissionsImpl$requestRuntimePermission$2$1;

    invoke-direct {v5, v2, v1}, Lcom/superwall/sdk/permissions/UserPermissionsImpl$requestRuntimePermission$2$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v5, Landroidx/activity/result/ActivityResultCallback;

    invoke-virtual {p1, v3, v4, v5}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    .line 189
    iput-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 201
    new-instance p1, Lcom/superwall/sdk/permissions/UserPermissionsImpl$requestRuntimePermission$2$2;

    invoke-direct {p1, v2}, Lcom/superwall/sdk/permissions/UserPermissionsImpl$requestRuntimePermission$2$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, p1}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 205
    iget-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_2

    .line 211
    :cond_0
    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/16 v5, 0x2711

    .line 209
    invoke-static {p1, v3, v5}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 219
    check-cast p1, Landroid/content/Context;

    .line 218
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    .line 223
    :goto_0
    invoke-interface {v1}, Lkotlinx/coroutines/CancellableContinuation;->isActive()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 224
    check-cast v1, Lkotlin/coroutines/Continuation;

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-eqz v2, :cond_2

    sget-object p1, Lcom/superwall/sdk/permissions/PermissionStatus;->GRANTED:Lcom/superwall/sdk/permissions/PermissionStatus;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/superwall/sdk/permissions/PermissionStatus;->DENIED:Lcom/superwall/sdk/permissions/PermissionStatus;

    :goto_1
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 243
    :cond_3
    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 234
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_4

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_4
    return-object p1
.end method

.method private final requestStandardPermission(Landroid/app/Activity;Lcom/superwall/sdk/permissions/PermissionType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/superwall/sdk/permissions/PermissionType;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/permissions/PermissionStatus;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 138
    invoke-virtual {p0, p2}, Lcom/superwall/sdk/permissions/UserPermissionsImpl;->hasPermission(Lcom/superwall/sdk/permissions/PermissionType;)Lcom/superwall/sdk/permissions/PermissionStatus;

    move-result-object v0

    .line 139
    sget-object v1, Lcom/superwall/sdk/permissions/PermissionStatus;->GRANTED:Lcom/superwall/sdk/permissions/PermissionStatus;

    if-ne v0, v1, :cond_0

    .line 140
    sget-object p1, Lcom/superwall/sdk/permissions/PermissionStatus;->GRANTED:Lcom/superwall/sdk/permissions/PermissionStatus;

    return-object p1

    .line 144
    :cond_0
    invoke-virtual {p2}, Lcom/superwall/sdk/permissions/PermissionType;->toManifestPermission()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    .line 145
    sget-object p1, Lcom/superwall/sdk/permissions/PermissionStatus;->UNSUPPORTED:Lcom/superwall/sdk/permissions/PermissionStatus;

    return-object p1

    .line 147
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/superwall/sdk/permissions/UserPermissionsImpl;->requestRuntimePermission(Landroid/app/Activity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public hasPermission(Lcom/superwall/sdk/permissions/PermissionType;)Lcom/superwall/sdk/permissions/PermissionStatus;
    .locals 2

    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/superwall/sdk/permissions/UserPermissionsImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/superwall/sdk/permissions/PermissionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 32
    :pswitch_0
    invoke-direct {p0}, Lcom/superwall/sdk/permissions/UserPermissionsImpl;->checkBackgroundLocationPermission()Lcom/superwall/sdk/permissions/PermissionStatus;

    move-result-object p1

    return-object p1

    .line 31
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/superwall/sdk/permissions/UserPermissionsImpl;->checkRuntimePermission(Lcom/superwall/sdk/permissions/PermissionType;)Lcom/superwall/sdk/permissions/PermissionStatus;

    move-result-object p1

    return-object p1

    .line 24
    :pswitch_2
    invoke-direct {p0}, Lcom/superwall/sdk/permissions/UserPermissionsImpl;->checkNotificationPermission()Lcom/superwall/sdk/permissions/PermissionStatus;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public requestPermission(Landroid/app/Activity;Lcom/superwall/sdk/permissions/PermissionType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/superwall/sdk/permissions/PermissionType;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/permissions/PermissionStatus;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 99
    sget-object v0, Lcom/superwall/sdk/permissions/UserPermissionsImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/superwall/sdk/permissions/PermissionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 101
    :pswitch_0
    invoke-direct {p0, p1, p3}, Lcom/superwall/sdk/permissions/UserPermissionsImpl;->requestBackgroundLocationPermission(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 108
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/superwall/sdk/permissions/UserPermissionsImpl;->requestStandardPermission(Landroid/app/Activity;Lcom/superwall/sdk/permissions/PermissionType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 100
    :pswitch_2
    invoke-direct {p0, p1, p3}, Lcom/superwall/sdk/permissions/UserPermissionsImpl;->requestNotificationPermission(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
