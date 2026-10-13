.class public final Lcom/superwall/sdk/network/device/DeviceHelper;
.super Ljava/lang/Object;
.source "DeviceHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/network/device/DeviceHelper$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeviceHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeviceHelper.kt\ncom/superwall/sdk/network/device/DeviceHelper\n+ 2 ErrorTracking.kt\ncom/superwall/sdk/utilities/ErrorTrackingKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Either.kt\ncom/superwall/sdk/misc/EitherKt\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,738:1\n135#2,10:739\n135#2,2:750\n137#2,8:764\n135#2,10:776\n1053#3:749\n1557#3:752\n1628#3,3:753\n1557#3:756\n1628#3,3:757\n1557#3:760\n1628#3,3:761\n1246#3,4:788\n1246#3,4:794\n143#4,4:772\n462#5:786\n412#5:787\n462#5:792\n412#5:793\n*S KotlinDebug\n*F\n+ 1 DeviceHelper.kt\ncom/superwall/sdk/network/device/DeviceHelper\n*L\n353#1:739,10\n546#1:750,2\n546#1:764,8\n634#1:776,10\n489#1:749\n595#1:752\n595#1:753,3\n598#1:756\n598#1:757,3\n614#1:760\n614#1:761,3\n669#1:788,4\n674#1:794,4\n623#1:772,4\n669#1:786\n669#1:787\n674#1:792\n674#1:793\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c8\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008&\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0002\u00c2\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001dJ\u000e\u0010!\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001dJ\u000e\u0010\"\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001dJ\u000e\u0010#\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001dJ\u000e\u00106\u001a\u00020\u001fH\u0086@\u00a2\u0006\u0002\u00107J\u000f\u0010\u00ab\u0001\u001a\u00020<H\u0086@\u00a2\u0006\u0002\u00107J:\u0010\u00ac\u0001\u001a\u000f\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020\u00010\u00ad\u00012\n\u0010\u00ae\u0001\u001a\u0005\u0018\u00010\u00af\u00012\u000f\u0010\u00b0\u0001\u001a\n\u0012\u0005\u0012\u00030\u00b2\u00010\u00b1\u0001H\u0086@\u00a2\u0006\u0003\u0010\u00b3\u0001J:\u0010\u00b4\u0001\u001a\u000f\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020\u00010\u00ad\u00012\n\u0010\u00b5\u0001\u001a\u0005\u0018\u00010\u00af\u00012\u000f\u0010\u00b0\u0001\u001a\n\u0012\u0005\u0012\u00030\u00b2\u00010\u00b1\u0001H\u0082@\u00a2\u0006\u0003\u0010\u00b3\u0001J\u001c\u0010\u00b6\u0001\u001a\u000f\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020\u00010\u00ad\u0001H\u0086@\u00a2\u0006\u0002\u00107J\u0018\u0010\u00b7\u0001\u001a\u00030\u00b8\u00012\u0006\u0010G\u001a\u00020:H\u0000\u00a2\u0006\u0003\u0008\u00b9\u0001J\u0014\u0010\u00ba\u0001\u001a\u000f\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020\u00010\u00ad\u0001J3\u0010H\u001a\u0010\u0012\u0004\u0012\u00020:\u0012\u0005\u0012\u00030\u00bc\u00010\u00bb\u00012\u0007\u0010\u00bd\u0001\u001a\u00020\u001f2\u0008\u0010\u00be\u0001\u001a\u00030\u00bf\u0001H\u0086@\u00a2\u0006\u0006\u0008\u00c0\u0001\u0010\u00c1\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0018\u001a\n \u001a*\u0004\u0018\u00010\u00190\u0019X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u00020\u001f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R\u0014\u0010\'\u001a\u00020\u001f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010&R\u0016\u0010)\u001a\u0004\u0018\u00010\u001f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+R\u0016\u0010,\u001a\u0004\u0018\u00010\u001f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010+R\u0014\u0010.\u001a\u00020\u001f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008/\u0010&R\u0014\u00100\u001a\u0002018BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00082\u00103R\u0011\u00104\u001a\u00020\u001f8F\u00a2\u0006\u0006\u001a\u0004\u00085\u0010&R\u0016\u00108\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010:09X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010;\u001a\u0004\u0018\u00010<8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008=\u0010>R\u0016\u0010?\u001a\u0004\u0018\u00010\u001f8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008@\u0010+R\u0011\u0010A\u001a\u00020<8F\u00a2\u0006\u0006\u001a\u0004\u0008B\u0010>R\u0011\u0010C\u001a\u00020<8F\u00a2\u0006\u0006\u001a\u0004\u0008D\u0010>R\u0014\u0010E\u001a\u00020<8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008F\u0010>R\u0016\u0010G\u001a\u0004\u0018\u00010:8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008H\u0010IR\u0011\u0010J\u001a\u00020<8F\u00a2\u0006\u0006\u001a\u0004\u0008K\u0010>R\u0011\u0010L\u001a\u00020M8F\u00a2\u0006\u0006\u001a\u0004\u0008L\u0010NR\u0011\u0010O\u001a\u00020<8F\u00a2\u0006\u0006\u001a\u0004\u0008P\u0010>R\u0011\u0010Q\u001a\u00020<8F\u00a2\u0006\u0006\u001a\u0004\u0008R\u0010>R\u0011\u0010S\u001a\u00020<8F\u00a2\u0006\u0006\u001a\u0004\u0008T\u0010>R\u001b\u0010U\u001a\u00020V8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008Y\u0010Z\u001a\u0004\u0008W\u0010XR\u001a\u0010[\u001a\u00020<X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\\\u0010>\"\u0004\u0008]\u0010^R\u001a\u0010_\u001a\u00020<X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008`\u0010>\"\u0004\u0008a\u0010^R\u000e\u0010b\u001a\u00020cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010d\u001a\u0004\u0018\u00010e8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008f\u0010gR\u0011\u0010h\u001a\u00020<8F\u00a2\u0006\u0006\u001a\u0004\u0008i\u0010>R\u0014\u0010j\u001a\u00020<8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008k\u0010>R\u0011\u0010l\u001a\u00020<8F\u00a2\u0006\u0006\u001a\u0004\u0008m\u0010>R\u0011\u0010n\u001a\u00020<8F\u00a2\u0006\u0006\u001a\u0004\u0008o\u0010>R\u0011\u0010p\u001a\u00020<8F\u00a2\u0006\u0006\u001a\u0004\u0008q\u0010>R\u0011\u0010r\u001a\u00020M8F\u00a2\u0006\u0006\u001a\u0004\u0008r\u0010NR\u0011\u0010s\u001a\u00020<8G\u00a2\u0006\u0006\u001a\u0004\u0008t\u0010>R\u0011\u0010u\u001a\u00020<8F\u00a2\u0006\u0006\u001a\u0004\u0008v\u0010>R\u0011\u0010w\u001a\u00020M8F\u00a2\u0006\u0006\u001a\u0004\u0008w\u0010NR\u0011\u0010x\u001a\u00020<8F\u00a2\u0006\u0006\u001a\u0004\u0008y\u0010>R\u0011\u0010z\u001a\u00020<8F\u00a2\u0006\u0006\u001a\u0004\u0008{\u0010>R\u001e\u0010|\u001a\u0004\u0018\u00010}X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0004\u0008~\u0010\u007f\"\u0006\u0008\u0080\u0001\u0010\u0081\u0001R\u0013\u0010\u0082\u0001\u001a\u00020<8F\u00a2\u0006\u0007\u001a\u0005\u0008\u0083\u0001\u0010>R\u0013\u0010\u0084\u0001\u001a\u00020<8F\u00a2\u0006\u0007\u001a\u0005\u0008\u0084\u0001\u0010>R\u0018\u0010\u0085\u0001\u001a\u00030\u0086\u00018BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0087\u0001\u0010\u0088\u0001R\u0018\u0010\u0089\u0001\u001a\u00030\u0086\u00018BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u008a\u0001\u0010\u0088\u0001R\u0018\u0010\u008b\u0001\u001a\u00030\u0086\u00018BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u008c\u0001\u0010\u0088\u0001R\u0018\u0010\u008d\u0001\u001a\u00030\u0086\u00018BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u008e\u0001\u0010\u0088\u0001R\u0018\u0010\u008f\u0001\u001a\u00030\u0086\u00018BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0090\u0001\u0010\u0088\u0001R\u0018\u0010\u0091\u0001\u001a\u00030\u0086\u00018BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0092\u0001\u0010\u0088\u0001R\u0016\u0010\u0093\u0001\u001a\u00020<8BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0094\u0001\u0010>R\u0016\u0010\u0095\u0001\u001a\u00020<8BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0096\u0001\u0010>R\u0016\u0010\u0097\u0001\u001a\u00020<8BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0098\u0001\u0010>R\u0016\u0010\u0099\u0001\u001a\u00020<8BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u009a\u0001\u0010>R\u0016\u0010\u009b\u0001\u001a\u00020<8BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u009c\u0001\u0010>R\u0016\u0010\u009d\u0001\u001a\u00020<8BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u009e\u0001\u0010>R\u0016\u0010\u009f\u0001\u001a\u00020<8BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00a0\u0001\u0010>R\u0013\u0010\u00a1\u0001\u001a\u00020<8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00a2\u0001\u0010>R\u0013\u0010\u00a3\u0001\u001a\u00020<8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00a4\u0001\u0010>R\u0013\u0010\u00a5\u0001\u001a\u00020<8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00a6\u0001\u0010>R\u0013\u0010\u00a7\u0001\u001a\u00020<8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00a8\u0001\u0010>R\u0013\u0010\u00a9\u0001\u001a\u00020<8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00aa\u0001\u0010>\u00a8\u0006\u00c3\u0001"
    }
    d2 = {
        "Lcom/superwall/sdk/network/device/DeviceHelper;",
        "",
        "context",
        "Landroid/content/Context;",
        "storage",
        "Lcom/superwall/sdk/storage/LocalStorage;",
        "network",
        "Lcom/superwall/sdk/network/SuperwallAPI;",
        "factory",
        "Lcom/superwall/sdk/network/device/DeviceHelper$Factory;",
        "classifier",
        "Lcom/superwall/sdk/analytics/DeviceClassifier;",
        "<init>",
        "(Landroid/content/Context;Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/network/SuperwallAPI;Lcom/superwall/sdk/network/device/DeviceHelper$Factory;Lcom/superwall/sdk/analytics/DeviceClassifier;)V",
        "getStorage",
        "()Lcom/superwall/sdk/storage/LocalStorage;",
        "getNetwork",
        "()Lcom/superwall/sdk/network/SuperwallAPI;",
        "getFactory",
        "()Lcom/superwall/sdk/network/device/DeviceHelper$Factory;",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "connectivityManager",
        "Landroid/net/ConnectivityManager;",
        "appInfo",
        "Landroid/content/pm/PackageInfo;",
        "kotlin.jvm.PlatformType",
        "Landroid/content/pm/PackageInfo;",
        "appInstallDate",
        "Ljava/util/Date;",
        "daysSince",
        "",
        "date",
        "minutesSince",
        "hoursSince",
        "monthsSince",
        "daysSinceInstall",
        "getDaysSinceInstall",
        "()I",
        "minutesSinceInstall",
        "getMinutesSinceInstall",
        "daysSinceLastPaywallView",
        "getDaysSinceLastPaywallView",
        "()Ljava/lang/Integer;",
        "minutesSinceLastPaywallView",
        "getMinutesSinceLastPaywallView",
        "totalPaywallViews",
        "getTotalPaywallViews",
        "reviewData",
        "Lcom/superwall/sdk/storage/ReviewCount;",
        "getReviewData",
        "()Lcom/superwall/sdk/storage/ReviewCount;",
        "reviewRequestCount",
        "getReviewRequestCount",
        "reviewRequestsTotal",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "lastEnrichment",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/superwall/sdk/models/enrichment/Enrichment;",
        "demandTier",
        "",
        "getDemandTier$superwall_release",
        "()Ljava/lang/String;",
        "demandScore",
        "getDemandScore$superwall_release",
        "locale",
        "getLocale",
        "appVersion",
        "getAppVersion",
        "appVersionPadded",
        "getAppVersionPadded",
        "enrichment",
        "getEnrichment",
        "()Lcom/superwall/sdk/models/enrichment/Enrichment;",
        "osVersion",
        "getOsVersion",
        "isEmulator",
        "",
        "()Z",
        "model",
        "getModel",
        "vendorId",
        "getVendorId",
        "deviceId",
        "getDeviceId",
        "deviceTier",
        "Lcom/superwall/sdk/analytics/Tier;",
        "getDeviceTier",
        "()Lcom/superwall/sdk/analytics/Tier;",
        "deviceTier$delegate",
        "Lkotlin/Lazy;",
        "platformWrapper",
        "getPlatformWrapper",
        "setPlatformWrapper",
        "(Ljava/lang/String;)V",
        "platformWrapperVersion",
        "getPlatformWrapperVersion",
        "setPlatformWrapperVersion",
        "_locale",
        "Ljava/util/Locale;",
        "_currency",
        "Ljava/util/Currency;",
        "get_currency",
        "()Ljava/util/Currency;",
        "languageCode",
        "getLanguageCode",
        "regionCode",
        "getRegionCode",
        "currencyCode",
        "getCurrencyCode",
        "currencySymbol",
        "getCurrencySymbol",
        "secondsFromGMT",
        "getSecondsFromGMT",
        "isFirstAppOpen",
        "radioType",
        "getRadioType",
        "bundleId",
        "getBundleId",
        "isSandbox",
        "urlScheme",
        "getUrlScheme",
        "appInstalledAtString",
        "getAppInstalledAtString",
        "interfaceStyleOverride",
        "Lcom/superwall/sdk/network/device/InterfaceStyle;",
        "getInterfaceStyleOverride",
        "()Lcom/superwall/sdk/network/device/InterfaceStyle;",
        "setInterfaceStyleOverride",
        "(Lcom/superwall/sdk/network/device/InterfaceStyle;)V",
        "interfaceStyle",
        "getInterfaceStyle",
        "isLowPowerModeEnabled",
        "localDateFormat",
        "Ljava/text/SimpleDateFormat;",
        "getLocalDateFormat",
        "()Ljava/text/SimpleDateFormat;",
        "utcDateFormat",
        "getUtcDateFormat",
        "utcTimeFormat",
        "getUtcTimeFormat",
        "localDateTimeFormat",
        "getLocalDateTimeFormat",
        "localTimeFormat",
        "getLocalTimeFormat",
        "utcDateTimeFormat",
        "getUtcDateTimeFormat",
        "localDateString",
        "getLocalDateString",
        "localTimeString",
        "getLocalTimeString",
        "localDateTimeString",
        "getLocalDateTimeString",
        "utcDateString",
        "getUtcDateString",
        "utcTimeString",
        "getUtcTimeString",
        "utcDateTimeString",
        "getUtcDateTimeString",
        "sdkVersionPadded",
        "getSdkVersionPadded",
        "appBuildString",
        "getAppBuildString",
        "sdkVersion",
        "getSdkVersion",
        "buildTime",
        "getBuildTime",
        "gitSha",
        "getGitSha",
        "kotlinVersion",
        "getKotlinVersion",
        "preloadFingerprint",
        "getDeviceAttributes",
        "",
        "sinceEvent",
        "Lcom/superwall/sdk/models/events/EventData;",
        "computedPropertyRequests",
        "",
        "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;",
        "(Lcom/superwall/sdk/models/events/EventData;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getComputedDevicePropertiesSinceEvent",
        "event",
        "getTemplateDevice",
        "setEnrichment",
        "",
        "setEnrichment$superwall_release",
        "latestExperimentalDeviceProperties",
        "Lcom/superwall/sdk/misc/Either;",
        "Lcom/superwall/sdk/network/NetworkError;",
        "maxRetry",
        "timeout",
        "Lkotlin/time/Duration;",
        "getEnrichment-8Mi8wO0",
        "(IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final _locale:Ljava/util/Locale;

.field private final appInfo:Landroid/content/pm/PackageInfo;

.field private final appInstallDate:Ljava/util/Date;

.field private final classifier:Lcom/superwall/sdk/analytics/DeviceClassifier;

.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field private final context:Landroid/content/Context;

.field private final deviceTier$delegate:Lkotlin/Lazy;

.field private final factory:Lcom/superwall/sdk/network/device/DeviceHelper$Factory;

.field private interfaceStyleOverride:Lcom/superwall/sdk/network/device/InterfaceStyle;

.field private final json:Lkotlinx/serialization/json/Json;

.field private final lastEnrichment:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/superwall/sdk/models/enrichment/Enrichment;",
            ">;"
        }
    .end annotation
.end field

.field private final network:Lcom/superwall/sdk/network/SuperwallAPI;

.field private platformWrapper:Ljava/lang/String;

.field private platformWrapperVersion:Ljava/lang/String;

.field private final storage:Lcom/superwall/sdk/storage/LocalStorage;


# direct methods
.method public static synthetic $r8$lambda$C3ovTl9znvJfdbCTnygMoQvc0Ws(Lcom/superwall/sdk/models/entitlements/Entitlement;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/network/device/DeviceHelper;->preloadFingerprint$lambda$9(Lcom/superwall/sdk/models/entitlements/Entitlement;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$j-q1_sfsiO-Mnuk2QK1eJiceSaQ(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/network/device/DeviceHelper;->_init_$lambda$0(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wj_7J28jLkP8YVdPf1f-RJf_rjg(Lcom/superwall/sdk/network/device/DeviceHelper;)Lcom/superwall/sdk/analytics/Tier;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/network/device/DeviceHelper;->deviceTier_delegate$lambda$5(Lcom/superwall/sdk/network/device/DeviceHelper;)Lcom/superwall/sdk/analytics/Tier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yyjeubAG0asrO76qM5c6wy9gwvs(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/network/device/DeviceHelper;->json$lambda$1(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/network/SuperwallAPI;Lcom/superwall/sdk/network/device/DeviceHelper$Factory;Lcom/superwall/sdk/analytics/DeviceClassifier;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classifier"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->context:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->storage:Lcom/superwall/sdk/storage/LocalStorage;

    .line 76
    iput-object p3, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->network:Lcom/superwall/sdk/network/SuperwallAPI;

    .line 77
    iput-object p4, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->factory:Lcom/superwall/sdk/network/device/DeviceHelper$Factory;

    .line 78
    iput-object p5, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->classifier:Lcom/superwall/sdk/analytics/DeviceClassifier;

    .line 92
    new-instance p3, Lcom/superwall/sdk/network/device/DeviceHelper$$ExternalSyntheticLambda2;

    invoke-direct {p3}, Lcom/superwall/sdk/network/device/DeviceHelper$$ExternalSyntheticLambda2;-><init>()V

    const/4 p4, 0x1

    const/4 p5, 0x0

    invoke-static {p5, p3, p4, p5}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object p3

    iput-object p3, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->json:Lkotlinx/serialization/json/Json;

    .line 98
    const-string p3, "connectivity"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    const-string p4, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/net/ConnectivityManager;

    iput-object p3, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->appInfo:Landroid/content/pm/PackageInfo;

    .line 100
    new-instance p3, Ljava/util/Date;

    iget-wide p4, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-direct {p3, p4, p5}, Ljava/util/Date;-><init>(J)V

    iput-object p3, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->appInstallDate:Ljava/util/Date;

    .line 215
    sget-object p1, Lcom/superwall/sdk/storage/LatestEnrichment;->INSTANCE:Lcom/superwall/sdk/storage/LatestEnrichment;

    check-cast p1, Lcom/superwall/sdk/storage/Storable;

    invoke-virtual {p2, p1}, Lcom/superwall/sdk/storage/LocalStorage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->lastEnrichment:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 274
    new-instance p1, Lcom/superwall/sdk/network/device/DeviceHelper$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/network/device/DeviceHelper$$ExternalSyntheticLambda3;-><init>(Lcom/superwall/sdk/network/device/DeviceHelper;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->deviceTier$delegate:Lkotlin/Lazy;

    .line 275
    const-string p1, ""

    iput-object p1, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->platformWrapper:Ljava/lang/String;

    .line 276
    iput-object p1, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->platformWrapperVersion:Ljava/lang/String;

    .line 278
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string p2, "getDefault(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->_locale:Ljava/util/Locale;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/network/SuperwallAPI;Lcom/superwall/sdk/network/device/DeviceHelper$Factory;Lcom/superwall/sdk/analytics/DeviceClassifier;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    .line 78
    new-instance p5, Lcom/superwall/sdk/analytics/DeviceClassifier;

    new-instance p6, Lcom/superwall/sdk/analytics/DefaultClassifierDataFactory;

    new-instance p7, Lcom/superwall/sdk/network/device/DeviceHelper$$ExternalSyntheticLambda1;

    invoke-direct {p7, p1}, Lcom/superwall/sdk/network/device/DeviceHelper$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-direct {p6, p7}, Lcom/superwall/sdk/analytics/DefaultClassifierDataFactory;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast p6, Lcom/superwall/sdk/analytics/ClassifierDataFactory;

    invoke-direct {p5, p6}, Lcom/superwall/sdk/analytics/DeviceClassifier;-><init>(Lcom/superwall/sdk/analytics/ClassifierDataFactory;)V

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 73
    invoke-direct/range {v0 .. v5}, Lcom/superwall/sdk/network/device/DeviceHelper;-><init>(Landroid/content/Context;Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/network/SuperwallAPI;Lcom/superwall/sdk/network/device/DeviceHelper$Factory;Lcom/superwall/sdk/analytics/DeviceClassifier;)V

    return-void
.end method

.method private static final _init_$lambda$0(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public static final synthetic access$getComputedDevicePropertiesSinceEvent(Lcom/superwall/sdk/network/device/DeviceHelper;Lcom/superwall/sdk/models/events/EventData;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/superwall/sdk/network/device/DeviceHelper;->getComputedDevicePropertiesSinceEvent(Lcom/superwall/sdk/models/events/EventData;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLastEnrichment$p(Lcom/superwall/sdk/network/device/DeviceHelper;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->lastEnrichment:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method private static final deviceTier_delegate$lambda$5(Lcom/superwall/sdk/network/device/DeviceHelper;)Lcom/superwall/sdk/analytics/Tier;
    .locals 0

    .line 274
    iget-object p0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->classifier:Lcom/superwall/sdk/analytics/DeviceClassifier;

    invoke-virtual {p0}, Lcom/superwall/sdk/analytics/DeviceClassifier;->deviceTier()Lcom/superwall/sdk/analytics/Tier;

    move-result-object p0

    return-object p0
.end method

.method private final getAppVersionPadded()Ljava/lang/String;
    .locals 1

    .line 256
    invoke-virtual {p0}, Lcom/superwall/sdk/network/device/DeviceHelper;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/superwall/sdk/network/device/DeviceHelperKt;->asPadded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getComputedDevicePropertiesSinceEvent(Lcom/superwall/sdk/models/events/EventData;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/events/EventData;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/superwall/sdk/network/device/DeviceHelper$getComputedDevicePropertiesSinceEvent$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/superwall/sdk/network/device/DeviceHelper$getComputedDevicePropertiesSinceEvent$1;

    iget v1, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getComputedDevicePropertiesSinceEvent$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getComputedDevicePropertiesSinceEvent$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getComputedDevicePropertiesSinceEvent$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/network/device/DeviceHelper$getComputedDevicePropertiesSinceEvent$1;

    invoke-direct {v0, p0, p3}, Lcom/superwall/sdk/network/device/DeviceHelper$getComputedDevicePropertiesSinceEvent$1;-><init>(Lcom/superwall/sdk/network/device/DeviceHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getComputedDevicePropertiesSinceEvent$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 525
    iget v2, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getComputedDevicePropertiesSinceEvent$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getComputedDevicePropertiesSinceEvent$1;->L$4:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/models/config/ComputedPropertyRequest;

    iget-object p2, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getComputedDevicePropertiesSinceEvent$1;->L$3:Ljava/lang/Object;

    check-cast p2, Ljava/util/Iterator;

    iget-object v2, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getComputedDevicePropertiesSinceEvent$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    iget-object v4, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getComputedDevicePropertiesSinceEvent$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/models/events/EventData;

    iget-object v5, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getComputedDevicePropertiesSinceEvent$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/superwall/sdk/network/device/DeviceHelper;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 529
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p3, Ljava/util/Map;

    .line 531
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v5, p0

    move-object v2, p3

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/superwall/sdk/models/config/ComputedPropertyRequest;

    .line 533
    iget-object v4, v5, Lcom/superwall/sdk/network/device/DeviceHelper;->storage:Lcom/superwall/sdk/storage/LocalStorage;

    invoke-virtual {v4}, Lcom/superwall/sdk/storage/LocalStorage;->getCoreDataManager()Lcom/superwall/sdk/storage/core_data/CoreDataManager;

    move-result-object v4

    iput-object v5, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getComputedDevicePropertiesSinceEvent$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getComputedDevicePropertiesSinceEvent$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getComputedDevicePropertiesSinceEvent$1;->L$2:Ljava/lang/Object;

    iput-object p2, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getComputedDevicePropertiesSinceEvent$1;->L$3:Ljava/lang/Object;

    iput-object p3, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getComputedDevicePropertiesSinceEvent$1;->L$4:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getComputedDevicePropertiesSinceEvent$1;->label:I

    invoke-virtual {v4, p1, p3, v0}, Lcom/superwall/sdk/storage/core_data/CoreDataManager;->getComputedPropertySinceEvent(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/models/config/ComputedPropertyRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_3

    return-object v1

    :cond_3
    move-object v8, v4

    move-object v4, p1

    move-object p1, p3

    move-object p3, v8

    .line 525
    :goto_2
    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_4

    .line 537
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p3

    .line 538
    invoke-virtual {p1}, Lcom/superwall/sdk/models/config/ComputedPropertyRequest;->getType()Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/superwall/sdk/models/config/ComputedPropertyRequest;->getEventName()Ljava/lang/String;

    move-result-object p1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object p1, v4

    goto :goto_1

    :cond_5
    return-object v2
.end method

.method private final getDaysSinceInstall()I
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->appInstallDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/threeten/bp/Instant;->ofEpochMilli(J)Lorg/threeten/bp/Instant;

    move-result-object v0

    .line 141
    invoke-static {}, Lorg/threeten/bp/Instant;->now()Lorg/threeten/bp/Instant;

    move-result-object v1

    .line 144
    check-cast v0, Lorg/threeten/bp/temporal/Temporal;

    check-cast v1, Lorg/threeten/bp/temporal/Temporal;

    invoke-static {v0, v1}, Lorg/threeten/bp/Duration;->between(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/Duration;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lorg/threeten/bp/Duration;->toDays()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private final getDaysSinceLastPaywallView()Ljava/lang/Integer;
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->storage:Lcom/superwall/sdk/storage/LocalStorage;

    sget-object v1, Lcom/superwall/sdk/storage/LastPaywallView;->INSTANCE:Lcom/superwall/sdk/storage/LastPaywallView;

    check-cast v1, Lcom/superwall/sdk/storage/Storable;

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/storage/LocalStorage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/threeten/bp/Instant;->ofEpochMilli(J)Lorg/threeten/bp/Instant;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    invoke-static {}, Lorg/threeten/bp/Instant;->now()Lorg/threeten/bp/Instant;

    move-result-object v1

    .line 169
    check-cast v0, Lorg/threeten/bp/temporal/Temporal;

    check-cast v1, Lorg/threeten/bp/temporal/Temporal;

    invoke-static {v0, v1}, Lorg/threeten/bp/Duration;->between(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/Duration;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lorg/threeten/bp/Duration;->toDays()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final getEnrichment()Lcom/superwall/sdk/models/enrichment/Enrichment;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->lastEnrichment:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/models/enrichment/Enrichment;

    return-object v0
.end method

.method private final getLocalDateFormat()Ljava/text/SimpleDateFormat;
    .locals 2

    .line 393
    sget-object v0, Lcom/superwall/sdk/utilities/DateUtils;->INSTANCE:Lcom/superwall/sdk/utilities/DateUtils;

    invoke-virtual {v0}, Lcom/superwall/sdk/utilities/DateUtils;->getYyyy_MM_dd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/superwall/sdk/utilities/DateUtilsKt;->dateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    .line 394
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method private final getLocalDateString()Ljava/lang/String;
    .locals 3

    .line 434
    invoke-direct {p0}, Lcom/superwall/sdk/network/device/DeviceHelper;->getLocalDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getLocalDateTimeFormat()Ljava/text/SimpleDateFormat;
    .locals 2

    .line 414
    sget-object v0, Lcom/superwall/sdk/utilities/DateUtils;->INSTANCE:Lcom/superwall/sdk/utilities/DateUtils;

    invoke-virtual {v0}, Lcom/superwall/sdk/utilities/DateUtils;->getISO_SECONDS()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/superwall/sdk/utilities/DateUtilsKt;->dateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    .line 415
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method private final getLocalDateTimeString()Ljava/lang/String;
    .locals 3

    .line 440
    invoke-direct {p0}, Lcom/superwall/sdk/network/device/DeviceHelper;->getLocalDateTimeFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getLocalTimeFormat()Ljava/text/SimpleDateFormat;
    .locals 2

    .line 421
    sget-object v0, Lcom/superwall/sdk/utilities/DateUtils;->INSTANCE:Lcom/superwall/sdk/utilities/DateUtils;

    invoke-virtual {v0}, Lcom/superwall/sdk/utilities/DateUtils;->getHH_mm_ss()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/superwall/sdk/utilities/DateUtilsKt;->dateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    .line 422
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method private final getLocalTimeString()Ljava/lang/String;
    .locals 3

    .line 437
    invoke-direct {p0}, Lcom/superwall/sdk/network/device/DeviceHelper;->getLocalTimeFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getMinutesSinceInstall()I
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->appInstallDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/threeten/bp/Instant;->ofEpochMilli(J)Lorg/threeten/bp/Instant;

    move-result-object v0

    .line 151
    invoke-static {}, Lorg/threeten/bp/Instant;->now()Lorg/threeten/bp/Instant;

    move-result-object v1

    .line 154
    check-cast v0, Lorg/threeten/bp/temporal/Temporal;

    check-cast v1, Lorg/threeten/bp/temporal/Temporal;

    invoke-static {v0, v1}, Lorg/threeten/bp/Duration;->between(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/Duration;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lorg/threeten/bp/Duration;->toMinutes()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private final getMinutesSinceLastPaywallView()Ljava/lang/Integer;
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->storage:Lcom/superwall/sdk/storage/LocalStorage;

    sget-object v1, Lcom/superwall/sdk/storage/LastPaywallView;->INSTANCE:Lcom/superwall/sdk/storage/LastPaywallView;

    check-cast v1, Lcom/superwall/sdk/storage/Storable;

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/storage/LocalStorage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/threeten/bp/Instant;->ofEpochMilli(J)Lorg/threeten/bp/Instant;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    invoke-static {}, Lorg/threeten/bp/Instant;->now()Lorg/threeten/bp/Instant;

    move-result-object v1

    .line 184
    check-cast v0, Lorg/threeten/bp/temporal/Temporal;

    check-cast v1, Lorg/threeten/bp/temporal/Temporal;

    invoke-static {v0, v1}, Lorg/threeten/bp/Duration;->between(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/Duration;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lorg/threeten/bp/Duration;->toMinutes()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final getRegionCode()Ljava/lang/String;
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->_locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCountry(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getReviewData()Lcom/superwall/sdk/storage/ReviewCount;
    .locals 7

    .line 195
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->storage:Lcom/superwall/sdk/storage/LocalStorage;

    sget-object v1, Lcom/superwall/sdk/storage/ReviewData;->INSTANCE:Lcom/superwall/sdk/storage/ReviewData;

    check-cast v1, Lcom/superwall/sdk/storage/Storable;

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/storage/LocalStorage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/storage/ReviewCount;

    if-nez v0, :cond_0

    new-instance v1, Lcom/superwall/sdk/storage/ReviewCount;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/superwall/sdk/storage/ReviewCount;-><init>(IJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_0
    return-object v0
.end method

.method private final getSdkVersionPadded()Ljava/lang/String;
    .locals 1

    .line 452
    invoke-virtual {p0}, Lcom/superwall/sdk/network/device/DeviceHelper;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/superwall/sdk/network/device/DeviceHelperKt;->asPadded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getTotalPaywallViews()I
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->storage:Lcom/superwall/sdk/storage/LocalStorage;

    sget-object v1, Lcom/superwall/sdk/storage/TotalPaywallViews;->INSTANCE:Lcom/superwall/sdk/storage/TotalPaywallViews;

    check-cast v1, Lcom/superwall/sdk/storage/Storable;

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/storage/LocalStorage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final getUtcDateFormat()Ljava/text/SimpleDateFormat;
    .locals 2

    .line 400
    sget-object v0, Lcom/superwall/sdk/utilities/DateUtils;->INSTANCE:Lcom/superwall/sdk/utilities/DateUtils;

    invoke-virtual {v0}, Lcom/superwall/sdk/utilities/DateUtils;->getYyyy_MM_dd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/superwall/sdk/utilities/DateUtilsKt;->dateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    .line 401
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method private final getUtcDateString()Ljava/lang/String;
    .locals 3

    .line 443
    invoke-direct {p0}, Lcom/superwall/sdk/network/device/DeviceHelper;->getUtcDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getUtcDateTimeFormat()Ljava/text/SimpleDateFormat;
    .locals 2

    .line 428
    sget-object v0, Lcom/superwall/sdk/utilities/DateUtils;->INSTANCE:Lcom/superwall/sdk/utilities/DateUtils;

    invoke-virtual {v0}, Lcom/superwall/sdk/utilities/DateUtils;->getISO_SECONDS()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/superwall/sdk/utilities/DateUtilsKt;->dateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    .line 429
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method private final getUtcDateTimeString()Ljava/lang/String;
    .locals 3

    .line 449
    invoke-direct {p0}, Lcom/superwall/sdk/network/device/DeviceHelper;->getUtcDateTimeFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getUtcTimeFormat()Ljava/text/SimpleDateFormat;
    .locals 2

    .line 407
    sget-object v0, Lcom/superwall/sdk/utilities/DateUtils;->INSTANCE:Lcom/superwall/sdk/utilities/DateUtils;

    invoke-virtual {v0}, Lcom/superwall/sdk/utilities/DateUtils;->getHH_mm_ss()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/superwall/sdk/utilities/DateUtilsKt;->dateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    .line 408
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method private final getUtcTimeString()Ljava/lang/String;
    .locals 3

    .line 446
    invoke-direct {p0}, Lcom/superwall/sdk/network/device/DeviceHelper;->getUtcTimeFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final get_currency()Ljava/util/Currency;
    .locals 1

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->_locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static final json$lambda$1(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$Json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 93
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setEncodeDefaults(Z)V

    .line 94
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setExplicitNulls(Z)V

    .line 95
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final preloadFingerprint$lambda$9(Lcom/superwall/sdk/models/entitlements/Entitlement;)Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0}, Lcom/superwall/sdk/models/entitlements/Entitlement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/superwall/sdk/models/entitlements/Entitlement;->getType()Lcom/superwall/sdk/models/entitlements/Entitlement$Type;

    move-result-object p0

    invoke-virtual {p0}, Lcom/superwall/sdk/models/entitlements/Entitlement$Type;->getRaw()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public final daysSince(Ljava/util/Date;)I
    .locals 2

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/threeten/bp/Instant;->ofEpochMilli(J)Lorg/threeten/bp/Instant;

    move-result-object p1

    .line 104
    invoke-static {}, Lorg/threeten/bp/Instant;->now()Lorg/threeten/bp/Instant;

    move-result-object v0

    .line 107
    check-cast p1, Lorg/threeten/bp/temporal/Temporal;

    check-cast v0, Lorg/threeten/bp/temporal/Temporal;

    invoke-static {p1, v0}, Lorg/threeten/bp/Duration;->between(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/Duration;

    move-result-object p1

    .line 108
    invoke-virtual {p1}, Lorg/threeten/bp/Duration;->toDays()J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method public final getAppBuildString()Ljava/lang/String;
    .locals 3

    .line 456
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 457
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAppInstalledAtString()Ljava/lang/String;
    .locals 4

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 356
    new-instance v1, Ljava/util/Date;

    iget-wide v2, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 740
    new-instance v0, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {v0, v1}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lcom/superwall/sdk/misc/Either;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 742
    invoke-static {v0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 743
    sget-object v1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    sget-object v1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 747
    :cond_0
    new-instance v1, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    check-cast v0, Lcom/superwall/sdk/misc/Either;

    .line 358
    :goto_0
    sget-object v1, Lcom/superwall/sdk/utilities/DateUtils;->INSTANCE:Lcom/superwall/sdk/utilities/DateUtils;

    invoke-virtual {v1}, Lcom/superwall/sdk/utilities/DateUtils;->getSIMPLE()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/superwall/sdk/utilities/DateUtilsKt;->dateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    .line 359
    invoke-virtual {v0}, Lcom/superwall/sdk/misc/Either;->getSuccess()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    :cond_1
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAppVersion()Ljava/lang/String;
    .locals 9

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 245
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Unknown"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    .line 247
    sget-object v1, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 248
    sget-object v2, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 249
    sget-object v3, Lcom/superwall/sdk/logger/LogScope;->device:Lcom/superwall/sdk/logger/LogScope;

    .line 250
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DeviceHelper: Failed to load version info - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 247
    invoke-static/range {v1 .. v8}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 252
    const-string v0, ""

    return-object v0
.end method

.method public final getBuildTime()Ljava/lang/String;
    .locals 1

    .line 464
    const-string v0, "2026-06-23T11:19:46Z"

    return-object v0
.end method

.method public final getBundleId()Ljava/lang/String;
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getPackageName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 296
    invoke-direct {p0}, Lcom/superwall/sdk/network/device/DeviceHelper;->get_currency()Ljava/util/Currency;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public final getCurrencySymbol()Ljava/lang/String;
    .locals 1

    .line 299
    invoke-direct {p0}, Lcom/superwall/sdk/network/device/DeviceHelper;->get_currency()Ljava/util/Currency;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public final getDemandScore$superwall_release()Ljava/lang/Integer;
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->lastEnrichment:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/models/enrichment/Enrichment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/superwall/sdk/models/enrichment/Enrichment;->getDevice()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "demandScore"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 229
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 230
    :cond_0
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 231
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDemandTier$superwall_release()Ljava/lang/String;
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->lastEnrichment:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 220
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/models/enrichment/Enrichment;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Lcom/superwall/sdk/models/enrichment/Enrichment;->getDevice()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    const-string v1, "demandTier"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDeviceAttributes(Lcom/superwall/sdk/models/events/EventData;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/events/EventData;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/superwall/sdk/network/device/DeviceHelper$getDeviceAttributes$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/superwall/sdk/network/device/DeviceHelper$getDeviceAttributes$1;

    iget v1, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getDeviceAttributes$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getDeviceAttributes$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getDeviceAttributes$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/network/device/DeviceHelper$getDeviceAttributes$1;

    invoke-direct {v0, p0, p3}, Lcom/superwall/sdk/network/device/DeviceHelper$getDeviceAttributes$1;-><init>(Lcom/superwall/sdk/network/device/DeviceHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getDeviceAttributes$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 511
    iget v2, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getDeviceAttributes$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getDeviceAttributes$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getDeviceAttributes$1;->L$2:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/util/List;

    iget-object p1, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getDeviceAttributes$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/models/events/EventData;

    iget-object v2, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getDeviceAttributes$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/network/device/DeviceHelper;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 515
    iput-object p0, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getDeviceAttributes$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getDeviceAttributes$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getDeviceAttributes$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getDeviceAttributes$1;->label:I

    invoke-virtual {p0, v0}, Lcom/superwall/sdk/network/device/DeviceHelper;->getTemplateDevice(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, p0

    .line 511
    :goto_1
    check-cast p3, Ljava/util/Map;

    .line 518
    iput-object p3, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getDeviceAttributes$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getDeviceAttributes$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getDeviceAttributes$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getDeviceAttributes$1;->label:I

    invoke-direct {v2, p1, p2, v0}, Lcom/superwall/sdk/network/device/DeviceHelper;->getComputedDevicePropertiesSinceEvent(Lcom/superwall/sdk/models/events/EventData;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    move-object v5, p3

    move-object p3, p1

    move-object p1, v5

    .line 511
    :goto_3
    check-cast p3, Ljava/util/Map;

    .line 522
    invoke-static {p1, p3}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 3

    .line 272
    new-instance v0, Lcom/superwall/sdk/models/internal/DeviceVendorId;

    invoke-virtual {p0}, Lcom/superwall/sdk/network/device/DeviceHelper;->getVendorId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/superwall/sdk/models/internal/VendorId;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/superwall/sdk/models/internal/DeviceVendorId;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/superwall/sdk/models/internal/DeviceVendorId;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDeviceTier()Lcom/superwall/sdk/analytics/Tier;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->deviceTier$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/analytics/Tier;

    return-object v0
.end method

.method public final getEnrichment-8Mi8wO0(IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/models/enrichment/Enrichment;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$1;

    iget v1, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$1;

    invoke-direct {v0, p0, p4}, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$1;-><init>(Lcom/superwall/sdk/network/device/DeviceHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    iget-object p4, v6, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 664
    iget v1, v6, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$1;->label:I

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v9, 0x0

    if-eqz v1, :cond_6

    if-eq v1, v4, :cond_5

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    if-eq v1, v8, :cond_2

    if-ne v1, v7, :cond_1

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v6, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/network/device/DeviceHelper;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_3
    iget-object p1, v6, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/network/device/DeviceHelper;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_4
    iget-wide p1, v6, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$1;->J$0:J

    iget p3, v6, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$1;->I$0:I

    iget-object v1, v6, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iget-object v3, v6, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/network/device/DeviceHelper;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v4, p1

    move-object p1, v3

    move v3, p3

    goto/16 :goto_3

    :cond_5
    iget-wide p2, v6, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$1;->J$0:J

    iget p1, v6, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$1;->I$0:I

    iget-object v1, v6, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/superwall/sdk/network/device/DeviceHelper;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 669
    iget-object p4, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->factory:Lcom/superwall/sdk/network/device/DeviceHelper$Factory;

    iput-object p0, v6, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$1;->L$0:Ljava/lang/Object;

    iput p1, v6, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$1;->I$0:I

    iput-wide p2, v6, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$1;->J$0:J

    iput v4, v6, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$1;->label:I

    invoke-interface {p4, v6}, Lcom/superwall/sdk/network/device/DeviceHelper$Factory;->makeIdentityManager(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v0, :cond_7

    goto/16 :goto_7

    :cond_7
    move-object v1, p0

    :goto_1
    check-cast p4, Lcom/superwall/sdk/identity/IdentityManager;

    invoke-virtual {p4}, Lcom/superwall/sdk/identity/IdentityManager;->getUserAttributes()Ljava/util/Map;

    move-result-object p4

    .line 786
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v4, Ljava/util/Map;

    .line 787
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    check-cast p4, Ljava/lang/Iterable;

    .line 788
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 789
    check-cast v5, Ljava/util/Map$Entry;

    .line 787
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    .line 670
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/superwall/sdk/storage/core_data/ConvertersKt;->convertToJsonElement(Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v5

    .line 789
    invoke-interface {v4, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 674
    :cond_8
    iput-object v1, v6, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$1;->L$0:Ljava/lang/Object;

    iput-object v4, v6, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$1;->L$1:Ljava/lang/Object;

    iput p1, v6, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$1;->I$0:I

    iput-wide p2, v6, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$1;->J$0:J

    iput v3, v6, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$1;->label:I

    invoke-virtual {v1, v6}, Lcom/superwall/sdk/network/device/DeviceHelper;->getTemplateDevice(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v0, :cond_9

    goto/16 :goto_7

    :cond_9
    move v3, p1

    move-object p1, v1

    move-object v1, v4

    move-wide v4, p2

    .line 664
    :goto_3
    check-cast p4, Ljava/util/Map;

    .line 792
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p3

    invoke-static {p3}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p2, Ljava/util/Map;

    .line 793
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    .line 794
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    .line 795
    check-cast p4, Ljava/util/Map$Entry;

    .line 793
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    .line 675
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lcom/superwall/sdk/storage/core_data/ConvertersKt;->convertToJsonElement(Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p4

    .line 795
    invoke-interface {p2, v10, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 677
    :cond_a
    iget-object p3, p1, Lcom/superwall/sdk/network/device/DeviceHelper;->network:Lcom/superwall/sdk/network/SuperwallAPI;

    move p4, v2

    .line 678
    new-instance v2, Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;

    invoke-direct {v2, v1, p2}, Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    iput-object p1, v6, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$1;->L$0:Ljava/lang/Object;

    iput-object v9, v6, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$1;->L$1:Ljava/lang/Object;

    iput p4, v6, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$1;->label:I

    move-object v1, p3

    invoke-interface/range {v1 .. v6}, Lcom/superwall/sdk/network/SuperwallAPI;->getEnrichment-exY8QGI(Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v0, :cond_b

    goto :goto_7

    .line 664
    :cond_b
    :goto_5
    check-cast p4, Lcom/superwall/sdk/misc/Either;

    .line 679
    new-instance p2, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$2;

    invoke-direct {p2, p1, v9}, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$2;-><init>(Lcom/superwall/sdk/network/device/DeviceHelper;Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    iput-object p1, v6, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$1;->L$0:Ljava/lang/Object;

    iput v8, v6, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$1;->label:I

    invoke-static {p4, p2, v6}, Lcom/superwall/sdk/misc/EitherKt;->then(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v0, :cond_c

    goto :goto_7

    .line 664
    :cond_c
    :goto_6
    check-cast p4, Lcom/superwall/sdk/misc/Either;

    .line 681
    new-instance p2, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$3;

    invoke-direct {p2, p1, v9}, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$3;-><init>(Lcom/superwall/sdk/network/device/DeviceHelper;Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    iput-object v9, v6, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$1;->L$0:Ljava/lang/Object;

    iput v7, v6, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$1;->label:I

    invoke-static {p4, p2, v6}, Lcom/superwall/sdk/misc/EitherKt;->then(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_d

    :goto_7
    return-object v0

    :cond_d
    return-object p1
.end method

.method public final getFactory()Lcom/superwall/sdk/network/device/DeviceHelper$Factory;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->factory:Lcom/superwall/sdk/network/device/DeviceHelper$Factory;

    return-object v0
.end method

.method public final getGitSha()Ljava/lang/String;
    .locals 1

    .line 467
    const-string v0, "b3c5a32"

    return-object v0
.end method

.method public final getInterfaceStyle()Ljava/lang/String;
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->interfaceStyleOverride:Lcom/superwall/sdk/network/device/InterfaceStyle;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/superwall/sdk/network/device/InterfaceStyle;->getRawValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    move-object v0, p0

    check-cast v0, Lcom/superwall/sdk/network/device/DeviceHelper;

    .line 368
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    .line 369
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    .line 376
    const-string v0, "Unspecified"

    return-object v0

    .line 375
    :cond_3
    const-string v0, "Dark"

    return-object v0

    .line 374
    :cond_4
    const-string v0, "Light"

    return-object v0
.end method

.method public final getInterfaceStyleOverride()Lcom/superwall/sdk/network/device/InterfaceStyle;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->interfaceStyleOverride:Lcom/superwall/sdk/network/device/InterfaceStyle;

    return-object v0
.end method

.method public final getKotlinVersion()Ljava/lang/String;
    .locals 1

    .line 472
    :try_start_0
    sget-object v0, Lkotlin/KotlinVersion;->CURRENT:Lkotlin/KotlinVersion;

    invoke-virtual {v0}, Lkotlin/KotlinVersion;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 474
    :catchall_0
    const-string v0, "UNKNOWN"

    return-object v0
.end method

.method public final getLanguageCode()Ljava/lang/String;
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->_locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getLanguage(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getLocale()Ljava/lang/String;
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->factory:Lcom/superwall/sdk/network/device/DeviceHelper$Factory;

    invoke-interface {v0}, Lcom/superwall/sdk/network/device/DeviceHelper$Factory;->makeLocaleIdentifier()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 238
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getModel()Ljava/lang/String;
    .locals 2

    .line 266
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MODEL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getNetwork()Lcom/superwall/sdk/network/SuperwallAPI;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->network:Lcom/superwall/sdk/network/SuperwallAPI;

    return-object v0
.end method

.method public final getOsVersion()Ljava/lang/String;
    .locals 1

    .line 260
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public final getPlatformWrapper()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->platformWrapper:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlatformWrapperVersion()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->platformWrapperVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getRadioType()Ljava/lang/String;
    .locals 4

    .line 312
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->context:Landroid/content/Context;

    .line 313
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 311
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    .line 323
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-ne v3, v2, :cond_1

    const-string v0, "Cellular"

    return-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 324
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-ne v0, v2, :cond_2

    const-string v0, "Wifi"

    return-object v0

    :cond_2
    return-object v1
.end method

.method public final getReviewRequestCount()I
    .locals 1

    .line 199
    invoke-direct {p0}, Lcom/superwall/sdk/network/device/DeviceHelper;->getReviewData()Lcom/superwall/sdk/storage/ReviewCount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/storage/ReviewCount;->getTimesQueried()I

    move-result v0

    return v0
.end method

.method public final getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 461
    const-string v0, "2.7.16"

    return-object v0
.end method

.method public final getSecondsFromGMT()Ljava/lang/String;
    .locals 1

    .line 302
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStorage()Lcom/superwall/sdk/storage/LocalStorage;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->storage:Lcom/superwall/sdk/storage/LocalStorage;

    return-object v0
.end method

.method public final getTemplateDevice(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 95
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;

    iget v3, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->label:I

    sub-int/2addr v0, v4

    iput v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;

    invoke-direct {v2, v1, v0}, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;-><init>(Lcom/superwall/sdk/network/device/DeviceHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 545
    iget v4, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->label:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v6, :cond_1

    iget v3, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->I$3:I

    iget v4, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->I$2:I

    iget v6, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->I$1:I

    iget-boolean v7, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->Z$0:Z

    iget v8, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->I$0:I

    iget-object v9, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$33:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v10, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$32:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$31:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    iget-object v12, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$30:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$29:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v14, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$28:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$27:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    iget-object v5, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$26:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$25:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$24:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$23:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    move-object/from16 v19, v0

    iget-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$22:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    move-object/from16 v20, v0

    iget-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$21:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$20:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 v22, v0

    iget-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$19:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 v23, v0

    iget-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$18:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 v24, v0

    iget-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$17:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 v25, v0

    iget-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$16:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 v26, v0

    iget-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$15:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 v27, v0

    iget-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$14:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 v28, v0

    iget-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$13:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 v29, v0

    iget-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$12:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 v30, v0

    iget-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$11:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 v31, v0

    iget-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$10:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 v32, v0

    iget-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$9:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 v33, v0

    iget-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$8:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 v34, v0

    iget-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$7:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 v35, v0

    iget-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$6:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 v36, v0

    iget-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$5:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 v37, v0

    iget-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 v38, v0

    iget-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    move-object/from16 v39, v0

    iget-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 v40, v0

    iget-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v2, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/network/device/DeviceHelper;

    :try_start_0
    invoke-static/range {v16 .. v16}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v44, v0

    move/from16 v70, v3

    move/from16 v67, v4

    move-object/from16 v73, v5

    move/from16 v66, v6

    move/from16 v62, v7

    move/from16 v59, v8

    move-object/from16 v78, v9

    move-object/from16 v79, v11

    move-object/from16 v77, v12

    move-object/from16 v76, v13

    move-object/from16 v75, v14

    move-object/from16 v74, v15

    move-object/from16 v0, v16

    move-object/from16 v72, v17

    move-object/from16 v71, v18

    move-object/from16 v69, v19

    move-object/from16 v68, v20

    move-object/from16 v64, v21

    move-object/from16 v63, v22

    move-object/from16 v61, v23

    move-object/from16 v60, v24

    move-object/from16 v58, v25

    move-object/from16 v57, v26

    move-object/from16 v56, v27

    move-object/from16 v55, v28

    move-object/from16 v54, v29

    move-object/from16 v53, v30

    move-object/from16 v52, v31

    move-object/from16 v51, v32

    move-object/from16 v50, v33

    move-object/from16 v49, v34

    move-object/from16 v47, v35

    move-object/from16 v46, v36

    move-object/from16 v43, v37

    move-object/from16 v45, v38

    move-object/from16 v41, v40

    :goto_1
    move-object/from16 v80, v10

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object/from16 v16, v0

    iget-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$0:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/superwall/sdk/network/device/DeviceHelper;

    :try_start_1
    invoke-static/range {v16 .. v16}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v0, v16

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v4

    goto/16 :goto_a

    :cond_3
    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 547
    :try_start_2
    iget-object v0, v1, Lcom/superwall/sdk/network/device/DeviceHelper;->factory:Lcom/superwall/sdk/network/device/DeviceHelper$Factory;

    iput-object v1, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$0:Ljava/lang/Object;

    iput v7, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->label:I

    invoke-interface {v0, v2}, Lcom/superwall/sdk/network/device/DeviceHelper$Factory;->makeIdentityInfo(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v0, v3, :cond_4

    move-object v2, v3

    goto/16 :goto_6

    :cond_4
    move-object v4, v1

    .line 545
    :goto_2
    :try_start_3
    check-cast v0, Lcom/superwall/sdk/identity/IdentityInfo;

    .line 548
    invoke-virtual {v0}, Lcom/superwall/sdk/identity/IdentityInfo;->getAliasId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v8, 0x3

    .line 551
    new-array v8, v8, [Lcom/superwall/sdk/network/device/Capability;

    new-instance v9, Lcom/superwall/sdk/network/device/Capability$PaywallEventReceiver;

    invoke-direct {v9}, Lcom/superwall/sdk/network/device/Capability$PaywallEventReceiver;-><init>()V

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 552
    sget-object v9, Lcom/superwall/sdk/network/device/Capability$MultiplePaywallUrls;->INSTANCE:Lcom/superwall/sdk/network/device/Capability$MultiplePaywallUrls;

    aput-object v9, v8, v7

    .line 553
    sget-object v9, Lcom/superwall/sdk/network/device/Capability$ConfigCaching;->INSTANCE:Lcom/superwall/sdk/network/device/Capability$ConfigCaching;

    aput-object v9, v8, v6

    .line 550
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 557
    iget-object v9, v4, Lcom/superwall/sdk/network/device/DeviceHelper;->storage:Lcom/superwall/sdk/storage/LocalStorage;

    invoke-virtual {v9}, Lcom/superwall/sdk/storage/LocalStorage;->getApiKey()Ljava/lang/String;

    move-result-object v9

    .line 559
    invoke-virtual {v0}, Lcom/superwall/sdk/identity/IdentityInfo;->getAppUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, ""

    .line 561
    :cond_5
    invoke-virtual {v4}, Lcom/superwall/sdk/network/device/DeviceHelper;->getVendorId()Ljava/lang/String;

    move-result-object v11

    .line 562
    invoke-virtual {v4}, Lcom/superwall/sdk/network/device/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v12

    .line 563
    invoke-virtual {v4}, Lcom/superwall/sdk/network/device/DeviceHelper;->getAppVersion()Ljava/lang/String;

    move-result-object v13

    .line 564
    invoke-virtual {v4}, Lcom/superwall/sdk/network/device/DeviceHelper;->getOsVersion()Ljava/lang/String;

    move-result-object v14

    .line 565
    invoke-virtual {v4}, Lcom/superwall/sdk/network/device/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v15

    move/from16 v16, v7

    .line 566
    invoke-virtual {v4}, Lcom/superwall/sdk/network/device/DeviceHelper;->getLocale()Ljava/lang/String;

    move-result-object v7

    move/from16 v17, v10

    .line 567
    invoke-virtual {v4}, Lcom/superwall/sdk/network/device/DeviceHelper;->getLocale()Ljava/lang/String;

    move-result-object v10

    .line 568
    invoke-virtual {v4}, Lcom/superwall/sdk/network/device/DeviceHelper;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    .line 569
    invoke-virtual {v4}, Lcom/superwall/sdk/network/device/DeviceHelper;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v3

    .line 570
    invoke-direct {v4}, Lcom/superwall/sdk/network/device/DeviceHelper;->getRegionCode()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v3

    .line 571
    invoke-direct {v4}, Lcom/superwall/sdk/network/device/DeviceHelper;->getRegionCode()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v3

    .line 572
    invoke-virtual {v4}, Lcom/superwall/sdk/network/device/DeviceHelper;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v22, v3

    .line 573
    invoke-virtual {v4}, Lcom/superwall/sdk/network/device/DeviceHelper;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v3

    .line 574
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v23

    move-object/from16 v24, v3

    invoke-virtual/range {v23 .. v23}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    move/from16 v23, v3

    .line 575
    invoke-virtual {v4}, Lcom/superwall/sdk/network/device/DeviceHelper;->getRadioType()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v25, v3

    .line 576
    invoke-virtual {v4}, Lcom/superwall/sdk/network/device/DeviceHelper;->getInterfaceStyle()Ljava/lang/String;

    move-result-object v3

    .line 577
    invoke-virtual {v4}, Lcom/superwall/sdk/network/device/DeviceHelper;->isLowPowerModeEnabled()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v27, v3

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    move/from16 v26, v3

    .line 578
    invoke-virtual {v4}, Lcom/superwall/sdk/network/device/DeviceHelper;->getBundleId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v28, v3

    .line 579
    invoke-virtual {v4}, Lcom/superwall/sdk/network/device/DeviceHelper;->getAppInstalledAtString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v29, v3

    .line 581
    invoke-direct {v4}, Lcom/superwall/sdk/network/device/DeviceHelper;->getDaysSinceInstall()I

    move-result v3

    move/from16 v30, v3

    .line 582
    invoke-direct {v4}, Lcom/superwall/sdk/network/device/DeviceHelper;->getMinutesSinceInstall()I

    move-result v3

    move/from16 v31, v3

    .line 583
    invoke-direct {v4}, Lcom/superwall/sdk/network/device/DeviceHelper;->getDaysSinceLastPaywallView()Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v32, v3

    .line 584
    invoke-direct {v4}, Lcom/superwall/sdk/network/device/DeviceHelper;->getMinutesSinceLastPaywallView()Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v33, v3

    .line 585
    invoke-direct {v4}, Lcom/superwall/sdk/network/device/DeviceHelper;->getTotalPaywallViews()I

    move-result v3

    move/from16 v34, v3

    .line 586
    invoke-direct {v4}, Lcom/superwall/sdk/network/device/DeviceHelper;->getUtcDateString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v35, v3

    .line 587
    invoke-direct {v4}, Lcom/superwall/sdk/network/device/DeviceHelper;->getLocalDateString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v36, v3

    .line 588
    invoke-direct {v4}, Lcom/superwall/sdk/network/device/DeviceHelper;->getUtcTimeString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v37, v3

    .line 589
    invoke-direct {v4}, Lcom/superwall/sdk/network/device/DeviceHelper;->getLocalTimeString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v38, v3

    .line 590
    invoke-direct {v4}, Lcom/superwall/sdk/network/device/DeviceHelper;->getUtcDateTimeString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v39, v3

    .line 591
    invoke-direct {v4}, Lcom/superwall/sdk/network/device/DeviceHelper;->getLocalDateTimeString()Ljava/lang/String;

    move-result-object v3

    .line 592
    invoke-virtual {v4}, Lcom/superwall/sdk/network/device/DeviceHelper;->isSandbox()Z

    move-result v40

    move-object/from16 v41, v3

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 594
    sget-object v40, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual/range {v40 .. v40}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/superwall/sdk/Superwall;->getEntitlements()Lcom/superwall/sdk/store/Entitlements;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/superwall/sdk/store/Entitlements;->getActive()Ljava/util/Set;

    move-result-object v40

    move-object/from16 v42, v3

    move-object/from16 v3, v40

    check-cast v3, Ljava/lang/Iterable;

    move-object/from16 v40, v1

    .line 752
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v43, v6

    move-object/from16 v44, v10

    const/16 v6, 0xa

    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 753
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 754
    check-cast v6, Lcom/superwall/sdk/models/entitlements/Entitlement;

    .line 595
    invoke-virtual {v6}, Lcom/superwall/sdk/models/entitlements/Entitlement;->getId()Ljava/lang/String;

    move-result-object v6

    .line 754
    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 755
    :cond_6
    check-cast v1, Ljava/util/List;

    .line 597
    sget-object v3, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v3}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/Superwall;->getEntitlements()Lcom/superwall/sdk/store/Entitlements;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/store/Entitlements;->getActive()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 756
    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v45, v1

    const/16 v10, 0xa

    invoke-static {v3, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .line 757
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 758
    check-cast v3, Lcom/superwall/sdk/models/entitlements/Entitlement;

    move-object/from16 v46, v1

    const/4 v10, 0x2

    .line 598
    new-array v1, v10, [Lkotlin/Pair;

    const-string v10, "identifier"

    move-object/from16 v47, v1

    invoke-virtual {v3}, Lcom/superwall/sdk/models/entitlements/Entitlement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v47, v17

    const-string v1, "type"

    invoke-virtual {v3}, Lcom/superwall/sdk/models/entitlements/Entitlement;->getType()Lcom/superwall/sdk/models/entitlements/Entitlement$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/models/entitlements/Entitlement$Type;->getRaw()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v47, v16

    invoke-static/range {v47 .. v47}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    .line 758
    invoke-interface {v6, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v46

    goto :goto_4

    .line 759
    :cond_7
    move-object v1, v6

    check-cast v1, Ljava/util/List;

    .line 600
    sget-object v3, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v3}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/Superwall;->getSubscriptionStatus()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    invoke-interface {v3}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    if-eqz v3, :cond_b

    .line 602
    instance-of v6, v3, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;

    if-eqz v6, :cond_8

    const-string v3, "ACTIVE"

    goto :goto_5

    .line 603
    :cond_8
    instance-of v6, v3, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Inactive;

    if-eqz v6, :cond_9

    const-string v3, "INACTIVE"

    goto :goto_5

    .line 604
    :cond_9
    instance-of v3, v3, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Unknown;

    if-eqz v3, :cond_a

    const-string v3, "UNKNOWN"

    goto :goto_5

    .line 601
    :cond_a
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_b
    const/4 v3, 0x0

    :goto_5
    move-object v10, v3

    .line 607
    iget-object v3, v4, Lcom/superwall/sdk/network/device/DeviceHelper;->factory:Lcom/superwall/sdk/network/device/DeviceHelper$Factory;

    iput-object v4, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$0:Ljava/lang/Object;

    iput-object v5, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$1:Ljava/lang/Object;

    iput-object v9, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$2:Ljava/lang/Object;

    iput-object v8, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$3:Ljava/lang/Object;

    iput-object v11, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$4:Ljava/lang/Object;

    iput-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$5:Ljava/lang/Object;

    iput-object v12, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$6:Ljava/lang/Object;

    iput-object v13, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$7:Ljava/lang/Object;

    iput-object v14, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$8:Ljava/lang/Object;

    iput-object v15, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$9:Ljava/lang/Object;

    iput-object v7, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$10:Ljava/lang/Object;

    move-object/from16 v6, v44

    iput-object v6, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$11:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v43

    iput-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$12:Ljava/lang/Object;

    move-object/from16 v43, v0

    move-object/from16 v0, v40

    iput-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$13:Ljava/lang/Object;

    move-object/from16 v40, v0

    move-object/from16 v0, v20

    iput-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$14:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    iput-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$15:Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v22

    iput-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$16:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v24

    iput-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$17:Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v25

    iput-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$18:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, v27

    iput-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$19:Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, v28

    iput-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$20:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v29

    iput-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$21:Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, v32

    iput-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$22:Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, v33

    iput-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$23:Ljava/lang/Object;

    move-object/from16 v33, v0

    move-object/from16 v0, v35

    iput-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$24:Ljava/lang/Object;

    move-object/from16 v35, v0

    move-object/from16 v0, v36

    iput-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$25:Ljava/lang/Object;

    move-object/from16 v36, v0

    move-object/from16 v0, v37

    iput-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$26:Ljava/lang/Object;

    move-object/from16 v37, v0

    move-object/from16 v0, v38

    iput-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$27:Ljava/lang/Object;

    move-object/from16 v38, v0

    move-object/from16 v0, v39

    iput-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$28:Ljava/lang/Object;

    move-object/from16 v39, v0

    move-object/from16 v0, v41

    iput-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$29:Ljava/lang/Object;

    move-object/from16 v41, v0

    move-object/from16 v0, v42

    iput-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$30:Ljava/lang/Object;

    iput-object v1, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$31:Ljava/lang/Object;

    iput-object v10, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$32:Ljava/lang/Object;

    move-object/from16 v42, v0

    move-object/from16 v0, v45

    iput-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->L$33:Ljava/lang/Object;

    move-object/from16 v45, v0

    move/from16 v0, v23

    iput v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->I$0:I

    move/from16 v23, v0

    move/from16 v0, v26

    iput-boolean v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->Z$0:Z

    move/from16 v26, v0

    move/from16 v0, v30

    iput v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->I$1:I

    move/from16 v30, v0

    move/from16 v0, v31

    iput v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->I$2:I

    move/from16 v31, v0

    move/from16 v0, v34

    iput v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->I$3:I

    move/from16 v34, v0

    const/4 v0, 0x2

    iput v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$getTemplateDevice$1;->label:I

    invoke-interface {v3, v2}, Lcom/superwall/sdk/network/device/DeviceHelper$Factory;->activeProductIds(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v2, v19

    if-ne v0, v2, :cond_c

    :goto_6
    return-object v2

    :cond_c
    move-object/from16 v79, v1

    move-object v2, v4

    move-object/from16 v44, v5

    move-object/from16 v52, v6

    move-object/from16 v51, v7

    move-object/from16 v46, v12

    move-object/from16 v47, v13

    move-object/from16 v49, v14

    move-object/from16 v50, v15

    move-object/from16 v55, v20

    move-object/from16 v56, v21

    move-object/from16 v57, v22

    move/from16 v59, v23

    move-object/from16 v58, v24

    move-object/from16 v60, v25

    move/from16 v62, v26

    move-object/from16 v61, v27

    move-object/from16 v63, v28

    move-object/from16 v64, v29

    move/from16 v66, v30

    move/from16 v67, v31

    move-object/from16 v68, v32

    move-object/from16 v69, v33

    move/from16 v70, v34

    move-object/from16 v71, v35

    move-object/from16 v72, v36

    move-object/from16 v73, v37

    move-object/from16 v74, v38

    move-object/from16 v75, v39

    move-object/from16 v54, v40

    move-object/from16 v76, v41

    move-object/from16 v77, v42

    move-object/from16 v53, v43

    move-object/from16 v78, v45

    move-object/from16 v39, v8

    move-object/from16 v41, v9

    move-object/from16 v45, v11

    move-object/from16 v43, v16

    goto/16 :goto_1

    .line 545
    :goto_7
    :try_start_4
    move-object/from16 v81, v0

    check-cast v81, Ljava/util/List;

    .line 608
    invoke-virtual {v2}, Lcom/superwall/sdk/network/device/DeviceHelper;->isFirstAppOpen()Z

    move-result v82

    .line 609
    invoke-virtual {v2}, Lcom/superwall/sdk/network/device/DeviceHelper;->getSdkVersion()Ljava/lang/String;

    move-result-object v83

    .line 610
    invoke-direct {v2}, Lcom/superwall/sdk/network/device/DeviceHelper;->getSdkVersionPadded()Ljava/lang/String;

    move-result-object v84

    .line 611
    invoke-virtual {v2}, Lcom/superwall/sdk/network/device/DeviceHelper;->getAppBuildString()Ljava/lang/String;

    move-result-object v85

    .line 612
    invoke-virtual {v2}, Lcom/superwall/sdk/network/device/DeviceHelper;->getAppBuildString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 613
    iget-object v1, v2, Lcom/superwall/sdk/network/device/DeviceHelper;->interfaceStyleOverride:Lcom/superwall/sdk/network/device/InterfaceStyle;

    if-nez v1, :cond_d

    const-string v1, "automatic"

    goto :goto_8

    :cond_d
    const-string v1, "manual"

    :goto_8
    move-object/from16 v87, v1

    .line 614
    move-object/from16 v1, v39

    check-cast v1, Ljava/lang/Iterable;

    .line 760
    new-instance v3, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 761
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 762
    check-cast v4, Lcom/superwall/sdk/network/device/Capability;

    .line 614
    invoke-virtual {v4}, Lcom/superwall/sdk/network/device/Capability;->getName()Ljava/lang/String;

    move-result-object v4

    .line 762
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 763
    :cond_e
    move-object/from16 v88, v3

    check-cast v88, Ljava/util/List;

    .line 615
    invoke-static/range {v39 .. v39}, Lcom/superwall/sdk/network/device/CapabilityKt;->toJson(Ljava/util/List;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v89

    .line 616
    iget-object v1, v2, Lcom/superwall/sdk/network/device/DeviceHelper;->platformWrapper:Ljava/lang/String;

    .line 617
    iget-object v3, v2, Lcom/superwall/sdk/network/device/DeviceHelper;->platformWrapperVersion:Ljava/lang/String;

    .line 618
    invoke-direct {v2}, Lcom/superwall/sdk/network/device/DeviceHelper;->getAppVersionPadded()Ljava/lang/String;

    move-result-object v48

    .line 619
    iget-object v4, v2, Lcom/superwall/sdk/network/device/DeviceHelper;->classifier:Lcom/superwall/sdk/analytics/DeviceClassifier;

    invoke-virtual {v4}, Lcom/superwall/sdk/analytics/DeviceClassifier;->deviceTier()Lcom/superwall/sdk/analytics/Tier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/superwall/sdk/analytics/Tier;->getRaw()Ljava/lang/String;

    move-result-object v92

    .line 620
    invoke-virtual {v2}, Lcom/superwall/sdk/network/device/DeviceHelper;->getReviewRequestCount()I

    move-result v93

    .line 621
    invoke-virtual {v2}, Lcom/superwall/sdk/network/device/DeviceHelper;->getKotlinVersion()Ljava/lang/String;

    move-result-object v94

    .line 556
    new-instance v40, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;

    .line 558
    const-string v42, "Android"

    .line 612
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v86

    const/16 v65, 0x0

    move-object/from16 v90, v1

    move-object/from16 v91, v3

    .line 556
    invoke-direct/range {v40 .. v94}, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIILjava/lang/Integer;Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/json/JsonElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, v40

    .line 751
    new-instance v1, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lcom/superwall/sdk/misc/Either;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object/from16 v2, p0

    .line 765
    :goto_a
    invoke-static {v0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 766
    sget-object v1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 767
    sget-object v1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 770
    :cond_f
    new-instance v1, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast v1, Lcom/superwall/sdk/misc/Either;

    .line 773
    :goto_b
    instance-of v0, v1, Lcom/superwall/sdk/misc/Either$Success;

    if-eqz v0, :cond_10

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast v1, Lcom/superwall/sdk/misc/Either$Success;

    invoke-virtual {v1}, Lcom/superwall/sdk/misc/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    .line 774
    :cond_10
    instance-of v0, v1, Lcom/superwall/sdk/misc/Either$Failure;

    if-eqz v0, :cond_18

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast v1, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-virtual {v1}, Lcom/superwall/sdk/misc/Either$Failure;->getError()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 624
    :goto_c
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;

    .line 625
    iget-object v1, v2, Lcom/superwall/sdk/network/device/DeviceHelper;->json:Lkotlinx/serialization/json/Json;

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->toDictionary(Lkotlinx/serialization/json/Json;)Ljava/util/Map;

    move-result-object v0

    .line 624
    :cond_11
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 626
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast v0, Ljava/util/Map;

    .line 628
    invoke-direct {v2}, Lcom/superwall/sdk/network/device/DeviceHelper;->getEnrichment()Lcom/superwall/sdk/models/enrichment/Enrichment;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 629
    invoke-virtual {v1}, Lcom/superwall/sdk/models/enrichment/Enrichment;->getDevice()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_12

    goto :goto_d

    .line 630
    :cond_12
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 632
    :goto_d
    invoke-static {v1, v0}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 635
    :try_start_5
    iget-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper;->factory:Lcom/superwall/sdk/network/device/DeviceHelper$Factory;

    invoke-interface {v0}, Lcom/superwall/sdk/network/device/DeviceHelper$Factory;->makeSuperwallOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getEnableExperimentalDeviceVariables()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 636
    invoke-virtual {v2}, Lcom/superwall/sdk/network/device/DeviceHelper;->latestExperimentalDeviceProperties()Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_e

    :cond_13
    move-object v0, v1

    .line 777
    :goto_e
    new-instance v2, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {v2, v0}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast v2, Lcom/superwall/sdk/misc/Either;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_f

    :catchall_3
    move-exception v0

    .line 779
    invoke-static {v0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 780
    sget-object v2, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v2}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 781
    sget-object v2, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v2}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 784
    :cond_14
    new-instance v2, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {v2, v0}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast v2, Lcom/superwall/sdk/misc/Either;

    .line 640
    :goto_f
    invoke-virtual {v2}, Lcom/superwall/sdk/misc/Either;->getSuccess()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_15

    goto :goto_10

    :cond_15
    move-object v1, v0

    .line 626
    :goto_10
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_11

    :cond_16
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 642
    :goto_11
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-nez v6, :cond_17

    check-cast v0, Ljava/util/Map;

    goto :goto_12

    .line 647
    :cond_17
    sget-object v1, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 648
    sget-object v2, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 649
    sget-object v3, Lcom/superwall/sdk/logger/LogScope;->device:Lcom/superwall/sdk/logger/LogScope;

    const/16 v7, 0x8

    const/4 v8, 0x0

    .line 647
    const-string v4, "Failed to get device template"

    const/4 v5, 0x0

    invoke-static/range {v1 .. v8}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 653
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_12
    return-object v0

    .line 772
    :cond_18
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final getUrlScheme()Ljava/lang/String;
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getPackageName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getVendorId()Ljava/lang/String;
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hoursSince(Ljava/util/Date;)I
    .locals 2

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/threeten/bp/Instant;->ofEpochMilli(J)Lorg/threeten/bp/Instant;

    move-result-object p1

    .line 122
    invoke-static {}, Lorg/threeten/bp/Instant;->now()Lorg/threeten/bp/Instant;

    move-result-object v0

    .line 125
    check-cast p1, Lorg/threeten/bp/temporal/Temporal;

    check-cast v0, Lorg/threeten/bp/temporal/Temporal;

    invoke-static {p1, v0}, Lorg/threeten/bp/Duration;->between(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/Duration;

    move-result-object p1

    .line 126
    invoke-virtual {p1}, Lorg/threeten/bp/Duration;->toHours()J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method public final isEmulator()Z
    .locals 6

    .line 263
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "DEVICE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const-string v2, "generic"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "emulator"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final isFirstAppOpen()Z
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->storage:Lcom/superwall/sdk/storage/LocalStorage;

    invoke-virtual {v0}, Lcom/superwall/sdk/storage/LocalStorage;->getDidTrackFirstSession()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final isLowPowerModeEnabled()Ljava/lang/String;
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->context:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/PowerManager;

    .line 385
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    return-object v0

    :cond_0
    const-string v0, "false"

    return-object v0
.end method

.method public final isSandbox()Z
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final latestExperimentalDeviceProperties()Ljava/util/Map;
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

    .line 662
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->factory:Lcom/superwall/sdk/network/device/DeviceHelper$Factory;

    invoke-interface {v0}, Lcom/superwall/sdk/network/device/DeviceHelper$Factory;->experimentalProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final minutesSince(Ljava/util/Date;)I
    .locals 2

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/threeten/bp/Instant;->ofEpochMilli(J)Lorg/threeten/bp/Instant;

    move-result-object p1

    .line 113
    invoke-static {}, Lorg/threeten/bp/Instant;->now()Lorg/threeten/bp/Instant;

    move-result-object v0

    .line 116
    check-cast p1, Lorg/threeten/bp/temporal/Temporal;

    check-cast v0, Lorg/threeten/bp/temporal/Temporal;

    invoke-static {p1, v0}, Lorg/threeten/bp/Duration;->between(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/Duration;

    move-result-object p1

    .line 117
    invoke-virtual {p1}, Lorg/threeten/bp/Duration;->toMinutes()J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method public final monthsSince(Ljava/util/Date;)I
    .locals 2

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/threeten/bp/Instant;->ofEpochMilli(J)Lorg/threeten/bp/Instant;

    move-result-object p1

    .line 131
    invoke-static {}, Lorg/threeten/bp/Instant;->now()Lorg/threeten/bp/Instant;

    move-result-object v0

    .line 134
    check-cast p1, Lorg/threeten/bp/temporal/Temporal;

    check-cast v0, Lorg/threeten/bp/temporal/Temporal;

    invoke-static {p1, v0}, Lorg/threeten/bp/Duration;->between(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/Duration;

    move-result-object p1

    .line 135
    invoke-virtual {p1}, Lorg/threeten/bp/Duration;->toDays()J

    move-result-wide v0

    long-to-int p1, v0

    div-int/lit8 p1, p1, 0x1e

    return p1
.end method

.method public final preloadFingerprint(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lcom/superwall/sdk/network/device/DeviceHelper$preloadFingerprint$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/superwall/sdk/network/device/DeviceHelper$preloadFingerprint$1;

    iget v3, v2, Lcom/superwall/sdk/network/device/DeviceHelper$preloadFingerprint$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/superwall/sdk/network/device/DeviceHelper$preloadFingerprint$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/superwall/sdk/network/device/DeviceHelper$preloadFingerprint$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/superwall/sdk/network/device/DeviceHelper$preloadFingerprint$1;

    invoke-direct {v2, v0, v1}, Lcom/superwall/sdk/network/device/DeviceHelper$preloadFingerprint$1;-><init>(Lcom/superwall/sdk/network/device/DeviceHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/superwall/sdk/network/device/DeviceHelper$preloadFingerprint$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 484
    iget v4, v2, Lcom/superwall/sdk/network/device/DeviceHelper$preloadFingerprint$1;->label:I

    const-string v5, ","

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v6, :cond_1

    iget-object v3, v2, Lcom/superwall/sdk/network/device/DeviceHelper$preloadFingerprint$1;->L$3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Lcom/superwall/sdk/network/device/DeviceHelper$preloadFingerprint$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v2, Lcom/superwall/sdk/network/device/DeviceHelper$preloadFingerprint$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v2, v2, Lcom/superwall/sdk/network/device/DeviceHelper$preloadFingerprint$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/network/device/DeviceHelper;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v4, v2, Lcom/superwall/sdk/network/device/DeviceHelper$preloadFingerprint$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v8, v2, Lcom/superwall/sdk/network/device/DeviceHelper$preloadFingerprint$1;->L$1:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v2, Lcom/superwall/sdk/network/device/DeviceHelper$preloadFingerprint$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/superwall/sdk/network/device/DeviceHelper;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 485
    iget-object v1, v0, Lcom/superwall/sdk/network/device/DeviceHelper;->factory:Lcom/superwall/sdk/network/device/DeviceHelper$Factory;

    invoke-interface {v1}, Lcom/superwall/sdk/network/device/DeviceHelper$Factory;->customerInfoFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/superwall/sdk/models/customer/CustomerInfo;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/customer/CustomerInfo;->toString()Ljava/lang/String;

    move-result-object v1

    .line 487
    iget-object v4, v0, Lcom/superwall/sdk/network/device/DeviceHelper;->factory:Lcom/superwall/sdk/network/device/DeviceHelper$Factory;

    .line 488
    invoke-interface {v4}, Lcom/superwall/sdk/network/device/DeviceHelper$Factory;->activeEntitlements()Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 749
    new-instance v8, Lcom/superwall/sdk/network/device/DeviceHelper$preloadFingerprint$$inlined$sortedBy$1;

    invoke-direct {v8}, Lcom/superwall/sdk/network/device/DeviceHelper$preloadFingerprint$$inlined$sortedBy$1;-><init>()V

    check-cast v8, Ljava/util/Comparator;

    invoke-static {v4, v8}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/Iterable;

    .line 490
    move-object v9, v5

    check-cast v9, Ljava/lang/CharSequence;

    new-instance v14, Lcom/superwall/sdk/network/device/DeviceHelper$$ExternalSyntheticLambda0;

    invoke-direct {v14}, Lcom/superwall/sdk/network/device/DeviceHelper$$ExternalSyntheticLambda0;-><init>()V

    const/16 v15, 0x1e

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v16}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 491
    iget-object v8, v0, Lcom/superwall/sdk/network/device/DeviceHelper;->factory:Lcom/superwall/sdk/network/device/DeviceHelper$Factory;

    iput-object v0, v2, Lcom/superwall/sdk/network/device/DeviceHelper$preloadFingerprint$1;->L$0:Ljava/lang/Object;

    iput-object v1, v2, Lcom/superwall/sdk/network/device/DeviceHelper$preloadFingerprint$1;->L$1:Ljava/lang/Object;

    iput-object v4, v2, Lcom/superwall/sdk/network/device/DeviceHelper$preloadFingerprint$1;->L$2:Ljava/lang/Object;

    iput v7, v2, Lcom/superwall/sdk/network/device/DeviceHelper$preloadFingerprint$1;->label:I

    invoke-interface {v8, v2}, Lcom/superwall/sdk/network/device/DeviceHelper$Factory;->activeProductIds(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_4

    goto :goto_2

    :cond_4
    move-object v9, v8

    move-object v8, v1

    move-object v1, v9

    move-object v9, v0

    :goto_1
    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/Iterable;

    move-object v11, v5

    check-cast v11, Ljava/lang/CharSequence;

    const/16 v17, 0x3e

    const/16 v18, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v10 .. v18}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 492
    iput-object v9, v2, Lcom/superwall/sdk/network/device/DeviceHelper$preloadFingerprint$1;->L$0:Ljava/lang/Object;

    iput-object v8, v2, Lcom/superwall/sdk/network/device/DeviceHelper$preloadFingerprint$1;->L$1:Ljava/lang/Object;

    iput-object v4, v2, Lcom/superwall/sdk/network/device/DeviceHelper$preloadFingerprint$1;->L$2:Ljava/lang/Object;

    iput-object v1, v2, Lcom/superwall/sdk/network/device/DeviceHelper$preloadFingerprint$1;->L$3:Ljava/lang/Object;

    iput v6, v2, Lcom/superwall/sdk/network/device/DeviceHelper$preloadFingerprint$1;->label:I

    invoke-virtual {v9, v2}, Lcom/superwall/sdk/network/device/DeviceHelper;->reviewRequestsTotal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_5

    :goto_2
    return-object v3

    :cond_5
    move-object v3, v1

    move-object v1, v2

    move-object v5, v8

    move-object v2, v9

    :goto_3
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0xd

    .line 495
    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v2}, Lcom/superwall/sdk/network/device/DeviceHelper;->getLocale()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 496
    invoke-virtual {v2}, Lcom/superwall/sdk/network/device/DeviceHelper;->getLanguageCode()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 497
    invoke-direct {v2}, Lcom/superwall/sdk/network/device/DeviceHelper;->getRegionCode()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v6

    const/4 v6, 0x3

    .line 498
    invoke-virtual {v2}, Lcom/superwall/sdk/network/device/DeviceHelper;->getCurrencyCode()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v6

    const/4 v6, 0x4

    .line 499
    invoke-virtual {v2}, Lcom/superwall/sdk/network/device/DeviceHelper;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v6

    const/4 v6, 0x5

    .line 500
    invoke-virtual {v2}, Lcom/superwall/sdk/network/device/DeviceHelper;->getSecondsFromGMT()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v6

    const/4 v6, 0x6

    .line 501
    invoke-virtual {v2}, Lcom/superwall/sdk/network/device/DeviceHelper;->getInterfaceStyle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v6

    .line 502
    iget-object v6, v2, Lcom/superwall/sdk/network/device/DeviceHelper;->interfaceStyleOverride:Lcom/superwall/sdk/network/device/InterfaceStyle;

    if-nez v6, :cond_6

    const-string v6, "automatic"

    goto :goto_4

    :cond_6
    const-string v6, "manual"

    :goto_4
    const/4 v7, 0x7

    aput-object v6, v8, v7

    const/16 v6, 0x8

    .line 503
    aput-object v1, v8, v6

    const/16 v1, 0x9

    .line 504
    aput-object v4, v8, v1

    const/16 v1, 0xa

    .line 505
    aput-object v5, v8, v1

    const/16 v1, 0xb

    .line 506
    aput-object v3, v8, v1

    .line 507
    invoke-virtual {v2}, Lcom/superwall/sdk/network/device/DeviceHelper;->isSandbox()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v8, v2

    .line 494
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    .line 508
    const-string v1, "|"

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final reviewRequestsTotal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 203
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x7d0

    .line 204
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 205
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 206
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 207
    iget-object v2, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->storage:Lcom/superwall/sdk/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/superwall/sdk/storage/LocalStorage;->getCoreDataManager()Lcom/superwall/sdk/storage/core_data/CoreDataManager;

    move-result-object v2

    .line 209
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 207
    const-string v3, "review_requested"

    invoke-virtual {v2, v3, v0, v1, p1}, Lcom/superwall/sdk/storage/core_data/CoreDataManager;->countEventsByNameInPeriod(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final setEnrichment$superwall_release(Lcom/superwall/sdk/models/enrichment/Enrichment;)V
    .locals 1

    const-string v0, "enrichment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->lastEnrichment:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setInterfaceStyleOverride(Lcom/superwall/sdk/network/device/InterfaceStyle;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->interfaceStyleOverride:Lcom/superwall/sdk/network/device/InterfaceStyle;

    return-void
.end method

.method public final setPlatformWrapper(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    iput-object p1, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->platformWrapper:Ljava/lang/String;

    return-void
.end method

.method public final setPlatformWrapperVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    iput-object p1, p0, Lcom/superwall/sdk/network/device/DeviceHelper;->platformWrapperVersion:Ljava/lang/String;

    return-void
.end method
