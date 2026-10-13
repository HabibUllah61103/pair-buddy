.class public final Lcom/superwall/sdk/store/transactions/TransactionManager;
.super Ljava/lang/Object;
.source "TransactionManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;,
        Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransactionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransactionManager.kt\ncom/superwall/sdk/store/transactions/TransactionManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1090:1\n1863#2:1091\n1557#2:1092\n1628#2,3:1093\n1864#2:1096\n1863#2:1097\n1557#2:1098\n1628#2,3:1099\n1864#2:1102\n1863#2:1103\n1557#2:1104\n1628#2,3:1105\n1864#2:1108\n774#2:1109\n865#2:1110\n1755#2,3:1111\n866#2:1114\n1557#2:1115\n1628#2,3:1116\n*S KotlinDebug\n*F\n+ 1 TransactionManager.kt\ncom/superwall/sdk/store/transactions/TransactionManager\n*L\n198#1:1091\n199#1:1092\n199#1:1093,3\n198#1:1096\n248#1:1097\n249#1:1098\n249#1:1099,3\n248#1:1102\n260#1:1103\n261#1:1104\n261#1:1105,3\n260#1:1108\n274#1:1109\n274#1:1110\n275#1:1111,3\n274#1:1114\n869#1:1115\n869#1:1116,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a2\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0002|}B\u00b3\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012$\u0008\u0002\u0010\u0010\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0012\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0011\u0012F\u0010\u0015\u001aB\u0008\u0001\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008\u0018\u0012\u0008\u0008\u0019\u0012\u0004\u0008\u0008(\u001a\u0012\u0013\u0012\u00110\u001b\u00a2\u0006\u000c\u0008\u0018\u0012\u0008\u0008\u0019\u0012\u0004\u0008\u0008(\u001c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0016\u0012\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u00140\u001e\u0012\u000e\u0008\u0002\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\"0!\u0012\u0018\u0010#\u001a\u0014\u0012\u0004\u0012\u00020\u0017\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020%0$0\u001e\u0012\u001e\u0010&\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0017\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020%0$0\'0!\u0012\u001c\u0010(\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001e\u0012\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00140!\u00126\u0010*\u001a2\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008\u0018\u0012\u0008\u0008\u0019\u0012\u0004\u0008\u0008(+\u0012\u0013\u0012\u00110,\u00a2\u0006\u000c\u0008\u0018\u0012\u0008\u0008\u0019\u0012\u0004\u0008\u0008(-\u0012\u0004\u0012\u00020\u00140\u0011\u0012]\u0010.\u001aY\u0008\u0001\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008\u0018\u0012\u0008\u0008\u0019\u0012\u0004\u0008\u0008(0\u0012\u0015\u0012\u0013\u0018\u000101\u00a2\u0006\u000c\u0008\u0018\u0012\u0008\u0008\u0019\u0012\u0004\u0008\u0008(2\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008\u0018\u0012\u0008\u0008\u0019\u0012\u0004\u0008\u0008(3\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00010/\u00123\u0008\u0002\u00104\u001a-\u0008\u0001\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008\u0018\u0012\u0008\u0008\u0019\u0012\u0004\u0008\u0008(0\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0011\u0012\n\u0008\u0002\u00105\u001a\u0004\u0018\u000106\u0012\n\u0008\u0002\u00107\u001a\u0004\u0018\u000108\u0012\u0016\u0008\u0002\u00109\u001a\u0010\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u001e\u00a2\u0006\u0004\u0008:\u0010;J \u0010G\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020H2\u0006\u0010I\u001a\u00020JH\u0080@\u00a2\u0006\u0004\u0008K\u0010LJ\u0014\u0010M\u001a\u00020\u00142\u000c\u0010N\u001a\u0008\u0012\u0004\u0012\u00020\u00170OJ \u0010P\u001a\u00020Q2\u0006\u0010R\u001a\u00020S2\u0008\u0008\u0002\u0010T\u001a\u00020DH\u0086@\u00a2\u0006\u0002\u0010UJ\"\u0010V\u001a\u00020\u00142\n\u0008\u0002\u0010W\u001a\u0004\u0018\u00010X2\u0006\u0010R\u001a\u00020SH\u0082@\u00a2\u0006\u0002\u0010YJ \u0010Z\u001a\u00020\u00142\u0006\u0010[\u001a\u00020\u00172\u0006\u0010W\u001a\u00020X2\u0006\u0010R\u001a\u00020SH\u0002J \u0010\\\u001a\u00020\u00142\u0006\u0010W\u001a\u00020X2\u0006\u0010]\u001a\u00020SH\u0080@\u00a2\u0006\u0004\u0008^\u0010YJ:\u0010_\u001a\u00020\u00142\u0006\u0010W\u001a\u00020X2\u0006\u0010R\u001a\u00020S2\u0006\u0010`\u001a\u00020D2\n\u0008\u0002\u0010P\u001a\u0004\u0018\u00010a2\u0006\u0010T\u001a\u00020DH\u0082@\u00a2\u0006\u0002\u0010bJ\u001e\u0010c\u001a\u00020\u00142\u0006\u0010W\u001a\u00020X2\u0006\u0010R\u001a\u00020SH\u0082@\u00a2\u0006\u0002\u0010YJ\u0016\u0010d\u001a\u00020\u00142\u0006\u0010R\u001a\u00020SH\u0082@\u00a2\u0006\u0002\u0010eJ\u0018\u0010f\u001a\u00020g2\u0008\u0010h\u001a\u0004\u0018\u00010iH\u0086@\u00a2\u0006\u0002\u0010jJ\u0008\u0010k\u001a\u00020\u0014H\u0002J*\u0010l\u001a\u00020\u00142\n\u0010m\u001a\u00060nj\u0002`o2\u0006\u0010W\u001a\u00020X2\u0006\u0010I\u001a\u00020pH\u0082@\u00a2\u0006\u0002\u0010qJ0\u0010r\u001a\u00020\u00142\u0008\u0010s\u001a\u0004\u0018\u00010t2\u0006\u0010W\u001a\u00020X2\u0006\u0010R\u001a\u00020S2\u0006\u0010`\u001a\u00020DH\u0082@\u00a2\u0006\u0002\u0010uJ>\u0010v\u001a\u00020\u00142\u0008\u0008\u0002\u0010w\u001a\u00020x2\u0006\u0010y\u001a\u00020\u00172\u0016\u0008\u0002\u0010z\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0001\u0018\u00010\'2\n\u0008\u0002\u0010m\u001a\u0004\u0018\u00010{H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R,\u0010\u0010\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0012\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0011X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010<RP\u0010\u0015\u001aB\u0008\u0001\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008\u0018\u0012\u0008\u0008\u0019\u0012\u0004\u0008\u0008(\u001a\u0012\u0013\u0012\u00110\u001b\u00a2\u0006\u000c\u0008\u0018\u0012\u0008\u0008\u0019\u0012\u0004\u0008\u0008(\u001c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0016X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010=R\u001a\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u00140\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\"0!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010#\u001a\u0014\u0012\u0004\u0012\u00020\u0017\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020%0$0\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010&\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0017\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020%0$0\'0!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010(\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001eX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010>R\u0014\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00140!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R>\u0010*\u001a2\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008\u0018\u0012\u0008\u0008\u0019\u0012\u0004\u0008\u0008(+\u0012\u0013\u0012\u00110,\u00a2\u0006\u000c\u0008\u0018\u0012\u0008\u0008\u0019\u0012\u0004\u0008\u0008(-\u0012\u0004\u0012\u00020\u00140\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000Rg\u0010.\u001aY\u0008\u0001\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008\u0018\u0012\u0008\u0008\u0019\u0012\u0004\u0008\u0008(0\u0012\u0015\u0012\u0013\u0018\u000101\u00a2\u0006\u000c\u0008\u0018\u0012\u0008\u0008\u0019\u0012\u0004\u0008\u0008(2\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008\u0018\u0012\u0008\u0008\u0019\u0012\u0004\u0008\u0008(3\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00010/X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010?R;\u00104\u001a-\u0008\u0001\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008\u0018\u0012\u0008\u0008\u0019\u0012\u0004\u0008\u0008(0\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0011X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010<R\u0010\u00105\u001a\u0004\u0018\u000106X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u00107\u001a\u0004\u0018\u000108X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u00109\u001a\u0010\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010@\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020B0AX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010C\u001a\u00020D8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008E\u0010F\u00a8\u0006~"
    }
    d2 = {
        "Lcom/superwall/sdk/store/transactions/TransactionManager;",
        "",
        "storeManager",
        "Lcom/superwall/sdk/store/StoreManager;",
        "purchaseController",
        "Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;",
        "eventsQueue",
        "Lcom/superwall/sdk/storage/EventsQueue;",
        "storage",
        "Lcom/superwall/sdk/storage/Storage;",
        "activityProvider",
        "Lcom/superwall/sdk/misc/ActivityProvider;",
        "factory",
        "Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;",
        "ioScope",
        "Lcom/superwall/sdk/misc/IOScope;",
        "track",
        "Lkotlin/Function2;",
        "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "dismiss",
        "Lkotlin/Function3;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "paywallId",
        "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;",
        "result",
        "showAlert",
        "Lkotlin/Function1;",
        "Lcom/superwall/sdk/misc/AlertControllerFactory$AlertProps;",
        "subscriptionStatus",
        "Lkotlin/Function0;",
        "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
        "entitlementsById",
        "",
        "Lcom/superwall/sdk/models/entitlements/Entitlement;",
        "allEntitlementsByProductId",
        "",
        "showRestoreDialogForWeb",
        "refreshReceipt",
        "updateState",
        "cacheKey",
        "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;",
        "update",
        "notifyOfTransactionComplete",
        "Lkotlin/Function4;",
        "paywallCacheKey",
        "",
        "trialEndDate",
        "productId",
        "notifyOfTransactionAbandon",
        "testMode",
        "Lcom/superwall/sdk/store/testmode/TestMode;",
        "testModeTransactionHandler",
        "Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;",
        "setSubscriptionStatus",
        "<init>",
        "(Lcom/superwall/sdk/store/StoreManager;Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;Lcom/superwall/sdk/storage/EventsQueue;Lcom/superwall/sdk/storage/Storage;Lcom/superwall/sdk/misc/ActivityProvider;Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;Lcom/superwall/sdk/misc/IOScope;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/store/testmode/TestMode;Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;Lkotlin/jvm/functions/Function1;)V",
        "Lkotlin/jvm/functions/Function2;",
        "Lkotlin/jvm/functions/Function3;",
        "Lkotlin/jvm/functions/Function1;",
        "Lkotlin/jvm/functions/Function4;",
        "transactionsInProgress",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Lcom/android/billingclient/api/ProductDetails;",
        "shouldObserveTransactionFinishingAutomatically",
        "",
        "getShouldObserveTransactionFinishingAutomatically",
        "()Z",
        "handle",
        "Lcom/superwall/sdk/delegate/InternalPurchaseResult;",
        "state",
        "Lcom/superwall/sdk/store/PurchasingObserverState;",
        "handle$superwall_release",
        "(Lcom/superwall/sdk/delegate/InternalPurchaseResult;Lcom/superwall/sdk/store/PurchasingObserverState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updatePaymentQueue",
        "removedTransactions",
        "",
        "purchase",
        "Lcom/superwall/sdk/delegate/PurchaseResult;",
        "purchaseSource",
        "Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;",
        "shouldDismiss",
        "(Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "didRestore",
        "product",
        "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
        "(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "trackFailure",
        "errorMessage",
        "prepareToPurchase",
        "source",
        "prepareToPurchase$superwall_release",
        "didPurchase",
        "didStartFreeTrial",
        "Lcom/android/billingclient/api/Purchase;",
        "(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;ZLcom/android/billingclient/api/Purchase;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "trackCancelled",
        "handlePendingTransaction",
        "(Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "tryToRestorePurchases",
        "Lcom/superwall/sdk/delegate/RestorationResult;",
        "paywallView",
        "Lcom/superwall/sdk/paywall/view/PaywallView;",
        "(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "askToRestoreFromWeb",
        "presentAlert",
        "error",
        "Ljava/lang/Error;",
        "Lkotlin/Error;",
        "Lcom/superwall/sdk/paywall/view/PaywallViewState;",
        "(Ljava/lang/Error;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/paywall/view/PaywallViewState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "trackTransactionDidSucceed",
        "transaction",
        "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;",
        "(Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "log",
        "logLevel",
        "Lcom/superwall/sdk/logger/LogLevel;",
        "message",
        "info",
        "",
        "PurchaseSource",
        "Factory",
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
.field private final activityProvider:Lcom/superwall/sdk/misc/ActivityProvider;

.field private final allEntitlementsByProductId:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final dismiss:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final entitlementsById:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            ">;>;"
        }
    .end annotation
.end field

.field private final eventsQueue:Lcom/superwall/sdk/storage/EventsQueue;

.field private final factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

.field private final ioScope:Lcom/superwall/sdk/misc/IOScope;

.field private final notifyOfTransactionAbandon:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final notifyOfTransactionComplete:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final purchaseController:Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;

.field private final refreshReceipt:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final setSubscriptionStatus:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final showAlert:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/superwall/sdk/misc/AlertControllerFactory$AlertProps;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final showRestoreDialogForWeb:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final storage:Lcom/superwall/sdk/storage/Storage;

.field private final storeManager:Lcom/superwall/sdk/store/StoreManager;

.field private final subscriptionStatus:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final testMode:Lcom/superwall/sdk/store/testmode/TestMode;

.field private final testModeTransactionHandler:Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;

.field private final track:Lkotlin/jvm/functions/Function2;
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

.field private transactionsInProgress:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final updateState:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$49uThNzyoc7HjyYk2zdyThj33no()Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/store/transactions/TransactionManager;->_init_$lambda$0()Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$aH6O0rpu1e2_woJp1U56YROAubY()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/store/transactions/TransactionManager;->askToRestoreFromWeb$lambda$15()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lcom/superwall/sdk/store/StoreManager;Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;Lcom/superwall/sdk/storage/EventsQueue;Lcom/superwall/sdk/storage/Storage;Lcom/superwall/sdk/misc/ActivityProvider;Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;Lcom/superwall/sdk/misc/IOScope;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/store/testmode/TestMode;Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;Lkotlin/jvm/functions/Function1;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/store/StoreManager;",
            "Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;",
            "Lcom/superwall/sdk/storage/EventsQueue;",
            "Lcom/superwall/sdk/storage/Storage;",
            "Lcom/superwall/sdk/misc/ActivityProvider;",
            "Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;",
            "Lcom/superwall/sdk/misc/IOScope;",
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
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/misc/AlertControllerFactory$AlertProps;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            ">;>;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            ">;>;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/superwall/sdk/store/testmode/TestMode;",
            "Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    const-string v0, "storeManager"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaseController"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsQueue"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storage"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityProvider"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioScope"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "track"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dismiss"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "showAlert"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscriptionStatus"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entitlementsById"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allEntitlementsByProductId"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "showRestoreDialogForWeb"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refreshReceipt"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateState"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notifyOfTransactionComplete"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notifyOfTransactionAbandon"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    .line 61
    iput-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    .line 62
    iput-object v2, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->purchaseController:Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;

    .line 63
    iput-object v3, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->eventsQueue:Lcom/superwall/sdk/storage/EventsQueue;

    .line 64
    iput-object v4, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->storage:Lcom/superwall/sdk/storage/Storage;

    .line 65
    iput-object v5, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->activityProvider:Lcom/superwall/sdk/misc/ActivityProvider;

    .line 66
    iput-object v6, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    .line 67
    iput-object v7, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    .line 68
    iput-object v8, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->track:Lkotlin/jvm/functions/Function2;

    .line 71
    iput-object v9, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->dismiss:Lkotlin/jvm/functions/Function3;

    .line 72
    iput-object v10, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->showAlert:Lkotlin/jvm/functions/Function1;

    .line 73
    iput-object v11, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->subscriptionStatus:Lkotlin/jvm/functions/Function0;

    .line 76
    iput-object v12, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->entitlementsById:Lkotlin/jvm/functions/Function1;

    .line 77
    iput-object v13, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->allEntitlementsByProductId:Lkotlin/jvm/functions/Function0;

    .line 78
    iput-object v14, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->showRestoreDialogForWeb:Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p15

    .line 79
    iput-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->refreshReceipt:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p16

    .line 80
    iput-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->updateState:Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p17

    .line 81
    iput-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->notifyOfTransactionComplete:Lkotlin/jvm/functions/Function4;

    .line 82
    iput-object v15, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->notifyOfTransactionAbandon:Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p19

    .line 83
    iput-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->testMode:Lcom/superwall/sdk/store/testmode/TestMode;

    move-object/from16 v1, p20

    .line 84
    iput-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->testModeTransactionHandler:Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;

    move-object/from16 v1, p21

    .line 85
    iput-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->setSubscriptionStatus:Lkotlin/jvm/functions/Function1;

    .line 119
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->transactionsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    .line 125
    invoke-direct {v0}, Lcom/superwall/sdk/store/transactions/TransactionManager;->getShouldObserveTransactionFinishingAutomatically()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    move-object v1, v7

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/superwall/sdk/store/transactions/TransactionManager$4;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/superwall/sdk/store/transactions/TransactionManager$4;-><init>(Lcom/superwall/sdk/store/transactions/TransactionManager;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 p1, v1

    move-object/from16 p4, v2

    move/from16 p5, v3

    move-object/from16 p6, v4

    move-object/from16 p2, v5

    move-object/from16 p3, v6

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lcom/superwall/sdk/store/StoreManager;Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;Lcom/superwall/sdk/storage/EventsQueue;Lcom/superwall/sdk/storage/Storage;Lcom/superwall/sdk/misc/ActivityProvider;Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;Lcom/superwall/sdk/misc/IOScope;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/store/testmode/TestMode;Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 25

    move/from16 v0, p22

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 68
    new-instance v1, Lcom/superwall/sdk/store/transactions/TransactionManager$1;

    invoke-direct {v1, v2}, Lcom/superwall/sdk/store/transactions/TransactionManager$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v11, v1

    goto :goto_0

    :cond_0
    move-object/from16 v11, p8

    :goto_0
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_1

    .line 73
    new-instance v1, Lcom/superwall/sdk/store/transactions/TransactionManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/superwall/sdk/store/transactions/TransactionManager$$ExternalSyntheticLambda1;-><init>()V

    move-object v14, v1

    goto :goto_1

    :cond_1
    move-object/from16 v14, p11

    :goto_1
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    .line 82
    new-instance v1, Lcom/superwall/sdk/store/transactions/TransactionManager$3;

    invoke-direct {v1, v2}, Lcom/superwall/sdk/store/transactions/TransactionManager$3;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object/from16 v21, v1

    goto :goto_2

    :cond_2
    move-object/from16 v21, p18

    :goto_2
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_3

    move-object/from16 v22, v2

    goto :goto_3

    :cond_3
    move-object/from16 v22, p19

    :goto_3
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_4

    move-object/from16 v23, v2

    goto :goto_4

    :cond_4
    move-object/from16 v23, p20

    :goto_4
    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    move-object/from16 v24, v2

    goto :goto_5

    :cond_5
    move-object/from16 v24, p21

    :goto_5
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    move-object/from16 v20, p17

    .line 60
    invoke-direct/range {v3 .. v24}, Lcom/superwall/sdk/store/transactions/TransactionManager;-><init>(Lcom/superwall/sdk/store/StoreManager;Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;Lcom/superwall/sdk/storage/EventsQueue;Lcom/superwall/sdk/storage/Storage;Lcom/superwall/sdk/misc/ActivityProvider;Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;Lcom/superwall/sdk/misc/IOScope;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/store/testmode/TestMode;Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final _init_$lambda$0()Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;
    .locals 1

    .line 74
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall;->getEntitlements()Lcom/superwall/sdk/store/Entitlements;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/store/Entitlements;->getStatus()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    return-object v0
.end method

.method public static final synthetic access$didPurchase(Lcom/superwall/sdk/store/transactions/TransactionManager;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;ZLcom/android/billingclient/api/Purchase;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-direct/range {p0 .. p6}, Lcom/superwall/sdk/store/transactions/TransactionManager;->didPurchase(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;ZLcom/android/billingclient/api/Purchase;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$didRestore(Lcom/superwall/sdk/store/transactions/TransactionManager;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/superwall/sdk/store/transactions/TransactionManager;->didRestore(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFactory$p(Lcom/superwall/sdk/store/transactions/TransactionManager;)Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    return-object p0
.end method

.method public static final synthetic access$getStoreManager$p(Lcom/superwall/sdk/store/transactions/TransactionManager;)Lcom/superwall/sdk/store/StoreManager;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/superwall/sdk/store/transactions/TransactionManager;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    return-object p0
.end method

.method public static final synthetic access$getTrack$p(Lcom/superwall/sdk/store/transactions/TransactionManager;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/superwall/sdk/store/transactions/TransactionManager;->track:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic access$getTransactionsInProgress$p(Lcom/superwall/sdk/store/transactions/TransactionManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/superwall/sdk/store/transactions/TransactionManager;->transactionsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic access$handlePendingTransaction(Lcom/superwall/sdk/store/transactions/TransactionManager;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/store/transactions/TransactionManager;->handlePendingTransaction(Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$presentAlert(Lcom/superwall/sdk/store/transactions/TransactionManager;Ljava/lang/Error;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/paywall/view/PaywallViewState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/store/transactions/TransactionManager;->presentAlert(Ljava/lang/Error;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/paywall/view/PaywallViewState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$trackCancelled(Lcom/superwall/sdk/store/transactions/TransactionManager;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/superwall/sdk/store/transactions/TransactionManager;->trackCancelled(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$trackTransactionDidSucceed(Lcom/superwall/sdk/store/transactions/TransactionManager;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-direct/range {p0 .. p5}, Lcom/superwall/sdk/store/transactions/TransactionManager;->trackTransactionDidSucceed(Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final askToRestoreFromWeb()V
    .locals 12

    .line 940
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall;->getEntitlements()Lcom/superwall/sdk/store/Entitlements;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/store/Entitlements;->getActiveDeviceEntitlements$superwall_release()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 946
    iget-object v1, p0, Lcom/superwall/sdk/store/transactions/TransactionManager;->showAlert:Lkotlin/jvm/functions/Function1;

    if-nez v0, :cond_0

    .line 949
    const-string v2, "Restore via the web?"

    goto :goto_0

    :cond_0
    const-string v2, "No Subscription Found"

    :goto_0
    move-object v4, v2

    if-nez v0, :cond_1

    .line 951
    const-string v0, "Your Play Store subscriptions were restored. Would you like to check for more on the web?"

    goto :goto_1

    :cond_1
    const-string v0, "No Play Store subscription found, would you like to check on the web?"

    :goto_1
    move-object v5, v0

    .line 947
    new-instance v3, Lcom/superwall/sdk/misc/AlertControllerFactory$AlertProps;

    .line 953
    new-instance v8, Lcom/superwall/sdk/store/transactions/TransactionManager$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lcom/superwall/sdk/store/transactions/TransactionManager$$ExternalSyntheticLambda0;-><init>()V

    const/16 v10, 0x20

    const/4 v11, 0x0

    .line 947
    const-string v6, "Yes"

    const-string v7, "Close"

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/superwall/sdk/misc/AlertControllerFactory$AlertProps;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 946
    invoke-interface {v1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final askToRestoreFromWeb$lambda$15()Lkotlin/Unit;
    .locals 1

    .line 956
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-static {v0}, Lcom/superwall/sdk/web/OpenWebRestoreKt;->openRestoreOnWeb(Lcom/superwall/sdk/Superwall;)V

    .line 957
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final didPurchase(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;ZLcom/android/billingclient/api/Purchase;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            "Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;",
            "Z",
            "Lcom/android/billingclient/api/Purchase;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v1, p6

    instance-of v2, v1, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;

    iget v3, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;

    invoke-direct {v2, v0, v1}, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;-><init>(Lcom/superwall/sdk/store/transactions/TransactionManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v10

    .line 629
    iget v3, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->label:I

    const/4 v11, 0x0

    packed-switch v3, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_1
    iget-boolean v3, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->Z$0:Z

    iget-object v4, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;

    iget-object v5, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;

    iget-object v6, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    iget-object v7, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v2

    goto/16 :goto_a

    :pswitch_2
    iget-boolean v3, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->Z$0:Z

    iget-object v4, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;

    iget-object v5, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    iget-object v6, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v2

    move v9, v3

    goto/16 :goto_8

    :pswitch_3
    iget-boolean v3, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->Z$0:Z

    iget-object v4, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;

    iget-object v5, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    iget-object v6, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v2

    move v9, v3

    goto/16 :goto_7

    :pswitch_4
    iget-boolean v3, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->Z$0:Z

    iget-object v4, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/billing/GoogleBillingWrapper;

    iget-object v5, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lcom/android/billingclient/api/Purchase;

    iget-object v6, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;

    iget-object v7, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    iget-object v8, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v2

    move v9, v3

    move-object v2, v5

    goto/16 :goto_6

    :pswitch_5
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_6
    iget-boolean v3, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->Z$0:Z

    iget-object v4, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;

    iget-object v5, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    iget-object v6, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v2

    goto/16 :goto_3

    :pswitch_7
    iget-boolean v3, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->Z$1:Z

    iget-boolean v4, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->Z$0:Z

    iget-object v5, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;

    iget-object v6, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;

    iget-object v7, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    iget-object v8, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_8
    iget-boolean v3, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->Z$1:Z

    iget-boolean v4, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->Z$0:Z

    iget-object v5, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;

    iget-object v6, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    iget-object v7, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v9, v4

    move-object v8, v7

    goto :goto_1

    :pswitch_9
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 637
    instance-of v1, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;

    if-eqz v1, :cond_6

    .line 638
    iget-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v12, v1

    check-cast v12, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$2;

    invoke-direct {v1, v0, v7, v8, v11}, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$2;-><init>(Lcom/superwall/sdk/store/transactions/TransactionManager;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;)V

    move-object v15, v1

    check-cast v15, Lkotlin/jvm/functions/Function2;

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v12 .. v17}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 649
    iget-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v1}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->makeTransactionVerifier()Lcom/superwall/sdk/billing/GoogleBillingWrapper;

    move-result-object v1

    .line 652
    iget-object v3, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    check-cast v3, Lcom/superwall/sdk/dependencies/StoreTransactionFactory;

    .line 651
    iput-object v0, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$0:Ljava/lang/Object;

    iput-object v7, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$1:Ljava/lang/Object;

    iput-object v8, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$2:Ljava/lang/Object;

    iput-boolean v9, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->Z$0:Z

    move/from16 v4, p5

    iput-boolean v4, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->Z$1:Z

    const/4 v5, 0x1

    iput v5, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->label:I

    invoke-virtual {v1, v3, v2}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->getLatestTransaction(Lcom/superwall/sdk/dependencies/StoreTransactionFactory;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v10, :cond_1

    goto/16 :goto_b

    :cond_1
    move v3, v4

    move-object v6, v7

    move-object v5, v8

    move-object v8, v0

    .line 629
    :goto_1
    check-cast v1, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;

    .line 655
    iget-object v4, v8, Lcom/superwall/sdk/store/transactions/TransactionManager;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    iget-object v7, v8, Lcom/superwall/sdk/store/transactions/TransactionManager;->allEntitlementsByProductId:Lkotlin/jvm/functions/Function0;

    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    iput-object v8, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$0:Ljava/lang/Object;

    iput-object v6, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$1:Ljava/lang/Object;

    iput-object v5, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$2:Ljava/lang/Object;

    iput-object v1, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$3:Ljava/lang/Object;

    iput-boolean v9, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->Z$0:Z

    iput-boolean v3, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->Z$1:Z

    const/4 v12, 0x2

    iput v12, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->label:I

    invoke-virtual {v4, v7, v2}, Lcom/superwall/sdk/store/StoreManager;->loadPurchasedProducts(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v10, :cond_2

    goto/16 :goto_b

    :cond_2
    move-object v7, v6

    move v4, v9

    move-object v6, v5

    move-object v5, v1

    .line 657
    :goto_2
    iput-object v8, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$0:Ljava/lang/Object;

    iput-object v7, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$1:Ljava/lang/Object;

    iput-object v6, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$2:Ljava/lang/Object;

    iput-object v11, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$3:Ljava/lang/Object;

    iput-boolean v3, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->Z$0:Z

    const/4 v1, 0x3

    iput v1, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->label:I

    move-object/from16 p6, v2

    move/from16 p5, v4

    move-object/from16 p2, v5

    move-object/from16 p4, v6

    move-object/from16 p3, v7

    move-object/from16 p1, v8

    invoke-direct/range {p1 .. p6}, Lcom/superwall/sdk/store/transactions/TransactionManager;->trackTransactionDidSucceed(Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v6, p1

    move-object/from16 v5, p3

    move-object/from16 v4, p4

    move-object/from16 v12, p6

    if-ne v1, v10, :cond_3

    goto/16 :goto_b

    :cond_3
    :goto_3
    if-eqz v3, :cond_5

    .line 659
    iget-object v1, v6, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v1}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->makeSuperwallOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getPaywalls()Lcom/superwall/sdk/config/options/PaywallOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/config/options/PaywallOptions;->getAutomaticallyDismiss()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 660
    iget-object v1, v6, Lcom/superwall/sdk/store/transactions/TransactionManager;->dismiss:Lkotlin/jvm/functions/Function3;

    .line 661
    check-cast v4, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;

    invoke-virtual {v4}, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    .line 662
    new-instance v3, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult$Purchased;

    invoke-virtual {v5}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getFullIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult$Purchased;-><init>(Ljava/lang/String;)V

    .line 660
    iput-object v11, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$0:Ljava/lang/Object;

    iput-object v11, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$1:Ljava/lang/Object;

    iput-object v11, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$2:Ljava/lang/Object;

    const/4 v4, 0x4

    iput v4, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->label:I

    invoke-interface {v1, v2, v3, v12}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v10, :cond_4

    goto/16 :goto_b

    .line 698
    :cond_4
    :goto_4
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 665
    :cond_5
    iget-object v1, v6, Lcom/superwall/sdk/store/transactions/TransactionManager;->updateState:Lkotlin/jvm/functions/Function2;

    .line 666
    check-cast v4, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;

    invoke-virtual {v4}, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    .line 667
    new-instance v3, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetLoadingState;

    sget-object v4, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$Ready;->INSTANCE:Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$Ready;

    check-cast v4, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    invoke-direct {v3, v4}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetLoadingState;-><init>(Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;)V

    .line 665
    invoke-interface {v1, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :cond_6
    move-object v12, v2

    .line 672
    instance-of v13, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ExternalPurchase;

    if-nez v13, :cond_8

    instance-of v1, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ObserverMode;

    if-eqz v1, :cond_7

    goto :goto_5

    .line 636
    :cond_7
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 675
    :cond_8
    :goto_5
    const-string v1, "product_id"

    invoke-virtual {v7}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getFullIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    const/16 v5, 0x9

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 673
    const-string v2, "Transaction Succeeded"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/superwall/sdk/store/transactions/TransactionManager;->log$default(Lcom/superwall/sdk/store/transactions/TransactionManager;Lcom/superwall/sdk/logger/LogLevel;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 677
    iget-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v1}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->makeTransactionVerifier()Lcom/superwall/sdk/billing/GoogleBillingWrapper;

    move-result-object v4

    if-eqz v13, :cond_d

    .line 681
    iget-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    check-cast v1, Lcom/superwall/sdk/dependencies/StoreTransactionFactory;

    .line 680
    iput-object v0, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$0:Ljava/lang/Object;

    iput-object v7, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$1:Ljava/lang/Object;

    iput-object v8, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$2:Ljava/lang/Object;

    move-object/from16 v2, p4

    iput-object v2, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$3:Ljava/lang/Object;

    iput-object v4, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$4:Ljava/lang/Object;

    iput-boolean v9, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->Z$0:Z

    const/4 v3, 0x5

    iput v3, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->label:I

    invoke-virtual {v4, v1, v12}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->getLatestTransaction(Lcom/superwall/sdk/dependencies/StoreTransactionFactory;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v10, :cond_9

    goto/16 :goto_b

    :cond_9
    move-object v6, v8

    move-object v8, v0

    :goto_6
    if-eqz v2, :cond_b

    .line 684
    iget-object v1, v8, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    iput-object v8, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$0:Ljava/lang/Object;

    iput-object v7, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$1:Ljava/lang/Object;

    iput-object v6, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$2:Ljava/lang/Object;

    iput-object v11, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$3:Ljava/lang/Object;

    iput-object v11, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$4:Ljava/lang/Object;

    iput-boolean v9, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->Z$0:Z

    const/4 v3, 0x6

    iput v3, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->label:I

    invoke-interface {v1, v2, v12}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->makeStoreTransaction(Lcom/android/billingclient/api/Purchase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v10, :cond_a

    goto/16 :goto_b

    :cond_a
    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    :goto_7
    check-cast v1, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;

    goto :goto_9

    .line 687
    :cond_b
    iget-object v1, v8, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    check-cast v1, Lcom/superwall/sdk/dependencies/StoreTransactionFactory;

    .line 686
    iput-object v8, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$0:Ljava/lang/Object;

    iput-object v7, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$1:Ljava/lang/Object;

    iput-object v6, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$2:Ljava/lang/Object;

    iput-object v11, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$3:Ljava/lang/Object;

    iput-object v11, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$4:Ljava/lang/Object;

    iput-boolean v9, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->Z$0:Z

    const/4 v2, 0x7

    iput v2, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->label:I

    invoke-virtual {v4, v1, v12}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->getLatestTransaction(Lcom/superwall/sdk/dependencies/StoreTransactionFactory;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v10, :cond_c

    goto :goto_b

    :cond_c
    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    :goto_8
    check-cast v1, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;

    goto :goto_9

    :cond_d
    move-object v6, v0

    move-object v5, v7

    move-object v4, v8

    move-object v1, v11

    .line 693
    :goto_9
    iget-object v2, v6, Lcom/superwall/sdk/store/transactions/TransactionManager;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    iget-object v3, v6, Lcom/superwall/sdk/store/transactions/TransactionManager;->allEntitlementsByProductId:Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    iput-object v6, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$0:Ljava/lang/Object;

    iput-object v5, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$1:Ljava/lang/Object;

    iput-object v4, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$2:Ljava/lang/Object;

    iput-object v1, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$3:Ljava/lang/Object;

    iput-boolean v9, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->Z$0:Z

    const/16 v7, 0x8

    iput v7, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->label:I

    invoke-virtual {v2, v3, v12}, Lcom/superwall/sdk/store/StoreManager;->loadPurchasedProducts(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v10, :cond_e

    goto :goto_b

    :cond_e
    move-object v7, v6

    move v3, v9

    move-object v6, v5

    move-object v5, v4

    move-object v4, v1

    .line 695
    :goto_a
    iput-object v11, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$0:Ljava/lang/Object;

    iput-object v11, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$1:Ljava/lang/Object;

    iput-object v11, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$2:Ljava/lang/Object;

    iput-object v11, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->L$3:Ljava/lang/Object;

    const/16 v1, 0x9

    iput v1, v12, Lcom/superwall/sdk/store/transactions/TransactionManager$didPurchase$1;->label:I

    move/from16 p5, v3

    move-object/from16 p2, v4

    move-object/from16 p4, v5

    move-object/from16 p3, v6

    move-object/from16 p1, v7

    move-object/from16 p6, v12

    invoke-direct/range {p1 .. p6}, Lcom/superwall/sdk/store/transactions/TransactionManager;->trackTransactionDidSucceed(Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v10, :cond_f

    :goto_b
    return-object v10

    .line 698
    :cond_f
    :goto_c
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic didPurchase$default(Lcom/superwall/sdk/store/transactions/TransactionManager;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;ZLcom/android/billingclient/api/Purchase;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 629
    invoke-direct/range {v0 .. v6}, Lcom/superwall/sdk/store/transactions/TransactionManager;->didPurchase(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;ZLcom/android/billingclient/api/Purchase;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final didRestore(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            "Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    instance-of v3, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$didRestore$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/superwall/sdk/store/transactions/TransactionManager$didRestore$1;

    iget v4, v3, Lcom/superwall/sdk/store/transactions/TransactionManager$didRestore$1;->label:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v2, v3, Lcom/superwall/sdk/store/transactions/TransactionManager$didRestore$1;->label:I

    sub-int/2addr v2, v5

    iput v2, v3, Lcom/superwall/sdk/store/transactions/TransactionManager$didRestore$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/superwall/sdk/store/transactions/TransactionManager$didRestore$1;

    invoke-direct {v3, v0, v2}, Lcom/superwall/sdk/store/transactions/TransactionManager$didRestore$1;-><init>(Lcom/superwall/sdk/store/transactions/TransactionManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/superwall/sdk/store/transactions/TransactionManager$didRestore$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 433
    iget v5, v3, Lcom/superwall/sdk/store/transactions/TransactionManager$didRestore$1;->label:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_4

    if-eq v5, v8, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, v3, Lcom/superwall/sdk/store/transactions/TransactionManager$didRestore$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;

    iget-object v5, v3, Lcom/superwall/sdk/store/transactions/TransactionManager$didRestore$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_3
    iget-object v1, v3, Lcom/superwall/sdk/store/transactions/TransactionManager$didRestore$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;

    iget-object v5, v3, Lcom/superwall/sdk/store/transactions/TransactionManager$didRestore$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    iget-object v8, v3, Lcom/superwall/sdk/store/transactions/TransactionManager$didRestore$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v1

    move-object v1, v5

    goto :goto_1

    :cond_4
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 437
    iget-object v2, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v2}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->makeTransactionVerifier()Lcom/superwall/sdk/billing/GoogleBillingWrapper;

    move-result-object v2

    if-eqz v1, :cond_6

    .line 445
    iget-object v5, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    check-cast v5, Lcom/superwall/sdk/dependencies/StoreTransactionFactory;

    .line 444
    iput-object v0, v3, Lcom/superwall/sdk/store/transactions/TransactionManager$didRestore$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Lcom/superwall/sdk/store/transactions/TransactionManager$didRestore$1;->L$1:Ljava/lang/Object;

    move-object/from16 v10, p2

    iput-object v10, v3, Lcom/superwall/sdk/store/transactions/TransactionManager$didRestore$1;->L$2:Ljava/lang/Object;

    iput v8, v3, Lcom/superwall/sdk/store/transactions/TransactionManager$didRestore$1;->label:I

    invoke-virtual {v2, v5, v3}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->getLatestTransaction(Lcom/superwall/sdk/dependencies/StoreTransactionFactory;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_5

    goto/16 :goto_7

    :cond_5
    move-object v8, v0

    .line 433
    :goto_1
    check-cast v2, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;

    .line 447
    new-instance v5, Lcom/superwall/sdk/store/transactions/RestoreType$ViaPurchase;

    invoke-direct {v5, v2}, Lcom/superwall/sdk/store/transactions/RestoreType$ViaPurchase;-><init>(Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;)V

    check-cast v5, Lcom/superwall/sdk/store/transactions/RestoreType;

    goto :goto_2

    :cond_6
    move-object/from16 v10, p2

    .line 450
    sget-object v2, Lcom/superwall/sdk/store/transactions/RestoreType$ViaRestore;->INSTANCE:Lcom/superwall/sdk/store/transactions/RestoreType$ViaRestore;

    move-object v5, v2

    check-cast v5, Lcom/superwall/sdk/store/transactions/RestoreType;

    move-object v8, v0

    .line 455
    :goto_2
    new-instance v2, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Restore;

    invoke-direct {v2, v5}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Restore;-><init>(Lcom/superwall/sdk/store/transactions/RestoreType;)V

    .line 456
    instance-of v5, v10, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;

    if-eqz v5, :cond_7

    move-object v11, v10

    check-cast v11, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;

    invoke-virtual {v11}, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v11

    goto :goto_3

    :cond_7
    sget-object v11, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->Companion:Lcom/superwall/sdk/paywall/presentation/PaywallInfo$Companion;

    invoke-virtual {v11}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo$Companion;->empty()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v11

    :goto_3
    move-object v14, v11

    .line 459
    iget-object v11, v8, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v11}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->makeSuperwallOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v11

    invoke-virtual {v11}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getShouldObservePurchases()Z

    move-result v18

    .line 462
    instance-of v11, v10, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ExternalPurchase;

    if-eqz v11, :cond_8

    sget-object v5, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;->EXTERNAL:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;

    :goto_4
    move-object/from16 v17, v5

    goto :goto_5

    :cond_8
    if-eqz v5, :cond_9

    .line 463
    sget-object v5, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;->INTERNAL:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;

    goto :goto_4

    .line 464
    :cond_9
    instance-of v5, v10, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ObserverMode;

    if-eqz v5, :cond_d

    sget-object v5, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;->OBSERVER:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;

    goto :goto_4

    .line 466
    :goto_5
    iget-object v5, v8, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v5}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->demandScore()Ljava/lang/Integer;

    move-result-object v19

    .line 467
    iget-object v5, v8, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v5}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->demandTier()Ljava/lang/String;

    move-result-object v20

    .line 454
    new-instance v12, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;

    .line 455
    move-object v13, v2

    check-cast v13, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;

    .line 457
    move-object v15, v1

    check-cast v15, Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

    const/16 v23, 0x300

    const/16 v24, 0x0

    const/16 v16, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 454
    invoke-direct/range {v12 .. v24}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;-><init>(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;ZLjava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 469
    iget-object v1, v8, Lcom/superwall/sdk/store/transactions/TransactionManager;->track:Lkotlin/jvm/functions/Function2;

    iput-object v8, v3, Lcom/superwall/sdk/store/transactions/TransactionManager$didRestore$1;->L$0:Ljava/lang/Object;

    iput-object v10, v3, Lcom/superwall/sdk/store/transactions/TransactionManager$didRestore$1;->L$1:Ljava/lang/Object;

    iput-object v9, v3, Lcom/superwall/sdk/store/transactions/TransactionManager$didRestore$1;->L$2:Ljava/lang/Object;

    iput v7, v3, Lcom/superwall/sdk/store/transactions/TransactionManager$didRestore$1;->label:I

    invoke-interface {v1, v12, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_a

    goto :goto_7

    :cond_a
    move-object v5, v8

    move-object v1, v10

    .line 471
    :goto_6
    iget-object v2, v5, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v2}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->makeSuperwallOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v2

    .line 472
    invoke-virtual {v2}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getPaywalls()Lcom/superwall/sdk/config/options/PaywallOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/config/options/PaywallOptions;->getAutomaticallyDismiss()Z

    move-result v2

    if-eqz v2, :cond_c

    instance-of v2, v1, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;

    if-eqz v2, :cond_c

    .line 473
    iget-object v2, v5, Lcom/superwall/sdk/store/transactions/TransactionManager;->dismiss:Lkotlin/jvm/functions/Function3;

    .line 474
    check-cast v1, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;

    invoke-virtual {v1}, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    .line 475
    new-instance v5, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult$Restored;

    invoke-direct {v5}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult$Restored;-><init>()V

    .line 473
    iput-object v9, v3, Lcom/superwall/sdk/store/transactions/TransactionManager$didRestore$1;->L$0:Ljava/lang/Object;

    iput-object v9, v3, Lcom/superwall/sdk/store/transactions/TransactionManager$didRestore$1;->L$1:Ljava/lang/Object;

    iput v6, v3, Lcom/superwall/sdk/store/transactions/TransactionManager$didRestore$1;->label:I

    invoke-interface {v2, v1, v5, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_b

    :goto_7
    return-object v4

    .line 478
    :cond_b
    :goto_8
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :cond_c
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 461
    :cond_d
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1
.end method

.method static synthetic didRestore$default(Lcom/superwall/sdk/store/transactions/TransactionManager;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    .line 433
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/superwall/sdk/store/transactions/TransactionManager;->didRestore(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getShouldObserveTransactionFinishingAutomatically()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v0}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->makeSuperwallOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getShouldObservePurchases()Z

    move-result v0

    return v0
.end method

.method private final handlePendingTransaction(Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$handlePendingTransaction$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/superwall/sdk/store/transactions/TransactionManager$handlePendingTransaction$1;

    iget v4, v3, Lcom/superwall/sdk/store/transactions/TransactionManager$handlePendingTransaction$1;->label:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v2, v3, Lcom/superwall/sdk/store/transactions/TransactionManager$handlePendingTransaction$1;->label:I

    sub-int/2addr v2, v5

    iput v2, v3, Lcom/superwall/sdk/store/transactions/TransactionManager$handlePendingTransaction$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/superwall/sdk/store/transactions/TransactionManager$handlePendingTransaction$1;

    invoke-direct {v3, v0, v2}, Lcom/superwall/sdk/store/transactions/TransactionManager$handlePendingTransaction$1;-><init>(Lcom/superwall/sdk/store/transactions/TransactionManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/superwall/sdk/store/transactions/TransactionManager$handlePendingTransaction$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 768
    iget v5, v3, Lcom/superwall/sdk/store/transactions/TransactionManager$handlePendingTransaction$1;->label:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, v3, Lcom/superwall/sdk/store/transactions/TransactionManager$handlePendingTransaction$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 770
    instance-of v13, v1, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ObserverMode;

    .line 773
    instance-of v2, v1, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;

    const-string v5, "Needs parental approval"

    const/4 v8, 0x0

    if-eqz v2, :cond_5

    .line 774
    iget-object v2, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v9, v2

    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/superwall/sdk/store/transactions/TransactionManager$handlePendingTransaction$2;

    invoke-direct {v2, v0, v1, v8}, Lcom/superwall/sdk/store/transactions/TransactionManager$handlePendingTransaction$2;-><init>(Lcom/superwall/sdk/store/transactions/TransactionManager;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;)V

    move-object v12, v2

    check-cast v12, Lkotlin/jvm/functions/Function2;

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 781
    check-cast v1, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;

    invoke-virtual {v1}, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v10

    .line 785
    new-instance v1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Fail;

    new-instance v2, Lcom/superwall/sdk/store/transactions/TransactionError$Pending;

    invoke-direct {v2, v5}, Lcom/superwall/sdk/store/transactions/TransactionError$Pending;-><init>(Ljava/lang/String;)V

    check-cast v2, Lcom/superwall/sdk/store/transactions/TransactionError;

    invoke-direct {v1, v2}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Fail;-><init>(Lcom/superwall/sdk/store/transactions/TransactionError;)V

    .line 789
    iget-object v2, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v2}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->makeSuperwallOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getShouldObservePurchases()Z

    move-result v14

    .line 790
    sget-object v13, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;->INTERNAL:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;

    .line 791
    iget-object v2, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v2}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->demandScore()Ljava/lang/Integer;

    move-result-object v15

    .line 792
    iget-object v2, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v2}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->demandTier()Ljava/lang/String;

    move-result-object v16

    .line 784
    new-instance v8, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;

    .line 785
    move-object v9, v1

    check-cast v9, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;

    const/16 v19, 0x300

    const/16 v20, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 784
    invoke-direct/range {v8 .. v20}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;-><init>(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;ZLjava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 794
    iget-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->track:Lkotlin/jvm/functions/Function2;

    iput-object v0, v3, Lcom/superwall/sdk/store/transactions/TransactionManager$handlePendingTransaction$1;->L$0:Ljava/lang/Object;

    iput v7, v3, Lcom/superwall/sdk/store/transactions/TransactionManager$handlePendingTransaction$1;->label:I

    invoke-interface {v1, v8, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_4

    goto/16 :goto_3

    :cond_4
    move-object v1, v0

    .line 796
    :goto_1
    iget-object v1, v1, Lcom/superwall/sdk/store/transactions/TransactionManager;->showAlert:Lkotlin/jvm/functions/Function1;

    .line 797
    new-instance v2, Lcom/superwall/sdk/misc/AlertControllerFactory$AlertProps;

    const/16 v9, 0x3c

    const/4 v10, 0x0

    const-string v3, "Waiting for Approval"

    const-string v4, "Thank you! This purchase is pending approval from your parent. Please try again once it is approved."

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/superwall/sdk/misc/AlertControllerFactory$AlertProps;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 796
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 804
    :cond_5
    instance-of v1, v1, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ExternalPurchase;

    if-nez v1, :cond_7

    if-eqz v13, :cond_6

    goto :goto_2

    .line 772
    :cond_6
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 807
    :cond_7
    :goto_2
    iget-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v14, v1

    check-cast v14, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/superwall/sdk/store/transactions/TransactionManager$handlePendingTransaction$3;

    invoke-direct {v1, v0, v8}, Lcom/superwall/sdk/store/transactions/TransactionManager$handlePendingTransaction$3;-><init>(Lcom/superwall/sdk/store/transactions/TransactionManager;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v17, v1

    check-cast v17, Lkotlin/jvm/functions/Function2;

    const/16 v18, 0x3

    const/16 v19, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v14 .. v19}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 813
    new-instance v1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Fail;

    new-instance v2, Lcom/superwall/sdk/store/transactions/TransactionError$Pending;

    invoke-direct {v2, v5}, Lcom/superwall/sdk/store/transactions/TransactionError$Pending;-><init>(Ljava/lang/String;)V

    check-cast v2, Lcom/superwall/sdk/store/transactions/TransactionError;

    invoke-direct {v1, v2}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Fail;-><init>(Lcom/superwall/sdk/store/transactions/TransactionError;)V

    .line 814
    sget-object v2, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->Companion:Lcom/superwall/sdk/paywall/presentation/PaywallInfo$Companion;

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo$Companion;->empty()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v9

    .line 818
    sget-object v12, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;->EXTERNAL:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;

    .line 819
    iget-object v2, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v2}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->demandScore()Ljava/lang/Integer;

    move-result-object v14

    .line 820
    iget-object v2, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v2}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->demandTier()Ljava/lang/String;

    move-result-object v15

    .line 812
    new-instance v7, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;

    .line 813
    move-object v8, v1

    check-cast v8, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;

    const/16 v18, 0x300

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    .line 812
    invoke-direct/range {v7 .. v19}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;-><init>(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;ZLjava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 822
    iget-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->track:Lkotlin/jvm/functions/Function2;

    iput v6, v3, Lcom/superwall/sdk/store/transactions/TransactionManager$handlePendingTransaction$1;->label:I

    invoke-interface {v1, v7, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_8

    :goto_3
    return-object v4

    .line 825
    :cond_8
    :goto_4
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method private final log(Lcom/superwall/sdk/logger/LogLevel;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/logger/LogLevel;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1082
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 1084
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->paywallTransactions:Lcom/superwall/sdk/logger/LogScope;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1082
    invoke-virtual/range {v0 .. v5}, Lcom/superwall/sdk/logger/Logger;->debug(Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic log$default(Lcom/superwall/sdk/store/transactions/TransactionManager;Lcom/superwall/sdk/logger/LogLevel;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 1078
    sget-object p1, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    .line 1077
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/store/transactions/TransactionManager;->log(Lcom/superwall/sdk/logger/LogLevel;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final presentAlert(Ljava/lang/Error;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/paywall/view/PaywallViewState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Error;",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            "Lcom/superwall/sdk/paywall/view/PaywallViewState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 967
    iget-object p4, p0, Lcom/superwall/sdk/store/transactions/TransactionManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v0, p4

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/superwall/sdk/store/transactions/TransactionManager$presentAlert$2;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v5, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/superwall/sdk/store/transactions/TransactionManager$presentAlert$2;-><init>(Lcom/superwall/sdk/store/transactions/TransactionManager;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/paywall/view/PaywallViewState;Ljava/lang/Error;Lkotlin/coroutines/Continuation;)V

    move-object p1, v2

    move-object p2, v5

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 979
    iget-object p3, p1, Lcom/superwall/sdk/store/transactions/TransactionManager;->showAlert:Lkotlin/jvm/functions/Function1;

    .line 980
    new-instance v0, Lcom/superwall/sdk/misc/AlertControllerFactory$AlertProps;

    .line 982
    invoke-virtual {p2}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "Unknown error"

    :cond_0
    move-object v2, p2

    const/16 v7, 0x3c

    const/4 v8, 0x0

    .line 980
    const-string v1, "An error occurred"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/superwall/sdk/misc/AlertControllerFactory$AlertProps;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 979
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p2
.end method

.method public static synthetic purchase$default(Lcom/superwall/sdk/store/transactions/TransactionManager;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x1

    .line 280
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/superwall/sdk/store/transactions/TransactionManager;->purchase(Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final trackCancelled(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            "Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    instance-of v4, v3, Lcom/superwall/sdk/store/transactions/TransactionManager$trackCancelled$1;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/superwall/sdk/store/transactions/TransactionManager$trackCancelled$1;

    iget v5, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$trackCancelled$1;->label:I

    const/high16 v6, -0x80000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    iget v3, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$trackCancelled$1;->label:I

    sub-int/2addr v3, v6

    iput v3, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$trackCancelled$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/superwall/sdk/store/transactions/TransactionManager$trackCancelled$1;

    invoke-direct {v4, v0, v3}, Lcom/superwall/sdk/store/transactions/TransactionManager$trackCancelled$1;-><init>(Lcom/superwall/sdk/store/transactions/TransactionManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v3, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$trackCancelled$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 700
    iget v6, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$trackCancelled$1;->label:I

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v6, :cond_4

    if-eq v6, v9, :cond_3

    if-eq v6, v8, :cond_2

    if-ne v6, v7, :cond_1

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$trackCancelled$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    iget-object v2, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$trackCancelled$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    iget-object v1, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$trackCancelled$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    iget-object v2, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$trackCancelled$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 705
    instance-of v15, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ObserverMode;

    .line 708
    instance-of v3, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;

    const/4 v6, 0x0

    if-eqz v3, :cond_7

    .line 709
    iget-object v3, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    move-object/from16 v16, v3

    check-cast v16, Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/superwall/sdk/store/transactions/TransactionManager$trackCancelled$2;

    invoke-direct {v3, v0, v1, v2, v6}, Lcom/superwall/sdk/store/transactions/TransactionManager$trackCancelled$2;-><init>(Lcom/superwall/sdk/store/transactions/TransactionManager;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v19, v3

    check-cast v19, Lkotlin/jvm/functions/Function2;

    const/16 v20, 0x3

    const/16 v21, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v16 .. v21}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 720
    check-cast v2, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;

    invoke-virtual {v2}, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v12

    .line 723
    new-instance v2, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Abandon;

    move-object v13, v1

    check-cast v13, Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

    invoke-direct {v2, v13}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Abandon;-><init>(Lcom/superwall/sdk/store/abstractions/product/StoreProductType;)V

    move/from16 v16, v15

    .line 728
    sget-object v15, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;->INTERNAL:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;

    .line 729
    iget-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v1}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->demandScore()Ljava/lang/Integer;

    move-result-object v17

    .line 730
    iget-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v1}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->demandTier()Ljava/lang/String;

    move-result-object v18

    .line 722
    new-instance v10, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;

    .line 723
    move-object v11, v2

    check-cast v11, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;

    const/16 v21, 0x300

    const/16 v22, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 722
    invoke-direct/range {v10 .. v22}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;-><init>(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;ZLjava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 732
    iget-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->track:Lkotlin/jvm/functions/Function2;

    iput-object v0, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$trackCancelled$1;->L$0:Ljava/lang/Object;

    iput-object v12, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$trackCancelled$1;->L$1:Ljava/lang/Object;

    iput v9, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$trackCancelled$1;->label:I

    invoke-interface {v1, v10, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_5

    goto/16 :goto_4

    :cond_5
    move-object v2, v0

    move-object v1, v12

    .line 734
    :goto_1
    iget-object v3, v2, Lcom/superwall/sdk/store/transactions/TransactionManager;->notifyOfTransactionAbandon:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getCacheKey()Ljava/lang/String;

    move-result-object v6

    iput-object v2, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$trackCancelled$1;->L$0:Ljava/lang/Object;

    iput-object v1, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$trackCancelled$1;->L$1:Ljava/lang/Object;

    iput v8, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$trackCancelled$1;->label:I

    invoke-interface {v3, v6, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_6

    goto :goto_4

    .line 736
    :cond_6
    :goto_2
    iget-object v2, v2, Lcom/superwall/sdk/store/transactions/TransactionManager;->updateState:Lkotlin/jvm/functions/Function2;

    .line 737
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    .line 738
    new-instance v3, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetLoadingState;

    .line 739
    sget-object v4, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$Ready;->INSTANCE:Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$Ready;

    check-cast v4, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    .line 738
    invoke-direct {v3, v4}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetLoadingState;-><init>(Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;)V

    .line 736
    invoke-interface {v2, v1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :cond_7
    move/from16 v16, v15

    .line 744
    instance-of v2, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ExternalPurchase;

    if-nez v2, :cond_9

    if-eqz v16, :cond_8

    goto :goto_3

    .line 707
    :cond_8
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 745
    :cond_9
    :goto_3
    iget-object v2, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v8, v2

    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/superwall/sdk/store/transactions/TransactionManager$trackCancelled$3;

    invoke-direct {v2, v0, v1, v6}, Lcom/superwall/sdk/store/transactions/TransactionManager$trackCancelled$3;-><init>(Lcom/superwall/sdk/store/transactions/TransactionManager;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lkotlin/coroutines/Continuation;)V

    move-object v11, v2

    check-cast v11, Lkotlin/jvm/functions/Function2;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 754
    new-instance v2, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Abandon;

    move-object v12, v1

    check-cast v12, Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

    invoke-direct {v2, v12}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Abandon;-><init>(Lcom/superwall/sdk/store/abstractions/product/StoreProductType;)V

    .line 755
    sget-object v1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->Companion:Lcom/superwall/sdk/paywall/presentation/PaywallInfo$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo$Companion;->empty()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v11

    .line 759
    sget-object v14, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;->EXTERNAL:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;

    .line 760
    iget-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v1}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->demandScore()Ljava/lang/Integer;

    move-result-object v1

    .line 761
    iget-object v3, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v3}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->demandTier()Ljava/lang/String;

    move-result-object v17

    .line 753
    new-instance v9, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;

    .line 754
    move-object v10, v2

    check-cast v10, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;

    const/16 v20, 0x300

    const/16 v21, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v15, v16

    move-object/from16 v16, v1

    .line 753
    invoke-direct/range {v9 .. v21}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;-><init>(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;ZLjava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 763
    iget-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->track:Lkotlin/jvm/functions/Function2;

    iput v7, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$trackCancelled$1;->label:I

    invoke-interface {v1, v9, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_a

    :goto_4
    return-object v5

    .line 766
    :cond_a
    :goto_5
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method private final trackFailure(Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;)V
    .locals 8

    .line 486
    instance-of v0, p3, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;

    const-string v1, "product_id"

    const-string v2, "Transaction Error: "

    if-eqz v0, :cond_0

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    .line 492
    new-array v0, v0, [Lkotlin/Pair;

    invoke-virtual {p2}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getFullIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 493
    move-object v1, p3

    check-cast v1, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;

    invoke-virtual {v1}, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v1

    const-string v3, "paywall_state"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 491
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    const/16 v5, 0x9

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    .line 487
    invoke-static/range {v0 .. v6}, Lcom/superwall/sdk/store/transactions/TransactionManager;->log$default(Lcom/superwall/sdk/store/transactions/TransactionManager;Lcom/superwall/sdk/logger/LogLevel;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 497
    iget-object v1, p0, Lcom/superwall/sdk/store/transactions/TransactionManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v6, v1

    check-cast v6, Lcom/superwall/sdk/misc/SuperwallScope;

    new-instance v0, Lcom/superwall/sdk/store/transactions/TransactionManager$trackFailure$1;

    const/4 v5, 0x0

    move-object v4, p0

    move-object v2, p1

    move-object v3, p2

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/superwall/sdk/store/transactions/TransactionManager$trackFailure$1;-><init>(Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v0}, Lcom/superwall/sdk/misc/ScopesKt;->launchWithTracking(Lcom/superwall/sdk/misc/SuperwallScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    return-void

    .line 521
    :cond_0
    instance-of v0, p3, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ExternalPurchase;

    if-nez v0, :cond_2

    instance-of v0, p3, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ObserverMode;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 485
    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 523
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 524
    invoke-virtual {p2}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getFullIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    .line 525
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    .line 522
    invoke-static/range {v0 .. v6}, Lcom/superwall/sdk/store/transactions/TransactionManager;->log$default(Lcom/superwall/sdk/store/transactions/TransactionManager;Lcom/superwall/sdk/logger/LogLevel;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 527
    iget-object v1, p0, Lcom/superwall/sdk/store/transactions/TransactionManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v6, v1

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/store/transactions/TransactionManager$trackFailure$2;

    const/4 v5, 0x0

    move-object v4, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/superwall/sdk/store/transactions/TransactionManager$trackFailure$2;-><init>(Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lcom/superwall/sdk/store/transactions/TransactionManager;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    move-object v2, v6

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final trackTransactionDidSucceed(Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            "Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    instance-of v5, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;

    iget v6, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->label:I

    const/high16 v7, -0x80000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    iget v4, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->label:I

    sub-int/2addr v4, v7

    iput v4, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;

    invoke-direct {v5, v0, v4}, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;-><init>(Lcom/superwall/sdk/store/transactions/TransactionManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v4, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v6

    .line 987
    iget v7, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->label:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    packed-switch v7, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_1
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_2
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_3
    iget-boolean v1, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->Z$0:Z

    iget-object v2, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    iget-object v3, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_4
    iget-boolean v1, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->Z$0:Z

    iget-object v2, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    iget-object v3, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v26, v3

    move v3, v1

    move-object v1, v2

    move-object/from16 v2, v26

    goto/16 :goto_9

    :pswitch_5
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_6
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_7
    iget-boolean v1, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->Z$0:Z

    iget-object v2, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    iget-object v3, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    iget-object v7, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_8
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_9
    iget-boolean v1, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->Z$0:Z

    iget-object v2, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    iget-object v3, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    iget-object v7, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;

    iget-object v8, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    iget-object v9, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v3

    move-object v3, v8

    move-object v8, v7

    move-object v7, v9

    goto/16 :goto_3

    :pswitch_a
    iget-boolean v1, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->Z$0:Z

    iget-object v2, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    iget-object v3, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    iget-object v7, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;

    iget-object v11, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    iget-object v12, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v2

    move-object v2, v7

    goto/16 :goto_2

    :pswitch_b
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 994
    instance-of v4, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ObserverMode;

    .line 997
    instance-of v7, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;

    if-eqz v7, :cond_a

    .line 998
    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getTrialPeriodEndDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-static {v11, v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v10

    .line 999
    :goto_1
    move-object v7, v2

    check-cast v7, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;

    invoke-virtual {v7}, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v13

    .line 1002
    new-instance v11, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;

    .line 1003
    new-instance v7, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Complete;

    move-object v14, v1

    check-cast v14, Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

    move-object/from16 v12, p1

    check-cast v12, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;

    invoke-direct {v7, v14, v12}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Complete;-><init>(Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;)V

    move-object v12, v7

    check-cast v12, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;

    .line 1007
    sget-object v16, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;->INTERNAL:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;

    .line 1009
    iget-object v7, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v7}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->demandScore()Ljava/lang/Integer;

    move-result-object v18

    .line 1010
    iget-object v7, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v7}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->demandTier()Ljava/lang/String;

    move-result-object v19

    .line 1011
    iget-object v7, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v7}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->getCurrentUserAttributes()Ljava/util/Map;

    move-result-object v20

    const/16 v22, 0x200

    const/16 v23, 0x0

    const/16 v17, 0x0

    const/16 v21, 0x0

    move-object/from16 v15, p1

    .line 1002
    invoke-direct/range {v11 .. v23}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;-><init>(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;ZLjava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1013
    iget-object v7, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->track:Lkotlin/jvm/functions/Function2;

    iput-object v0, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$0:Ljava/lang/Object;

    iput-object v1, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$1:Ljava/lang/Object;

    iput-object v2, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$2:Ljava/lang/Object;

    iput-object v4, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$3:Ljava/lang/Object;

    iput-object v13, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$4:Ljava/lang/Object;

    iput-boolean v3, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->Z$0:Z

    iput v9, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->label:I

    invoke-interface {v7, v11, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v6, :cond_2

    goto/16 :goto_d

    :cond_2
    move-object v12, v0

    move-object v11, v1

    move v1, v3

    move-object v3, v4

    .line 1014
    :goto_2
    iget-object v4, v12, Lcom/superwall/sdk/store/transactions/TransactionManager;->eventsQueue:Lcom/superwall/sdk/storage/EventsQueue;

    iput-object v12, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$0:Ljava/lang/Object;

    iput-object v11, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$1:Ljava/lang/Object;

    iput-object v2, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$2:Ljava/lang/Object;

    iput-object v3, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$3:Ljava/lang/Object;

    iput-object v13, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$4:Ljava/lang/Object;

    iput-boolean v1, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->Z$0:Z

    const/4 v7, 0x2

    iput v7, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->label:I

    invoke-static {v4, v8, v5, v9, v10}, Lcom/superwall/sdk/storage/EventsQueue;->flushInternal$default(Lcom/superwall/sdk/storage/EventsQueue;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v6, :cond_3

    goto/16 :goto_d

    :cond_3
    move-object v8, v2

    move-object v4, v3

    move-object v3, v11

    move-object v7, v12

    move-object v2, v13

    .line 1015
    :goto_3
    invoke-virtual {v3}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object v9

    if-nez v9, :cond_5

    .line 1017
    new-instance v1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$NonRecurringProductPurchase;

    invoke-direct {v1, v2, v3}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$NonRecurringProductPurchase;-><init>(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)V

    .line 1021
    iget-object v2, v7, Lcom/superwall/sdk/store/transactions/TransactionManager;->track:Lkotlin/jvm/functions/Function2;

    iput-object v10, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$0:Ljava/lang/Object;

    iput-object v10, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$1:Ljava/lang/Object;

    iput-object v10, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$2:Ljava/lang/Object;

    iput-object v10, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$3:Ljava/lang/Object;

    iput-object v10, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$4:Ljava/lang/Object;

    const/4 v3, 0x3

    iput v3, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->label:I

    invoke-interface {v2, v1, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_4

    goto/16 :goto_d

    .line 1075
    :cond_4
    :goto_4
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 1023
    :cond_5
    iget-object v9, v7, Lcom/superwall/sdk/store/transactions/TransactionManager;->notifyOfTransactionComplete:Lkotlin/jvm/functions/Function4;

    check-cast v8, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;

    invoke-virtual {v8}, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getCacheKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getFullIdentifier()Ljava/lang/String;

    move-result-object v11

    iput-object v7, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$0:Ljava/lang/Object;

    iput-object v3, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$1:Ljava/lang/Object;

    iput-object v2, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$2:Ljava/lang/Object;

    iput-object v10, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$3:Ljava/lang/Object;

    iput-object v10, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$4:Ljava/lang/Object;

    iput-boolean v1, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->Z$0:Z

    const/4 v12, 0x4

    iput v12, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->label:I

    invoke-interface {v9, v8, v4, v11, v5}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v6, :cond_6

    goto/16 :goto_d

    :cond_6
    :goto_5
    if-eqz v1, :cond_8

    .line 1026
    new-instance v1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$FreeTrialStart;

    invoke-direct {v1, v2, v3}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$FreeTrialStart;-><init>(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)V

    .line 1027
    iget-object v2, v7, Lcom/superwall/sdk/store/transactions/TransactionManager;->track:Lkotlin/jvm/functions/Function2;

    iput-object v10, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$0:Ljava/lang/Object;

    iput-object v10, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$1:Ljava/lang/Object;

    iput-object v10, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$2:Ljava/lang/Object;

    const/4 v3, 0x5

    iput v3, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->label:I

    invoke-interface {v2, v1, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_7

    goto/16 :goto_d

    .line 1075
    :cond_7
    :goto_6
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 1030
    :cond_8
    new-instance v1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$SubscriptionStart;

    invoke-direct {v1, v2, v3}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$SubscriptionStart;-><init>(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)V

    .line 1031
    iget-object v2, v7, Lcom/superwall/sdk/store/transactions/TransactionManager;->track:Lkotlin/jvm/functions/Function2;

    iput-object v10, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$0:Ljava/lang/Object;

    iput-object v10, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$1:Ljava/lang/Object;

    iput-object v10, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$2:Ljava/lang/Object;

    const/4 v3, 0x6

    iput v3, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->label:I

    invoke-interface {v2, v1, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_9

    goto/16 :goto_d

    .line 1075
    :cond_9
    :goto_7
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 1036
    :cond_a
    instance-of v2, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ExternalPurchase;

    if-nez v2, :cond_c

    if-eqz v4, :cond_b

    goto :goto_8

    .line 996
    :cond_b
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 1039
    :cond_c
    :goto_8
    new-instance v2, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Complete;

    move-object v7, v1

    check-cast v7, Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

    move-object/from16 v11, p1

    check-cast v11, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;

    invoke-direct {v2, v7, v11}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Complete;-><init>(Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;)V

    .line 1040
    sget-object v11, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->Companion:Lcom/superwall/sdk/paywall/presentation/PaywallInfo$Companion;

    invoke-virtual {v11}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo$Companion;->empty()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v15

    .line 1043
    sget-object v18, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;->EXTERNAL:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;

    .line 1045
    iget-object v11, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v11}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->getCurrentUserAttributes()Ljava/util/Map;

    move-result-object v22

    .line 1046
    iget-object v11, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v11}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->demandScore()Ljava/lang/Integer;

    move-result-object v20

    .line 1047
    iget-object v11, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v11}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->demandTier()Ljava/lang/String;

    move-result-object v21

    .line 1038
    new-instance v13, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;

    .line 1039
    move-object v14, v2

    check-cast v14, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;

    const/16 v24, 0x200

    const/16 v25, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, p1

    move/from16 v19, v4

    move-object/from16 v16, v7

    .line 1038
    invoke-direct/range {v13 .. v25}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;-><init>(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;ZLjava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1049
    iget-object v2, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->track:Lkotlin/jvm/functions/Function2;

    iput-object v0, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$0:Ljava/lang/Object;

    iput-object v1, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$1:Ljava/lang/Object;

    iput-boolean v3, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->Z$0:Z

    const/4 v4, 0x7

    iput v4, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->label:I

    invoke-interface {v2, v13, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v6, :cond_d

    goto/16 :goto_d

    :cond_d
    move-object v2, v0

    .line 1050
    :goto_9
    iget-object v4, v2, Lcom/superwall/sdk/store/transactions/TransactionManager;->eventsQueue:Lcom/superwall/sdk/storage/EventsQueue;

    iput-object v2, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$0:Ljava/lang/Object;

    iput-object v1, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$1:Ljava/lang/Object;

    iput-boolean v3, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->Z$0:Z

    const/16 v7, 0x8

    iput v7, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->label:I

    invoke-static {v4, v8, v5, v9, v10}, Lcom/superwall/sdk/storage/EventsQueue;->flushInternal$default(Lcom/superwall/sdk/storage/EventsQueue;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v6, :cond_e

    goto :goto_d

    :cond_e
    move-object/from16 v26, v2

    move-object v2, v1

    move v1, v3

    move-object/from16 v3, v26

    .line 1052
    :goto_a
    invoke-virtual {v2}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object v4

    if-nez v4, :cond_10

    .line 1054
    new-instance v1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$NonRecurringProductPurchase;

    .line 1055
    sget-object v4, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->Companion:Lcom/superwall/sdk/paywall/presentation/PaywallInfo$Companion;

    invoke-virtual {v4}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo$Companion;->empty()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v4

    .line 1054
    invoke-direct {v1, v4, v2}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$NonRecurringProductPurchase;-><init>(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)V

    .line 1058
    iget-object v2, v3, Lcom/superwall/sdk/store/transactions/TransactionManager;->track:Lkotlin/jvm/functions/Function2;

    iput-object v10, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$0:Ljava/lang/Object;

    iput-object v10, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$1:Ljava/lang/Object;

    const/16 v3, 0x9

    iput v3, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->label:I

    invoke-interface {v2, v1, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_f

    goto :goto_d

    .line 1075
    :cond_f
    :goto_b
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :cond_10
    if-eqz v1, :cond_12

    .line 1062
    new-instance v1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$FreeTrialStart;

    sget-object v4, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->Companion:Lcom/superwall/sdk/paywall/presentation/PaywallInfo$Companion;

    invoke-virtual {v4}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo$Companion;->empty()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$FreeTrialStart;-><init>(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)V

    .line 1063
    iget-object v2, v3, Lcom/superwall/sdk/store/transactions/TransactionManager;->track:Lkotlin/jvm/functions/Function2;

    iput-object v10, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$0:Ljava/lang/Object;

    iput-object v10, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$1:Ljava/lang/Object;

    const/16 v3, 0xa

    iput v3, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->label:I

    invoke-interface {v2, v1, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_11

    goto :goto_d

    .line 1075
    :cond_11
    :goto_c
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 1066
    :cond_12
    new-instance v1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$SubscriptionStart;

    .line 1067
    sget-object v4, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->Companion:Lcom/superwall/sdk/paywall/presentation/PaywallInfo$Companion;

    invoke-virtual {v4}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo$Companion;->empty()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v4

    .line 1066
    invoke-direct {v1, v4, v2}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$SubscriptionStart;-><init>(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)V

    .line 1070
    iget-object v2, v3, Lcom/superwall/sdk/store/transactions/TransactionManager;->track:Lkotlin/jvm/functions/Function2;

    iput-object v10, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$0:Ljava/lang/Object;

    iput-object v10, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->L$1:Ljava/lang/Object;

    const/16 v3, 0xb

    iput v3, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->label:I

    invoke-interface {v2, v1, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_13

    :goto_d
    return-object v6

    .line 1075
    :cond_13
    :goto_e
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final handle$superwall_release(Lcom/superwall/sdk/delegate/InternalPurchaseResult;Lcom/superwall/sdk/store/PurchasingObserverState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/delegate/InternalPurchaseResult;",
            "Lcom/superwall/sdk/store/PurchasingObserverState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    instance-of v4, v3, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;

    iget v5, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->label:I

    const/high16 v6, -0x80000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    iget v3, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->label:I

    sub-int/2addr v3, v6

    iput v3, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;

    invoke-direct {v4, v0, v3}, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;-><init>(Lcom/superwall/sdk/store/transactions/TransactionManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v3, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 178
    iget v6, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->label:I

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/16 v11, 0xa

    const-string v12, "getProducts(...)"

    const/4 v13, 0x0

    if-eqz v6, :cond_5

    if-eq v6, v10, :cond_4

    if-eq v6, v9, :cond_3

    if-eq v6, v8, :cond_2

    if-ne v6, v7, :cond_1

    iget-object v1, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$4:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    iget-object v2, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v6, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$2:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    iget-object v8, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$1:Ljava/lang/Object;

    check-cast v8, Ljava/util/Iterator;

    iget-object v9, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$4:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    iget-object v2, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v6, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$2:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    iget-object v7, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/util/Iterator;

    iget-object v9, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_3
    iget-object v1, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_4
    iget-object v1, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$5:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    iget-object v2, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v6, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$3:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    iget-object v7, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lcom/android/billingclient/api/Purchase;

    iget-object v8, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$1:Ljava/lang/Object;

    check-cast v8, Ljava/util/Iterator;

    iget-object v9, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_5
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 182
    iget-object v3, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->transactionsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 183
    sget-object v14, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 184
    sget-object v15, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 185
    sget-object v16, Lcom/superwall/sdk/logger/LogScope;->paywallTransactions:Lcom/superwall/sdk/logger/LogScope;

    const/16 v20, 0x18

    const/16 v21, 0x0

    .line 183
    const-string v17, "Transactions in progress is empty but a transaction was attempted to be handled. This is likely a bug. Have you tracked the purchase start?"

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v14 .. v21}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 189
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 192
    :cond_6
    iget-object v3, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->transactionsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    const-string v6, "<get-entries>(...)"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->last(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    const-string v6, "last(...)"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/util/Map$Entry;

    .line 194
    instance-of v6, v1, Lcom/superwall/sdk/delegate/InternalPurchaseResult$Purchased;

    const-string v14, "null cannot be cast to non-null type com.superwall.sdk.store.PurchasingObserverState.PurchaseResult"

    if-eqz v6, :cond_a

    .line 195
    iget-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->refreshReceipt:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 196
    iget-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->transactionsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseResult;

    .line 198
    invoke-virtual {v1}, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseResult;->getPurchases()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_16

    check-cast v1, Ljava/lang/Iterable;

    .line 1091
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/Purchase;

    .line 199
    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Iterable;

    .line 1092
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v6, v11}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .line 1093
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v14, v2

    move-object v2, v1

    move-object v1, v7

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1094
    check-cast v7, Ljava/lang/String;

    .line 200
    iget-object v8, v14, Lcom/superwall/sdk/store/transactions/TransactionManager;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8, v7}, Lcom/superwall/sdk/store/StoreManager;->getProductFromCache(Ljava/lang/String;)Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    move-result-object v15

    if-eqz v15, :cond_8

    .line 203
    new-instance v7, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ObserverMode;

    invoke-direct {v7, v15}, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ObserverMode;-><init>(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)V

    move-object/from16 v16, v7

    check-cast v16, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;

    .line 204
    invoke-virtual {v15}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getHasFreeTrial()Z

    move-result v17

    .line 201
    iput-object v14, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$0:Ljava/lang/Object;

    iput-object v2, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$1:Ljava/lang/Object;

    iput-object v3, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$2:Ljava/lang/Object;

    iput-object v1, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$3:Ljava/lang/Object;

    iput-object v6, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$4:Ljava/lang/Object;

    iput-object v1, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$5:Ljava/lang/Object;

    iput v10, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->label:I

    const/16 v19, 0x1

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    invoke-direct/range {v14 .. v20}, Lcom/superwall/sdk/store/transactions/TransactionManager;->didPurchase(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;ZLcom/android/billingclient/api/Purchase;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_7

    goto/16 :goto_e

    :cond_7
    move-object v8, v2

    move-object v2, v6

    move-object v9, v14

    move-object/from16 v7, v18

    move-object/from16 v4, v20

    move-object v6, v1

    .line 200
    :goto_3
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v18, v7

    move-object v14, v9

    move-object v7, v2

    move-object v2, v8

    goto :goto_4

    :cond_8
    move-object/from16 v18, v3

    move-object/from16 v20, v4

    move-object v7, v6

    move-object v3, v13

    move-object v6, v1

    .line 1094
    :goto_4
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v1, v6

    move-object v6, v7

    move-object/from16 v3, v18

    goto :goto_2

    :cond_9
    move-object/from16 v20, v4

    .line 1095
    check-cast v1, Ljava/util/List;

    move-object v1, v2

    move-object v2, v14

    goto/16 :goto_1

    .line 213
    :cond_a
    instance-of v6, v1, Lcom/superwall/sdk/delegate/InternalPurchaseResult$Cancelled;

    if-eqz v6, :cond_c

    .line 214
    new-instance v1, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    sget-object v2, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->Companion:Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$Companion;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    const-string v7, "<get-value>(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v2, v6}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$Companion;->from(Lcom/android/billingclient/api/ProductDetails;)Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    .line 217
    new-instance v2, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ObserverMode;

    invoke-direct {v2, v1}, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ObserverMode;-><init>(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)V

    check-cast v2, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;

    .line 215
    iput-object v0, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$0:Ljava/lang/Object;

    iput-object v3, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$1:Ljava/lang/Object;

    iput v9, v4, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->label:I

    invoke-direct {v0, v1, v2, v4}, Lcom/superwall/sdk/store/transactions/TransactionManager;->trackCancelled(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_b

    goto/16 :goto_e

    :cond_b
    move-object v2, v0

    move-object v1, v3

    .line 219
    :goto_5
    iget-object v2, v2, Lcom/superwall/sdk/store/transactions/TransactionManager;->transactionsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    .line 222
    :cond_c
    instance-of v6, v1, Lcom/superwall/sdk/delegate/InternalPurchaseResult$Failed;

    if-eqz v6, :cond_e

    .line 223
    iget-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->transactionsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v1, "null cannot be cast to non-null type com.superwall.sdk.store.PurchasingObserverState.PurchaseError"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseError;

    .line 225
    new-instance v2, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    sget-object v3, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->Companion:Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseError;->getProduct()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$Companion;->from(Lcom/android/billingclient/api/ProductDetails;)Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    .line 227
    invoke-virtual {v1}, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseError;->getError()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 230
    :try_start_0
    sget-object v3, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->Companion:Lcom/superwall/sdk/store/transactions/PlayBillingErrors$Companion;

    invoke-virtual {v3, v1}, Lcom/superwall/sdk/store/transactions/PlayBillingErrors$Companion;->fromCode(Ljava/lang/String;)Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    move-result-object v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    .line 232
    :catchall_0
    sget-object v3, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 233
    sget-object v4, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 234
    sget-object v5, Lcom/superwall/sdk/logger/LogScope;->nativePurchaseController:Lcom/superwall/sdk/logger/LogScope;

    .line 235
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Play store issue occured, code: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x18

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 232
    invoke-static/range {v3 .. v10}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_6
    if-eqz v13, :cond_d

    .line 239
    invoke-virtual {v13}, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    goto :goto_7

    :cond_d
    const-string v1, "Unknown error"

    .line 241
    :goto_7
    new-instance v3, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ObserverMode;

    invoke-direct {v3, v2}, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ObserverMode;-><init>(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)V

    check-cast v3, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;

    .line 226
    invoke-direct {v0, v1, v2, v3}, Lcom/superwall/sdk/store/transactions/TransactionManager;->trackFailure(Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;)V

    goto/16 :goto_11

    .line 245
    :cond_e
    sget-object v6, Lcom/superwall/sdk/delegate/InternalPurchaseResult$Pending;->INSTANCE:Lcom/superwall/sdk/delegate/InternalPurchaseResult$Pending;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 246
    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseResult;

    .line 247
    iget-object v2, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->transactionsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-virtual {v1}, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseResult;->getPurchases()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_16

    check-cast v1, Ljava/lang/Iterable;

    .line 1097
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/Purchase;

    .line 249
    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    .line 1098
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v3, v11}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .line 1099
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object/from16 v22, v2

    move-object v2, v1

    move-object v1, v6

    move-object v6, v4

    move-object/from16 v4, v22

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1100
    check-cast v7, Ljava/lang/String;

    .line 250
    iget-object v9, v4, Lcom/superwall/sdk/store/transactions/TransactionManager;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9, v7}, Lcom/superwall/sdk/store/StoreManager;->getProductFromCache(Ljava/lang/String;)Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 251
    new-instance v9, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ObserverMode;

    invoke-direct {v9, v7}, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ObserverMode;-><init>(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)V

    check-cast v9, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;

    iput-object v4, v6, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$0:Ljava/lang/Object;

    iput-object v2, v6, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$1:Ljava/lang/Object;

    iput-object v1, v6, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$2:Ljava/lang/Object;

    iput-object v3, v6, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$3:Ljava/lang/Object;

    iput-object v1, v6, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$4:Ljava/lang/Object;

    iput v8, v6, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->label:I

    invoke-direct {v4, v9, v6}, Lcom/superwall/sdk/store/transactions/TransactionManager;->handlePendingTransaction(Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_f

    goto/16 :goto_e

    :cond_f
    move-object v7, v2

    move-object v2, v3

    move-object v9, v4

    move-object v4, v6

    move-object v6, v1

    .line 250
    :goto_a
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v22, v4

    move-object v4, v2

    move-object v2, v7

    move-object/from16 v7, v22

    goto :goto_b

    :cond_10
    move-object v9, v4

    move-object v7, v6

    move-object v6, v1

    move-object v4, v3

    move-object v3, v13

    .line 1100
    :goto_b
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v3, v4

    move-object v1, v6

    move-object v6, v7

    move-object v4, v9

    goto :goto_9

    .line 1101
    :cond_11
    check-cast v1, Ljava/util/List;

    move-object v1, v2

    move-object v2, v4

    move-object v4, v6

    goto :goto_8

    .line 257
    :cond_12
    sget-object v6, Lcom/superwall/sdk/delegate/InternalPurchaseResult$Restored;->INSTANCE:Lcom/superwall/sdk/delegate/InternalPurchaseResult$Restored;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 258
    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseResult;

    .line 259
    iget-object v2, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->transactionsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-virtual {v1}, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseResult;->getPurchases()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_16

    check-cast v1, Ljava/lang/Iterable;

    .line 1103
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/Purchase;

    .line 261
    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    .line 1104
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v3, v11}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .line 1105
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object/from16 v22, v2

    move-object v2, v1

    move-object v1, v6

    move-object v6, v4

    move-object/from16 v4, v22

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 1106
    check-cast v8, Ljava/lang/String;

    .line 262
    iget-object v9, v4, Lcom/superwall/sdk/store/transactions/TransactionManager;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9, v8}, Lcom/superwall/sdk/store/StoreManager;->getProductFromCache(Ljava/lang/String;)Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    move-result-object v8

    if-eqz v8, :cond_14

    .line 263
    new-instance v9, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ObserverMode;

    invoke-direct {v9, v8}, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ObserverMode;-><init>(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)V

    check-cast v9, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;

    iput-object v4, v6, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$0:Ljava/lang/Object;

    iput-object v2, v6, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$1:Ljava/lang/Object;

    iput-object v1, v6, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$2:Ljava/lang/Object;

    iput-object v3, v6, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$3:Ljava/lang/Object;

    iput-object v1, v6, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->L$4:Ljava/lang/Object;

    iput v7, v6, Lcom/superwall/sdk/store/transactions/TransactionManager$handle$1;->label:I

    invoke-direct {v4, v8, v9, v6}, Lcom/superwall/sdk/store/transactions/TransactionManager;->didRestore(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v5, :cond_13

    :goto_e
    return-object v5

    :cond_13
    move-object v8, v2

    move-object v2, v3

    move-object v9, v4

    move-object v4, v6

    move-object v6, v1

    .line 262
    :goto_f
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v22, v4

    move-object v4, v2

    move-object v2, v8

    move-object/from16 v8, v22

    goto :goto_10

    :cond_14
    move-object v9, v4

    move-object v8, v6

    move-object v6, v1

    move-object v4, v3

    move-object v3, v13

    .line 1106
    :goto_10
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v3, v4

    move-object v1, v6

    move-object v6, v8

    move-object v4, v9

    goto :goto_d

    .line 1107
    :cond_15
    check-cast v1, Ljava/util/List;

    move-object v1, v2

    move-object v2, v4

    move-object v4, v6

    goto :goto_c

    .line 269
    :cond_16
    :goto_11
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 193
    :cond_17
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1
.end method

.method public final prepareToPurchase$superwall_release(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            "Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 556
    instance-of v10, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ObserverMode;

    .line 559
    instance-of v4, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 560
    iget-object v4, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v11, v4

    check-cast v11, Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lcom/superwall/sdk/store/transactions/TransactionManager$prepareToPurchase$2;

    invoke-direct {v4, v0, v2, v5}, Lcom/superwall/sdk/store/transactions/TransactionManager$prepareToPurchase$2;-><init>(Lcom/superwall/sdk/store/transactions/TransactionManager;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;)V

    move-object v14, v4

    check-cast v14, Lkotlin/jvm/functions/Function2;

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 569
    check-cast v2, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;

    invoke-virtual {v2}, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v6

    .line 572
    new-instance v2, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Start;

    move-object v7, v1

    check-cast v7, Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

    invoke-direct {v2, v7}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Start;-><init>(Lcom/superwall/sdk/store/abstractions/product/StoreProductType;)V

    .line 577
    sget-object v9, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;->INTERNAL:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;

    .line 578
    iget-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v1}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->demandScore()Ljava/lang/Integer;

    move-result-object v11

    .line 579
    iget-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v1}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->demandTier()Ljava/lang/String;

    move-result-object v12

    .line 571
    new-instance v4, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;

    .line 572
    move-object v5, v2

    check-cast v5, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;

    const/16 v15, 0x300

    const/4 v8, 0x0

    const/4 v14, 0x0

    .line 571
    invoke-direct/range {v4 .. v16}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;-><init>(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;ZLjava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 581
    iget-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->track:Lkotlin/jvm/functions/Function2;

    invoke-interface {v1, v4, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_0

    return-object v1

    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 584
    :cond_1
    instance-of v2, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ExternalPurchase;

    if-nez v2, :cond_3

    if-eqz v10, :cond_2

    goto :goto_0

    .line 558
    :cond_2
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    :cond_3
    :goto_0
    if-eqz v10, :cond_4

    .line 585
    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getRawStoreProduct()Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 586
    iget-object v2, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->transactionsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    .line 587
    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getFullIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 588
    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getRawStoreProduct()Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getUnderlyingProductDetails()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v6

    .line 586
    invoke-virtual {v2, v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    :cond_4
    iget-object v2, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getFullIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/superwall/sdk/store/StoreManager;->hasCached(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 592
    iget-object v2, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getFullIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Lcom/superwall/sdk/store/StoreManager;->cacheProduct(Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)V

    .line 595
    :cond_5
    iget-object v2, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v2}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->makeHasExternalPurchaseController()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v2}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->makeHasInternalPurchaseController()Z

    move-result v2

    if-nez v2, :cond_6

    .line 596
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 600
    :cond_6
    iget-object v2, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v2}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->makeSuperwallOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v2

    .line 601
    invoke-virtual {v2}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getShouldObservePurchases()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v2}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->makeHasExternalPurchaseController()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 602
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 605
    :cond_7
    iget-object v2, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v11, v2

    check-cast v11, Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/superwall/sdk/store/transactions/TransactionManager$prepareToPurchase$3;

    invoke-direct {v2, v0, v5}, Lcom/superwall/sdk/store/transactions/TransactionManager$prepareToPurchase$3;-><init>(Lcom/superwall/sdk/store/transactions/TransactionManager;Lkotlin/coroutines/Continuation;)V

    move-object v14, v2

    check-cast v14, Lkotlin/jvm/functions/Function2;

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 615
    new-instance v2, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Start;

    move-object v7, v1

    check-cast v7, Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

    invoke-direct {v2, v7}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Start;-><init>(Lcom/superwall/sdk/store/abstractions/product/StoreProductType;)V

    .line 616
    sget-object v1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->Companion:Lcom/superwall/sdk/paywall/presentation/PaywallInfo$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo$Companion;->empty()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v6

    .line 620
    sget-object v9, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;->EXTERNAL:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;

    .line 621
    iget-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v1}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->demandScore()Ljava/lang/Integer;

    move-result-object v11

    .line 622
    iget-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v1}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->demandTier()Ljava/lang/String;

    move-result-object v12

    .line 614
    new-instance v4, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;

    .line 615
    move-object v5, v2

    check-cast v5, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;

    const/16 v15, 0x300

    const/4 v8, 0x0

    const/4 v14, 0x0

    .line 614
    invoke-direct/range {v4 .. v16}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;-><init>(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;ZLjava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 624
    iget-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->track:Lkotlin/jvm/functions/Function2;

    invoke-interface {v1, v4, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_8

    return-object v1

    :cond_8
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method public final purchase(Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/delegate/PurchaseResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v1, p3

    instance-of v2, v1, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;

    iget v3, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;

    invoke-direct {v2, v0, v1}, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;-><init>(Lcom/superwall/sdk/store/transactions/TransactionManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v9, v2

    iget-object v1, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v12

    .line 280
    iget v2, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->label:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v2, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/delegate/PurchaseResult;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v2

    :pswitch_1
    iget-boolean v2, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->Z$0:Z

    iget-object v3, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/delegate/PurchaseResult;

    iget-object v4, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    iget-object v5, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;

    iget-object v6, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v9

    goto/16 :goto_c

    :pswitch_2
    iget-boolean v2, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->Z$0:Z

    iget-object v3, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;

    iget-object v4, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    iget-object v5, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;

    iget-object v6, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v9

    goto/16 :goto_9

    :pswitch_3
    iget-boolean v2, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->Z$0:Z

    iget-object v3, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$5:Ljava/lang/Object;

    check-cast v3, Landroid/app/Activity;

    iget-object v4, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lcom/android/billingclient/api/ProductDetails;

    iget-object v5, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;

    iget-object v6, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    iget-object v7, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;

    iget-object v8, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v14, v5

    move-object v15, v6

    move-object v13, v8

    move-object v1, v7

    move-object v5, v4

    :goto_1
    move-object v4, v3

    goto/16 :goto_8

    :pswitch_4
    iget-object v2, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/config/options/SuperwallOptions;

    iget-object v3, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/delegate/PurchaseResult;

    iget-object v4, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    iget-object v5, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;

    iget-object v6, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_5
    iget-boolean v2, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->Z$0:Z

    iget-object v3, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/delegate/PurchaseResult;

    iget-object v4, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    iget-object v5, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;

    iget-object v6, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_6
    iget-boolean v2, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->Z$0:Z

    iget-object v3, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    iget-object v4, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;

    iget-object v5, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_1
    move-object v6, v5

    move-object v5, v3

    move-object v3, v6

    move-object v6, v4

    goto/16 :goto_5

    :pswitch_7
    iget-boolean v2, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->Z$0:Z

    iget-object v3, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    iget-object v4, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;

    iget-object v5, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_8
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 286
    instance-of v1, v7, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;

    if-eqz v1, :cond_3

    .line 287
    iget-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    move-object v2, v7

    check-cast v2, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;

    invoke-virtual {v2}, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;->getProductId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/superwall/sdk/store/StoreManager;->getProductFromCache(Ljava/lang/String;)Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/superwall/sdk/store/transactions/TransactionManager;

    .line 289
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 290
    invoke-virtual {v2}, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;->getProductId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Trying to purchase ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") but the product has failed to load. Visit https://superwall.com/l/missing-products to diagnose."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 288
    invoke-static/range {v0 .. v6}, Lcom/superwall/sdk/store/transactions/TransactionManager;->log$default(Lcom/superwall/sdk/store/transactions/TransactionManager;Lcom/superwall/sdk/logger/LogLevel;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 292
    new-instance v1, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;

    const-string v2, "Product not found"

    invoke-direct {v1, v2}, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_2
    :goto_2
    move-object v13, v1

    goto :goto_3

    .line 295
    :cond_3
    instance-of v1, v7, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ExternalPurchase;

    if-eqz v1, :cond_4

    .line 296
    move-object v1, v7

    check-cast v1, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ExternalPurchase;

    invoke-virtual {v1}, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ExternalPurchase;->getProduct()Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    move-result-object v1

    goto :goto_2

    .line 299
    :cond_4
    instance-of v1, v7, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ObserverMode;

    if-eqz v1, :cond_21

    move-object v1, v7

    check-cast v1, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ObserverMode;

    invoke-virtual {v1}, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ObserverMode;->getProduct()Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    move-result-object v1

    goto :goto_2

    .line 303
    :goto_3
    iget-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->testMode:Lcom/superwall/sdk/store/testmode/TestMode;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/superwall/sdk/store/testmode/TestMode;->isTestMode()Z

    move-result v1

    if-ne v1, v10, :cond_11

    iget-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->testModeTransactionHandler:Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;

    if-eqz v1, :cond_11

    .line 304
    iput-object v0, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$0:Ljava/lang/Object;

    iput-object v7, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$1:Ljava/lang/Object;

    iput-object v13, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$2:Ljava/lang/Object;

    iput-boolean v8, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->Z$0:Z

    iput v10, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->label:I

    invoke-virtual {v0, v13, v7, v9}, Lcom/superwall/sdk/store/transactions/TransactionManager;->prepareToPurchase$superwall_release(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v12, :cond_5

    goto/16 :goto_d

    :cond_5
    move-object v5, v0

    move-object v4, v7

    move v2, v8

    move-object v3, v13

    .line 305
    :goto_4
    iget-object v1, v5, Lcom/superwall/sdk/store/transactions/TransactionManager;->testModeTransactionHandler:Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;

    move-object v6, v3

    check-cast v6, Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

    iput-object v5, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$0:Ljava/lang/Object;

    iput-object v4, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$1:Ljava/lang/Object;

    iput-object v3, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$2:Ljava/lang/Object;

    iput-boolean v2, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->Z$0:Z

    const/4 v7, 0x2

    iput v7, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->label:I

    invoke-virtual {v1, v6, v4, v9}, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;->handlePurchase(Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v12, :cond_1

    goto/16 :goto_d

    .line 280
    :goto_5
    check-cast v1, Lcom/superwall/sdk/delegate/PurchaseResult;

    .line 307
    instance-of v4, v1, Lcom/superwall/sdk/delegate/PurchaseResult$Purchased;

    if-eqz v4, :cond_9

    .line 309
    iget-object v4, v3, Lcom/superwall/sdk/store/transactions/TransactionManager;->testMode:Lcom/superwall/sdk/store/testmode/TestMode;

    invoke-virtual {v4}, Lcom/superwall/sdk/store/testmode/TestMode;->buildSubscriptionStatus()Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    move-result-object v4

    .line 310
    iget-object v7, v3, Lcom/superwall/sdk/store/transactions/TransactionManager;->setSubscriptionStatus:Lkotlin/jvm/functions/Function1;

    if-eqz v7, :cond_6

    invoke-interface {v7, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_6
    invoke-virtual {v5}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getHasFreeTrial()Z

    move-result v7

    iput-object v3, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$0:Ljava/lang/Object;

    iput-object v6, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$1:Ljava/lang/Object;

    iput-object v5, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$2:Ljava/lang/Object;

    iput-object v1, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$3:Ljava/lang/Object;

    iput-boolean v2, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->Z$0:Z

    const/4 v4, 0x3

    iput v4, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->label:I

    const/4 v4, 0x0

    move-object v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/superwall/sdk/store/transactions/TransactionManager;->trackTransactionDidSucceed(Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v12, :cond_7

    goto/16 :goto_d

    :cond_7
    move-object v4, v5

    move-object v5, v6

    move-object v6, v3

    move-object v3, v1

    :goto_6
    if-eqz v2, :cond_8

    .line 312
    instance-of v1, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;

    if-eqz v1, :cond_8

    .line 313
    iget-object v1, v6, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v1}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->makeSuperwallOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getPaywalls()Lcom/superwall/sdk/config/options/PaywallOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/config/options/PaywallOptions;->getAutomaticallyDismiss()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 314
    iget-object v1, v6, Lcom/superwall/sdk/store/transactions/TransactionManager;->dismiss:Lkotlin/jvm/functions/Function3;

    .line 315
    check-cast v5, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;

    invoke-virtual {v5}, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    .line 316
    new-instance v5, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult$Purchased;

    invoke-virtual {v4}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getFullIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult$Purchased;-><init>(Ljava/lang/String;)V

    .line 314
    iput-object v3, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$0:Ljava/lang/Object;

    iput-object v11, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$1:Ljava/lang/Object;

    iput-object v11, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$2:Ljava/lang/Object;

    iput-object v11, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$3:Ljava/lang/Object;

    const/4 v4, 0x4

    iput v4, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->label:I

    invoke-interface {v1, v2, v5, v9}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v12, :cond_8

    goto/16 :goto_d

    :cond_8
    return-object v3

    .line 321
    :cond_9
    instance-of v2, v1, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;

    if-eqz v2, :cond_d

    .line 322
    move-object v2, v1

    check-cast v2, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;

    invoke-virtual {v2}, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v5, v6}, Lcom/superwall/sdk/store/transactions/TransactionManager;->trackFailure(Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;)V

    .line 323
    instance-of v2, v6, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;

    if-eqz v2, :cond_f

    .line 324
    iget-object v2, v3, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v2}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->makeSuperwallOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v2

    .line 325
    iget-object v4, v3, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    iput-object v3, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$0:Ljava/lang/Object;

    iput-object v6, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$1:Ljava/lang/Object;

    iput-object v5, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$2:Ljava/lang/Object;

    iput-object v1, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$3:Ljava/lang/Object;

    iput-object v2, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$4:Ljava/lang/Object;

    const/4 v7, 0x5

    iput v7, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->label:I

    invoke-interface {v4, v9}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->makeTriggers(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v12, :cond_a

    goto/16 :goto_d

    :cond_a
    move-object/from16 v16, v3

    move-object v3, v1

    move-object v1, v4

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, v16

    .line 280
    :goto_7
    check-cast v1, Ljava/util/Set;

    .line 327
    sget-object v7, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->TransactionFail:Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;

    invoke-virtual {v7}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->getRawName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 328
    invoke-virtual {v2}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getPaywalls()Lcom/superwall/sdk/config/options/PaywallOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/config/options/PaywallOptions;->getShouldShowPurchaseFailureAlert()Z

    move-result v2

    if-eqz v2, :cond_c

    if-nez v1, :cond_c

    .line 330
    new-instance v1, Ljava/lang/Error;

    move-object v2, v3

    check-cast v2, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;

    invoke-virtual {v2}, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 332
    check-cast v5, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;

    invoke-virtual {v5}, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v2

    .line 329
    iput-object v3, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$0:Ljava/lang/Object;

    iput-object v11, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$1:Ljava/lang/Object;

    iput-object v11, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$2:Ljava/lang/Object;

    iput-object v11, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$3:Ljava/lang/Object;

    iput-object v11, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$4:Ljava/lang/Object;

    const/4 v5, 0x6

    iput v5, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->label:I

    invoke-direct {v6, v1, v4, v2, v9}, Lcom/superwall/sdk/store/transactions/TransactionManager;->presentAlert(Ljava/lang/Error;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/paywall/view/PaywallViewState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v12, :cond_b

    goto/16 :goto_d

    :cond_b
    return-object v3

    .line 335
    :cond_c
    iget-object v1, v6, Lcom/superwall/sdk/store/transactions/TransactionManager;->updateState:Lkotlin/jvm/functions/Function2;

    .line 336
    check-cast v5, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;

    invoke-virtual {v5}, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    .line 337
    new-instance v4, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ToggleSpinner;

    invoke-direct {v4, v10}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ToggleSpinner;-><init>(Z)V

    .line 335
    invoke-interface {v1, v2, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    .line 342
    :cond_d
    instance-of v2, v1, Lcom/superwall/sdk/delegate/PurchaseResult$Cancelled;

    if-eqz v2, :cond_e

    .line 343
    iput-object v1, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$0:Ljava/lang/Object;

    iput-object v11, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$1:Ljava/lang/Object;

    iput-object v11, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$2:Ljava/lang/Object;

    const/4 v2, 0x7

    iput v2, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->label:I

    invoke-direct {v3, v5, v6, v9}, Lcom/superwall/sdk/store/transactions/TransactionManager;->trackCancelled(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v12, :cond_f

    goto/16 :goto_d

    .line 345
    :cond_e
    instance-of v2, v1, Lcom/superwall/sdk/delegate/PurchaseResult$Pending;

    if-eqz v2, :cond_10

    .line 346
    iput-object v1, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$0:Ljava/lang/Object;

    iput-object v11, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$1:Ljava/lang/Object;

    iput-object v11, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$2:Ljava/lang/Object;

    const/16 v2, 0x8

    iput v2, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->label:I

    invoke-direct {v3, v6, v9}, Lcom/superwall/sdk/store/transactions/TransactionManager;->handlePendingTransaction(Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v12, :cond_f

    goto/16 :goto_d

    :cond_f
    return-object v1

    .line 306
    :cond_10
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 353
    :cond_11
    invoke-virtual {v13}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getRawStoreProduct()Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;

    move-result-object v14

    if-nez v14, :cond_12

    .line 354
    new-instance v1, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;

    invoke-virtual {v13}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getFullIdentifier()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Missing raw store product for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 357
    :cond_12
    invoke-virtual {v14}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getHasFreeTrial()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "!!! Purchasing product "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 355
    invoke-static/range {v0 .. v6}, Lcom/superwall/sdk/store/transactions/TransactionManager;->log$default(Lcom/superwall/sdk/store/transactions/TransactionManager;Lcom/superwall/sdk/logger/LogLevel;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 359
    invoke-virtual {v14}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getUnderlyingProductDetails()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v4

    .line 361
    iget-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->activityProvider:Lcom/superwall/sdk/misc/ActivityProvider;

    invoke-interface {v1}, Lcom/superwall/sdk/misc/ActivityProvider;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_13

    .line 362
    new-instance v1, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;

    const-string v2, "Activity not found - required for starting the billing flow"

    invoke-direct {v1, v2}, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 364
    :cond_13
    iput-object v0, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$0:Ljava/lang/Object;

    iput-object v7, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$1:Ljava/lang/Object;

    iput-object v13, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$2:Ljava/lang/Object;

    iput-object v14, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$3:Ljava/lang/Object;

    iput-object v4, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$4:Ljava/lang/Object;

    iput-object v3, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$5:Ljava/lang/Object;

    iput-boolean v8, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->Z$0:Z

    const/16 v1, 0x9

    iput v1, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->label:I

    invoke-virtual {v0, v13, v7, v9}, Lcom/superwall/sdk/store/transactions/TransactionManager;->prepareToPurchase$superwall_release(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v12, :cond_14

    goto/16 :goto_d

    :cond_14
    move v2, v8

    move-object v15, v13

    move-object v13, v0

    move-object v5, v4

    move-object v1, v7

    goto/16 :goto_1

    .line 366
    :goto_8
    iget-object v3, v13, Lcom/superwall/sdk/store/transactions/TransactionManager;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    invoke-virtual {v3}, Lcom/superwall/sdk/store/StoreManager;->getPurchaseController()Lcom/superwall/sdk/store/InternalPurchaseController;

    move-result-object v3

    .line 369
    invoke-virtual {v14}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getOfferId$superwall_release()Ljava/lang/String;

    move-result-object v7

    .line 370
    invoke-virtual {v14}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getBasePlanId()Ljava/lang/String;

    move-result-object v6

    .line 366
    iput-object v13, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$0:Ljava/lang/Object;

    iput-object v1, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$1:Ljava/lang/Object;

    iput-object v15, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$2:Ljava/lang/Object;

    iput-object v14, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$3:Ljava/lang/Object;

    iput-object v11, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$4:Ljava/lang/Object;

    iput-object v11, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$5:Ljava/lang/Object;

    iput-boolean v2, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->Z$0:Z

    const/16 v8, 0xa

    iput v8, v9, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->label:I

    move-object v8, v9

    invoke-virtual/range {v3 .. v8}, Lcom/superwall/sdk/store/InternalPurchaseController;->purchase(Landroid/app/Activity;Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v12, :cond_15

    goto/16 :goto_d

    :cond_15
    move-object v5, v1

    move-object v1, v3

    move-object v6, v13

    move-object v3, v14

    move-object v4, v15

    .line 365
    :goto_9
    check-cast v1, Lcom/superwall/sdk/delegate/PurchaseResult;

    .line 373
    instance-of v7, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ExternalPurchase;

    if-eqz v7, :cond_16

    .line 374
    iget-object v7, v6, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v7}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->makeHasExternalPurchaseController()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 375
    iget-object v7, v6, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v7}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->makeHasInternalPurchaseController()Z

    move-result v7

    if-nez v7, :cond_16

    goto/16 :goto_e

    .line 380
    :cond_16
    invoke-virtual {v3}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getSelectedOffer()Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails;

    move-result-object v3

    const/4 v7, 0x0

    if-eqz v3, :cond_17

    move v3, v10

    goto :goto_a

    :cond_17
    move v3, v7

    .line 383
    :goto_a
    instance-of v9, v1, Lcom/superwall/sdk/delegate/PurchaseResult$Purchased;

    if-eqz v9, :cond_19

    if-eqz v3, :cond_18

    .line 384
    invoke-virtual {v4}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getHasFreeTrial()Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_b

    :cond_18
    move v10, v7

    :goto_b
    iput-object v1, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$0:Ljava/lang/Object;

    iput-object v11, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$1:Ljava/lang/Object;

    iput-object v11, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$2:Ljava/lang/Object;

    iput-object v11, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$3:Ljava/lang/Object;

    const/16 v3, 0xb

    iput v3, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->label:I

    const/4 v7, 0x0

    move-object v3, v6

    move v6, v10

    const/16 v10, 0x8

    const/4 v11, 0x0

    move-object v9, v8

    move v8, v2

    invoke-static/range {v3 .. v11}, Lcom/superwall/sdk/store/transactions/TransactionManager;->didPurchase$default(Lcom/superwall/sdk/store/transactions/TransactionManager;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;ZLcom/android/billingclient/api/Purchase;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v12, :cond_1f

    goto/16 :goto_d

    :cond_19
    move-object v3, v6

    .line 387
    instance-of v2, v1, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;

    if-eqz v2, :cond_1d

    .line 388
    iget-object v2, v3, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v2}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->makeSuperwallOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v2

    .line 390
    invoke-virtual {v2}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getPaywalls()Lcom/superwall/sdk/config/options/PaywallOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/config/options/PaywallOptions;->getShouldShowPurchaseFailureAlert()Z

    move-result v2

    .line 391
    iget-object v6, v3, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    iput-object v3, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$0:Ljava/lang/Object;

    iput-object v5, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$1:Ljava/lang/Object;

    iput-object v4, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$2:Ljava/lang/Object;

    iput-object v1, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$3:Ljava/lang/Object;

    iput-boolean v2, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->Z$0:Z

    const/16 v7, 0xc

    iput v7, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->label:I

    invoke-interface {v6, v8}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->makeTriggers(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v12, :cond_1a

    goto/16 :goto_d

    :cond_1a
    move-object/from16 v16, v3

    move-object v3, v1

    move-object v1, v6

    move-object/from16 v6, v16

    .line 280
    :goto_c
    check-cast v1, Ljava/util/Set;

    .line 393
    sget-object v7, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->TransactionFail:Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;

    invoke-virtual {v7}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->getRawName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v2, :cond_1b

    if-nez v1, :cond_1b

    .line 396
    move-object v1, v3

    check-cast v1, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;

    invoke-virtual {v1}, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    .line 395
    invoke-direct {v6, v2, v4, v5}, Lcom/superwall/sdk/store/transactions/TransactionManager;->trackFailure(Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;)V

    .line 400
    instance-of v2, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;

    if-eqz v2, :cond_1c

    .line 402
    new-instance v2, Ljava/lang/Error;

    invoke-virtual {v1}, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 404
    check-cast v5, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;

    invoke-virtual {v5}, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v1

    .line 401
    iput-object v3, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$0:Ljava/lang/Object;

    iput-object v11, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$1:Ljava/lang/Object;

    iput-object v11, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$2:Ljava/lang/Object;

    iput-object v11, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$3:Ljava/lang/Object;

    const/16 v5, 0xd

    iput v5, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->label:I

    invoke-direct {v6, v2, v4, v1, v8}, Lcom/superwall/sdk/store/transactions/TransactionManager;->presentAlert(Ljava/lang/Error;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/paywall/view/PaywallViewState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v12, :cond_1c

    goto :goto_d

    .line 409
    :cond_1b
    move-object v1, v3

    check-cast v1, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;

    invoke-virtual {v1}, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-direct {v6, v1, v4, v5}, Lcom/superwall/sdk/store/transactions/TransactionManager;->trackFailure(Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;)V

    .line 413
    instance-of v1, v5, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;

    if-eqz v1, :cond_1c

    .line 414
    iget-object v1, v6, Lcom/superwall/sdk/store/transactions/TransactionManager;->updateState:Lkotlin/jvm/functions/Function2;

    .line 415
    check-cast v5, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;

    invoke-virtual {v5}, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    .line 416
    new-instance v4, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ToggleSpinner;

    invoke-direct {v4, v10}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ToggleSpinner;-><init>(Z)V

    .line 414
    invoke-interface {v1, v2, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    return-object v3

    .line 422
    :cond_1d
    instance-of v2, v1, Lcom/superwall/sdk/delegate/PurchaseResult$Pending;

    if-eqz v2, :cond_1e

    .line 423
    iput-object v1, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$0:Ljava/lang/Object;

    iput-object v11, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$1:Ljava/lang/Object;

    iput-object v11, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$2:Ljava/lang/Object;

    iput-object v11, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$3:Ljava/lang/Object;

    const/16 v2, 0xe

    iput v2, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->label:I

    invoke-direct {v3, v5, v8}, Lcom/superwall/sdk/store/transactions/TransactionManager;->handlePendingTransaction(Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v12, :cond_1f

    goto :goto_d

    .line 426
    :cond_1e
    instance-of v2, v1, Lcom/superwall/sdk/delegate/PurchaseResult$Cancelled;

    if-eqz v2, :cond_20

    .line 427
    iput-object v1, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$0:Ljava/lang/Object;

    iput-object v11, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$1:Ljava/lang/Object;

    iput-object v11, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$2:Ljava/lang/Object;

    iput-object v11, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->L$3:Ljava/lang/Object;

    const/16 v2, 0xf

    iput v2, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->label:I

    invoke-direct {v3, v4, v5, v8}, Lcom/superwall/sdk/store/transactions/TransactionManager;->trackCancelled(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v12, :cond_1f

    :goto_d
    return-object v12

    :cond_1f
    :goto_e
    return-object v1

    .line 382
    :cond_20
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 285
    :cond_21
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final tryToRestorePurchases(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/delegate/RestorationResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;

    iget v3, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;

    invoke-direct {v2, v0, v1}, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;-><init>(Lcom/superwall/sdk/store/transactions/TransactionManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v8, v2

    iget-object v1, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v9

    .line 833
    iget v2, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->label:I

    const/4 v10, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-boolean v2, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->Z$0:Z

    iget-object v3, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/delegate/RestorationResult;

    iget-object v4, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/paywall/view/PaywallView;

    iget-object v5, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_1
    iget-object v2, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/delegate/RestorationResult;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v2

    :pswitch_2
    iget-object v2, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/delegate/RestorationResult;

    iget-object v3, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/paywall/view/PaywallView;

    iget-object v4, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_3
    iget v2, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->I$1:I

    iget v3, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->I$0:I

    iget-object v4, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    iget-object v5, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lcom/superwall/sdk/delegate/RestorationResult;

    iget-object v6, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/superwall/sdk/paywall/view/PaywallView;

    iget-object v7, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v5

    move-object v5, v4

    move-object v4, v6

    :goto_1
    move-object v11, v7

    goto/16 :goto_5

    :pswitch_4
    iget-object v2, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/paywall/view/PaywallView;

    iget-object v3, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_1
    move-object v7, v3

    goto/16 :goto_4

    :pswitch_5
    iget-object v2, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/paywall/view/PaywallView;

    iget-object v3, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_6
    iget-object v2, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_7
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 834
    const-string v2, "Attempting Restore"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/superwall/sdk/store/transactions/TransactionManager;->log$default(Lcom/superwall/sdk/store/transactions/TransactionManager;Lcom/superwall/sdk/logger/LogLevel;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 837
    iget-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->testMode:Lcom/superwall/sdk/store/testmode/TestMode;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/superwall/sdk/store/testmode/TestMode;->isTestMode()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->testModeTransactionHandler:Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;

    if-eqz v1, :cond_4

    .line 838
    iput-object v0, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$0:Ljava/lang/Object;

    iput v2, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->label:I

    invoke-virtual {v1, v8}, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;->handleRestore(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_2

    goto/16 :goto_d

    :cond_2
    move-object v2, v0

    .line 833
    :goto_2
    check-cast v1, Lcom/superwall/sdk/delegate/RestorationResult;

    .line 839
    instance-of v3, v1, Lcom/superwall/sdk/delegate/RestorationResult$Restored;

    if-eqz v3, :cond_3

    .line 840
    iget-object v3, v2, Lcom/superwall/sdk/store/transactions/TransactionManager;->testMode:Lcom/superwall/sdk/store/testmode/TestMode;

    invoke-virtual {v3}, Lcom/superwall/sdk/store/testmode/TestMode;->buildSubscriptionStatus()Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    move-result-object v3

    .line 841
    iget-object v2, v2, Lcom/superwall/sdk/store/transactions/TransactionManager;->setSubscriptionStatus:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v1

    :cond_4
    if-eqz v7, :cond_5

    .line 846
    invoke-virtual {v7}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v1

    if-nez v1, :cond_6

    :cond_5
    sget-object v1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->Companion:Lcom/superwall/sdk/paywall/presentation/PaywallInfo$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo$Companion;->empty()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v1

    :cond_6
    if-eqz v7, :cond_7

    .line 847
    new-instance v2, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetLoadingState;

    sget-object v3, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$LoadingPurchase;->INSTANCE:Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$LoadingPurchase;

    check-cast v3, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    invoke-direct {v2, v3}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetLoadingState;-><init>(Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;)V

    check-cast v2, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    invoke-virtual {v7, v2}, Lcom/superwall/sdk/paywall/view/PaywallView;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    .line 849
    :cond_7
    iget-object v2, v0, Lcom/superwall/sdk/store/transactions/TransactionManager;->track:Lkotlin/jvm/functions/Function2;

    .line 850
    new-instance v3, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore;

    .line 851
    sget-object v4, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore$State$Start;->INSTANCE:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore$State$Start;

    check-cast v4, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore$State;

    .line 850
    invoke-direct {v3, v4, v1}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore;-><init>(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore$State;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    .line 849
    iput-object v0, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$0:Ljava/lang/Object;

    iput-object v7, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$1:Ljava/lang/Object;

    const/4 v1, 0x2

    iput v1, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->label:I

    invoke-interface {v2, v3, v8}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_8

    goto/16 :goto_d

    :cond_8
    move-object v3, v0

    move-object v2, v7

    .line 855
    :goto_3
    iget-object v1, v3, Lcom/superwall/sdk/store/transactions/TransactionManager;->purchaseController:Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;

    iput-object v3, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$0:Ljava/lang/Object;

    iput-object v2, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$1:Ljava/lang/Object;

    const/4 v4, 0x3

    iput v4, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->label:I

    invoke-interface {v1, v8}, Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;->restorePurchases(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_1

    goto/16 :goto_d

    .line 833
    :goto_4
    check-cast v1, Lcom/superwall/sdk/delegate/RestorationResult;

    .line 857
    instance-of v3, v1, Lcom/superwall/sdk/delegate/RestorationResult$Restored;

    .line 858
    iget-object v4, v7, Lcom/superwall/sdk/store/transactions/TransactionManager;->subscriptionStatus:Lkotlin/jvm/functions/Function0;

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    .line 860
    instance-of v5, v4, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;

    .line 861
    iget-object v6, v7, Lcom/superwall/sdk/store/transactions/TransactionManager;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    iget-object v11, v7, Lcom/superwall/sdk/store/transactions/TransactionManager;->allEntitlementsByProductId:Lkotlin/jvm/functions/Function0;

    invoke-interface {v11}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    iput-object v7, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$0:Ljava/lang/Object;

    iput-object v2, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$1:Ljava/lang/Object;

    iput-object v1, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$2:Ljava/lang/Object;

    iput-object v4, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$3:Ljava/lang/Object;

    iput v3, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->I$0:I

    iput v5, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->I$1:I

    const/4 v12, 0x4

    iput v12, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->label:I

    invoke-virtual {v6, v11, v8}, Lcom/superwall/sdk/store/StoreManager;->loadPurchasedProducts(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v9, :cond_9

    goto/16 :goto_d

    :cond_9
    move-object v11, v4

    move-object v4, v2

    move v2, v5

    move-object v5, v11

    goto/16 :goto_1

    .line 863
    :goto_5
    iget-object v6, v11, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    invoke-interface {v6}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->isWebToAppEnabled()Z

    move-result v6

    if-eqz v4, :cond_b

    .line 866
    invoke-virtual {v4}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 867
    invoke-virtual {v7}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPaywall()Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 868
    invoke-virtual {v7}, Lcom/superwall/sdk/models/paywall/Paywall;->getProductIds()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 865
    check-cast v7, Ljava/lang/Iterable;

    .line 1115
    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v7, v13}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v12, Ljava/util/Collection;

    .line 1116
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 1117
    check-cast v13, Ljava/lang/String;

    .line 870
    iget-object v14, v11, Lcom/superwall/sdk/store/transactions/TransactionManager;->entitlementsById:Lkotlin/jvm/functions/Function1;

    invoke-interface {v14, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Set;

    .line 1117
    invoke-interface {v12, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1118
    :cond_a
    check-cast v12, Ljava/util/List;

    .line 865
    check-cast v12, Ljava/lang/Iterable;

    .line 871
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_b

    goto :goto_7

    :cond_b
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 873
    :goto_7
    instance-of v12, v5, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;

    if-eqz v12, :cond_c

    check-cast v5, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;

    goto :goto_8

    :cond_c
    move-object v5, v10

    :goto_8
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;->getEntitlements()Ljava/util/Set;

    move-result-object v5

    if-nez v5, :cond_e

    :cond_d
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v5

    :cond_e
    if-eqz v3, :cond_16

    if-eqz v2, :cond_16

    .line 875
    check-cast v7, Ljava/util/Collection;

    invoke-interface {v5, v7}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_11

    if-nez v6, :cond_f

    goto :goto_9

    :cond_f
    if-eqz v4, :cond_10

    .line 888
    new-instance v2, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetLoadingState;

    .line 889
    sget-object v3, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$Ready;->INSTANCE:Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$Ready;

    check-cast v3, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    .line 888
    invoke-direct {v2, v3}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetLoadingState;-><init>(Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;)V

    check-cast v2, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    .line 887
    invoke-virtual {v4, v2}, Lcom/superwall/sdk/paywall/view/PaywallView;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    .line 892
    :cond_10
    invoke-direct {v11}, Lcom/superwall/sdk/store/transactions/TransactionManager;->askToRestoreFromWeb()V

    return-object v1

    :cond_11
    :goto_9
    const/16 v16, 0xd

    const/16 v17, 0x0

    const/4 v12, 0x0

    .line 876
    const-string v13, "Transactions Restored"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lcom/superwall/sdk/store/transactions/TransactionManager;->log$default(Lcom/superwall/sdk/store/transactions/TransactionManager;Lcom/superwall/sdk/logger/LogLevel;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 877
    iget-object v2, v11, Lcom/superwall/sdk/store/transactions/TransactionManager;->track:Lkotlin/jvm/functions/Function2;

    .line 878
    new-instance v3, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore;

    .line 879
    sget-object v5, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore$State$Complete;->INSTANCE:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore$State$Complete;

    check-cast v5, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore$State;

    if-eqz v4, :cond_12

    .line 880
    invoke-virtual {v4}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v6

    if-eqz v6, :cond_12

    invoke-virtual {v6}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v6

    if-nez v6, :cond_13

    :cond_12
    sget-object v6, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->Companion:Lcom/superwall/sdk/paywall/presentation/PaywallInfo$Companion;

    invoke-virtual {v6}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo$Companion;->empty()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v6

    .line 878
    :cond_13
    invoke-direct {v3, v5, v6}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore;-><init>(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore$State;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    .line 877
    iput-object v11, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$0:Ljava/lang/Object;

    iput-object v4, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$1:Ljava/lang/Object;

    iput-object v1, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$2:Ljava/lang/Object;

    iput-object v10, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$3:Ljava/lang/Object;

    const/4 v5, 0x5

    iput v5, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->label:I

    invoke-interface {v2, v3, v8}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v9, :cond_14

    goto/16 :goto_d

    :cond_14
    move-object v2, v1

    move-object v3, v4

    move-object v4, v11

    :goto_a
    if-eqz v3, :cond_15

    .line 884
    new-instance v1, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;

    const-string v5, ""

    invoke-virtual {v3}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v3

    invoke-direct {v1, v5, v3}, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;-><init>(Ljava/lang/String;Lcom/superwall/sdk/paywall/view/PaywallViewState;)V

    check-cast v1, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;

    iput-object v2, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$0:Ljava/lang/Object;

    iput-object v10, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$1:Ljava/lang/Object;

    iput-object v10, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$2:Ljava/lang/Object;

    const/4 v3, 0x6

    iput v3, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->label:I

    invoke-direct {v4, v10, v1, v8}, Lcom/superwall/sdk/store/transactions/TransactionManager;->didRestore(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_15

    goto/16 :goto_d

    :cond_15
    return-object v2

    :cond_16
    if-eqz v3, :cond_17

    if-nez v2, :cond_17

    .line 897
    const-string v2, " The user\'s subscription status is \"inactive\", but the restoration result is \"restored\". Ensure the subscription status is active before confirming successful restoration."

    goto :goto_c

    .line 902
    :cond_17
    instance-of v2, v1, Lcom/superwall/sdk/delegate/RestorationResult$Failed;

    if-eqz v2, :cond_18

    move-object v2, v1

    check-cast v2, Lcom/superwall/sdk/delegate/RestorationResult$Failed;

    invoke-virtual {v2}, Lcom/superwall/sdk/delegate/RestorationResult$Failed;->getError()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_18
    move-object v2, v10

    .line 903
    :goto_b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, " Original restoration error message: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_c
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Transactions Failed to Restore."

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0xd

    const/16 v17, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 908
    invoke-static/range {v11 .. v17}, Lcom/superwall/sdk/store/transactions/TransactionManager;->log$default(Lcom/superwall/sdk/store/transactions/TransactionManager;Lcom/superwall/sdk/logger/LogLevel;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 910
    iget-object v2, v11, Lcom/superwall/sdk/store/transactions/TransactionManager;->track:Lkotlin/jvm/functions/Function2;

    .line 911
    new-instance v3, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore;

    .line 912
    new-instance v5, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore$State$Failure;

    invoke-direct {v5, v13}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore$State$Failure;-><init>(Ljava/lang/String;)V

    check-cast v5, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore$State;

    if-eqz v4, :cond_19

    .line 913
    invoke-virtual {v4}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v7

    if-eqz v7, :cond_19

    invoke-virtual {v7}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v7

    if-nez v7, :cond_1a

    :cond_19
    sget-object v7, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->Companion:Lcom/superwall/sdk/paywall/presentation/PaywallInfo$Companion;

    invoke-virtual {v7}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo$Companion;->empty()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v7

    .line 911
    :cond_1a
    invoke-direct {v3, v5, v7}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore;-><init>(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore$State;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    .line 910
    iput-object v11, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$0:Ljava/lang/Object;

    iput-object v4, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$1:Ljava/lang/Object;

    iput-object v1, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$2:Ljava/lang/Object;

    iput-object v10, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->L$3:Ljava/lang/Object;

    iput-boolean v6, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->Z$0:Z

    const/4 v5, 0x7

    iput v5, v8, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->label:I

    invoke-interface {v2, v3, v8}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v9, :cond_1b

    :goto_d
    return-object v9

    :cond_1b
    move-object v3, v1

    move v2, v6

    move-object v5, v11

    :goto_e
    if-eqz v2, :cond_1c

    .line 917
    invoke-direct {v5}, Lcom/superwall/sdk/store/transactions/TransactionManager;->askToRestoreFromWeb()V

    return-object v3

    :cond_1c
    if-eqz v4, :cond_1d

    .line 921
    iget-object v1, v5, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    .line 922
    invoke-interface {v1}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->makeSuperwallOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v1

    .line 923
    invoke-virtual {v1}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getPaywalls()Lcom/superwall/sdk/config/options/PaywallOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/config/options/PaywallOptions;->getRestoreFailed()Lcom/superwall/sdk/config/options/PaywallOptions$RestoreFailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/config/options/PaywallOptions$RestoreFailed;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 925
    iget-object v2, v5, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    .line 926
    invoke-interface {v2}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->makeSuperwallOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v2

    .line 927
    invoke-virtual {v2}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getPaywalls()Lcom/superwall/sdk/config/options/PaywallOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/config/options/PaywallOptions;->getRestoreFailed()Lcom/superwall/sdk/config/options/PaywallOptions$RestoreFailed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/config/options/PaywallOptions$RestoreFailed;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 929
    iget-object v2, v5, Lcom/superwall/sdk/store/transactions/TransactionManager;->factory:Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    .line 930
    invoke-interface {v2}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->makeSuperwallOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v2

    .line 931
    invoke-virtual {v2}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getPaywalls()Lcom/superwall/sdk/config/options/PaywallOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/config/options/PaywallOptions;->getRestoreFailed()Lcom/superwall/sdk/config/options/PaywallOptions$RestoreFailed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/config/options/PaywallOptions$RestoreFailed;->getCloseButtonTitle()Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x34

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v1

    .line 919
    invoke-static/range {v4 .. v12}, Lcom/superwall/sdk/paywall/view/PaywallView;->showAlert$default(Lcom/superwall/sdk/paywall/view/PaywallView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_1d
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updatePaymentQueue(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "removedTransactions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/superwall/sdk/store/transactions/TransactionManager;->storage:Lcom/superwall/sdk/storage/Storage;

    sget-object v1, Lcom/superwall/sdk/storage/PurchasingProductdIds;->INSTANCE:Lcom/superwall/sdk/storage/PurchasingProductdIds;

    check-cast v1, Lcom/superwall/sdk/storage/Storable;

    invoke-interface {v0, v1}, Lcom/superwall/sdk/storage/Storage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_5

    .line 274
    check-cast v0, Ljava/lang/Iterable;

    .line 1109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 1110
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 275
    move-object v4, p1

    check-cast v4, Ljava/lang/Iterable;

    .line 1111
    instance-of v5, v4, Ljava/util/Collection;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 1112
    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 275
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v6, 0x1

    :cond_3
    :goto_1
    if-nez v6, :cond_0

    .line 1110
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1114
    :cond_4
    check-cast v1, Ljava/util/List;

    goto :goto_2

    .line 276
    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 277
    :goto_2
    iget-object p1, p0, Lcom/superwall/sdk/store/transactions/TransactionManager;->storage:Lcom/superwall/sdk/storage/Storage;

    sget-object v0, Lcom/superwall/sdk/storage/PurchasingProductdIds;->INSTANCE:Lcom/superwall/sdk/storage/PurchasingProductdIds;

    check-cast v0, Lcom/superwall/sdk/storage/Storable;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/superwall/sdk/storage/Storage;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    return-void
.end method
