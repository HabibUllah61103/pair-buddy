.class public final Lcom/superwall/sdk/store/testmode/TestMode;
.super Ljava/lang/Object;
.source "TestMode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/store/testmode/TestMode$Companion;,
        Lcom/superwall/sdk/store/testmode/TestMode$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTestMode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TestMode.kt\ncom/superwall/sdk/store/testmode/TestMode\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Either.kt\ncom/superwall/sdk/misc/EitherKt\n*L\n1#1,385:1\n1557#2:386\n1628#2,3:387\n774#2:390\n865#2,2:391\n1557#2:393\n1628#2,3:394\n1557#2:397\n1628#2,3:398\n774#2:401\n865#2,2:402\n1557#2:404\n1628#2,3:405\n1557#2:408\n1628#2,3:409\n1368#2:412\n1454#2,2:413\n1557#2:415\n1628#2,3:416\n1456#2,3:419\n774#2:424\n865#2,2:425\n1187#2,2:427\n1261#2,4:429\n1368#2:435\n1454#2,2:436\n1557#2:438\n1628#2,3:439\n1456#2,3:442\n129#3,2:422\n133#3:433\n131#3:434\n*S KotlinDebug\n*F\n+ 1 TestMode.kt\ncom/superwall/sdk/store/testmode/TestMode\n*L\n203#1:386\n203#1:387,3\n213#1:390\n213#1:391,2\n213#1:393\n213#1:394,3\n220#1:397\n220#1:398,3\n251#1:401\n251#1:402,2\n254#1:404\n254#1:405,3\n258#1:408\n258#1:409,3\n269#1:412\n269#1:413,2\n269#1:415\n269#1:416,3\n269#1:419,3\n307#1:424\n307#1:425,2\n313#1:427,2\n313#1:429,4\n357#1:435\n357#1:436,2\n357#1:438\n357#1:439,3\n357#1:442,3\n304#1:422,2\n304#1:433\n304#1:434\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00cc\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 s2\u00020\u0001:\u0001sB\u00cb\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012*\u0008\u0002\u0010\u0006\u001a$\u0008\u0001\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t0\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0007\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\u0010\u0008\u0002\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f\u0012\u0010\u0008\u0002\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000f\u0012\u000e\u0008\u0002\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000f\u0012\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u000f\u0012\u000e\u0008\u0002\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u000f\u0012$\u0008\u0002\u0010\u0017\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001a0\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0018\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ4\u0010G\u001a\u00020\u001a2\u0006\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020\u00152\u0008\u0010K\u001a\u0004\u0018\u00010\u00152\u0008\u0010L\u001a\u0004\u0018\u00010\u00152\u0008\u0008\u0002\u0010M\u001a\u00020NJ\u0008\u0010O\u001a\u00020\u001aH\u0002J$\u0010P\u001a\u00020\u00052\u0006\u0010H\u001a\u00020I2\u0008\u0010K\u001a\u0004\u0018\u00010\u00152\u0008\u0010L\u001a\u0004\u0018\u00010\u0015H\u0002J\u0018\u0010Q\u001a\u00020\u00052\u0006\u0010H\u001a\u00020I2\u0006\u0010R\u001a\u00020\u0015H\u0002J\u0014\u0010S\u001a\u00020\u001a2\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u0002000/J\u001a\u0010T\u001a\u00020\u001a2\u0012\u0010U\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020504J\u0014\u0010V\u001a\u00020\u001a2\u000c\u0010W\u001a\u0008\u0012\u0004\u0012\u00020X0/J\u0014\u0010Y\u001a\u00020\u001a2\u000c\u0010Z\u001a\u0008\u0012\u0004\u0012\u00020=0/J\u0014\u0010Y\u001a\u00020\u001a2\u000c\u0010[\u001a\u0008\u0012\u0004\u0012\u00020\u001509J\u0006\u0010\\\u001a\u00020\u001aJ\u000e\u0010]\u001a\u00020\u001a2\u0006\u0010^\u001a\u00020@J\u000e\u0010_\u001a\u00020\u00052\u0006\u0010`\u001a\u00020\u0005J\u0006\u0010a\u001a\u00020\u001aJ\u0006\u0010b\u001a\u00020DJ\u0010\u0010c\u001a\u00020\u001a2\u0008\u0010d\u001a\u0004\u0018\u00010DJ\u0014\u0010e\u001a\u0008\u0012\u0004\u0012\u00020X0/2\u0006\u0010f\u001a\u000200J\u000c\u0010g\u001a\u0008\u0012\u0004\u0012\u00020\u001509J\u0006\u0010h\u001a\u00020\u001aJ\u0008\u0010i\u001a\u0004\u0018\u00010jJ\u0006\u0010k\u001a\u00020\u001aJ\u001e\u0010l\u001a\u00020\u001a2\u0006\u0010H\u001a\u00020I2\u0006\u0010m\u001a\u00020\u0005H\u0086@\u00a2\u0006\u0002\u0010nJ\u000e\u0010o\u001a\u00020\u001aH\u0082@\u00a2\u0006\u0002\u0010pJ\u0016\u0010q\u001a\u00020\u001a2\u0006\u0010H\u001a\u00020IH\u0082@\u00a2\u0006\u0002\u0010rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R2\u0010\u0006\u001a$\u0008\u0001\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t0\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001dR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R,\u0010\u0017\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001a0\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0018X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001eR\u001e\u0010!\u001a\u00020 2\u0006\u0010\u001f\u001a\u00020 @BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0011\u0010$\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010%R\u0013\u0010&\u001a\u0004\u0018\u00010\'8F\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010)R\u0016\u0010*\u001a\u0004\u0018\u00010+8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010-R\u0017\u0010.\u001a\u0008\u0012\u0004\u0012\u0002000/8F\u00a2\u0006\u0006\u001a\u0004\u00081\u00102R \u00103\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u000205048@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u00086\u00107R\u0017\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u0015098F\u00a2\u0006\u0006\u001a\u0004\u0008:\u0010;R\u0017\u0010<\u001a\u0008\u0012\u0004\u0012\u00020=0/8F\u00a2\u0006\u0006\u001a\u0004\u0008>\u00102R\u0011\u0010?\u001a\u00020@8F\u00a2\u0006\u0006\u001a\u0004\u0008A\u0010BR\u0013\u0010C\u001a\u0004\u0018\u00010D8F\u00a2\u0006\u0006\u001a\u0004\u0008E\u0010F\u00a8\u0006t"
    }
    d2 = {
        "Lcom/superwall/sdk/store/testmode/TestMode;",
        "",
        "storage",
        "Lcom/superwall/sdk/storage/Storage;",
        "isTestEnvironment",
        "",
        "getSuperwallProducts",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "Lcom/superwall/sdk/misc/Either;",
        "Lcom/superwall/sdk/store/testmode/models/SuperwallProductsResponse;",
        "Lcom/superwall/sdk/network/NetworkError;",
        "entitlements",
        "Lcom/superwall/sdk/store/Entitlements;",
        "activityProvider",
        "Lkotlin/Function0;",
        "Lcom/superwall/sdk/misc/ActivityProvider;",
        "activityTracker",
        "Lcom/superwall/sdk/misc/CurrentActivityTracker;",
        "hasExternalPurchaseController",
        "apiKey",
        "",
        "dashboardBaseUrl",
        "track",
        "Lkotlin/Function2;",
        "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;",
        "",
        "<init>",
        "(Lcom/superwall/sdk/storage/Storage;ZLkotlin/jvm/functions/Function1;Lcom/superwall/sdk/store/Entitlements;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V",
        "Lkotlin/jvm/functions/Function1;",
        "Lkotlin/jvm/functions/Function2;",
        "value",
        "Lcom/superwall/sdk/store/testmode/TestModeState;",
        "state",
        "getState",
        "()Lcom/superwall/sdk/store/testmode/TestModeState;",
        "isTestMode",
        "()Z",
        "testModeReason",
        "Lcom/superwall/sdk/store/testmode/TestModeReason;",
        "getTestModeReason",
        "()Lcom/superwall/sdk/store/testmode/TestModeReason;",
        "session",
        "Lcom/superwall/sdk/store/testmode/TestModeSessionData;",
        "getSession",
        "()Lcom/superwall/sdk/store/testmode/TestModeSessionData;",
        "products",
        "",
        "Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;",
        "getProducts",
        "()Ljava/util/List;",
        "testProductsByFullId",
        "",
        "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
        "getTestProductsByFullId$superwall_release",
        "()Ljava/util/Map;",
        "testEntitlementIds",
        "",
        "getTestEntitlementIds",
        "()Ljava/util/Set;",
        "testEntitlementSelections",
        "Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;",
        "getTestEntitlementSelections",
        "freeTrialOverride",
        "Lcom/superwall/sdk/store/testmode/FreeTrialOverride;",
        "getFreeTrialOverride",
        "()Lcom/superwall/sdk/store/testmode/FreeTrialOverride;",
        "overriddenSubscriptionStatus",
        "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
        "getOverriddenSubscriptionStatus",
        "()Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
        "evaluateTestMode",
        "config",
        "Lcom/superwall/sdk/models/config/Config;",
        "bundleId",
        "appUserId",
        "aliasId",
        "testModeBehavior",
        "Lcom/superwall/sdk/store/testmode/TestModeBehavior;",
        "deactivateIfActive",
        "checkConfigMatch",
        "checkPackageNameMismatch",
        "actualPackageName",
        "setProducts",
        "setTestProducts",
        "productsByFullId",
        "fakePurchase",
        "entitlementRefs",
        "Lcom/superwall/sdk/store/testmode/models/SuperwallEntitlementRef;",
        "setEntitlements",
        "selections",
        "ids",
        "resetEntitlements",
        "setFreeTrialOverride",
        "override",
        "shouldShowFreeTrial",
        "hasFreeTrial",
        "clearTestModeState",
        "buildSubscriptionStatus",
        "setOverriddenSubscriptionStatus",
        "status",
        "entitlementsForProduct",
        "product",
        "allEntitlements",
        "saveSettings",
        "loadSettings",
        "Lcom/superwall/sdk/storage/TestModeSettings;",
        "clearSettings",
        "activate",
        "justActivated",
        "(Lcom/superwall/sdk/models/config/Config;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "refreshProducts",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "presentModal",
        "(Lcom/superwall/sdk/models/config/Config;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field public static final Companion:Lcom/superwall/sdk/store/testmode/TestMode$Companion;

.field private static final isTestEnvironment$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final activityProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/superwall/sdk/misc/ActivityProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final activityTracker:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/superwall/sdk/misc/CurrentActivityTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final apiKey:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final dashboardBaseUrl:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final entitlements:Lcom/superwall/sdk/store/Entitlements;

.field private final getSuperwallProducts:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/store/testmode/models/SuperwallProductsResponse;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final hasExternalPurchaseController:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isTestEnvironment:Z

.field private state:Lcom/superwall/sdk/store/testmode/TestModeState;

.field private final storage:Lcom/superwall/sdk/storage/Storage;

.field private final track:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$cMZsJU_FHI1e6DGR9Y0uywoJ2W0()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/store/testmode/TestMode;->_init_$lambda$2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$czPZII_GwbPVhs17q_0i0sH1HEk()Z
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/store/testmode/TestMode;->isTestEnvironment_delegate$lambda$21()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$fw0bUViGDcguqQMjKx-5BOa5GyI()Z
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/store/testmode/TestMode;->_init_$lambda$0()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$ngNR0Y-SCVU8X2oJrImVWjMADiI()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/store/testmode/TestMode;->_init_$lambda$1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/store/testmode/TestMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/store/testmode/TestMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/store/testmode/TestMode;->Companion:Lcom/superwall/sdk/store/testmode/TestMode$Companion;

    .line 59
    new-instance v0, Lcom/superwall/sdk/store/testmode/TestMode$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/superwall/sdk/store/testmode/TestMode$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/store/testmode/TestMode;->isTestEnvironment$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Lcom/superwall/sdk/storage/Storage;ZLkotlin/jvm/functions/Function1;Lcom/superwall/sdk/store/Entitlements;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/storage/Storage;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/store/testmode/models/SuperwallProductsResponse;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/superwall/sdk/store/Entitlements;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lcom/superwall/sdk/misc/ActivityProvider;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/superwall/sdk/misc/CurrentActivityTracker;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "storage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getSuperwallProducts"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityTracker"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hasExternalPurchaseController"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiKey"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dashboardBaseUrl"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "track"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestMode;->storage:Lcom/superwall/sdk/storage/Storage;

    .line 43
    iput-boolean p2, p0, Lcom/superwall/sdk/store/testmode/TestMode;->isTestEnvironment:Z

    .line 47
    iput-object p3, p0, Lcom/superwall/sdk/store/testmode/TestMode;->getSuperwallProducts:Lkotlin/jvm/functions/Function1;

    .line 50
    iput-object p4, p0, Lcom/superwall/sdk/store/testmode/TestMode;->entitlements:Lcom/superwall/sdk/store/Entitlements;

    .line 51
    iput-object p5, p0, Lcom/superwall/sdk/store/testmode/TestMode;->activityProvider:Lkotlin/jvm/functions/Function0;

    .line 52
    iput-object p6, p0, Lcom/superwall/sdk/store/testmode/TestMode;->activityTracker:Lkotlin/jvm/functions/Function0;

    .line 53
    iput-object p7, p0, Lcom/superwall/sdk/store/testmode/TestMode;->hasExternalPurchaseController:Lkotlin/jvm/functions/Function0;

    .line 54
    iput-object p8, p0, Lcom/superwall/sdk/store/testmode/TestMode;->apiKey:Lkotlin/jvm/functions/Function0;

    .line 55
    iput-object p9, p0, Lcom/superwall/sdk/store/testmode/TestMode;->dashboardBaseUrl:Lkotlin/jvm/functions/Function0;

    .line 56
    iput-object p10, p0, Lcom/superwall/sdk/store/testmode/TestMode;->track:Lkotlin/jvm/functions/Function2;

    .line 79
    sget-object p1, Lcom/superwall/sdk/store/testmode/TestModeState$Inactive;->INSTANCE:Lcom/superwall/sdk/store/testmode/TestModeState$Inactive;

    check-cast p1, Lcom/superwall/sdk/store/testmode/TestModeState;

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestMode;->state:Lcom/superwall/sdk/store/testmode/TestModeState;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/superwall/sdk/storage/Storage;ZLkotlin/jvm/functions/Function1;Lcom/superwall/sdk/store/Entitlements;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 43
    sget-object v1, Lcom/superwall/sdk/store/testmode/TestMode;->Companion:Lcom/superwall/sdk/store/testmode/TestMode$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/store/testmode/TestMode$Companion;->isTestEnvironment()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 47
    new-instance v2, Lcom/superwall/sdk/store/testmode/TestMode$1;

    invoke-direct {v2, v3}, Lcom/superwall/sdk/store/testmode/TestMode$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    goto :goto_1

    :cond_1
    move-object v2, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_2

    move-object v4, v3

    goto :goto_2

    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_3

    .line 51
    sget-object v5, Lcom/superwall/sdk/store/testmode/TestMode$2;->INSTANCE:Lcom/superwall/sdk/store/testmode/TestMode$2;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    goto :goto_3

    :cond_3
    move-object v5, p5

    :goto_3
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_4

    .line 52
    sget-object v6, Lcom/superwall/sdk/store/testmode/TestMode$3;->INSTANCE:Lcom/superwall/sdk/store/testmode/TestMode$3;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p6

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_5

    .line 53
    new-instance v7, Lcom/superwall/sdk/store/testmode/TestMode$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/superwall/sdk/store/testmode/TestMode$$ExternalSyntheticLambda0;-><init>()V

    goto :goto_5

    :cond_5
    move-object/from16 v7, p7

    :goto_5
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_6

    .line 54
    new-instance v8, Lcom/superwall/sdk/store/testmode/TestMode$$ExternalSyntheticLambda1;

    invoke-direct {v8}, Lcom/superwall/sdk/store/testmode/TestMode$$ExternalSyntheticLambda1;-><init>()V

    goto :goto_6

    :cond_6
    move-object/from16 v8, p8

    :goto_6
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_7

    .line 55
    new-instance v9, Lcom/superwall/sdk/store/testmode/TestMode$$ExternalSyntheticLambda2;

    invoke-direct {v9}, Lcom/superwall/sdk/store/testmode/TestMode$$ExternalSyntheticLambda2;-><init>()V

    goto :goto_7

    :cond_7
    move-object/from16 v9, p9

    :goto_7
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    .line 56
    new-instance v0, Lcom/superwall/sdk/store/testmode/TestMode$7;

    invoke-direct {v0, v3}, Lcom/superwall/sdk/store/testmode/TestMode$7;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 p12, v0

    goto :goto_8

    :cond_8
    move-object/from16 p12, p10

    :goto_8
    move-object p2, p0

    move-object p3, p1

    move p4, v1

    move-object p5, v2

    move-object/from16 p6, v4

    move-object/from16 p7, v5

    move-object/from16 p8, v6

    move-object/from16 p9, v7

    move-object/from16 p10, v8

    move-object/from16 p11, v9

    .line 41
    invoke-direct/range {p2 .. p12}, Lcom/superwall/sdk/store/testmode/TestMode;-><init>(Lcom/superwall/sdk/storage/Storage;ZLkotlin/jvm/functions/Function1;Lcom/superwall/sdk/store/Entitlements;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private static final _init_$lambda$0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static final _init_$lambda$1()Ljava/lang/String;
    .locals 1

    .line 54
    const-string v0, ""

    return-object v0
.end method

.method private static final _init_$lambda$2()Ljava/lang/String;
    .locals 1

    .line 55
    const-string v0, ""

    return-object v0
.end method

.method public static final synthetic access$isTestEnvironment$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 41
    sget-object v0, Lcom/superwall/sdk/store/testmode/TestMode;->isTestEnvironment$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$presentModal(Lcom/superwall/sdk/store/testmode/TestMode;Lcom/superwall/sdk/models/config/Config;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/store/testmode/TestMode;->presentModal(Lcom/superwall/sdk/models/config/Config;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$refreshProducts(Lcom/superwall/sdk/store/testmode/TestMode;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/superwall/sdk/store/testmode/TestMode;->refreshProducts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final checkConfigMatch(Lcom/superwall/sdk/models/config/Config;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    .line 148
    invoke-virtual {p1}, Lcom/superwall/sdk/models/config/Config;->getTestModeUserIds()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 149
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/superwall/sdk/store/testmode/models/TestStoreUser;

    .line 151
    invoke-virtual {v1}, Lcom/superwall/sdk/store/testmode/models/TestStoreUser;->getType()Lcom/superwall/sdk/store/testmode/models/TestStoreUserType;

    move-result-object v2

    sget-object v3, Lcom/superwall/sdk/store/testmode/TestMode$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v2}, Lcom/superwall/sdk/store/testmode/models/TestStoreUserType;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_2

    .line 153
    invoke-virtual {v1}, Lcom/superwall/sdk/store/testmode/models/TestStoreUser;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, p3

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 151
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_3
    move-object/from16 v5, p3

    .line 152
    invoke-virtual {v1}, Lcom/superwall/sdk/store/testmode/models/TestStoreUser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_1

    .line 156
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestModeState$Active;

    new-instance v0, Lcom/superwall/sdk/store/testmode/TestModeReason$ConfigMatch;

    invoke-virtual {v1}, Lcom/superwall/sdk/store/testmode/models/TestStoreUser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/superwall/sdk/store/testmode/TestModeReason$ConfigMatch;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/superwall/sdk/store/testmode/TestModeReason;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v3, v1}, Lcom/superwall/sdk/store/testmode/TestModeState$Active;-><init>(Lcom/superwall/sdk/store/testmode/TestModeReason;Lcom/superwall/sdk/store/testmode/TestModeSessionData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/superwall/sdk/store/testmode/TestModeState;

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestMode;->state:Lcom/superwall/sdk/store/testmode/TestModeState;

    .line 157
    sget-object v5, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 158
    sget-object v6, Lcom/superwall/sdk/logger/LogLevel;->info:Lcom/superwall/sdk/logger/LogLevel;

    .line 159
    sget-object v7, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    .line 160
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestMode;->getTestModeReason()Lcom/superwall/sdk/store/testmode/TestModeReason;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/superwall/sdk/store/testmode/TestModeReason;->getDescription()Ljava/lang/String;

    move-result-object v1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Test mode activated: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x18

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 157
    invoke-static/range {v5 .. v12}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return v4

    :cond_5
    return v0
.end method

.method private final checkPackageNameMismatch(Lcom/superwall/sdk/models/config/Config;Ljava/lang/String;)Z
    .locals 12

    .line 172
    invoke-virtual {p1}, Lcom/superwall/sdk/models/config/Config;->getBundleIdConfig()Ljava/lang/String;

    move-result-object p1

    .line 173
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 176
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 179
    :cond_2
    new-instance v0, Lcom/superwall/sdk/store/testmode/TestModeState$Active;

    .line 181
    new-instance v1, Lcom/superwall/sdk/store/testmode/TestModeReason$ApplicationIdMismatch;

    invoke-direct {v1, p1, p2}, Lcom/superwall/sdk/store/testmode/TestModeReason$ApplicationIdMismatch;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lcom/superwall/sdk/store/testmode/TestModeReason;

    .line 179
    invoke-direct {v0, v1, v3, v2, v3}, Lcom/superwall/sdk/store/testmode/TestModeState$Active;-><init>(Lcom/superwall/sdk/store/testmode/TestModeReason;Lcom/superwall/sdk/store/testmode/TestModeSessionData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/superwall/sdk/store/testmode/TestModeState;

    .line 178
    iput-object v0, p0, Lcom/superwall/sdk/store/testmode/TestMode;->state:Lcom/superwall/sdk/store/testmode/TestModeState;

    .line 186
    sget-object v4, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 187
    sget-object v5, Lcom/superwall/sdk/logger/LogLevel;->info:Lcom/superwall/sdk/logger/LogLevel;

    .line 188
    sget-object v6, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    .line 189
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestMode;->getTestModeReason()Lcom/superwall/sdk/store/testmode/TestModeReason;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/superwall/sdk/store/testmode/TestModeReason;->getDescription()Ljava/lang/String;

    move-result-object v3

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Test mode activated: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x18

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 186
    invoke-static/range {v4 .. v11}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method private final deactivateIfActive()V
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestMode;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestMode;->clearTestModeState()V

    :cond_0
    return-void
.end method

.method public static synthetic evaluateTestMode$default(Lcom/superwall/sdk/store/testmode/TestMode;Lcom/superwall/sdk/models/config/Config;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/store/testmode/TestModeBehavior;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    .line 100
    sget-object p5, Lcom/superwall/sdk/store/testmode/TestModeBehavior;->AUTOMATIC:Lcom/superwall/sdk/store/testmode/TestModeBehavior;

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 95
    invoke-virtual/range {v0 .. v5}, Lcom/superwall/sdk/store/testmode/TestMode;->evaluateTestMode(Lcom/superwall/sdk/models/config/Config;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/store/testmode/TestModeBehavior;)V

    return-void
.end method

.method private final getSession()Lcom/superwall/sdk/store/testmode/TestModeSessionData;
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestMode;->state:Lcom/superwall/sdk/store/testmode/TestModeState;

    instance-of v1, v0, Lcom/superwall/sdk/store/testmode/TestModeState$Active;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/superwall/sdk/store/testmode/TestModeState$Active;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/TestModeState$Active;->getSession()Lcom/superwall/sdk/store/testmode/TestModeSessionData;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v2
.end method

.method private static final isTestEnvironment_delegate$lambda$21()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 62
    const-string v2, "org.junit.Test"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 63
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 61
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 64
    :goto_0
    invoke-static {v2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v2, v4

    :cond_0
    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 61
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-nez v2, :cond_7

    .line 65
    :try_start_2
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 66
    const-string v2, "androidx.test.espresso.Espresso"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 67
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 65
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_3
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 68
    :goto_2
    invoke-static {v2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v2, v4

    :cond_2
    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    .line 65
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    if-nez v2, :cond_7

    .line 69
    :try_start_4
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 70
    const-string v2, "android.support.test.espresso.Espresso"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 71
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 69
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v2

    :try_start_5
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 72
    :goto_4
    invoke-static {v2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_5

    :cond_4
    move-object v4, v2

    :goto_5
    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_5

    .line 69
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_6

    :cond_5
    move v2, v1

    :goto_6
    if-eqz v2, :cond_6

    goto :goto_7

    :cond_6
    move v0, v1

    :cond_7
    :goto_7
    move v1, v0

    :catch_0
    return v1
.end method

.method private final presentModal(Lcom/superwall/sdk/models/config/Config;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/config/Config;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/superwall/sdk/store/testmode/TestMode$presentModal$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/superwall/sdk/store/testmode/TestMode$presentModal$1;

    iget v3, v2, Lcom/superwall/sdk/store/testmode/TestMode$presentModal$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/superwall/sdk/store/testmode/TestMode$presentModal$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/superwall/sdk/store/testmode/TestMode$presentModal$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/superwall/sdk/store/testmode/TestMode$presentModal$1;

    invoke-direct {v2, v0, v1}, Lcom/superwall/sdk/store/testmode/TestMode$presentModal$1;-><init>(Lcom/superwall/sdk/store/testmode/TestMode;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v11, v2

    iget-object v1, v11, Lcom/superwall/sdk/store/testmode/TestMode$presentModal$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 335
    iget v3, v11, Lcom/superwall/sdk/store/testmode/TestMode$presentModal$1;->label:I

    const/16 v4, 0xa

    const/4 v12, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v13, 0x0

    if-eqz v3, :cond_5

    if-eq v3, v7, :cond_4

    if-eq v3, v6, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v12, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v3, v11, Lcom/superwall/sdk/store/testmode/TestMode$presentModal$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/store/testmode/TestMode;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_3
    iget-object v3, v11, Lcom/superwall/sdk/store/testmode/TestMode$presentModal$1;->L$2:Ljava/lang/Object;

    check-cast v3, Landroid/app/Activity;

    iget-object v6, v11, Lcom/superwall/sdk/store/testmode/TestMode$presentModal$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/superwall/sdk/models/config/Config;

    iget-object v7, v11, Lcom/superwall/sdk/store/testmode/TestMode$presentModal$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/superwall/sdk/store/testmode/TestMode;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :goto_1
    move-object v1, v7

    goto/16 :goto_6

    :cond_4
    iget-object v3, v11, Lcom/superwall/sdk/store/testmode/TestMode$presentModal$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/models/config/Config;

    iget-object v7, v11, Lcom/superwall/sdk/store/testmode/TestMode$presentModal$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/superwall/sdk/store/testmode/TestMode;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 337
    iget-object v1, v0, Lcom/superwall/sdk/store/testmode/TestMode;->activityTracker:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/superwall/sdk/misc/CurrentActivityTracker;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/superwall/sdk/misc/CurrentActivityTracker;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    move-object/from16 v3, p1

    move-object v7, v0

    goto :goto_5

    .line 338
    :cond_7
    :goto_2
    iget-object v1, v0, Lcom/superwall/sdk/store/testmode/TestMode;->activityProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/superwall/sdk/misc/ActivityProvider;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/superwall/sdk/misc/ActivityProvider;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    goto :goto_3

    :cond_8
    move-object v1, v13

    :goto_3
    if-nez v1, :cond_6

    .line 339
    iget-object v1, v0, Lcom/superwall/sdk/store/testmode/TestMode;->activityTracker:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/superwall/sdk/misc/CurrentActivityTracker;

    if-eqz v1, :cond_a

    sget-object v3, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v3, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v4, v3}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v8

    iput-object v0, v11, Lcom/superwall/sdk/store/testmode/TestMode$presentModal$1;->L$0:Ljava/lang/Object;

    move-object/from16 v3, p1

    iput-object v3, v11, Lcom/superwall/sdk/store/testmode/TestMode$presentModal$1;->L$1:Ljava/lang/Object;

    iput v7, v11, Lcom/superwall/sdk/store/testmode/TestMode$presentModal$1;->label:I

    invoke-virtual {v1, v8, v9, v11}, Lcom/superwall/sdk/misc/CurrentActivityTracker;->awaitActivity-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_9

    goto/16 :goto_b

    :cond_9
    move-object v7, v0

    :goto_4
    check-cast v1, Landroid/app/Activity;

    goto :goto_5

    :cond_a
    move-object/from16 v3, p1

    move-object v7, v0

    move-object v1, v13

    :goto_5
    if-nez v1, :cond_c

    .line 341
    sget-object v14, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 342
    sget-object v15, Lcom/superwall/sdk/logger/LogLevel;->warn:Lcom/superwall/sdk/logger/LogLevel;

    .line 343
    sget-object v16, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    const/16 v20, 0x18

    const/16 v21, 0x0

    .line 341
    const-string v17, "Test mode modal could not be presented: no activity available. Setting default subscription status."

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v14 .. v21}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 346
    invoke-virtual {v7}, Lcom/superwall/sdk/store/testmode/TestMode;->buildSubscriptionStatus()Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    move-result-object v1

    .line 347
    invoke-virtual {v7, v1}, Lcom/superwall/sdk/store/testmode/TestMode;->setOverriddenSubscriptionStatus(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V

    .line 348
    iget-object v2, v7, Lcom/superwall/sdk/store/testmode/TestMode;->entitlements:Lcom/superwall/sdk/store/Entitlements;

    if-eqz v2, :cond_b

    invoke-virtual {v2, v1}, Lcom/superwall/sdk/store/Entitlements;->setSubscriptionStatus(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V

    .line 349
    :cond_b
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 352
    :cond_c
    iget-object v8, v7, Lcom/superwall/sdk/store/testmode/TestMode;->track:Lkotlin/jvm/functions/Function2;

    new-instance v9, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$TestModeModal;

    sget-object v10, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$TestModeModal$State;->Open:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$TestModeModal$State;

    invoke-direct {v9, v10}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$TestModeModal;-><init>(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$TestModeModal$State;)V

    iput-object v7, v11, Lcom/superwall/sdk/store/testmode/TestMode$presentModal$1;->L$0:Ljava/lang/Object;

    iput-object v3, v11, Lcom/superwall/sdk/store/testmode/TestMode$presentModal$1;->L$1:Ljava/lang/Object;

    iput-object v1, v11, Lcom/superwall/sdk/store/testmode/TestMode$presentModal$1;->L$2:Ljava/lang/Object;

    iput v6, v11, Lcom/superwall/sdk/store/testmode/TestMode$presentModal$1;->label:I

    invoke-interface {v8, v9, v11}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_d

    goto/16 :goto_b

    :cond_d
    move-object v6, v3

    move-object v3, v1

    goto/16 :goto_1

    .line 354
    :goto_6
    invoke-virtual {v1}, Lcom/superwall/sdk/store/testmode/TestMode;->getTestModeReason()Lcom/superwall/sdk/store/testmode/TestModeReason;

    move-result-object v7

    if-eqz v7, :cond_e

    invoke-virtual {v7}, Lcom/superwall/sdk/store/testmode/TestModeReason;->getDescription()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_f

    :cond_e
    const-string v7, "Test mode activated"

    .line 356
    :cond_f
    invoke-virtual {v6}, Lcom/superwall/sdk/models/config/Config;->getProductsV3()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_12

    check-cast v6, Ljava/lang/Iterable;

    .line 435
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/Collection;

    .line 436
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 437
    check-cast v9, Lcom/superwall/sdk/models/product/CrossplatformProduct;

    .line 357
    invoke-virtual {v9}, Lcom/superwall/sdk/models/product/CrossplatformProduct;->getEntitlements()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    .line 438
    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v9, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v10, v14}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v10, Ljava/util/Collection;

    .line 439
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 440
    check-cast v14, Lcom/superwall/sdk/models/entitlements/Entitlement;

    .line 357
    invoke-virtual {v14}, Lcom/superwall/sdk/models/entitlements/Entitlement;->getId()Ljava/lang/String;

    move-result-object v14

    .line 440
    invoke-interface {v10, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 441
    :cond_10
    check-cast v10, Ljava/util/List;

    .line 438
    check-cast v10, Ljava/lang/Iterable;

    .line 442
    invoke-static {v8, v10}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_7

    .line 444
    :cond_11
    check-cast v8, Ljava/util/List;

    .line 356
    check-cast v8, Ljava/lang/Iterable;

    .line 358
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 356
    check-cast v4, Ljava/lang/Iterable;

    .line 359
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_12

    goto :goto_9

    .line 360
    :cond_12
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 362
    :goto_9
    invoke-virtual {v1}, Lcom/superwall/sdk/store/testmode/TestMode;->loadSettings()Lcom/superwall/sdk/storage/TestModeSettings;

    move-result-object v10

    move-object v6, v7

    move-object v7, v4

    move-object v4, v3

    .line 365
    sget-object v3, Lcom/superwall/sdk/store/testmode/ui/TestModeModal;->INSTANCE:Lcom/superwall/sdk/store/testmode/ui/TestModeModal;

    .line 368
    iget-object v8, v1, Lcom/superwall/sdk/store/testmode/TestMode;->hasExternalPurchaseController:Lkotlin/jvm/functions/Function0;

    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 370
    iget-object v9, v1, Lcom/superwall/sdk/store/testmode/TestMode;->apiKey:Lkotlin/jvm/functions/Function0;

    invoke-interface {v9}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 371
    iget-object v14, v1, Lcom/superwall/sdk/store/testmode/TestMode;->dashboardBaseUrl:Lkotlin/jvm/functions/Function0;

    invoke-interface {v14}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 365
    iput-object v1, v11, Lcom/superwall/sdk/store/testmode/TestMode$presentModal$1;->L$0:Ljava/lang/Object;

    iput-object v13, v11, Lcom/superwall/sdk/store/testmode/TestMode$presentModal$1;->L$1:Ljava/lang/Object;

    iput-object v13, v11, Lcom/superwall/sdk/store/testmode/TestMode$presentModal$1;->L$2:Ljava/lang/Object;

    iput v5, v11, Lcom/superwall/sdk/store/testmode/TestMode$presentModal$1;->label:I

    move-object v5, v6

    move v6, v8

    move-object v8, v9

    move-object v9, v14

    invoke-virtual/range {v3 .. v11}, Lcom/superwall/sdk/store/testmode/ui/TestModeModal;->show(Landroid/app/Activity;Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/storage/TestModeSettings;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_13

    goto :goto_b

    :cond_13
    move-object/from16 v22, v3

    move-object v3, v1

    move-object/from16 v1, v22

    .line 335
    :goto_a
    check-cast v1, Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;

    .line 375
    invoke-virtual {v1}, Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;->getFreeTrialOverride()Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/superwall/sdk/store/testmode/TestMode;->setFreeTrialOverride(Lcom/superwall/sdk/store/testmode/FreeTrialOverride;)V

    .line 376
    invoke-virtual {v1}, Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;->getEntitlements()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/superwall/sdk/store/testmode/TestMode;->setEntitlements(Ljava/util/List;)V

    .line 377
    invoke-virtual {v3}, Lcom/superwall/sdk/store/testmode/TestMode;->saveSettings()V

    .line 378
    invoke-virtual {v3}, Lcom/superwall/sdk/store/testmode/TestMode;->buildSubscriptionStatus()Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    move-result-object v1

    .line 379
    invoke-virtual {v3, v1}, Lcom/superwall/sdk/store/testmode/TestMode;->setOverriddenSubscriptionStatus(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V

    .line 380
    iget-object v4, v3, Lcom/superwall/sdk/store/testmode/TestMode;->entitlements:Lcom/superwall/sdk/store/Entitlements;

    if-eqz v4, :cond_14

    invoke-virtual {v4, v1}, Lcom/superwall/sdk/store/Entitlements;->setSubscriptionStatus(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V

    .line 382
    :cond_14
    iget-object v1, v3, Lcom/superwall/sdk/store/testmode/TestMode;->track:Lkotlin/jvm/functions/Function2;

    new-instance v3, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$TestModeModal;

    sget-object v4, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$TestModeModal$State;->Close:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$TestModeModal$State;

    invoke-direct {v3, v4}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$TestModeModal;-><init>(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$TestModeModal$State;)V

    iput-object v13, v11, Lcom/superwall/sdk/store/testmode/TestMode$presentModal$1;->L$0:Ljava/lang/Object;

    iput v12, v11, Lcom/superwall/sdk/store/testmode/TestMode$presentModal$1;->label:I

    invoke-interface {v1, v3, v11}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_15

    :goto_b
    return-object v2

    .line 383
    :cond_15
    :goto_c
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method private final refreshProducts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/superwall/sdk/store/testmode/TestMode$refreshProducts$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/store/testmode/TestMode$refreshProducts$1;

    iget v1, v0, Lcom/superwall/sdk/store/testmode/TestMode$refreshProducts$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/superwall/sdk/store/testmode/TestMode$refreshProducts$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/superwall/sdk/store/testmode/TestMode$refreshProducts$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/store/testmode/TestMode$refreshProducts$1;

    invoke-direct {v0, p0, p1}, Lcom/superwall/sdk/store/testmode/TestMode$refreshProducts$1;-><init>(Lcom/superwall/sdk/store/testmode/TestMode;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/superwall/sdk/store/testmode/TestMode$refreshProducts$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 303
    iget v2, v0, Lcom/superwall/sdk/store/testmode/TestMode$refreshProducts$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lcom/superwall/sdk/store/testmode/TestMode$refreshProducts$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/superwall/sdk/store/testmode/TestMode;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 304
    iget-object p1, p0, Lcom/superwall/sdk/store/testmode/TestMode;->getSuperwallProducts:Lkotlin/jvm/functions/Function1;

    iput-object p0, v0, Lcom/superwall/sdk/store/testmode/TestMode$refreshProducts$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/store/testmode/TestMode$refreshProducts$1;->label:I

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v1, p0

    .line 303
    :goto_1
    check-cast p1, Lcom/superwall/sdk/misc/Either;

    .line 423
    instance-of v2, p1, Lcom/superwall/sdk/misc/Either$Success;

    if-eqz v2, :cond_7

    check-cast p1, Lcom/superwall/sdk/misc/Either$Success;

    invoke-virtual {p1}, Lcom/superwall/sdk/misc/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast v0, Lkotlin/coroutines/Continuation;

    check-cast p1, Lcom/superwall/sdk/store/testmode/models/SuperwallProductsResponse;

    .line 307
    invoke-virtual {p1}, Lcom/superwall/sdk/store/testmode/models/SuperwallProductsResponse;->getData()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 425
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;

    .line 308
    invoke-virtual {v3}, Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;->getPlatform()Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;

    move-result-object v4

    sget-object v5, Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;->ANDROID:Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;

    if-ne v4, v5, :cond_4

    invoke-virtual {v3}, Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;->getPrice()Lcom/superwall/sdk/store/testmode/models/SuperwallProductPrice;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 425
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 426
    :cond_5
    check-cast v0, Ljava/util/List;

    .line 310
    invoke-virtual {v1, v0}, Lcom/superwall/sdk/store/testmode/TestMode;->setProducts(Ljava/util/List;)V

    .line 313
    move-object p1, v0

    check-cast p1, Ljava/lang/Iterable;

    const/16 v2, 0xa

    .line 427
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    .line 428
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    .line 429
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 430
    check-cast v2, Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;

    .line 314
    new-instance v4, Lcom/superwall/sdk/store/testmode/TestStoreProduct;

    invoke-direct {v4, v2}, Lcom/superwall/sdk/store/testmode/TestStoreProduct;-><init>(Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;)V

    .line 315
    invoke-virtual {v2}, Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    check-cast v4, Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

    invoke-direct {v5, v4}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;-><init>(Lcom/superwall/sdk/store/abstractions/product/StoreProductType;)V

    invoke-static {v2, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 430
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 317
    :cond_6
    invoke-virtual {v1, v3}, Lcom/superwall/sdk/store/testmode/TestMode;->setTestProducts(Ljava/util/Map;)V

    .line 319
    sget-object v5, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 320
    sget-object v6, Lcom/superwall/sdk/logger/LogLevel;->info:Lcom/superwall/sdk/logger/LogLevel;

    .line 321
    sget-object v7, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    .line 322
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Test mode: loaded "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " products"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x18

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 319
    invoke-static/range {v5 .. v12}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_4

    .line 434
    :cond_7
    instance-of v1, p1, Lcom/superwall/sdk/misc/Either$Failure;

    if-eqz v1, :cond_8

    check-cast p1, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-virtual {p1}, Lcom/superwall/sdk/misc/Either$Failure;->getError()Ljava/lang/Throwable;

    move-result-object p1

    check-cast v0, Lkotlin/coroutines/Continuation;

    check-cast p1, Lcom/superwall/sdk/network/NetworkError;

    .line 326
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 327
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 328
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    .line 329
    invoke-virtual {p1}, Lcom/superwall/sdk/network/NetworkError;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Test mode: failed to fetch products - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 326
    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 422
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_8
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final activate(Lcom/superwall/sdk/models/config/Config;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/config/Config;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/superwall/sdk/store/testmode/TestMode$activate$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/superwall/sdk/store/testmode/TestMode$activate$1;

    iget v1, v0, Lcom/superwall/sdk/store/testmode/TestMode$activate$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/superwall/sdk/store/testmode/TestMode$activate$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/superwall/sdk/store/testmode/TestMode$activate$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/store/testmode/TestMode$activate$1;

    invoke-direct {v0, p0, p3}, Lcom/superwall/sdk/store/testmode/TestMode$activate$1;-><init>(Lcom/superwall/sdk/store/testmode/TestMode;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/superwall/sdk/store/testmode/TestMode$activate$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 293
    iget v2, v0, Lcom/superwall/sdk/store/testmode/TestMode$activate$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-boolean p2, v0, Lcom/superwall/sdk/store/testmode/TestMode$activate$1;->Z$0:Z

    iget-object p1, v0, Lcom/superwall/sdk/store/testmode/TestMode$activate$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/models/config/Config;

    iget-object v2, v0, Lcom/superwall/sdk/store/testmode/TestMode$activate$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/store/testmode/TestMode;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 297
    iput-object p0, v0, Lcom/superwall/sdk/store/testmode/TestMode$activate$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/superwall/sdk/store/testmode/TestMode$activate$1;->L$1:Ljava/lang/Object;

    iput-boolean p2, v0, Lcom/superwall/sdk/store/testmode/TestMode$activate$1;->Z$0:Z

    iput v4, v0, Lcom/superwall/sdk/store/testmode/TestMode$activate$1;->label:I

    invoke-direct {p0, v0}, Lcom/superwall/sdk/store/testmode/TestMode;->refreshProducts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, p0

    :goto_1
    if-eqz p2, :cond_6

    const/4 p2, 0x0

    .line 299
    iput-object p2, v0, Lcom/superwall/sdk/store/testmode/TestMode$activate$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/superwall/sdk/store/testmode/TestMode$activate$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/store/testmode/TestMode$activate$1;->label:I

    invoke-direct {v2, p1, v0}, Lcom/superwall/sdk/store/testmode/TestMode;->presentModal(Lcom/superwall/sdk/models/config/Config;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    .line 301
    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final allEntitlements()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 269
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestMode;->getProducts()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 412
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 413
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 414
    check-cast v2, Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;

    .line 269
    invoke-virtual {v2}, Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;->getEntitlements()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 415
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 416
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 417
    check-cast v4, Lcom/superwall/sdk/store/testmode/models/SuperwallEntitlementRef;

    .line 269
    invoke-virtual {v4}, Lcom/superwall/sdk/store/testmode/models/SuperwallEntitlementRef;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 417
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 418
    :cond_0
    check-cast v3, Ljava/util/List;

    .line 415
    check-cast v3, Ljava/lang/Iterable;

    .line 419
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 421
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 412
    check-cast v1, Ljava/lang/Iterable;

    .line 269
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final buildSubscriptionStatus()Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;
    .locals 4

    .line 248
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestMode;->getTestEntitlementIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    sget-object v0, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Inactive;->INSTANCE:Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Inactive;

    check-cast v0, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    return-object v0

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestMode;->getTestEntitlementSelections()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 401
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 402
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;

    .line 251
    invoke-virtual {v3}, Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;->getState()Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 402
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 403
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 252
    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/16 v2, 0xa

    if-nez v0, :cond_4

    .line 254
    check-cast v1, Ljava/lang/Iterable;

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 405
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 406
    check-cast v2, Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;

    .line 254
    invoke-virtual {v2}, Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;->toEntitlement()Lcom/superwall/sdk/models/entitlements/Entitlement;

    move-result-object v2

    .line 406
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 407
    :cond_3
    check-cast v0, Ljava/util/List;

    .line 404
    check-cast v0, Ljava/lang/Iterable;

    .line 254
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 253
    new-instance v1, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;-><init>(Ljava/util/Set;)V

    check-cast v1, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    return-object v1

    .line 258
    :cond_4
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestMode;->getTestEntitlementIds()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 408
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 409
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 410
    check-cast v2, Ljava/lang/String;

    .line 258
    new-instance v3, Lcom/superwall/sdk/models/entitlements/Entitlement;

    invoke-direct {v3, v2}, Lcom/superwall/sdk/models/entitlements/Entitlement;-><init>(Ljava/lang/String;)V

    .line 410
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 411
    :cond_5
    check-cast v1, Ljava/util/List;

    .line 408
    check-cast v1, Ljava/lang/Iterable;

    .line 258
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 257
    new-instance v1, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;-><init>(Ljava/util/Set;)V

    check-cast v1, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    return-object v1
.end method

.method public final clearSettings()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestMode;->storage:Lcom/superwall/sdk/storage/Storage;

    sget-object v1, Lcom/superwall/sdk/storage/StoredTestModeSettings;->INSTANCE:Lcom/superwall/sdk/storage/StoredTestModeSettings;

    check-cast v1, Lcom/superwall/sdk/storage/Storable;

    invoke-interface {v0, v1}, Lcom/superwall/sdk/storage/Storage;->delete(Lcom/superwall/sdk/storage/Storable;)V

    return-void
.end method

.method public final clearTestModeState()V
    .locals 2

    .line 242
    sget-object v0, Lcom/superwall/sdk/store/testmode/TestModeState$Inactive;->INSTANCE:Lcom/superwall/sdk/store/testmode/TestModeState$Inactive;

    check-cast v0, Lcom/superwall/sdk/store/testmode/TestModeState;

    iput-object v0, p0, Lcom/superwall/sdk/store/testmode/TestMode;->state:Lcom/superwall/sdk/store/testmode/TestModeState;

    .line 243
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestMode;->storage:Lcom/superwall/sdk/storage/Storage;

    sget-object v1, Lcom/superwall/sdk/storage/IsTestModeActiveSubscription;->INSTANCE:Lcom/superwall/sdk/storage/IsTestModeActiveSubscription;

    check-cast v1, Lcom/superwall/sdk/storage/Storable;

    invoke-interface {v0, v1}, Lcom/superwall/sdk/storage/Storage;->delete(Lcom/superwall/sdk/storage/Storable;)V

    .line 244
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestMode;->clearSettings()V

    return-void
.end method

.method public final entitlementsForProduct(Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;",
            ")",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/testmode/models/SuperwallEntitlementRef;",
            ">;"
        }
    .end annotation

    const-string v0, "product"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p1}, Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;->getEntitlements()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final evaluateTestMode(Lcom/superwall/sdk/models/config/Config;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/store/testmode/TestModeBehavior;)V
    .locals 8

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bundleId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "testModeBehavior"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/superwall/sdk/store/testmode/TestMode$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p5}, Lcom/superwall/sdk/store/testmode/TestModeBehavior;->ordinal()I

    move-result p5

    aget p5, v0, p5

    const/4 v0, 0x1

    if-eq p5, v0, :cond_8

    const/4 v0, 0x2

    if-eq p5, v0, :cond_6

    const/4 v0, 0x3

    if-eq p5, v0, :cond_4

    const/4 v0, 0x4

    if-ne p5, v0, :cond_3

    .line 126
    iget-boolean p5, p0, Lcom/superwall/sdk/store/testmode/TestMode;->isTestEnvironment:Z

    if-eqz p5, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestMode;->deactivateIfActive()V

    return-void

    .line 130
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/superwall/sdk/store/testmode/TestMode;->checkConfigMatch(Lcom/superwall/sdk/models/config/Config;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 131
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/store/testmode/TestMode;->checkPackageNameMismatch(Lcom/superwall/sdk/models/config/Config;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 132
    :cond_2
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestMode;->deactivateIfActive()V

    return-void

    .line 102
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 119
    :cond_4
    invoke-direct {p0, p1, p3, p4}, Lcom/superwall/sdk/store/testmode/TestMode;->checkConfigMatch(Lcom/superwall/sdk/models/config/Config;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_0
    return-void

    .line 120
    :cond_5
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestMode;->deactivateIfActive()V

    return-void

    .line 109
    :cond_6
    new-instance p1, Lcom/superwall/sdk/store/testmode/TestModeState$Active;

    sget-object p2, Lcom/superwall/sdk/store/testmode/TestModeReason$TestModeOption;->INSTANCE:Lcom/superwall/sdk/store/testmode/TestModeReason$TestModeOption;

    check-cast p2, Lcom/superwall/sdk/store/testmode/TestModeReason;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, v0, p3}, Lcom/superwall/sdk/store/testmode/TestModeState$Active;-><init>(Lcom/superwall/sdk/store/testmode/TestModeReason;Lcom/superwall/sdk/store/testmode/TestModeSessionData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/superwall/sdk/store/testmode/TestModeState;

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestMode;->state:Lcom/superwall/sdk/store/testmode/TestModeState;

    .line 110
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 111
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->info:Lcom/superwall/sdk/logger/LogLevel;

    .line 112
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    .line 113
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestMode;->getTestModeReason()Lcom/superwall/sdk/store/testmode/TestModeReason;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/superwall/sdk/store/testmode/TestModeReason;->getDescription()Ljava/lang/String;

    move-result-object p3

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Test mode activated: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 110
    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    .line 104
    :cond_8
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestMode;->deactivateIfActive()V

    return-void
.end method

.method public final fakePurchase(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/testmode/models/SuperwallEntitlementRef;",
            ">;)V"
        }
    .end annotation

    const-string v0, "entitlementRefs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    check-cast p1, Ljava/lang/Iterable;

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 387
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 388
    check-cast v1, Lcom/superwall/sdk/store/testmode/models/SuperwallEntitlementRef;

    .line 203
    invoke-virtual {v1}, Lcom/superwall/sdk/store/testmode/models/SuperwallEntitlementRef;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 388
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 389
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 204
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestMode;->getSession()Lcom/superwall/sdk/store/testmode/TestModeSessionData;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->getEntitlementIds()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 205
    :cond_1
    iget-object p1, p0, Lcom/superwall/sdk/store/testmode/TestMode;->storage:Lcom/superwall/sdk/storage/Storage;

    sget-object v0, Lcom/superwall/sdk/storage/IsTestModeActiveSubscription;->INSTANCE:Lcom/superwall/sdk/storage/IsTestModeActiveSubscription;

    check-cast v0, Lcom/superwall/sdk/storage/Storable;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestMode;->getTestEntitlementIds()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/superwall/sdk/storage/Storage;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    return-void
.end method

.method public final getFreeTrialOverride()Lcom/superwall/sdk/store/testmode/FreeTrialOverride;
    .locals 1

    .line 92
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestMode;->getSession()Lcom/superwall/sdk/store/testmode/TestModeSessionData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->getFreeTrialOverride()Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->UseDefault:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    return-object v0
.end method

.method public final getOverriddenSubscriptionStatus()Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;
    .locals 1

    .line 93
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestMode;->getSession()Lcom/superwall/sdk/store/testmode/TestModeSessionData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->getOverriddenSubscriptionStatus()Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getProducts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;",
            ">;"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestMode;->getSession()Lcom/superwall/sdk/store/testmode/TestModeSessionData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->getProducts()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getState()Lcom/superwall/sdk/store/testmode/TestModeState;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestMode;->state:Lcom/superwall/sdk/store/testmode/TestModeState;

    return-object v0
.end method

.method public final getTestEntitlementIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestMode;->getSession()Lcom/superwall/sdk/store/testmode/TestModeSessionData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->getEntitlementIds()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getTestEntitlementSelections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;",
            ">;"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestMode;->getSession()Lcom/superwall/sdk/store/testmode/TestModeSessionData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->getEntitlementSelections()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getTestModeReason()Lcom/superwall/sdk/store/testmode/TestModeReason;
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestMode;->state:Lcom/superwall/sdk/store/testmode/TestModeState;

    instance-of v1, v0, Lcom/superwall/sdk/store/testmode/TestModeState$Active;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/superwall/sdk/store/testmode/TestModeState$Active;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/TestModeState$Active;->getReason()Lcom/superwall/sdk/store/testmode/TestModeReason;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v2
.end method

.method public final getTestProductsByFullId$superwall_release()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            ">;"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestMode;->getSession()Lcom/superwall/sdk/store/testmode/TestModeSessionData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->getTestProductsByFullId()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final isTestMode()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestMode;->state:Lcom/superwall/sdk/store/testmode/TestModeState;

    instance-of v0, v0, Lcom/superwall/sdk/store/testmode/TestModeState$Active;

    return v0
.end method

.method public final loadSettings()Lcom/superwall/sdk/storage/TestModeSettings;
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestMode;->storage:Lcom/superwall/sdk/storage/Storage;

    sget-object v1, Lcom/superwall/sdk/storage/StoredTestModeSettings;->INSTANCE:Lcom/superwall/sdk/storage/StoredTestModeSettings;

    check-cast v1, Lcom/superwall/sdk/storage/Storable;

    invoke-interface {v0, v1}, Lcom/superwall/sdk/storage/Storage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/storage/TestModeSettings;

    return-object v0
.end method

.method public final resetEntitlements()V
    .locals 3

    .line 225
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestMode;->getSession()Lcom/superwall/sdk/store/testmode/TestModeSessionData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->getEntitlementIds()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 226
    :cond_0
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestMode;->getSession()Lcom/superwall/sdk/store/testmode/TestModeSessionData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->setEntitlementSelections(Ljava/util/List;)V

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestMode;->storage:Lcom/superwall/sdk/storage/Storage;

    sget-object v1, Lcom/superwall/sdk/storage/IsTestModeActiveSubscription;->INSTANCE:Lcom/superwall/sdk/storage/IsTestModeActiveSubscription;

    check-cast v1, Lcom/superwall/sdk/storage/Storable;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/superwall/sdk/storage/Storage;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    return-void
.end method

.method public final saveSettings()V
    .locals 3

    .line 273
    new-instance v0, Lcom/superwall/sdk/storage/TestModeSettings;

    .line 274
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestMode;->getTestEntitlementSelections()Ljava/util/List;

    move-result-object v1

    .line 275
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestMode;->getFreeTrialOverride()Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    move-result-object v2

    .line 273
    invoke-direct {v0, v1, v2}, Lcom/superwall/sdk/storage/TestModeSettings;-><init>(Ljava/util/List;Lcom/superwall/sdk/store/testmode/FreeTrialOverride;)V

    .line 277
    iget-object v1, p0, Lcom/superwall/sdk/store/testmode/TestMode;->storage:Lcom/superwall/sdk/storage/Storage;

    sget-object v2, Lcom/superwall/sdk/storage/StoredTestModeSettings;->INSTANCE:Lcom/superwall/sdk/storage/StoredTestModeSettings;

    check-cast v2, Lcom/superwall/sdk/storage/Storable;

    invoke-interface {v1, v2, v0}, Lcom/superwall/sdk/storage/Storage;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    return-void
.end method

.method public final setEntitlements(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selections"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestMode;->getSession()Lcom/superwall/sdk/store/testmode/TestModeSessionData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 210
    :cond_0
    invoke-virtual {v0, p1}, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->setEntitlementSelections(Ljava/util/List;)V

    .line 211
    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->getEntitlementIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 212
    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->getEntitlementIds()Ljava/util/Set;

    move-result-object v1

    .line 213
    check-cast p1, Ljava/lang/Iterable;

    .line 390
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 391
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;

    .line 213
    invoke-virtual {v4}, Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;->getState()Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

    move-result-object v4

    invoke-virtual {v4}, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;->isActive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 391
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 392
    :cond_2
    check-cast v2, Ljava/util/List;

    .line 390
    check-cast v2, Ljava/lang/Iterable;

    .line 393
    new-instance p1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 394
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 395
    check-cast v3, Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;

    .line 213
    invoke-virtual {v3}, Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 395
    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 396
    :cond_3
    check-cast p1, Ljava/util/List;

    .line 393
    check-cast p1, Ljava/util/Collection;

    .line 212
    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 215
    iget-object p1, p0, Lcom/superwall/sdk/store/testmode/TestMode;->storage:Lcom/superwall/sdk/storage/Storage;

    sget-object v1, Lcom/superwall/sdk/storage/IsTestModeActiveSubscription;->INSTANCE:Lcom/superwall/sdk/storage/IsTestModeActiveSubscription;

    check-cast v1, Lcom/superwall/sdk/storage/Storable;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->getEntitlementIds()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/superwall/sdk/storage/Storage;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    return-void
.end method

.method public final setEntitlements(Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    check-cast p1, Ljava/lang/Iterable;

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 398
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 399
    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 220
    new-instance v2, Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;

    sget-object v4, Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;->Subscribed:Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;-><init>(Ljava/lang/String;Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 399
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 400
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 219
    invoke-virtual {p0, v0}, Lcom/superwall/sdk/store/testmode/TestMode;->setEntitlements(Ljava/util/List;)V

    return-void
.end method

.method public final setFreeTrialOverride(Lcom/superwall/sdk/store/testmode/FreeTrialOverride;)V
    .locals 1

    const-string v0, "override"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestMode;->getSession()Lcom/superwall/sdk/store/testmode/TestModeSessionData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->setFreeTrialOverride(Lcom/superwall/sdk/store/testmode/FreeTrialOverride;)V

    :cond_0
    return-void
.end method

.method public final setOverriddenSubscriptionStatus(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V
    .locals 1

    .line 264
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestMode;->getSession()Lcom/superwall/sdk/store/testmode/TestModeSessionData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->setOverriddenSubscriptionStatus(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V

    :cond_0
    return-void
.end method

.method public final setProducts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;",
            ">;)V"
        }
    .end annotation

    const-string v0, "products"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestMode;->getSession()Lcom/superwall/sdk/store/testmode/TestModeSessionData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->setProducts(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final setTestProducts(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            ">;)V"
        }
    .end annotation

    const-string v0, "productsByFullId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestMode;->getSession()Lcom/superwall/sdk/store/testmode/TestModeSessionData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->setTestProductsByFullId(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final shouldShowFreeTrial(Z)Z
    .locals 2

    .line 235
    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestMode;->getFreeTrialOverride()Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    move-result-object v0

    sget-object v1, Lcom/superwall/sdk/store/testmode/TestMode$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    return v1

    :cond_2
    return p1
.end method
