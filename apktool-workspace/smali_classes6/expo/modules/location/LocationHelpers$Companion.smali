.class public final Lexpo/modules/location/LocationHelpers$Companion;
.super Ljava/lang/Object;
.source "LocationHelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/location/LocationHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0000\u00a2\u0006\u0002\u0008\nJ\u0010\u0010\u000b\u001a\u00020\u00052\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u0015\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\u0010H\u0000\u00a2\u0006\u0002\u0008\u0011J\u0015\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0008\u001a\u00020\u0010H\u0000\u00a2\u0006\u0002\u0008\u0014J\u001e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u001bJ&\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u001a\u001a\u00020\u001bJ\u0010\u0010!\u001a\u00020\"2\u0006\u0010\u0008\u001a\u00020\u0010H\u0002J\u0010\u0010#\u001a\u00020 2\u0006\u0010$\u001a\u00020 H\u0002J\u0010\u0010%\u001a\u00020\"2\u0006\u0010$\u001a\u00020 H\u0002J\u0010\u0010&\u001a\u00020\u00052\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ,\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u0012\u0010+\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020-0,\"\u00020-H\u0080@\u00a2\u0006\u0004\u0008.\u0010/J,\u00100\u001a\u0002012\u0006\u0010)\u001a\u00020*2\u0012\u0010+\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020-0,\"\u00020-H\u0080@\u00a2\u0006\u0004\u00082\u0010/\u00a8\u00063"
    }
    d2 = {
        "Lexpo/modules/location/LocationHelpers$Companion;",
        "",
        "<init>",
        "()V",
        "isLocationValid",
        "",
        "location",
        "Landroid/location/Location;",
        "options",
        "Lexpo/modules/location/records/LocationLastKnownOptions;",
        "isLocationValid$expo_location_release",
        "hasNetworkProviderEnabled",
        "context",
        "Landroid/content/Context;",
        "prepareLocationRequest",
        "Lcom/google/android/gms/location/LocationRequest;",
        "Lexpo/modules/location/records/LocationOptions;",
        "prepareLocationRequest$expo_location_release",
        "prepareCurrentLocationRequest",
        "Lcom/google/android/gms/location/CurrentLocationRequest;",
        "prepareCurrentLocationRequest$expo_location_release",
        "requestSingleLocation",
        "",
        "locationProvider",
        "Lcom/google/android/gms/location/FusedLocationProviderClient;",
        "locationRequest",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "requestContinuousUpdates",
        "locationModule",
        "Lexpo/modules/location/LocationModule;",
        "watchId",
        "",
        "mapOptionsToLocationParams",
        "Lexpo/modules/location/LocationParams;",
        "mapAccuracyToPriority",
        "accuracy",
        "buildLocationParamsForAccuracy",
        "isAnyProviderAvailable",
        "getPermissionsWithPermissionsManager",
        "Lexpo/modules/location/records/PermissionRequestResponse;",
        "contextPermissions",
        "Lexpo/modules/interfaces/permissions/Permissions;",
        "permissionStrings",
        "",
        "",
        "getPermissionsWithPermissionsManager$expo_location_release",
        "(Lexpo/modules/interfaces/permissions/Permissions;[Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "askForPermissionsWithPermissionsManager",
        "Landroid/os/Bundle;",
        "askForPermissionsWithPermissionsManager$expo_location_release",
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


# direct methods
.method public static synthetic $r8$lambda$Q9UtoT4E45qPUOpLF1ZRS9pKgr0(Lexpo/modules/kotlin/Promise;)V
    .locals 0

    invoke-static {p0}, Lexpo/modules/location/LocationHelpers$Companion;->requestSingleLocation$lambda$4(Lexpo/modules/kotlin/Promise;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UWaK8KmKvmqQww0MB-gBVX_CnbU(Lexpo/modules/kotlin/Promise;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/location/LocationHelpers$Companion;->requestSingleLocation$lambda$3(Lexpo/modules/kotlin/Promise;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e7TEgkRuNHLnf5q861mx0grCCvE(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/location/LocationHelpers$Companion;->requestSingleLocation$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ydKYt8U7d0YH_7c1_nEEOuaMi6o(Lexpo/modules/kotlin/Promise;Landroid/location/Location;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/location/LocationHelpers$Companion;->requestSingleLocation$lambda$1(Lexpo/modules/kotlin/Promise;Landroid/location/Location;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/location/LocationHelpers$Companion;-><init>()V

    return-void
.end method

.method private final buildLocationParamsForAccuracy(I)Lexpo/modules/location/LocationParams;
    .locals 4

    const-wide/16 v0, 0xbb8

    const/high16 v2, 0x42c80000    # 100.0f

    packed-switch p1, :pswitch_data_0

    .line 140
    new-instance p1, Lexpo/modules/location/LocationParams;

    sget-object v3, Lexpo/modules/location/LocationAccuracy;->MEDIUM:Lexpo/modules/location/LocationAccuracy;

    invoke-direct {p1, v3, v2, v0, v1}, Lexpo/modules/location/LocationParams;-><init>(Lexpo/modules/location/LocationAccuracy;FJ)V

    return-object p1

    .line 139
    :pswitch_0
    new-instance p1, Lexpo/modules/location/LocationParams;

    sget-object v0, Lexpo/modules/location/LocationAccuracy;->HIGH:Lexpo/modules/location/LocationAccuracy;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    invoke-direct {p1, v0, v1, v2, v3}, Lexpo/modules/location/LocationParams;-><init>(Lexpo/modules/location/LocationAccuracy;FJ)V

    return-object p1

    .line 138
    :pswitch_1
    new-instance p1, Lexpo/modules/location/LocationParams;

    sget-object v0, Lexpo/modules/location/LocationAccuracy;->HIGH:Lexpo/modules/location/LocationAccuracy;

    const/high16 v1, 0x41c80000    # 25.0f

    const-wide/16 v2, 0x3e8

    invoke-direct {p1, v0, v1, v2, v3}, Lexpo/modules/location/LocationParams;-><init>(Lexpo/modules/location/LocationAccuracy;FJ)V

    return-object p1

    .line 137
    :pswitch_2
    new-instance p1, Lexpo/modules/location/LocationParams;

    sget-object v0, Lexpo/modules/location/LocationAccuracy;->HIGH:Lexpo/modules/location/LocationAccuracy;

    const/high16 v1, 0x42480000    # 50.0f

    const-wide/16 v2, 0x7d0

    invoke-direct {p1, v0, v1, v2, v3}, Lexpo/modules/location/LocationParams;-><init>(Lexpo/modules/location/LocationAccuracy;FJ)V

    return-object p1

    .line 136
    :pswitch_3
    new-instance p1, Lexpo/modules/location/LocationParams;

    sget-object v3, Lexpo/modules/location/LocationAccuracy;->MEDIUM:Lexpo/modules/location/LocationAccuracy;

    invoke-direct {p1, v3, v2, v0, v1}, Lexpo/modules/location/LocationParams;-><init>(Lexpo/modules/location/LocationAccuracy;FJ)V

    return-object p1

    .line 135
    :pswitch_4
    new-instance p1, Lexpo/modules/location/LocationParams;

    sget-object v0, Lexpo/modules/location/LocationAccuracy;->LOW:Lexpo/modules/location/LocationAccuracy;

    const/high16 v1, 0x447a0000    # 1000.0f

    const-wide/16 v2, 0x1388

    invoke-direct {p1, v0, v1, v2, v3}, Lexpo/modules/location/LocationParams;-><init>(Lexpo/modules/location/LocationAccuracy;FJ)V

    return-object p1

    .line 134
    :pswitch_5
    new-instance p1, Lexpo/modules/location/LocationParams;

    sget-object v0, Lexpo/modules/location/LocationAccuracy;->LOWEST:Lexpo/modules/location/LocationAccuracy;

    const v1, 0x453b8000    # 3000.0f

    const-wide/16 v2, 0x2710

    invoke-direct {p1, v0, v1, v2, v3}, Lexpo/modules/location/LocationParams;-><init>(Lexpo/modules/location/LocationAccuracy;FJ)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final mapAccuracyToPriority(I)I
    .locals 1

    const/16 v0, 0x66

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 p1, 0x64

    return p1

    :pswitch_1
    return v0

    :pswitch_2
    const/16 p1, 0x68

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final mapOptionsToLocationParams(Lexpo/modules/location/records/LocationOptions;)Lexpo/modules/location/LocationParams;
    .locals 3

    .line 110
    invoke-virtual {p1}, Lexpo/modules/location/records/LocationOptions;->getAccuracy()I

    move-result v0

    .line 111
    invoke-direct {p0, v0}, Lexpo/modules/location/LocationHelpers$Companion;->buildLocationParamsForAccuracy(I)Lexpo/modules/location/LocationParams;

    move-result-object v0

    .line 113
    invoke-virtual {p1}, Lexpo/modules/location/records/LocationOptions;->getTimeInterval()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 114
    invoke-virtual {v0, v1, v2}, Lexpo/modules/location/LocationParams;->setInterval(J)V

    .line 116
    :cond_0
    invoke-virtual {p1}, Lexpo/modules/location/records/LocationOptions;->getDistanceInterval()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-float p1, p1

    .line 117
    invoke-virtual {v0, p1}, Lexpo/modules/location/LocationParams;->setDistance(F)V

    :cond_1
    return-object v0
.end method

.method private static final requestSingleLocation$lambda$1(Lexpo/modules/kotlin/Promise;Landroid/location/Location;)Lkotlin/Unit;
    .locals 1

    if-nez p1, :cond_0

    .line 72
    new-instance p1, Lexpo/modules/location/CurrentLocationIsUnavailableException;

    invoke-direct {p1}, Lexpo/modules/location/CurrentLocationIsUnavailableException;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/exception/CodedException;

    invoke-interface {p0, p1}, Lexpo/modules/kotlin/Promise;->reject(Lexpo/modules/kotlin/exception/CodedException;)V

    .line 73
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 76
    :cond_0
    new-instance v0, Lexpo/modules/location/records/LocationResponse;

    invoke-direct {v0, p1}, Lexpo/modules/location/records/LocationResponse;-><init>(Landroid/location/Location;)V

    invoke-interface {p0, v0}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    .line 77
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final requestSingleLocation$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 70
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final requestSingleLocation$lambda$3(Lexpo/modules/kotlin/Promise;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    new-instance v0, Lexpo/modules/location/LocationRequestRejectedException;

    invoke-direct {v0, p1}, Lexpo/modules/location/LocationRequestRejectedException;-><init>(Ljava/lang/Exception;)V

    check-cast v0, Lexpo/modules/kotlin/exception/CodedException;

    invoke-interface {p0, v0}, Lexpo/modules/kotlin/Promise;->reject(Lexpo/modules/kotlin/exception/CodedException;)V

    return-void
.end method

.method private static final requestSingleLocation$lambda$4(Lexpo/modules/kotlin/Promise;)V
    .locals 1

    .line 82
    new-instance v0, Lexpo/modules/location/LocationRequestCancelledException;

    invoke-direct {v0}, Lexpo/modules/location/LocationRequestCancelledException;-><init>()V

    check-cast v0, Lexpo/modules/kotlin/exception/CodedException;

    invoke-interface {p0, v0}, Lexpo/modules/kotlin/Promise;->reject(Lexpo/modules/kotlin/exception/CodedException;)V

    return-void
.end method


# virtual methods
.method public final askForPermissionsWithPermissionsManager$expo_location_release(Lexpo/modules/interfaces/permissions/Permissions;[Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/interfaces/permissions/Permissions;",
            "[",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/os/Bundle;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 173
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 176
    new-instance v2, Lexpo/modules/location/LocationHelpers$Companion$askForPermissionsWithPermissionsManager$2$1;

    invoke-direct {v2, v1}, Lexpo/modules/location/LocationHelpers$Companion$askForPermissionsWithPermissionsManager$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lexpo/modules/kotlin/Promise;

    .line 188
    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 174
    invoke-static {p1, v2, p2}, Lexpo/modules/interfaces/permissions/Permissions;->askForPermissionsWithPermissionsManager(Lexpo/modules/interfaces/permissions/Permissions;Lexpo/modules/kotlin/Promise;[Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1
.end method

.method public final getPermissionsWithPermissionsManager$expo_location_release(Lexpo/modules/interfaces/permissions/Permissions;[Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/interfaces/permissions/Permissions;",
            "[",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/location/records/PermissionRequestResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 152
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 155
    new-instance v2, Lexpo/modules/location/LocationHelpers$Companion$getPermissionsWithPermissionsManager$2$1;

    invoke-direct {v2, v1}, Lexpo/modules/location/LocationHelpers$Companion$getPermissionsWithPermissionsManager$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lexpo/modules/kotlin/Promise;

    .line 166
    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 153
    invoke-static {p1, v2, p2}, Lexpo/modules/interfaces/permissions/Permissions;->getPermissionsWithPermissionsManager(Lexpo/modules/interfaces/permissions/Permissions;Lexpo/modules/kotlin/Promise;[Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1
.end method

.method public final hasNetworkProviderEnabled(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 42
    :cond_0
    const-string v1, "location"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Landroid/location/LocationManager;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/location/LocationManager;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 43
    const-string v1, "network"

    invoke-virtual {p1, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public final isAnyProviderAvailable(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 145
    const-string v1, "location"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    instance-of v1, p1, Landroid/location/LocationManager;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/location/LocationManager;

    :cond_1
    const/4 p1, 0x0

    if-nez v0, :cond_2

    return p1

    .line 147
    :cond_2
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    return p1

    :cond_4
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final isLocationValid$expo_location_release(Landroid/location/Location;Lexpo/modules/location/records/LocationLastKnownOptions;)Z
    .locals 10

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 32
    :cond_0
    invoke-virtual {p2}, Lexpo/modules/location/records/LocationLastKnownOptions;->getMaxAge()Ljava/lang/Double;

    move-result-object v1

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    goto :goto_0

    :cond_1
    move-wide v4, v2

    .line 33
    :goto_0
    invoke-virtual {p2}, Lexpo/modules/location/records/LocationLastKnownOptions;->getRequiredAccuracy()Ljava/lang/Double;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 34
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-double v6, v6

    cmpg-double p2, v6, v4

    if-gtz p2, :cond_3

    .line 35
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    float-to-double p1, p1

    cmpg-double p1, p1, v2

    if-gtz p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method public final prepareCurrentLocationRequest$expo_location_release(Lexpo/modules/location/records/LocationOptions;)Lcom/google/android/gms/location/CurrentLocationRequest;
    .locals 4

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0, p1}, Lexpo/modules/location/LocationHelpers$Companion;->mapOptionsToLocationParams(Lexpo/modules/location/records/LocationOptions;)Lexpo/modules/location/LocationParams;

    move-result-object v0

    .line 60
    new-instance v1, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;-><init>()V

    const/4 v2, 0x0

    .line 61
    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->setGranularity(I)Lcom/google/android/gms/location/CurrentLocationRequest$Builder;

    .line 62
    sget-object v2, Lexpo/modules/location/LocationHelpers;->Companion:Lexpo/modules/location/LocationHelpers$Companion;

    invoke-virtual {p1}, Lexpo/modules/location/records/LocationOptions;->getAccuracy()I

    move-result p1

    invoke-direct {v2, p1}, Lexpo/modules/location/LocationHelpers$Companion;->mapAccuracyToPriority(I)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->setPriority(I)Lcom/google/android/gms/location/CurrentLocationRequest$Builder;

    .line 63
    invoke-virtual {v0}, Lexpo/modules/location/LocationParams;->getInterval()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->setMaxUpdateAgeMillis(J)Lcom/google/android/gms/location/CurrentLocationRequest$Builder;

    .line 64
    invoke-virtual {v1}, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->build()Lcom/google/android/gms/location/CurrentLocationRequest;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final prepareLocationRequest$expo_location_release(Lexpo/modules/location/records/LocationOptions;)Lcom/google/android/gms/location/LocationRequest;
    .locals 4

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p1}, Lexpo/modules/location/LocationHelpers$Companion;->mapOptionsToLocationParams(Lexpo/modules/location/records/LocationOptions;)Lexpo/modules/location/LocationParams;

    move-result-object v0

    .line 49
    new-instance v1, Lcom/google/android/gms/location/LocationRequest$Builder;

    invoke-virtual {v0}, Lexpo/modules/location/LocationParams;->getInterval()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest$Builder;-><init>(J)V

    .line 50
    invoke-virtual {v0}, Lexpo/modules/location/LocationParams;->getInterval()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Lcom/google/android/gms/location/LocationRequest$Builder;

    move-result-object v1

    .line 51
    invoke-virtual {v0}, Lexpo/modules/location/LocationParams;->getInterval()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest$Builder;->setMaxUpdateDelayMillis(J)Lcom/google/android/gms/location/LocationRequest$Builder;

    move-result-object v1

    .line 52
    invoke-virtual {v0}, Lexpo/modules/location/LocationParams;->getDistance()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/location/LocationRequest$Builder;->setMinUpdateDistanceMeters(F)Lcom/google/android/gms/location/LocationRequest$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {p1}, Lexpo/modules/location/records/LocationOptions;->getAccuracy()I

    move-result p1

    invoke-direct {p0, p1}, Lexpo/modules/location/LocationHelpers$Companion;->mapAccuracyToPriority(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/location/LocationRequest$Builder;->setPriority(I)Lcom/google/android/gms/location/LocationRequest$Builder;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationRequest$Builder;->build()Lcom/google/android/gms/location/LocationRequest;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final requestContinuousUpdates(Lexpo/modules/location/LocationModule;Lcom/google/android/gms/location/LocationRequest;ILexpo/modules/kotlin/Promise;)V
    .locals 2

    const-string v0, "locationModule"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 93
    new-instance v1, Lexpo/modules/location/LocationHelpers$Companion$requestContinuousUpdates$1;

    invoke-direct {v1, p1, p3, p4}, Lexpo/modules/location/LocationHelpers$Companion$requestContinuousUpdates$1;-><init>(Lexpo/modules/location/LocationModule;ILexpo/modules/kotlin/Promise;)V

    check-cast v1, Lexpo/modules/location/LocationRequestCallbacks;

    .line 90
    invoke-virtual {p1, p2, v0, v1}, Lexpo/modules/location/LocationModule;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Ljava/lang/Integer;Lexpo/modules/location/LocationRequestCallbacks;)V

    return-void
.end method

.method public final requestSingleLocation(Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/gms/location/CurrentLocationRequest;Lexpo/modules/kotlin/Promise;)V
    .locals 1

    const-string v0, "locationProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 69
    :try_start_0
    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->getCurrentLocation(Lcom/google/android/gms/location/CurrentLocationRequest;Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 70
    new-instance p2, Lexpo/modules/location/LocationHelpers$Companion$$ExternalSyntheticLambda0;

    invoke-direct {p2, p3}, Lexpo/modules/location/LocationHelpers$Companion$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/kotlin/Promise;)V

    new-instance v0, Lexpo/modules/location/LocationHelpers$Companion$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lexpo/modules/location/LocationHelpers$Companion$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 78
    new-instance p2, Lexpo/modules/location/LocationHelpers$Companion$$ExternalSyntheticLambda2;

    invoke-direct {p2, p3}, Lexpo/modules/location/LocationHelpers$Companion$$ExternalSyntheticLambda2;-><init>(Lexpo/modules/kotlin/Promise;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 81
    new-instance p2, Lexpo/modules/location/LocationHelpers$Companion$$ExternalSyntheticLambda3;

    invoke-direct {p2, p3}, Lexpo/modules/location/LocationHelpers$Companion$$ExternalSyntheticLambda3;-><init>(Lexpo/modules/kotlin/Promise;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCanceledListener(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 70
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 85
    new-instance p2, Lexpo/modules/location/LocationRequestRejectedException;

    check-cast p1, Ljava/lang/Exception;

    invoke-direct {p2, p1}, Lexpo/modules/location/LocationRequestRejectedException;-><init>(Ljava/lang/Exception;)V

    check-cast p2, Lexpo/modules/kotlin/exception/CodedException;

    invoke-interface {p3, p2}, Lexpo/modules/kotlin/Promise;->reject(Lexpo/modules/kotlin/exception/CodedException;)V

    return-void
.end method
