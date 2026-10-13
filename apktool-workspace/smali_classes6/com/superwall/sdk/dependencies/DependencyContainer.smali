.class public final Lcom/superwall/sdk/dependencies/DependencyContainer;
.super Ljava/lang/Object;
.source "DependencyContainer.kt"

# interfaces
.implements Lcom/superwall/sdk/dependencies/ApiFactory;
.implements Lcom/superwall/sdk/dependencies/DeviceInfoFactory;
.implements Lcom/superwall/sdk/analytics/session/AppManagerDelegate;
.implements Lcom/superwall/sdk/dependencies/RequestFactory;
.implements Lcom/superwall/sdk/dependencies/RuleAttributesFactory;
.implements Lcom/superwall/sdk/network/device/DeviceHelper$Factory;
.implements Lcom/superwall/sdk/dependencies/CacheFactory;
.implements Lcom/superwall/sdk/paywall/request/PaywallRequestManagerDepFactory;
.implements Lcom/superwall/sdk/dependencies/VariablesFactory;
.implements Lcom/superwall/sdk/dependencies/StoreTransactionFactory;
.implements Lcom/superwall/sdk/storage/LocalStorage$Factory;
.implements Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PresentationRequest$Factory;
.implements Lcom/superwall/sdk/dependencies/ViewFactory;
.implements Lcom/superwall/sdk/paywall/manager/PaywallManager$Factory;
.implements Lcom/superwall/sdk/dependencies/OptionsFactory;
.implements Lcom/superwall/sdk/dependencies/TriggerFactory;
.implements Lcom/superwall/sdk/dependencies/TransactionVerifierFactory;
.implements Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;
.implements Lcom/superwall/sdk/paywall/view/PaywallView$Factory;
.implements Lcom/superwall/sdk/config/ConfigManager$Factory;
.implements Lcom/superwall/sdk/analytics/session/AppSessionManager$Factory;
.implements Lcom/superwall/sdk/debug/DebugView$Factory;
.implements Lcom/superwall/sdk/paywall/presentation/rule_logic/javascript/RuleEvaluator$Factory;
.implements Lcom/superwall/sdk/network/JsonFactory;
.implements Lcom/superwall/sdk/dependencies/ConfigAttributesFactory;
.implements Lcom/superwall/sdk/config/PaywallPreload$Factory;
.implements Lcom/superwall/sdk/dependencies/ViewStoreFactory;
.implements Lcom/superwall/sdk/dependencies/SuperwallScopeFactory;
.implements Lcom/superwall/sdk/billing/GoogleBillingWrapper$Factory;
.implements Lcom/superwall/sdk/analytics/ClassifierDataFactory;
.implements Lcom/superwall/sdk/dependencies/ExperimentalPropertiesFactory;
.implements Lcom/superwall/sdk/dependencies/CustomerInfoFactory;
.implements Lcom/superwall/sdk/dependencies/ActiveEntitlementsFactory;
.implements Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDependencyContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DependencyContainer.kt\ncom/superwall/sdk/dependencies/DependencyContainer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 SerializersModuleBuilders.kt\nkotlinx/serialization/modules/SerializersModuleBuildersKt\n*L\n1#1,1285:1\n1368#2:1286\n1454#2,5:1287\n1557#2:1292\n1628#2,3:1293\n1246#2,4:1298\n477#3:1296\n423#3:1297\n12834#4,3:1302\n31#5,3:1305\n*S KotlinDebug\n*F\n+ 1 DependencyContainer.kt\ncom/superwall/sdk/dependencies/DependencyContainer\n*L\n1241#1:1286\n1241#1:1287,5\n1252#1:1292\n1252#1:1293,3\n1271#1:1298,4\n1271#1:1296\n1271#1:1297\n500#1:1302,3\n796#1:1305,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b8\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\u00082\u00020\t2\u00020\n2\u00020\u000b2\u00020\u000c2\u00020\r2\u00020\u000e2\u00020\u000f2\u00020\u00102\u00020\u00112\u00020\u00122\u00020\u00132\u00020\u00142\u00020\u00152\u00020\u00162\u00020\u00172\u00020\u00182\u00020\u00192\u00020\u001a2\u00020\u001b2\u00020\u001c2\u00020\u001d2\u00020\u001e2\u00020\u001f2\u00020 2\u00020!2\u00020\"B7\u0012\u0006\u0010#\u001a\u00020$\u0012\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010&\u0012\u0008\u0010\'\u001a\u0004\u0018\u00010(\u0012\u0008\u0010)\u001a\u0004\u0018\u00010*\u0012\u0006\u0010+\u001a\u00020,\u00a2\u0006\u0004\u0008-\u0010.J0\u0010\u00e4\u0001\u001a\u000f\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020,0\u00e5\u00012\u0008\u0010\u00e6\u0001\u001a\u00030\u00e7\u00012\u0007\u0010\u00e8\u0001\u001a\u00020,H\u0096@\u00a2\u0006\u0003\u0010\u00e9\u0001J3\u0010\u00ec\u0001\u001a\u00030\u00ed\u00012\u0008\u0010\u00ee\u0001\u001a\u00030\u00ef\u00012\n\u0010\u00f0\u0001\u001a\u0005\u0018\u00010\u00f1\u00012\n\u0010\u00f2\u0001\u001a\u0005\u0018\u00010\u00f3\u0001H\u0096@\u00a2\u0006\u0003\u0010\u00f4\u0001J\u0015\u0010\u00f5\u0001\u001a\u00030\u00f6\u00012\t\u0010\u00f7\u0001\u001a\u0004\u0018\u00010,H\u0016J\n\u0010\u00f8\u0001\u001a\u00030\u00f1\u0001H\u0016J\u000b\u0010\u00f9\u0001\u001a\u0004\u0018\u00010,H\u0016J\n\u0010\u00fa\u0001\u001a\u00030\u00fb\u0001H\u0016J\n\u0010\u00fc\u0001\u001a\u00030\u00fd\u0001H\u0016J\n\u0010\u00fe\u0001\u001a\u00030\u00e7\u0001H\u0016J0\u0010\u00ff\u0001\u001a\"\u0012\u0004\u0012\u00020,\u0012\u0005\u0012\u00030\u0081\u00020\u0080\u0002j\u0010\u0012\u0004\u0012\u00020,\u0012\u0005\u0012\u00030\u0081\u0002`\u0082\u0002H\u0096@\u00a2\u0006\u0003\u0010\u0083\u0002J\n\u0010\u0084\u0002\u001a\u00030\u0085\u0002H\u0016J\n\u0010\u0086\u0002\u001a\u00030\u00e7\u0001H\u0016J\n\u0010\u0087\u0002\u001a\u00030\u00e7\u0001H\u0016J\n\u0010\u0088\u0002\u001a\u00030\u00e7\u0001H\u0016J\t\u0010\u0089\u0002\u001a\u00020,H\u0016J\u001b\u0010\u008a\u0002\u001a\u00030\u008b\u00022\u0008\u0010\u008c\u0002\u001a\u00030\u008d\u0002H\u0096@\u00a2\u0006\u0003\u0010\u008e\u0002JA\u0010\u008f\u0002\u001a\u00030\u0090\u00022\n\u0010\u0091\u0002\u001a\u0005\u0018\u00010\u0092\u00022\u0008\u0010\u0093\u0002\u001a\u00030\u0094\u00022\n\u0010\u0095\u0002\u001a\u0005\u0018\u00010\u0096\u00022\u0008\u0010\u0097\u0002\u001a\u00030\u00e7\u00012\t\u0010\u0098\u0002\u001a\u0004\u0018\u00010,H\u0016Jg\u0010\u0099\u0002\u001a\u00030\u009a\u00022\u0008\u0010\u009b\u0002\u001a\u00030\u009c\u00022\n\u0010\u009d\u0002\u001a\u0005\u0018\u00010\u009e\u00022\n\u0010\u009f\u0002\u001a\u0005\u0018\u00010\u00a0\u00022\n\u0010\u0097\u0002\u001a\u0005\u0018\u00010\u00e7\u00012\u0013\u0010\u00a1\u0002\u001a\u000e\u0012\u0007\u0012\u0005\u0018\u00010\u00a3\u0002\u0018\u00010\u00a2\u00022\u0008\u0010\u00a4\u0002\u001a\u00030\u00e7\u00012\u0008\u0010\u00a5\u0002\u001a\u00030\u00a6\u0002H\u0016\u00a2\u0006\u0003\u0010\u00a7\u0002J!\u0010\u00a8\u0002\u001a\u0005\u0018\u00010\u00ef\u00012\t\u0010\u00a9\u0002\u001a\u0004\u0018\u00010,2\u0008\u0010\u0097\u0002\u001a\u00030\u00e7\u0001H\u0016J;\u0010\u00aa\u0002\u001a\u0010\u0012\u0004\u0012\u00020,\u0012\u0005\u0012\u00030\u0081\u00020\u00e5\u00012\n\u0010\u00ab\u0002\u001a\u0005\u0018\u00010\u0092\u00022\u000f\u0010\u00ac\u0002\u001a\n\u0012\u0005\u0012\u00030\u00ae\u00020\u00ad\u0002H\u0096@\u00a2\u0006\u0003\u0010\u00af\u0002J\u000c\u0010\u00b0\u0002\u001a\u0005\u0018\u00010\u00b1\u0002H\u0016J\u0011\u0010\u00b2\u0002\u001a\n\u0012\u0005\u0012\u00030\u00ae\u00020\u00ad\u0002H\u0016J\u0011\u0010\u00b3\u0002\u001a\u00030\u00b4\u0002H\u0096@\u00a2\u0006\u0003\u0010\u0083\u0002J\u000b\u0010\u00b5\u0002\u001a\u0004\u0018\u00010,H\u0016JA\u0010\u00b6\u0002\u001a\u00030\u00b7\u00022\u0011\u0010\u00b8\u0002\u001a\u000c\u0012\u0005\u0012\u00030\u00b9\u0002\u0018\u00010\u00ad\u00022\u000f\u0010\u00ac\u0002\u001a\n\u0012\u0005\u0012\u00030\u00ae\u00020\u00ad\u00022\n\u0010\u00ab\u0002\u001a\u0005\u0018\u00010\u0092\u0002H\u0096@\u00a2\u0006\u0003\u0010\u00ba\u0002J\u001b\u0010\u00bb\u0002\u001a\u00030\u00bc\u00022\u0008\u0010\u00bd\u0002\u001a\u00030\u00be\u0002H\u0096@\u00a2\u0006\u0003\u0010\u00bf\u0002J\u0017\u0010\u00c0\u0002\u001a\t\u0012\u0004\u0012\u00020,0\u00ad\u0002H\u0096@\u00a2\u0006\u0003\u0010\u0083\u0002J\u0010\u0010\u00c1\u0002\u001a\u00020\\H\u0096@\u00a2\u0006\u0003\u0010\u0083\u0002J\n\u0010\u00c2\u0002\u001a\u00030\u009c\u0001H\u0016J\t\u0010\u00c3\u0002\u001a\u00020(H\u0016J\u0017\u0010\u00c4\u0002\u001a\t\u0012\u0004\u0012\u00020,0\u00c5\u0002H\u0096@\u00a2\u0006\u0003\u0010\u0083\u0002J\u0019\u0010\u00c6\u0002\u001a\u00030\u00c7\u00022\u0006\u0010#\u001a\u00020$H\u0096@\u00a2\u0006\u0003\u0010\u00c8\u0002J\n\u0010\u00c9\u0002\u001a\u00030\u00ca\u0002H\u0016J\n\u0010\u00d5\u0002\u001a\u00030\u00d6\u0002H\u0016J\n\u0010\u00d9\u0002\u001a\u00030\u00c6\u0001H\u0016J\n\u0010\u00c9\u0001\u001a\u00030\u00ca\u0001H\u0016J\n\u0010\u00da\u0002\u001a\u00030\u008b\u0002H\u0002J\u0013\u0010\u00db\u0002\u001a\u00030\u008b\u00022\u0007\u0010\u00dc\u0002\u001a\u00020,H\u0002J\u0008\u0010#\u001a\u00020$H\u0016J\u0017\u0010\u00dd\u0002\u001a\u0010\u0012\u0004\u0012\u00020,\u0012\u0005\u0012\u00030\u0081\u00020\u00e5\u0001H\u0016J\u0017\u0010\u00de\u0002\u001a\u0010\u0012\u0004\u0012\u00020,\u0012\u0005\u0012\u00030\u0081\u00020\u00e5\u0001H\u0016J\u000b\u0010\u00df\u0002\u001a\u0004\u0018\u00010,H\u0016J\u0012\u0010\u00e0\u0002\u001a\u0005\u0018\u00010\u00e1\u0002H\u0016\u00a2\u0006\u0003\u0010\u00e2\u0002J%\u0010\u00e3\u0002\u001a\n\u0012\u0005\u0012\u00030\u00e5\u00020\u00e4\u00022\u0008\u0010\u00ab\u0002\u001a\u00030\u00e6\u0002H\u0096@\u00a2\u0006\u0006\u0008\u00e7\u0002\u0010\u00e8\u0002J\t\u0010\u00f2\u0001\u001a\u00020tH\u0016J\u0011\u0010\u00e9\u0002\u001a\n\u0012\u0005\u0012\u00030\u00fb\u00010\u00a2\u0002H\u0016J\u0011\u0010\u00ea\u0002\u001a\n\u0012\u0005\u0012\u00030\u00eb\u00020\u00c5\u0002H\u0016J\u0014\u0010\u00ec\u0002\u001a\u00030\u008b\u00022\u0008\u0010\u00ed\u0002\u001a\u00030\u00ee\u0002H\u0016J.\u0010\u00ef\u0002\u001a\u00030\u008b\u00022\n\u0010\u00f0\u0002\u001a\u0005\u0018\u00010\u009a\u00022\u000f\u0010\u00f1\u0002\u001a\n\u0012\u0005\u0012\u00030\u00f3\u00020\u00f2\u0002H\u0096@\u00a2\u0006\u0003\u0010\u00f4\u0002J%\u0010\u00f5\u0002\u001a\u00030\u008b\u00022\u0008\u0010\u00ab\u0002\u001a\u00030\u00f6\u00022\u0008\u0010\u00f7\u0002\u001a\u00030\u00e7\u0001H\u0096@\u00a2\u0006\u0003\u0010\u00f8\u0002J\n\u0010\u00f9\u0002\u001a\u00030\u008b\u0002H\u0016J\u0014\u0010\u00fa\u0002\u001a\u00030\u008b\u00022\u0008\u0010\u00fb\u0002\u001a\u00030\u00fc\u0002H\u0016J\n\u0010\u00fd\u0002\u001a\u00030\u00fe\u0002H\u0016J\u0011\u0010\u00ff\u0002\u001a\n\u0012\u0005\u0012\u00030\u00eb\u00020\u00c5\u0002H\u0016J\u0014\u0010\u0080\u0003\u001a\u0005\u0018\u00010\u0081\u0003H\u0016\u00a2\u0006\u0005\u0008\u0082\u0003\u00106J\n\u0010\u0083\u0003\u001a\u00030\u0084\u0003H\u0016J\u000b\u0010\u0085\u0003\u001a\u0004\u0018\u00010,H\u0016J\u001b\u0010\u00e3\u0002\u001a\u00030\u008b\u00022\u0008\u0010\u00ab\u0002\u001a\u00030\u00f6\u0002H\u0096@\u00a2\u0006\u0003\u0010\u0086\u0003J\u0014\u0010\u0087\u0003\u001a\u00030\u008b\u00022\u0008\u0010\u0088\u0003\u001a\u00030\u00a3\u0002H\u0016J\u0011\u0010\u0089\u0003\u001a\u00030\u00e7\u0001H\u0096@\u00a2\u0006\u0003\u0010\u0083\u0002J\u0011\u0010\u008a\u0003\u001a\u00030\u008b\u0002H\u0096@\u00a2\u0006\u0003\u0010\u0083\u0002J\u0011\u0010\u008b\u0003\u001a\n\u0012\u0005\u0012\u00030\u00eb\u00020\u00c5\u0002H\u0016J\n\u0010\u008c\u0003\u001a\u00030\u00ee\u0002H\u0016J\u0013\u0010\u008d\u0003\u001a\u00030\u008b\u00022\u0007\u0010\u00dc\u0002\u001a\u00020,H\u0016J\u0018\u0010\u008e\u0003\u001a\n\u0012\u0005\u0012\u00030\u008f\u00030\u00ad\u0002H\u0096@\u00a2\u0006\u0003\u0010\u0083\u0002J\t\u0010\u0090\u0003\u001a\u00020,H\u0016J\u0017\u0010\u0091\u0003\u001a\u0010\u0012\u0004\u0012\u00020,\u0012\u0005\u0012\u00030\u0081\u00020\u00e5\u0001H\u0016J\n\u0010\u0092\u0003\u001a\u00030\u008b\u0002H\u0016J\n\u0010\u0093\u0003\u001a\u00030\u00e7\u0001H\u0016R\u0011\u0010#\u001a\u00020$\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u00100R\u001c\u0010)\u001a\u0004\u0018\u00010*X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u0011\u0010+\u001a\u00020,\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u00106R\u001b\u00107\u001a\u0002088@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008;\u0010<\u001a\u0004\u00089\u0010:R\u001a\u0010=\u001a\u00020>X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010BR\u001a\u0010C\u001a\u00020DX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010F\"\u0004\u0008G\u0010HR\u001a\u0010I\u001a\u00020JX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010L\"\u0004\u0008M\u0010NR\u001a\u0010O\u001a\u00020PX\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR\u001a\u0010U\u001a\u00020VX\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008W\u0010X\"\u0004\u0008Y\u0010ZR\u001a\u0010[\u001a\u00020\\X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008]\u0010^\"\u0004\u0008_\u0010`R\u001a\u0010a\u001a\u00020bX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008c\u0010d\"\u0004\u0008e\u0010fR\u001a\u0010g\u001a\u00020hX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008i\u0010j\"\u0004\u0008k\u0010lR\u001a\u0010m\u001a\u00020nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008o\u0010p\"\u0004\u0008q\u0010rR\u001a\u0010s\u001a\u00020tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008u\u0010v\"\u0004\u0008w\u0010xR\u001a\u0010y\u001a\u00020zX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008{\u0010|\"\u0004\u0008}\u0010~R\u001f\u0010\u007f\u001a\u00030\u0080\u0001X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0081\u0001\u0010\u0082\u0001\"\u0006\u0008\u0083\u0001\u0010\u0084\u0001R \u0010\u0085\u0001\u001a\u00030\u0086\u0001X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0087\u0001\u0010\u0088\u0001\"\u0006\u0008\u0089\u0001\u0010\u008a\u0001R \u0010\u008b\u0001\u001a\u00030\u008c\u0001X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u008d\u0001\u0010\u008e\u0001\"\u0006\u0008\u008f\u0001\u0010\u0090\u0001R \u0010\u0091\u0001\u001a\u00030\u0092\u0001X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0093\u0001\u0010\u0094\u0001\"\u0006\u0008\u0095\u0001\u0010\u0096\u0001R\u0015\u0010\u0097\u0001\u001a\u00030\u0098\u0001\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u0099\u0001\u0010\u009a\u0001R\u0015\u0010\u009b\u0001\u001a\u00030\u009c\u0001\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u009d\u0001\u0010\u009e\u0001R\u0018\u0010\u009f\u0001\u001a\u00030\u00a0\u0001X\u0080\u0004\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u00a1\u0001\u0010\u00a2\u0001R\u0018\u0010\u00a3\u0001\u001a\u00030\u00a4\u0001X\u0080\u0004\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001R\u0018\u0010\u00a7\u0001\u001a\u00030\u00a8\u0001X\u0080\u0004\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u00a9\u0001\u0010\u00aa\u0001R \u0010\u00ab\u0001\u001a\u00030\u00ac\u0001X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u00ad\u0001\u0010\u00ae\u0001\"\u0006\u0008\u00af\u0001\u0010\u00b0\u0001R\u0018\u0010\u00b1\u0001\u001a\u00030\u00b2\u0001X\u0080\u0004\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u00b3\u0001\u0010\u00b4\u0001R\u0018\u0010\u00b5\u0001\u001a\u00030\u00b6\u0001X\u0080\u0004\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u00b7\u0001\u0010\u00b8\u0001R \u0010\u00b9\u0001\u001a\u00030\u00ba\u0001X\u0080.\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u00bb\u0001\u0010\u00bc\u0001\"\u0006\u0008\u00bd\u0001\u0010\u00be\u0001R \u0010\u00bf\u0001\u001a\u00030\u00c0\u0001X\u0086.\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u00c1\u0001\u0010\u00c2\u0001\"\u0006\u0008\u00c3\u0001\u0010\u00c4\u0001R\u0018\u0010\u00c5\u0001\u001a\u00030\u00c6\u00018BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00c7\u0001\u0010\u00c8\u0001R\u0018\u0010\u00c9\u0001\u001a\u00030\u00ca\u00018BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00cb\u0001\u0010\u00cc\u0001R \u0010\u00cd\u0001\u001a\u00030\u00ce\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u00d1\u0001\u0010<\u001a\u0006\u0008\u00cf\u0001\u0010\u00d0\u0001R\u0018\u0010\u00d2\u0001\u001a\u00030\u00d3\u0001X\u0080\u0004\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u00d4\u0001\u0010\u00d5\u0001R\u0010\u0010\u00d6\u0001\u001a\u00030\u00d7\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u00d8\u0001\u001a\u00030\u00d9\u0001X\u0080\u0004\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u00da\u0001\u0010\u00db\u0001R\u0018\u0010\u00dc\u0001\u001a\u00030\u00dd\u0001X\u0080\u0004\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u00de\u0001\u0010\u00df\u0001R\u0018\u0010\u00e0\u0001\u001a\u00030\u00e1\u0001X\u0080\u0004\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u00e2\u0001\u0010\u00e3\u0001R\u0010\u0010\u00ea\u0001\u001a\u00030\u00eb\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u00cb\u0002\u001a\u00030\u00cc\u00028BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00cd\u0002\u0010\u00ce\u0002R\u0018\u0010\u00cf\u0002\u001a\u00030\u00d0\u00028BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00d1\u0002\u0010\u00d2\u0002R\u0010\u0010\u00d3\u0002\u001a\u00030\u00d4\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u00d7\u0002\u001a\u0005\u0018\u00010\u00c6\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u00d8\u0002\u001a\u0005\u0018\u00010\u00ca\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0094\u0003"
    }
    d2 = {
        "Lcom/superwall/sdk/dependencies/DependencyContainer;",
        "Lcom/superwall/sdk/dependencies/ApiFactory;",
        "Lcom/superwall/sdk/dependencies/DeviceInfoFactory;",
        "Lcom/superwall/sdk/analytics/session/AppManagerDelegate;",
        "Lcom/superwall/sdk/dependencies/RequestFactory;",
        "Lcom/superwall/sdk/dependencies/RuleAttributesFactory;",
        "Lcom/superwall/sdk/network/device/DeviceHelper$Factory;",
        "Lcom/superwall/sdk/dependencies/CacheFactory;",
        "Lcom/superwall/sdk/paywall/request/PaywallRequestManagerDepFactory;",
        "Lcom/superwall/sdk/dependencies/VariablesFactory;",
        "Lcom/superwall/sdk/dependencies/StoreTransactionFactory;",
        "Lcom/superwall/sdk/storage/LocalStorage$Factory;",
        "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PresentationRequest$Factory;",
        "Lcom/superwall/sdk/dependencies/ViewFactory;",
        "Lcom/superwall/sdk/paywall/manager/PaywallManager$Factory;",
        "Lcom/superwall/sdk/dependencies/OptionsFactory;",
        "Lcom/superwall/sdk/dependencies/TriggerFactory;",
        "Lcom/superwall/sdk/dependencies/TransactionVerifierFactory;",
        "Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;",
        "Lcom/superwall/sdk/paywall/view/PaywallView$Factory;",
        "Lcom/superwall/sdk/config/ConfigManager$Factory;",
        "Lcom/superwall/sdk/analytics/session/AppSessionManager$Factory;",
        "Lcom/superwall/sdk/debug/DebugView$Factory;",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/javascript/RuleEvaluator$Factory;",
        "Lcom/superwall/sdk/network/JsonFactory;",
        "Lcom/superwall/sdk/dependencies/ConfigAttributesFactory;",
        "Lcom/superwall/sdk/config/PaywallPreload$Factory;",
        "Lcom/superwall/sdk/dependencies/ViewStoreFactory;",
        "Lcom/superwall/sdk/dependencies/SuperwallScopeFactory;",
        "Lcom/superwall/sdk/billing/GoogleBillingWrapper$Factory;",
        "Lcom/superwall/sdk/analytics/ClassifierDataFactory;",
        "Lcom/superwall/sdk/dependencies/ExperimentalPropertiesFactory;",
        "Lcom/superwall/sdk/dependencies/CustomerInfoFactory;",
        "Lcom/superwall/sdk/dependencies/ActiveEntitlementsFactory;",
        "Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;",
        "context",
        "Landroid/content/Context;",
        "purchaseController",
        "Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;",
        "options",
        "Lcom/superwall/sdk/config/options/SuperwallOptions;",
        "activityProvider",
        "Lcom/superwall/sdk/misc/ActivityProvider;",
        "apiKey",
        "",
        "<init>",
        "(Landroid/content/Context;Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;Lcom/superwall/sdk/config/options/SuperwallOptions;Lcom/superwall/sdk/misc/ActivityProvider;Ljava/lang/String;)V",
        "getContext",
        "()Landroid/content/Context;",
        "getActivityProvider",
        "()Lcom/superwall/sdk/misc/ActivityProvider;",
        "setActivityProvider",
        "(Lcom/superwall/sdk/misc/ActivityProvider;)V",
        "getApiKey",
        "()Ljava/lang/String;",
        "getPaywallComponentsFactory",
        "Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;",
        "getGetPaywallComponentsFactory$superwall_release",
        "()Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;",
        "getPaywallComponentsFactory$delegate",
        "Lkotlin/Lazy;",
        "network",
        "Lcom/superwall/sdk/network/Network;",
        "getNetwork",
        "()Lcom/superwall/sdk/network/Network;",
        "setNetwork",
        "(Lcom/superwall/sdk/network/Network;)V",
        "api",
        "Lcom/superwall/sdk/network/Api;",
        "getApi",
        "()Lcom/superwall/sdk/network/Api;",
        "setApi",
        "(Lcom/superwall/sdk/network/Api;)V",
        "deviceHelper",
        "Lcom/superwall/sdk/network/device/DeviceHelper;",
        "getDeviceHelper",
        "()Lcom/superwall/sdk/network/device/DeviceHelper;",
        "setDeviceHelper",
        "(Lcom/superwall/sdk/network/device/DeviceHelper;)V",
        "storage",
        "Lcom/superwall/sdk/storage/LocalStorage;",
        "getStorage",
        "()Lcom/superwall/sdk/storage/LocalStorage;",
        "setStorage",
        "(Lcom/superwall/sdk/storage/LocalStorage;)V",
        "configManager",
        "Lcom/superwall/sdk/config/ConfigManager;",
        "getConfigManager",
        "()Lcom/superwall/sdk/config/ConfigManager;",
        "setConfigManager",
        "(Lcom/superwall/sdk/config/ConfigManager;)V",
        "identityManager",
        "Lcom/superwall/sdk/identity/IdentityManager;",
        "getIdentityManager",
        "()Lcom/superwall/sdk/identity/IdentityManager;",
        "setIdentityManager",
        "(Lcom/superwall/sdk/identity/IdentityManager;)V",
        "appLifecycleObserver",
        "Lcom/superwall/sdk/misc/AppLifecycleObserver;",
        "getAppLifecycleObserver",
        "()Lcom/superwall/sdk/misc/AppLifecycleObserver;",
        "setAppLifecycleObserver",
        "(Lcom/superwall/sdk/misc/AppLifecycleObserver;)V",
        "appSessionManager",
        "Lcom/superwall/sdk/analytics/session/AppSessionManager;",
        "getAppSessionManager",
        "()Lcom/superwall/sdk/analytics/session/AppSessionManager;",
        "setAppSessionManager",
        "(Lcom/superwall/sdk/analytics/session/AppSessionManager;)V",
        "sessionEventsManager",
        "Lcom/superwall/sdk/analytics/SessionEventsManager;",
        "getSessionEventsManager",
        "()Lcom/superwall/sdk/analytics/SessionEventsManager;",
        "setSessionEventsManager",
        "(Lcom/superwall/sdk/analytics/SessionEventsManager;)V",
        "delegateAdapter",
        "Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;",
        "getDelegateAdapter",
        "()Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;",
        "setDelegateAdapter",
        "(Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;)V",
        "eventsQueue",
        "Lcom/superwall/sdk/storage/EventsQueue;",
        "getEventsQueue",
        "()Lcom/superwall/sdk/storage/EventsQueue;",
        "setEventsQueue",
        "(Lcom/superwall/sdk/storage/EventsQueue;)V",
        "debugManager",
        "Lcom/superwall/sdk/debug/DebugManager;",
        "getDebugManager",
        "()Lcom/superwall/sdk/debug/DebugManager;",
        "setDebugManager",
        "(Lcom/superwall/sdk/debug/DebugManager;)V",
        "paywallManager",
        "Lcom/superwall/sdk/paywall/manager/PaywallManager;",
        "getPaywallManager",
        "()Lcom/superwall/sdk/paywall/manager/PaywallManager;",
        "setPaywallManager",
        "(Lcom/superwall/sdk/paywall/manager/PaywallManager;)V",
        "paywallRequestManager",
        "Lcom/superwall/sdk/paywall/request/PaywallRequestManager;",
        "getPaywallRequestManager",
        "()Lcom/superwall/sdk/paywall/request/PaywallRequestManager;",
        "setPaywallRequestManager",
        "(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;)V",
        "storeManager",
        "Lcom/superwall/sdk/store/StoreManager;",
        "getStoreManager",
        "()Lcom/superwall/sdk/store/StoreManager;",
        "setStoreManager",
        "(Lcom/superwall/sdk/store/StoreManager;)V",
        "transactionManager",
        "Lcom/superwall/sdk/store/transactions/TransactionManager;",
        "getTransactionManager",
        "()Lcom/superwall/sdk/store/transactions/TransactionManager;",
        "googleBillingWrapper",
        "Lcom/superwall/sdk/billing/GoogleBillingWrapper;",
        "getGoogleBillingWrapper",
        "()Lcom/superwall/sdk/billing/GoogleBillingWrapper;",
        "reviewManager",
        "Lcom/superwall/sdk/review/ReviewManager;",
        "getReviewManager$superwall_release",
        "()Lcom/superwall/sdk/review/ReviewManager;",
        "userPermissions",
        "Lcom/superwall/sdk/permissions/UserPermissions;",
        "getUserPermissions$superwall_release",
        "()Lcom/superwall/sdk/permissions/UserPermissions;",
        "customCallbackRegistry",
        "Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;",
        "getCustomCallbackRegistry$superwall_release",
        "()Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;",
        "entitlements",
        "Lcom/superwall/sdk/store/Entitlements;",
        "getEntitlements",
        "()Lcom/superwall/sdk/store/Entitlements;",
        "setEntitlements",
        "(Lcom/superwall/sdk/store/Entitlements;)V",
        "testMode",
        "Lcom/superwall/sdk/store/testmode/TestMode;",
        "getTestMode$superwall_release",
        "()Lcom/superwall/sdk/store/testmode/TestMode;",
        "testModeTransactionHandler",
        "Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;",
        "getTestModeTransactionHandler$superwall_release",
        "()Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;",
        "customerInfoManager",
        "Lcom/superwall/sdk/customer/CustomerInfoManager;",
        "getCustomerInfoManager$superwall_release",
        "()Lcom/superwall/sdk/customer/CustomerInfoManager;",
        "setCustomerInfoManager$superwall_release",
        "(Lcom/superwall/sdk/customer/CustomerInfoManager;)V",
        "reedemer",
        "Lcom/superwall/sdk/web/WebPaywallRedeemer;",
        "getReedemer",
        "()Lcom/superwall/sdk/web/WebPaywallRedeemer;",
        "setReedemer",
        "(Lcom/superwall/sdk/web/WebPaywallRedeemer;)V",
        "uiScope",
        "Lcom/superwall/sdk/misc/MainScope;",
        "getUiScope",
        "()Lcom/superwall/sdk/misc/MainScope;",
        "ioScope",
        "Lcom/superwall/sdk/misc/IOScope;",
        "getIoScope",
        "()Lcom/superwall/sdk/misc/IOScope;",
        "evaluator",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/CombinedExpressionEvaluator;",
        "getEvaluator",
        "()Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/CombinedExpressionEvaluator;",
        "evaluator$delegate",
        "assignments",
        "Lcom/superwall/sdk/config/Assignments;",
        "getAssignments$superwall_release",
        "()Lcom/superwall/sdk/config/Assignments;",
        "paywallPreload",
        "Lcom/superwall/sdk/config/PaywallPreload;",
        "errorTracker",
        "Lcom/superwall/sdk/utilities/ErrorTracker;",
        "getErrorTracker$superwall_release",
        "()Lcom/superwall/sdk/utilities/ErrorTracker;",
        "deepLinkRouter",
        "Lcom/superwall/sdk/deeplinks/DeepLinkRouter;",
        "getDeepLinkRouter$superwall_release",
        "()Lcom/superwall/sdk/deeplinks/DeepLinkRouter;",
        "attributionManager",
        "Lcom/superwall/sdk/analytics/AttributionManager;",
        "getAttributionManager$superwall_release",
        "()Lcom/superwall/sdk/analytics/AttributionManager;",
        "makeHeaders",
        "",
        "isForDebugging",
        "",
        "requestId",
        "(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "paywallJson",
        "Lkotlinx/serialization/json/Json;",
        "makePaywallView",
        "Lcom/superwall/sdk/paywall/view/PaywallView;",
        "paywall",
        "Lcom/superwall/sdk/models/paywall/Paywall;",
        "cache",
        "Lcom/superwall/sdk/paywall/manager/PaywallViewCache;",
        "delegate",
        "Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;",
        "(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/manager/PaywallViewCache;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "makeDebugView",
        "Lcom/superwall/sdk/debug/DebugView;",
        "id",
        "makeCache",
        "activePaywallId",
        "currentCustomerInfo",
        "Lcom/superwall/sdk/models/customer/CustomerInfo;",
        "makeDeviceInfo",
        "Lcom/superwall/sdk/network/device/DeviceInfo;",
        "makeIsSandbox",
        "makeSessionDeviceAttributes",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "makeUserAttributesEvent",
        "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Attributes;",
        "makeHasExternalPurchaseController",
        "makeHasInternalPurchaseController",
        "isWebToAppEnabled",
        "restoreUrl",
        "didUpdateAppSession",
        "",
        "appSession",
        "Lcom/superwall/sdk/analytics/session/AppSession;",
        "(Lcom/superwall/sdk/analytics/session/AppSession;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "makePaywallRequest",
        "Lcom/superwall/sdk/paywall/request/PaywallRequest;",
        "eventData",
        "Lcom/superwall/sdk/models/events/EventData;",
        "responseIdentifiers",
        "Lcom/superwall/sdk/paywall/request/ResponseIdentifiers;",
        "overrides",
        "Lcom/superwall/sdk/paywall/request/PaywallRequest$Overrides;",
        "isDebuggerLaunched",
        "presentationSourceType",
        "makePresentationRequest",
        "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
        "presentationInfo",
        "Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;",
        "paywallOverrides",
        "Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;",
        "presenter",
        "Landroid/app/Activity;",
        "subscriptionStatus",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
        "isPaywallPresented",
        "type",
        "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;",
        "(Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;Landroid/app/Activity;Ljava/lang/Boolean;Lkotlinx/coroutines/flow/StateFlow;ZLcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;)Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
        "makeStaticPaywall",
        "paywallId",
        "makeRuleAttributes",
        "event",
        "computedPropertyRequests",
        "",
        "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;",
        "(Lcom/superwall/sdk/models/events/EventData;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "makeFeatureFlags",
        "Lcom/superwall/sdk/models/config/FeatureFlags;",
        "makeComputedPropertyRequests",
        "makeIdentityInfo",
        "Lcom/superwall/sdk/identity/IdentityInfo;",
        "makeLocaleIdentifier",
        "makeJsonVariables",
        "Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;",
        "products",
        "Lcom/superwall/sdk/models/product/ProductVariable;",
        "(Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "makeStoreTransaction",
        "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;",
        "transaction",
        "Lcom/android/billingclient/api/Purchase;",
        "(Lcom/android/billingclient/api/Purchase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "activeProductIds",
        "makeIdentityManager",
        "makeTransactionVerifier",
        "makeSuperwallOptions",
        "makeTriggers",
        "",
        "provideRuleEvaluator",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;",
        "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "makeConfigAttributes",
        "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ConfigAttributes;",
        "storeOwner",
        "Lcom/superwall/sdk/paywall/view/SuperwallStoreOwner;",
        "getStoreOwner",
        "()Lcom/superwall/sdk/paywall/view/SuperwallStoreOwner;",
        "vmFactory",
        "Lcom/superwall/sdk/paywall/view/ViewModelFactory;",
        "getVmFactory",
        "()Lcom/superwall/sdk/paywall/view/ViewModelFactory;",
        "vmProvider",
        "Landroidx/lifecycle/ViewModelProvider;",
        "makeViewStore",
        "Lcom/superwall/sdk/paywall/view/ViewStorageViewModel;",
        "_mainScope",
        "_ioScope",
        "mainScope",
        "showWebRestoreSuccesful",
        "trackRestorationFailure",
        "message",
        "experimentalProperties",
        "getCurrentUserAttributes",
        "demandTier",
        "demandScore",
        "",
        "()Ljava/lang/Integer;",
        "track",
        "Lkotlin/Result;",
        "Lcom/superwall/sdk/analytics/internal/TrackingResult;",
        "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;",
        "track-gIAlu-s",
        "(Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "customerInfoFlow",
        "activeEntitlements",
        "Lcom/superwall/sdk/models/entitlements/Entitlement;",
        "updatePaywallInfo",
        "paywallInfo",
        "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
        "storePresentationObject",
        "request",
        "publisher",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
        "(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "internallyGetPresentationResult",
        "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;",
        "isImplicit",
        "(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "willRedeemLink",
        "didRedeemLink",
        "redemptionResult",
        "Lcom/superwall/sdk/models/internal/RedemptionResult;",
        "maxAge",
        "",
        "getActiveDeviceEntitlements",
        "getUserId",
        "Lcom/superwall/sdk/models/internal/UserId;",
        "getUserId-P5Wmf0A",
        "getDeviceId",
        "Lcom/superwall/sdk/models/internal/DeviceVendorId;",
        "getAliasId",
        "(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "internallySetSubscriptionStatus",
        "status",
        "isPaywallVisible",
        "triggerRestoreInPaywall",
        "currentPaywallEntitlements",
        "getPaywallInfo",
        "trackRestorationFailed",
        "receipts",
        "Lcom/superwall/sdk/models/entitlements/TransactionReceipt;",
        "getExternalAccountId",
        "getIntegrationProps",
        "closePaywallIfExists",
        "isPaymentSheetOpen",
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
.field private _ioScope:Lcom/superwall/sdk/misc/IOScope;

.field private _mainScope:Lcom/superwall/sdk/misc/MainScope;

.field private activityProvider:Lcom/superwall/sdk/misc/ActivityProvider;

.field private api:Lcom/superwall/sdk/network/Api;

.field private final apiKey:Ljava/lang/String;

.field private appLifecycleObserver:Lcom/superwall/sdk/misc/AppLifecycleObserver;

.field private appSessionManager:Lcom/superwall/sdk/analytics/session/AppSessionManager;

.field private final assignments:Lcom/superwall/sdk/config/Assignments;

.field private final attributionManager:Lcom/superwall/sdk/analytics/AttributionManager;

.field public configManager:Lcom/superwall/sdk/config/ConfigManager;

.field private final context:Landroid/content/Context;

.field private final customCallbackRegistry:Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;

.field public customerInfoManager:Lcom/superwall/sdk/customer/CustomerInfoManager;

.field private debugManager:Lcom/superwall/sdk/debug/DebugManager;

.field private final deepLinkRouter:Lcom/superwall/sdk/deeplinks/DeepLinkRouter;

.field private delegateAdapter:Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;

.field private deviceHelper:Lcom/superwall/sdk/network/device/DeviceHelper;

.field private entitlements:Lcom/superwall/sdk/store/Entitlements;

.field private final errorTracker:Lcom/superwall/sdk/utilities/ErrorTracker;

.field private final evaluator$delegate:Lkotlin/Lazy;

.field private eventsQueue:Lcom/superwall/sdk/storage/EventsQueue;

.field private final getPaywallComponentsFactory$delegate:Lkotlin/Lazy;

.field private final googleBillingWrapper:Lcom/superwall/sdk/billing/GoogleBillingWrapper;

.field private identityManager:Lcom/superwall/sdk/identity/IdentityManager;

.field private network:Lcom/superwall/sdk/network/Network;

.field private final paywallJson:Lkotlinx/serialization/json/Json;

.field private paywallManager:Lcom/superwall/sdk/paywall/manager/PaywallManager;

.field private final paywallPreload:Lcom/superwall/sdk/config/PaywallPreload;

.field private paywallRequestManager:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

.field public reedemer:Lcom/superwall/sdk/web/WebPaywallRedeemer;

.field private final reviewManager:Lcom/superwall/sdk/review/ReviewManager;

.field private sessionEventsManager:Lcom/superwall/sdk/analytics/SessionEventsManager;

.field public storage:Lcom/superwall/sdk/storage/LocalStorage;

.field private storeManager:Lcom/superwall/sdk/store/StoreManager;

.field private final testMode:Lcom/superwall/sdk/store/testmode/TestMode;

.field private final testModeTransactionHandler:Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;

.field private final transactionManager:Lcom/superwall/sdk/store/transactions/TransactionManager;

.field private final userPermissions:Lcom/superwall/sdk/permissions/UserPermissions;

.field private final vmProvider:Landroidx/lifecycle/ViewModelProvider;


# direct methods
.method public static synthetic $r8$lambda$-_-5ayjUMEOY27QP-nPNYedCPtA(Lcom/superwall/sdk/dependencies/DependencyContainer;)Landroid/content/Context;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->_init_$lambda$15(Lcom/superwall/sdk/dependencies/DependencyContainer;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$-fi6f8ZlH83AazPZ1rmXAgIuHQ0(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lcom/superwall/sdk/web/WebPaywallRedeemer;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->_init_$lambda$24(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lcom/superwall/sdk/web/WebPaywallRedeemer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$0ahOFAaHYG9_1UGUopjcfNh2CHI(Lcom/superwall/sdk/config/options/SuperwallOptions;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->_init_$lambda$7(Lcom/superwall/sdk/config/options/SuperwallOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1Z16r2LjG1BF-ky-pbypNVNpOTc(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->_init_$lambda$13(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$3NWt7-9HbVroVZ1u5g77V820AOQ(Lcom/superwall/sdk/config/options/SuperwallOptions;)Lcom/superwall/sdk/config/options/SuperwallOptions;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->_init_$lambda$23(Lcom/superwall/sdk/config/options/SuperwallOptions;)Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6_lVJwf9fTtK1tSdlqZv-ZAvFz8(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->_init_$lambda$12(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6o_EsQkioZV1PVTHnUimfe0tGJc(Lcom/superwall/sdk/dependencies/DependencyContainer;Ljava/util/Map;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->makePaywallView$lambda$36(Lcom/superwall/sdk/dependencies/DependencyContainer;Ljava/util/Map;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8QnxRzrsF4gPoDashRJjrELhHuE(Lcom/superwall/sdk/dependencies/DependencyContainer;)Z
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->_init_$lambda$9(Lcom/superwall/sdk/dependencies/DependencyContainer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$9tsbN-43d5IQDvhrG8a7OpFPzFw(Lcom/superwall/sdk/dependencies/DependencyContainer;)Z
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->_init_$lambda$5(Lcom/superwall/sdk/dependencies/DependencyContainer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$CRas9-i9_lsjQFLxrya7sns18wM(Lcom/superwall/sdk/dependencies/DependencyContainer;Ljava/lang/String;)Ljava/util/Set;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->_init_$lambda$27(Lcom/superwall/sdk/dependencies/DependencyContainer;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DzBUunGGp-sQHPg5sp3A4Q5P23w(Lcom/superwall/sdk/dependencies/DependencyContainer;Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->_init_$lambda$19(Lcom/superwall/sdk/dependencies/DependencyContainer;Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Gf-9wBRZtDdpM-yElv3Nl3sz-Fk(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lcom/superwall/sdk/identity/IdentityManager;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->_init_$lambda$18(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lcom/superwall/sdk/identity/IdentityManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Gj8tXHQNXYefEYItRL3fhih8aFE(Lcom/superwall/sdk/dependencies/DependencyContainer;)Landroid/content/Context;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->_init_$lambda$25(Lcom/superwall/sdk/dependencies/DependencyContainer;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Gnnc6723m1iSQa1PVLgWUImHabk(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->paywallJson$lambda$35(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HFxGOgyn8ZzsxyIEVHDmKNpY38k(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->evaluator_delegate$lambda$2$lambda$1(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Iso09TWDkt4SmZGcODgEcj6R-c0(Lcom/superwall/sdk/misc/AlertControllerFactory$AlertProps;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->_init_$lambda$26(Lcom/superwall/sdk/misc/AlertControllerFactory$AlertProps;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$N4XgpLhDVyHZK3YdcnKP0I6TzVY(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lcom/superwall/sdk/web/WebPaywallRedeemer;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->_init_$lambda$17(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lcom/superwall/sdk/web/WebPaywallRedeemer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Nn2dI_o3-uTIAqVl1JhMlSXuAN8(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->makePaywallView$lambda$38(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TJpSysIe9RKgOkWVW9BJmSxNF20()Lcom/superwall/sdk/paywall/view/PaywallView;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/dependencies/DependencyContainer;->makePaywallView$lambda$37()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$TidQfk3qxoGPV7G2SdMc8gAzMQ0(Lcom/superwall/sdk/dependencies/DependencyContainer;Ljava/lang/String;Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/dependencies/DependencyContainer;->_init_$lambda$30(Lcom/superwall/sdk/dependencies/DependencyContainer;Ljava/lang/String;Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_kQO67US1B7CbvMPnsJLI6sFvZ8(Lcom/superwall/sdk/dependencies/DependencyContainer;)Landroid/app/Activity;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->makePaywallView$lambda$39(Lcom/superwall/sdk/dependencies/DependencyContainer;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cLBaszDttHvDvz0MgaNBpaTGc5Y()Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getPaywallComponentsFactory_delegate$lambda$0()Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$d_AuNaQX258c6BL_AE5FPxY8FWI(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/CombinedExpressionEvaluator;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->evaluator_delegate$lambda$2(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/CombinedExpressionEvaluator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$i4rHABgOy-stzDD3aKJUXbvF8v4(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->_init_$lambda$33(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iVAC3bziaDzMR1Ec4aeFgGqy7XU(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->_init_$lambda$14(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jDG5F8uSrU3dHNHDK9WHejhABII(Lcom/superwall/sdk/dependencies/DependencyContainer;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->_init_$lambda$28(Lcom/superwall/sdk/dependencies/DependencyContainer;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jrzmfZljwJo87QQU4bby_PhWaA8(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->_init_$lambda$29(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lD3JzU60iiVAmLbxS_duUDVO29c(Lcom/superwall/sdk/dependencies/DependencyContainer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->_init_$lambda$21(Lcom/superwall/sdk/dependencies/DependencyContainer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mml2QJtUbjTnHuvXwenAV9OybYk(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lcom/superwall/sdk/misc/ActivityProvider;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->_init_$lambda$3(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lcom/superwall/sdk/misc/ActivityProvider;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nAv6b_3GuCVOxEHDjdua76osoOA(Lcom/superwall/sdk/dependencies/DependencyContainer;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->_init_$lambda$6(Lcom/superwall/sdk/dependencies/DependencyContainer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nEcktFX_cmpZfNd_kcfI2appwZc(Lcom/superwall/sdk/dependencies/DependencyContainer;Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->_init_$lambda$31(Lcom/superwall/sdk/dependencies/DependencyContainer;Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nhsbaGphqNi2dT3xK0Zde8LiyL8(Lcom/superwall/sdk/misc/CurrentActivityTracker;)Lcom/superwall/sdk/misc/CurrentActivityTracker;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->_init_$lambda$4(Lcom/superwall/sdk/misc/CurrentActivityTracker;)Lcom/superwall/sdk/misc/CurrentActivityTracker;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pCFt6kqQ85MXsoZlojah0v8bn1o(Lcom/superwall/sdk/dependencies/DependencyContainer;)Z
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->_init_$lambda$32(Lcom/superwall/sdk/dependencies/DependencyContainer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qY9Y7eNH4dDyYq8Xq7-FpHGVWo0(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->_init_$lambda$10(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vdPIR0ZuRTDZEkR1AOC5ltN-cRI(Lcom/superwall/sdk/models/customer/CustomerInfo;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->_init_$lambda$8(Lcom/superwall/sdk/models/customer/CustomerInfo;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wq7IUgvi-wnDV71Am0BCz_ysUP4(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lcom/superwall/sdk/config/ConfigManager;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->_init_$lambda$16(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lcom/superwall/sdk/config/ConfigManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xzFbXXbxv7VOfVMSEg0QrkL0KeE(Lcom/superwall/sdk/dependencies/DependencyContainer;Ljava/util/Map;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->_init_$lambda$22(Lcom/superwall/sdk/dependencies/DependencyContainer;Ljava/util/Map;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;Lcom/superwall/sdk/config/options/SuperwallOptions;Lcom/superwall/sdk/misc/ActivityProvider;Ljava/lang/String;)V
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v9, p5

    const-string v1, "context"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "apiKey"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object v2, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->context:Landroid/content/Context;

    move-object/from16 v1, p4

    .line 153
    iput-object v1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->activityProvider:Lcom/superwall/sdk/misc/ActivityProvider;

    .line 154
    iput-object v9, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->apiKey:Ljava/lang/String;

    .line 189
    new-instance v1, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda32;

    invoke-direct {v1}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda32;-><init>()V

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->getPaywallComponentsFactory$delegate:Lkotlin/Lazy;

    .line 199
    new-instance v1, Lcom/superwall/sdk/misc/AppLifecycleObserver;

    invoke-direct {v1}, Lcom/superwall/sdk/misc/AppLifecycleObserver;-><init>()V

    iput-object v1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->appLifecycleObserver:Lcom/superwall/sdk/misc/AppLifecycleObserver;

    .line 223
    new-instance v1, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda6;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;)V

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->evaluator$delegate:Lkotlin/Lazy;

    .line 249
    invoke-direct {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getUiScope()Lcom/superwall/sdk/misc/MainScope;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/superwall/sdk/dependencies/DependencyContainer$1;

    const/4 v11, 0x0

    invoke-direct {v1, v0, v11}, Lcom/superwall/sdk/dependencies/DependencyContainer$1;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;Lkotlin/coroutines/Continuation;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 255
    new-instance v12, Lcom/superwall/sdk/misc/CurrentActivityTracker;

    invoke-direct {v12}, Lcom/superwall/sdk/misc/CurrentActivityTracker;-><init>()V

    .line 256
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type android.app.Application"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Application;

    .line 257
    move-object v3, v12

    check-cast v3, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 256
    invoke-virtual {v1, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 260
    iget-object v1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->activityProvider:Lcom/superwall/sdk/misc/ActivityProvider;

    if-nez v1, :cond_0

    move-object v1, v12

    check-cast v1, Lcom/superwall/sdk/misc/ActivityProvider;

    :cond_0
    move-object v13, v1

    .line 261
    iput-object v13, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->activityProvider:Lcom/superwall/sdk/misc/ActivityProvider;

    .line 264
    new-instance v1, Lcom/superwall/sdk/billing/GoogleBillingWrapper;

    .line 266
    invoke-direct {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIoScope()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v3

    .line 267
    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getAppLifecycleObserver()Lcom/superwall/sdk/misc/AppLifecycleObserver;

    move-result-object v4

    .line 268
    move-object v5, v0

    check-cast v5, Lcom/superwall/sdk/billing/GoogleBillingWrapper$Factory;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 264
    invoke-direct/range {v1 .. v8}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;-><init>(Landroid/content/Context;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/misc/AppLifecycleObserver;Lcom/superwall/sdk/billing/GoogleBillingWrapper$Factory;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v14, v1

    .line 263
    iput-object v14, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->googleBillingWrapper:Lcom/superwall/sdk/billing/GoogleBillingWrapper;

    .line 273
    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->ioScope()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v6

    .line 275
    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->json()Lkotlinx/serialization/json/Json;

    move-result-object v3

    .line 271
    new-instance v1, Lcom/superwall/sdk/storage/LocalStorage;

    .line 274
    move-object v5, v0

    check-cast v5, Lcom/superwall/sdk/storage/LocalStorage$Factory;

    const/16 v9, 0x60

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object/from16 v4, p5

    .line 271
    invoke-direct/range {v1 .. v10}, Lcom/superwall/sdk/storage/LocalStorage;-><init>(Landroid/content/Context;Lkotlinx/serialization/json/Json;Ljava/lang/String;Lcom/superwall/sdk/storage/LocalStorage$Factory;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/storage/Cache;Lcom/superwall/sdk/storage/core_data/CoreDataManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 270
    invoke-virtual {v0, v1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->setStorage(Lcom/superwall/sdk/storage/LocalStorage;)V

    .line 278
    new-instance v1, Lcom/superwall/sdk/store/Entitlements;

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v2

    check-cast v2, Lcom/superwall/sdk/storage/Storage;

    const/4 v8, 0x2

    invoke-direct {v1, v2, v11, v8, v11}, Lcom/superwall/sdk/store/Entitlements;-><init>(Lcom/superwall/sdk/storage/Storage;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->entitlements:Lcom/superwall/sdk/store/Entitlements;

    if-nez p3, :cond_1

    .line 279
    new-instance v1, Lcom/superwall/sdk/config/options/SuperwallOptions;

    invoke-direct {v1}, Lcom/superwall/sdk/config/options/SuperwallOptions;-><init>()V

    move-object v9, v1

    goto :goto_0

    :cond_1
    move-object/from16 v9, p3

    .line 281
    :goto_0
    new-instance v15, Lcom/superwall/sdk/store/testmode/TestMode;

    .line 282
    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/superwall/sdk/storage/Storage;

    .line 283
    new-instance v1, Lcom/superwall/sdk/dependencies/DependencyContainer$2;

    invoke-direct {v1, v0, v11}, Lcom/superwall/sdk/dependencies/DependencyContainer$2;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v18, v1

    check-cast v18, Lkotlin/jvm/functions/Function1;

    .line 284
    iget-object v1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->entitlements:Lcom/superwall/sdk/store/Entitlements;

    .line 285
    new-instance v2, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda18;

    invoke-direct {v2, v0}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda18;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;)V

    .line 286
    new-instance v3, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda21;

    invoke-direct {v3, v12}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda21;-><init>(Lcom/superwall/sdk/misc/CurrentActivityTracker;)V

    .line 287
    new-instance v4, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda23;

    invoke-direct {v4, v0}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda23;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;)V

    .line 288
    new-instance v5, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda24;

    invoke-direct {v5, v0}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda24;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;)V

    .line 289
    new-instance v6, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda25;

    invoke-direct {v6, v9}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda25;-><init>(Lcom/superwall/sdk/config/options/SuperwallOptions;)V

    .line 295
    new-instance v7, Lcom/superwall/sdk/dependencies/DependencyContainer$8;

    invoke-direct {v7, v11}, Lcom/superwall/sdk/dependencies/DependencyContainer$8;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object/from16 v25, v7

    check-cast v25, Lkotlin/jvm/functions/Function2;

    const/16 v26, 0x2

    const/16 v27, 0x0

    const/16 v17, 0x0

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    .line 281
    invoke-direct/range {v15 .. v27}, Lcom/superwall/sdk/store/testmode/TestMode;-><init>(Lcom/superwall/sdk/storage/Storage;ZLkotlin/jvm/functions/Function1;Lcom/superwall/sdk/store/Entitlements;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 280
    iput-object v15, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->testMode:Lcom/superwall/sdk/store/testmode/TestMode;

    .line 298
    new-instance v10, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;

    invoke-direct {v10, v15, v13, v12}, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;-><init>(Lcom/superwall/sdk/store/testmode/TestMode;Lcom/superwall/sdk/misc/ActivityProvider;Lcom/superwall/sdk/misc/CurrentActivityTracker;)V

    .line 297
    iput-object v10, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->testModeTransactionHandler:Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;

    .line 305
    new-instance v1, Lcom/superwall/sdk/customer/CustomerInfoManager;

    .line 306
    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v2

    check-cast v2, Lcom/superwall/sdk/storage/Storage;

    new-instance v3, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda26;

    invoke-direct {v3}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda26;-><init>()V

    .line 308
    invoke-direct {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIoScope()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v4

    .line 304
    new-instance v5, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda27;

    invoke-direct {v5, v0}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda27;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;)V

    new-instance v6, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda28;

    invoke-direct {v6, v0}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda28;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;)V

    .line 305
    invoke-direct/range {v1 .. v6}, Lcom/superwall/sdk/customer/CustomerInfoManager;-><init>(Lcom/superwall/sdk/storage/Storage;Lkotlin/jvm/functions/Function1;Lcom/superwall/sdk/misc/IOScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 304
    invoke-virtual {v0, v1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->setCustomerInfoManager$superwall_release(Lcom/superwall/sdk/customer/CustomerInfoManager;)V

    .line 314
    new-instance v12, Lcom/superwall/sdk/store/InternalPurchaseController;

    if-nez p2, :cond_2

    .line 317
    new-instance v1, Lcom/superwall/sdk/store/AutomaticPurchaseController;

    invoke-direct {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIoScope()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v3

    iget-object v4, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->entitlements:Lcom/superwall/sdk/store/Entitlements;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/superwall/sdk/store/AutomaticPurchaseController;-><init>(Landroid/content/Context;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/store/Entitlements;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;

    goto :goto_1

    :cond_2
    move-object/from16 v2, p1

    move-object/from16 v1, p2

    .line 314
    :goto_1
    invoke-direct {v12, v1, v11, v2}, Lcom/superwall/sdk/store/InternalPurchaseController;-><init>(Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;Lcom/superwall/sdk/delegate/subscription_controller/PurchaseControllerJava;Landroid/content/Context;)V

    move-object/from16 v16, v15

    .line 322
    new-instance v15, Lcom/superwall/sdk/store/StoreManager;

    .line 324
    move-object/from16 v17, v14

    check-cast v17, Lcom/superwall/sdk/billing/Billing;

    .line 321
    new-instance v1, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda33;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda33;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;)V

    const/16 v21, 0x8

    const/16 v22, 0x0

    const/16 v19, 0x0

    move-object/from16 v18, v1

    move-object/from16 v20, v16

    move-object/from16 v16, v12

    .line 322
    invoke-direct/range {v15 .. v22}, Lcom/superwall/sdk/store/StoreManager;-><init>(Lcom/superwall/sdk/store/InternalPurchaseController;Lcom/superwall/sdk/billing/Billing;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/store/testmode/TestMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v15

    move-object/from16 v24, v16

    move-object/from16 v15, v20

    .line 321
    iput-object v1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    .line 336
    new-instance v1, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;

    invoke-direct {v1}, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;-><init>()V

    iput-object v1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->delegateAdapter:Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;

    .line 338
    new-instance v21, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    .line 339
    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->json()Lkotlinx/serialization/json/Json;

    move-result-object v17

    .line 341
    new-instance v1, Lcom/superwall/sdk/network/RequestExecutor;

    .line 337
    new-instance v3, Lcom/superwall/sdk/dependencies/DependencyContainer$httpConnection$1;

    invoke-direct {v3, v0, v11}, Lcom/superwall/sdk/dependencies/DependencyContainer$httpConnection$1;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function3;

    .line 341
    invoke-direct {v1, v3}, Lcom/superwall/sdk/network/RequestExecutor;-><init>(Lkotlin/jvm/functions/Function3;)V

    const/16 v20, 0x4

    move-object/from16 v16, v21

    const/16 v21, 0x0

    move-object/from16 v18, v1

    .line 338
    invoke-direct/range {v16 .. v21}, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;-><init>(Lkotlinx/serialization/json/Json;Lcom/superwall/sdk/network/RequestExecutor;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 346
    new-instance v1, Lcom/superwall/sdk/network/Api;

    invoke-virtual {v9}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getNetworkEnvironment()Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/superwall/sdk/network/Api;-><init>(Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;)V

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->setApi(Lcom/superwall/sdk/network/Api;)V

    .line 350
    new-instance v18, Lcom/superwall/sdk/network/BaseHostService;

    .line 351
    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getApi()Lcom/superwall/sdk/network/Api;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/network/Api;->getBase()Lcom/superwall/sdk/network/Api$Base;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/network/Api$Base;->getHost()Ljava/lang/String;

    move-result-object v17

    .line 353
    move-object/from16 v19, v0

    check-cast v19, Lcom/superwall/sdk/dependencies/ApiFactory;

    .line 354
    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->json()Lkotlinx/serialization/json/Json;

    move-result-object v20

    move-object/from16 v21, v16

    move-object/from16 v16, v18

    .line 350
    const-string v18, "/api/v1/"

    invoke-direct/range {v16 .. v21}, Lcom/superwall/sdk/network/BaseHostService;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/dependencies/ApiFactory;Lkotlinx/serialization/json/Json;Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;)V

    move-object/from16 v1, v16

    move-object/from16 v16, v21

    .line 358
    new-instance v22, Lcom/superwall/sdk/network/SubscriptionService;

    .line 359
    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getApi()Lcom/superwall/sdk/network/Api;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/network/Api;->getSubscription()Lcom/superwall/sdk/network/Api$Subscriptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/network/Api$Subscriptions;->getHost()Ljava/lang/String;

    move-result-object v26

    .line 363
    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->json()Lkotlinx/serialization/json/Json;

    move-result-object v3

    new-instance v4, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda34;

    invoke-direct {v4}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda34;-><init>()V

    invoke-static {v3, v4}, Lkotlinx/serialization/json/JsonKt;->Json(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/json/Json;

    move-result-object v29

    .line 368
    new-instance v30, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    .line 370
    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->json()Lkotlinx/serialization/json/Json;

    move-result-object v3

    new-instance v4, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda35;

    invoke-direct {v4}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda35;-><init>()V

    invoke-static {v3, v4}, Lkotlinx/serialization/json/JsonKt;->Json(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/json/Json;

    move-result-object v31

    .line 375
    new-instance v3, Lcom/superwall/sdk/network/RequestExecutor;

    .line 358
    new-instance v4, Lcom/superwall/sdk/dependencies/DependencyContainer$15;

    invoke-direct {v4, v0, v11}, Lcom/superwall/sdk/dependencies/DependencyContainer$15;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function3;

    .line 375
    invoke-direct {v3, v4}, Lcom/superwall/sdk/network/RequestExecutor;-><init>(Lkotlin/jvm/functions/Function3;)V

    const/16 v34, 0x4

    const/16 v35, 0x0

    const/16 v33, 0x0

    move-object/from16 v32, v3

    .line 368
    invoke-direct/range {v30 .. v35}, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;-><init>(Lkotlinx/serialization/json/Json;Lcom/superwall/sdk/network/RequestExecutor;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 358
    const-string v27, "/subscriptions-api/public/v1/"

    move-object/from16 v28, v19

    move-object/from16 v25, v22

    invoke-direct/range {v25 .. v30}, Lcom/superwall/sdk/network/SubscriptionService;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/dependencies/ApiFactory;Lkotlinx/serialization/json/Json;Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;)V

    .line 381
    new-instance v16, Lcom/superwall/sdk/network/CollectorService;

    .line 382
    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getApi()Lcom/superwall/sdk/network/Api;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/network/Api;->getCollector()Lcom/superwall/sdk/network/Api$Collector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/network/Api$Collector;->getHost()Ljava/lang/String;

    move-result-object v17

    .line 383
    const-string v18, "/api/v1/"

    .line 385
    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->json()Lkotlinx/serialization/json/Json;

    move-result-object v20

    .line 381
    invoke-direct/range {v16 .. v21}, Lcom/superwall/sdk/network/CollectorService;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/dependencies/ApiFactory;Lkotlinx/serialization/json/Json;Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;)V

    move-object/from16 v4, v19

    move-object/from16 v3, v21

    .line 389
    new-instance v5, Lcom/superwall/sdk/network/EnrichmentService;

    .line 390
    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getApi()Lcom/superwall/sdk/network/Api;

    move-result-object v6

    invoke-virtual {v6}, Lcom/superwall/sdk/network/Api;->getEnrichment()Lcom/superwall/sdk/network/Api$Enrichment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/superwall/sdk/network/Api$Enrichment;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 391
    const-string v7, "/api/v1/"

    .line 389
    invoke-direct {v5, v6, v7, v4, v3}, Lcom/superwall/sdk/network/EnrichmentService;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/dependencies/ApiFactory;Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;)V

    .line 348
    new-instance v17, Lcom/superwall/sdk/network/Network;

    move-object/from16 v18, v1

    move-object/from16 v21, v4

    move-object/from16 v20, v5

    move-object/from16 v19, v16

    invoke-direct/range {v17 .. v22}, Lcom/superwall/sdk/network/Network;-><init>(Lcom/superwall/sdk/network/BaseHostService;Lcom/superwall/sdk/network/CollectorService;Lcom/superwall/sdk/network/EnrichmentService;Lcom/superwall/sdk/dependencies/ApiFactory;Lcom/superwall/sdk/network/SubscriptionService;)V

    move-object/from16 v1, v17

    .line 347
    iput-object v1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->network:Lcom/superwall/sdk/network/Network;

    .line 397
    new-instance v16, Lcom/superwall/sdk/utilities/ErrorTracker;

    invoke-direct {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIoScope()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v18

    const/16 v20, 0x4

    const/16 v21, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v16 .. v21}, Lcom/superwall/sdk/utilities/ErrorTracker;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/superwall/sdk/storage/LocalStorage;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v16

    iput-object v1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->errorTracker:Lcom/superwall/sdk/utilities/ErrorTracker;

    .line 399
    new-instance v25, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    .line 400
    iget-object v1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    .line 401
    iget-object v3, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->network:Lcom/superwall/sdk/network/Network;

    .line 402
    move-object/from16 v28, v0

    check-cast v28, Lcom/superwall/sdk/paywall/request/PaywallRequestManagerDepFactory;

    .line 403
    invoke-direct {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIoScope()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v29

    const/16 v32, 0x30

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v26, v1

    move-object/from16 v27, v3

    .line 399
    invoke-direct/range {v25 .. v33}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;-><init>(Lcom/superwall/sdk/store/StoreManager;Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/paywall/request/PaywallRequestManagerDepFactory;Lcom/superwall/sdk/misc/IOScope;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v25

    .line 398
    iput-object v1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->paywallRequestManager:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    .line 406
    new-instance v3, Lcom/superwall/sdk/paywall/manager/PaywallManager;

    .line 408
    move-object v4, v0

    check-cast v4, Lcom/superwall/sdk/paywall/manager/PaywallManager$Factory;

    .line 406
    invoke-direct {v3, v4, v1}, Lcom/superwall/sdk/paywall/manager/PaywallManager;-><init>(Lcom/superwall/sdk/paywall/manager/PaywallManager$Factory;Lcom/superwall/sdk/paywall/request/PaywallRequestManager;)V

    .line 405
    iput-object v3, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->paywallManager:Lcom/superwall/sdk/paywall/manager/PaywallManager;

    .line 412
    new-instance v1, Lcom/superwall/sdk/network/device/DeviceHelper;

    .line 414
    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v3

    .line 415
    iget-object v4, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->network:Lcom/superwall/sdk/network/Network;

    check-cast v4, Lcom/superwall/sdk/network/SuperwallAPI;

    .line 416
    move-object v5, v0

    check-cast v5, Lcom/superwall/sdk/network/device/DeviceHelper$Factory;

    .line 417
    new-instance v6, Lcom/superwall/sdk/analytics/DeviceClassifier;

    new-instance v7, Lcom/superwall/sdk/analytics/DefaultClassifierDataFactory;

    .line 411
    new-instance v12, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda36;

    invoke-direct {v12, v0}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda36;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;)V

    .line 417
    invoke-direct {v7, v12}, Lcom/superwall/sdk/analytics/DefaultClassifierDataFactory;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v7, Lcom/superwall/sdk/analytics/ClassifierDataFactory;

    invoke-direct {v6, v7}, Lcom/superwall/sdk/analytics/DeviceClassifier;-><init>(Lcom/superwall/sdk/analytics/ClassifierDataFactory;)V

    .line 412
    invoke-direct/range {v1 .. v6}, Lcom/superwall/sdk/network/device/DeviceHelper;-><init>(Landroid/content/Context;Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/network/SuperwallAPI;Lcom/superwall/sdk/network/device/DeviceHelper$Factory;Lcom/superwall/sdk/analytics/DeviceClassifier;)V

    .line 411
    invoke-virtual {v0, v1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->setDeviceHelper(Lcom/superwall/sdk/network/device/DeviceHelper;)V

    .line 421
    new-instance v12, Lcom/superwall/sdk/config/Assignments;

    .line 422
    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v17

    .line 423
    iget-object v1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->network:Lcom/superwall/sdk/network/Network;

    move-object/from16 v18, v1

    check-cast v18, Lcom/superwall/sdk/network/SuperwallAPI;

    .line 424
    invoke-direct {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIoScope()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lkotlinx/coroutines/CoroutineScope;

    const/16 v21, 0x8

    const/16 v22, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v12

    .line 421
    invoke-direct/range {v16 .. v22}, Lcom/superwall/sdk/config/Assignments;-><init>(Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/network/SuperwallAPI;Lkotlinx/coroutines/CoroutineScope;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 420
    iput-object v12, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->assignments:Lcom/superwall/sdk/config/Assignments;

    .line 430
    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v19

    .line 432
    iget-object v1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->paywallManager:Lcom/superwall/sdk/paywall/manager/PaywallManager;

    .line 433
    invoke-direct {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIoScope()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v18

    .line 428
    new-instance v16, Lcom/superwall/sdk/config/PaywallPreload;

    .line 429
    move-object/from16 v17, v0

    check-cast v17, Lcom/superwall/sdk/config/PaywallPreload$Factory;

    .line 434
    new-instance v2, Lcom/superwall/sdk/dependencies/DependencyContainer$17;

    invoke-direct {v2, v11}, Lcom/superwall/sdk/dependencies/DependencyContainer$17;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object/from16 v22, v2

    check-cast v22, Lkotlin/jvm/functions/Function2;

    move-object/from16 v21, v1

    move-object/from16 v20, v12

    .line 428
    invoke-direct/range {v16 .. v22}, Lcom/superwall/sdk/config/PaywallPreload;-><init>(Lcom/superwall/sdk/config/PaywallPreload$Factory;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/config/Assignments;Lcom/superwall/sdk/paywall/manager/PaywallManager;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v18, v13

    move-object/from16 v13, v16

    .line 427
    iput-object v13, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->paywallPreload:Lcom/superwall/sdk/config/PaywallPreload;

    .line 440
    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v1

    check-cast v1, Lcom/superwall/sdk/storage/Storage;

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/network/device/DeviceHelper;->getAppInstalledAtString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/superwall/sdk/identity/IdentityManagerActorKt;->createInitialIdentityState(Lcom/superwall/sdk/storage/Storage;Ljava/lang/String;)Lcom/superwall/sdk/identity/IdentityState;

    move-result-object v1

    .line 441
    new-instance v2, Lcom/superwall/sdk/misc/primitives/SequentialActor;

    invoke-direct {v2, v1, v11, v8, v11}, Lcom/superwall/sdk/misc/primitives/SequentialActor;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 444
    sget-object v1, Lcom/superwall/sdk/identity/IdentityPendingInterceptor;->INSTANCE:Lcom/superwall/sdk/identity/IdentityPendingInterceptor;

    check-cast v2, Lcom/superwall/sdk/misc/primitives/StateActor;

    invoke-virtual {v1, v2}, Lcom/superwall/sdk/identity/IdentityPendingInterceptor;->install(Lcom/superwall/sdk/misc/primitives/StateActor;)V

    .line 445
    sget-object v1, Lcom/superwall/sdk/identity/IdentityPersistenceInterceptor;->INSTANCE:Lcom/superwall/sdk/identity/IdentityPersistenceInterceptor;

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v3

    check-cast v3, Lcom/superwall/sdk/storage/Storage;

    invoke-virtual {v1, v2, v3}, Lcom/superwall/sdk/identity/IdentityPersistenceInterceptor;->install(Lcom/superwall/sdk/misc/primitives/StateActor;Lcom/superwall/sdk/storage/Storage;)V

    .line 448
    new-instance v1, Lcom/superwall/sdk/SdkContextImpl;

    .line 447
    new-instance v3, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda37;

    invoke-direct {v3, v0}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda37;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;)V

    .line 448
    invoke-direct {v1, v3}, Lcom/superwall/sdk/SdkContextImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    move-object/from16 v35, v1

    check-cast v35, Lcom/superwall/sdk/SdkContext;

    .line 456
    new-instance v1, Lcom/superwall/sdk/misc/primitives/SequentialActor;

    .line 457
    sget-object v3, Lcom/superwall/sdk/config/models/ConfigState$None;->INSTANCE:Lcom/superwall/sdk/config/models/ConfigState$None;

    .line 458
    invoke-direct {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIoScope()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    .line 456
    invoke-direct {v1, v3, v4}, Lcom/superwall/sdk/misc/primitives/SequentialActor;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CoroutineScope;)V

    .line 465
    iget-object v3, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    .line 466
    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v4

    .line 467
    iget-object v5, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->network:Lcom/superwall/sdk/network/Network;

    move-object v8, v9

    .line 470
    iget-object v9, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->paywallManager:Lcom/superwall/sdk/paywall/manager/PaywallManager;

    .line 471
    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object v7

    .line 473
    invoke-direct {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIoScope()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v14

    move-object v6, v4

    .line 478
    iget-object v4, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->entitlements:Lcom/superwall/sdk/store/Entitlements;

    move-object/from16 v16, v1

    .line 463
    new-instance v1, Lcom/superwall/sdk/config/ConfigManager;

    .line 466
    check-cast v6, Lcom/superwall/sdk/storage/Storage;

    .line 467
    check-cast v5, Lcom/superwall/sdk/network/SuperwallAPI;

    move-object/from16 v33, v10

    .line 462
    new-instance v10, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda1;

    invoke-direct {v10, v0}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda1;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;)V

    .line 469
    move-object/from16 v17, v0

    check-cast v17, Lcom/superwall/sdk/config/ConfigManager$Factory;

    move-object/from16 p2, v1

    .line 462
    new-instance v1, Lcom/superwall/sdk/dependencies/DependencyContainer$19;

    invoke-direct {v1, v11}, Lcom/superwall/sdk/dependencies/DependencyContainer$19;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    new-instance v11, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda2;

    invoke-direct {v11, v0}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda2;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;)V

    move-object/from16 p3, v1

    new-instance v1, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda3;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;)V

    move-object/from16 p5, v1

    new-instance v1, Lcom/superwall/sdk/dependencies/DependencyContainer$22;

    move-object/from16 v34, v2

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/superwall/sdk/dependencies/DependencyContainer$22;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v20, v1

    check-cast v20, Lkotlin/jvm/functions/Function3;

    .line 488
    move-object/from16 v21, v16

    check-cast v21, Lcom/superwall/sdk/misc/primitives/StateActor;

    const/high16 v22, 0x20000

    const/16 v23, 0x0

    const/16 v19, 0x0

    move-object v1, v6

    move-object v6, v5

    move-object v5, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v11

    move-object v11, v1

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    move-object/from16 v16, v15

    move-object/from16 v38, v18

    move-object/from16 v39, v33

    move-object/from16 v15, p3

    move-object/from16 v18, p5

    .line 463
    invoke-direct/range {v1 .. v23}, Lcom/superwall/sdk/config/ConfigManager;-><init>(Landroid/content/Context;Lcom/superwall/sdk/store/StoreManager;Lcom/superwall/sdk/store/Entitlements;Lcom/superwall/sdk/storage/Storage;Lcom/superwall/sdk/network/SuperwallAPI;Lcom/superwall/sdk/network/device/DeviceHelper;Lcom/superwall/sdk/config/options/SuperwallOptions;Lcom/superwall/sdk/paywall/manager/PaywallManager;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/config/ConfigManager$Factory;Lcom/superwall/sdk/config/Assignments;Lcom/superwall/sdk/config/PaywallPreload;Lcom/superwall/sdk/misc/IOScope;Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/store/testmode/TestMode;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lcom/superwall/sdk/misc/primitives/StateActor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v9, v8

    move-object/from16 v15, v16

    .line 462
    invoke-virtual {v0, v1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->setConfigManager(Lcom/superwall/sdk/config/ConfigManager;)V

    .line 493
    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v1

    .line 495
    invoke-direct {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIoScope()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v27

    .line 492
    new-instance v25, Lcom/superwall/sdk/identity/IdentityManager;

    .line 493
    move-object/from16 v26, v1

    check-cast v26, Lcom/superwall/sdk/storage/Storage;

    .line 491
    new-instance v1, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda4;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;)V

    new-instance v2, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda5;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;)V

    new-instance v3, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda7;

    invoke-direct {v3, v9}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda7;-><init>(Lcom/superwall/sdk/config/options/SuperwallOptions;)V

    new-instance v4, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda8;

    invoke-direct {v4, v0}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda8;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;)V

    const/16 v36, 0x30

    const/16 v37, 0x0

    move-object/from16 v28, v1

    move-object/from16 v29, v2

    move-object/from16 v32, v3

    move-object/from16 v33, v4

    .line 492
    invoke-direct/range {v25 .. v37}, Lcom/superwall/sdk/identity/IdentityManager;-><init>(Lcom/superwall/sdk/storage/Storage;Lcom/superwall/sdk/misc/IOScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/misc/primitives/StateActor;Lcom/superwall/sdk/SdkContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v25

    .line 491
    invoke-virtual {v0, v1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->setIdentityManager(Lcom/superwall/sdk/identity/IdentityManager;)V

    .line 511
    new-instance v1, Lcom/superwall/sdk/web/WebPaywallRedeemer;

    .line 513
    invoke-direct {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIoScope()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v3

    .line 514
    new-instance v2, Lcom/superwall/sdk/web/DeepLinkReferrer;

    .line 510
    new-instance v4, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda9;

    invoke-direct {v4, v0}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda9;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;)V

    .line 514
    invoke-direct {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIoScope()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/superwall/sdk/web/DeepLinkReferrer;-><init>(Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/misc/IOScope;)V

    move-object v4, v2

    check-cast v4, Lcom/superwall/sdk/web/CheckForReferral;

    .line 515
    iget-object v5, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->network:Lcom/superwall/sdk/network/Network;

    .line 516
    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/superwall/sdk/storage/Storage;

    .line 517
    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getCustomerInfoManager$superwall_release()Lcom/superwall/sdk/customer/CustomerInfoManager;

    move-result-object v7

    .line 518
    move-object v8, v0

    check-cast v8, Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

    move-object/from16 v2, p1

    .line 511
    invoke-direct/range {v1 .. v8}, Lcom/superwall/sdk/web/WebPaywallRedeemer;-><init>(Landroid/content/Context;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/web/CheckForReferral;Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/storage/Storage;Lcom/superwall/sdk/customer/CustomerInfoManager;Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;)V

    .line 510
    invoke-virtual {v0, v1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->setReedemer(Lcom/superwall/sdk/web/WebPaywallRedeemer;)V

    .line 524
    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getConfigManager()Lcom/superwall/sdk/config/ConfigManager;

    move-result-object v6

    .line 525
    iget-object v3, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->network:Lcom/superwall/sdk/network/Network;

    .line 526
    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->ioScope()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v4

    .line 527
    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->mainScope()Lcom/superwall/sdk/misc/MainScope;

    move-result-object v5

    .line 522
    new-instance v1, Lcom/superwall/sdk/storage/EventsQueue;

    invoke-direct/range {v1 .. v6}, Lcom/superwall/sdk/storage/EventsQueue;-><init>(Landroid/content/Context;Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/misc/MainScope;Lcom/superwall/sdk/config/ConfigManager;)V

    .line 521
    iput-object v1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->eventsQueue:Lcom/superwall/sdk/storage/EventsQueue;

    .line 532
    iget-object v1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->network:Lcom/superwall/sdk/network/Network;

    .line 533
    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v3

    .line 534
    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getConfigManager()Lcom/superwall/sdk/config/ConfigManager;

    move-result-object v4

    .line 531
    new-instance v5, Lcom/superwall/sdk/analytics/SessionEventsManager;

    invoke-direct {v5, v3, v1, v4}, Lcom/superwall/sdk/analytics/SessionEventsManager;-><init>(Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/config/ConfigManager;)V

    .line 530
    iput-object v5, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->sessionEventsManager:Lcom/superwall/sdk/analytics/SessionEventsManager;

    .line 540
    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v1

    .line 541
    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getConfigManager()Lcom/superwall/sdk/config/ConfigManager;

    move-result-object v3

    .line 543
    invoke-direct {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIoScope()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v4

    .line 539
    new-instance v5, Lcom/superwall/sdk/analytics/session/AppSessionManager;

    .line 542
    move-object v6, v0

    check-cast v6, Lcom/superwall/sdk/analytics/session/AppSessionManager$Factory;

    .line 539
    invoke-direct {v5, v3, v1, v6, v4}, Lcom/superwall/sdk/analytics/session/AppSessionManager;-><init>(Lcom/superwall/sdk/config/ConfigManager;Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/analytics/session/AppSessionManager$Factory;Lcom/superwall/sdk/misc/IOScope;)V

    .line 538
    iput-object v5, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->appSessionManager:Lcom/superwall/sdk/analytics/session/AppSessionManager;

    .line 547
    new-instance v1, Lcom/superwall/sdk/debug/DebugManager;

    .line 549
    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v3

    .line 550
    move-object v4, v0

    check-cast v4, Lcom/superwall/sdk/dependencies/ViewFactory;

    .line 547
    invoke-direct {v1, v2, v3, v4}, Lcom/superwall/sdk/debug/DebugManager;-><init>(Landroid/content/Context;Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/dependencies/ViewFactory;)V

    .line 546
    iput-object v1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->debugManager:Lcom/superwall/sdk/debug/DebugManager;

    .line 553
    invoke-direct {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getUiScope()Lcom/superwall/sdk/misc/MainScope;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/superwall/sdk/dependencies/DependencyContainer$28;

    const/4 v10, 0x0

    invoke-direct {v1, v0, v10}, Lcom/superwall/sdk/dependencies/DependencyContainer$28;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;Lkotlin/coroutines/Continuation;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 559
    iget-object v14, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    .line 561
    iget-object v1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->eventsQueue:Lcom/superwall/sdk/storage/EventsQueue;

    .line 562
    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v3

    .line 585
    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->ioScope()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v20

    .line 558
    new-instance v13, Lcom/superwall/sdk/store/transactions/TransactionManager;

    .line 560
    move-object/from16 v12, v24

    check-cast v12, Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;

    .line 562
    move-object/from16 v17, v3

    check-cast v17, Lcom/superwall/sdk/storage/Storage;

    .line 564
    move-object/from16 v19, v0

    check-cast v19, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    .line 570
    new-instance v3, Lcom/superwall/sdk/dependencies/DependencyContainer$29;

    invoke-direct {v3, v10}, Lcom/superwall/sdk/dependencies/DependencyContainer$29;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object/from16 v21, v3

    check-cast v21, Lkotlin/jvm/functions/Function2;

    .line 573
    new-instance v3, Lcom/superwall/sdk/dependencies/DependencyContainer$30;

    invoke-direct {v3, v0, v10}, Lcom/superwall/sdk/dependencies/DependencyContainer$30;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v22, v3

    check-cast v22, Lkotlin/jvm/functions/Function3;

    new-instance v23, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda10;

    invoke-direct/range {v23 .. v23}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda10;-><init>()V

    .line 589
    new-instance v3, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda12;

    invoke-direct {v3, v0}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda12;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;)V

    .line 592
    new-instance v4, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda13;

    invoke-direct {v4, v0}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda13;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;)V

    .line 586
    new-instance v5, Lcom/superwall/sdk/dependencies/DependencyContainer$34;

    invoke-direct {v5, v0, v10}, Lcom/superwall/sdk/dependencies/DependencyContainer$34;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v27, v5

    check-cast v27, Lkotlin/jvm/functions/Function1;

    .line 595
    new-instance v5, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda14;

    invoke-direct {v5, v0}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda14;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;)V

    .line 608
    new-instance v6, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda15;

    invoke-direct {v6, v0}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda15;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;)V

    .line 632
    new-instance v7, Lcom/superwall/sdk/dependencies/DependencyContainer$37;

    move-object/from16 v8, v38

    invoke-direct {v7, v0, v8, v10}, Lcom/superwall/sdk/dependencies/DependencyContainer$37;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;Lcom/superwall/sdk/misc/ActivityProvider;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v30, v7

    check-cast v30, Lkotlin/jvm/functions/Function4;

    .line 620
    new-instance v7, Lcom/superwall/sdk/dependencies/DependencyContainer$38;

    invoke-direct {v7, v0, v10}, Lcom/superwall/sdk/dependencies/DependencyContainer$38;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v31, v7

    check-cast v31, Lkotlin/jvm/functions/Function2;

    .line 567
    new-instance v7, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda16;

    invoke-direct {v7, v0}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda16;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;)V

    const/16 v35, 0x400

    const/16 v36, 0x0

    const/16 v24, 0x0

    move-object/from16 v16, v1

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v34, v7

    move-object/from16 v18, v8

    move-object/from16 v32, v15

    move-object/from16 v33, v39

    move-object v15, v12

    .line 558
    invoke-direct/range {v13 .. v36}, Lcom/superwall/sdk/store/transactions/TransactionManager;-><init>(Lcom/superwall/sdk/store/StoreManager;Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;Lcom/superwall/sdk/storage/EventsQueue;Lcom/superwall/sdk/storage/Storage;Lcom/superwall/sdk/misc/ActivityProvider;Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;Lcom/superwall/sdk/misc/IOScope;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/store/testmode/TestMode;Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 557
    iput-object v13, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->transactionManager:Lcom/superwall/sdk/store/transactions/TransactionManager;

    .line 696
    invoke-virtual {v9}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getUseMockReviews()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 697
    new-instance v1, Lcom/superwall/sdk/review/MockReviewManager;

    invoke-direct {v1, v2}, Lcom/superwall/sdk/review/MockReviewManager;-><init>(Landroid/content/Context;)V

    check-cast v1, Lcom/superwall/sdk/review/ReviewManager;

    goto :goto_2

    .line 699
    :cond_3
    new-instance v1, Lcom/superwall/sdk/review/ReviewManagerImpl;

    new-instance v3, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda17;

    invoke-direct {v3, v0}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda17;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;)V

    invoke-direct {v1, v2, v3}, Lcom/superwall/sdk/review/ReviewManagerImpl;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lcom/superwall/sdk/review/ReviewManager;

    .line 695
    :goto_2
    iput-object v1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->reviewManager:Lcom/superwall/sdk/review/ReviewManager;

    .line 704
    new-instance v1, Lcom/superwall/sdk/permissions/UserPermissionsImpl;

    invoke-direct {v1, v2}, Lcom/superwall/sdk/permissions/UserPermissionsImpl;-><init>(Landroid/content/Context;)V

    check-cast v1, Lcom/superwall/sdk/permissions/UserPermissions;

    iput-object v1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->userPermissions:Lcom/superwall/sdk/permissions/UserPermissions;

    .line 705
    new-instance v1, Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;

    invoke-direct {v1}, Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;-><init>()V

    iput-object v1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->customCallbackRegistry:Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;

    .line 708
    new-instance v1, Lcom/superwall/sdk/deeplinks/DeepLinkRouter;

    .line 709
    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getReedemer()Lcom/superwall/sdk/web/WebPaywallRedeemer;

    move-result-object v2

    .line 710
    invoke-direct {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIoScope()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v3

    .line 711
    iget-object v4, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->debugManager:Lcom/superwall/sdk/debug/DebugManager;

    .line 712
    new-instance v5, Lcom/superwall/sdk/dependencies/DependencyContainer$41;

    invoke-direct {v5, v0, v10}, Lcom/superwall/sdk/dependencies/DependencyContainer$41;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 708
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/superwall/sdk/deeplinks/DeepLinkRouter;-><init>(Lcom/superwall/sdk/web/WebPaywallRedeemer;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/debug/DebugManager;Lkotlin/jvm/functions/Function2;)V

    .line 707
    iput-object v1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->deepLinkRouter:Lcom/superwall/sdk/deeplinks/DeepLinkRouter;

    .line 718
    new-instance v11, Lcom/superwall/sdk/analytics/AttributionManager;

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/superwall/sdk/storage/Storage;

    new-instance v1, Lcom/superwall/sdk/dependencies/DependencyContainer$42;

    invoke-direct {v1, v0, v10}, Lcom/superwall/sdk/dependencies/DependencyContainer$42;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;Lkotlin/coroutines/Continuation;)V

    move-object v13, v1

    check-cast v13, Lkotlin/jvm/functions/Function2;

    .line 720
    invoke-direct {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIoScope()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v14

    new-instance v15, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda19;

    invoke-direct {v15, v0}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda19;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;)V

    .line 724
    new-instance v1, Lcom/superwall/sdk/dependencies/DependencyContainer$44;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/dependencies/DependencyContainer$44;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;)V

    move-object/from16 v16, v1

    check-cast v16, Lkotlin/jvm/functions/Function0;

    .line 718
    invoke-direct/range {v11 .. v16}, Lcom/superwall/sdk/analytics/AttributionManager;-><init>(Lcom/superwall/sdk/storage/Storage;Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/misc/IOScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 717
    iput-object v11, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->attributionManager:Lcom/superwall/sdk/analytics/AttributionManager;

    .line 731
    invoke-direct {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIoScope()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/superwall/sdk/dependencies/DependencyContainer$45;

    invoke-direct {v1, v0, v10}, Lcom/superwall/sdk/dependencies/DependencyContainer$45;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 793
    new-instance v1, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda20;

    invoke-direct {v1}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda20;-><init>()V

    const/4 v2, 0x1

    invoke-static {v10, v1, v2, v10}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object v1

    iput-object v1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->paywallJson:Lkotlinx/serialization/json/Json;

    .line 1084
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStoreOwner()Lcom/superwall/sdk/paywall/view/SuperwallStoreOwner;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-direct {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getVmFactory()Lcom/superwall/sdk/paywall/view/ViewModelFactory;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {v1, v2, v3}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    iput-object v1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer;->vmProvider:Landroidx/lifecycle/ViewModelProvider;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;Lcom/superwall/sdk/config/options/SuperwallOptions;Lcom/superwall/sdk/misc/ActivityProvider;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 149
    invoke-direct/range {v0 .. v5}, Lcom/superwall/sdk/dependencies/DependencyContainer;-><init>(Landroid/content/Context;Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;Lcom/superwall/sdk/config/options/SuperwallOptions;Lcom/superwall/sdk/misc/ActivityProvider;Ljava/lang/String;)V

    return-void
.end method

.method private static final _init_$lambda$10(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;
    .locals 0

    .line 310
    iget-object p0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->entitlements:Lcom/superwall/sdk/store/Entitlements;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/Entitlements;->getStatus()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    return-object p0
.end method

.method private static final _init_$lambda$12(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;
    .locals 10

    .line 326
    new-instance v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;

    .line 327
    iget-object v1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    check-cast v1, Lcom/superwall/sdk/store/coordinator/ProductsFetcher;

    .line 328
    iget-object v2, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->googleBillingWrapper:Lcom/superwall/sdk/billing/GoogleBillingWrapper;

    check-cast v2, Lcom/superwall/sdk/billing/Billing;

    .line 329
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/superwall/sdk/storage/Storage;

    .line 330
    new-instance v5, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda29;

    invoke-direct {v5, p0}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda29;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;)V

    const/16 v8, 0x64

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 326
    invoke-direct/range {v0 .. v9}, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;-><init>(Lcom/superwall/sdk/store/coordinator/ProductsFetcher;Lcom/superwall/sdk/billing/Billing;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/storage/Storage;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor;Lcom/superwall/sdk/store/abstractions/product/receipt/SubscriptionStatusProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private static final _init_$lambda$13(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$Json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 364
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setIgnoreUnknownKeys(Z)V

    const/4 v0, 0x0

    .line 365
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setNamingStrategy(Lkotlinx/serialization/json/JsonNamingStrategy;)V

    .line 366
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final _init_$lambda$14(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$Json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 371
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setIgnoreUnknownKeys(Z)V

    const/4 v0, 0x0

    .line 372
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setNamingStrategy(Lkotlinx/serialization/json/JsonNamingStrategy;)V

    .line 373
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final _init_$lambda$15(Lcom/superwall/sdk/dependencies/DependencyContainer;)Landroid/content/Context;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->context:Landroid/content/Context;

    return-object p0
.end method

.method private static final _init_$lambda$16(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lcom/superwall/sdk/config/ConfigManager;
    .locals 0

    .line 449
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getConfigManager()Lcom/superwall/sdk/config/ConfigManager;

    move-result-object p0

    return-object p0
.end method

.method private static final _init_$lambda$17(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lcom/superwall/sdk/web/WebPaywallRedeemer;
    .locals 0

    .line 479
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getReedemer()Lcom/superwall/sdk/web/WebPaywallRedeemer;

    move-result-object p0

    return-object p0
.end method

.method private static final _init_$lambda$18(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lcom/superwall/sdk/identity/IdentityManager;
    .locals 0

    .line 481
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIdentityManager()Lcom/superwall/sdk/identity/IdentityManager;

    move-result-object p0

    return-object p0
.end method

.method private static final _init_$lambda$19(Lcom/superwall/sdk/dependencies/DependencyContainer;Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)Lkotlin/Unit;
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    iget-object p0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->entitlements:Lcom/superwall/sdk/store/Entitlements;

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/store/Entitlements;->setSubscriptionStatus(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V

    .line 484
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final _init_$lambda$21(Lcom/superwall/sdk/dependencies/DependencyContainer;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string p1, "getBytes(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    const-string p1, "SHA-256"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 499
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 500
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1303
    array-length p1, p0

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-byte v2, p0, v1

    .line 500
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%02x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final _init_$lambda$22(Lcom/superwall/sdk/dependencies/DependencyContainer;Ljava/util/Map;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 503
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->delegate()Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->userAttributesDidChange(Ljava/util/Map;)V

    .line 504
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final _init_$lambda$23(Lcom/superwall/sdk/config/options/SuperwallOptions;)Lcom/superwall/sdk/config/options/SuperwallOptions;
    .locals 0

    return-object p0
.end method

.method private static final _init_$lambda$24(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lcom/superwall/sdk/web/WebPaywallRedeemer;
    .locals 0

    .line 505
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getReedemer()Lcom/superwall/sdk/web/WebPaywallRedeemer;

    move-result-object p0

    return-object p0
.end method

.method private static final _init_$lambda$25(Lcom/superwall/sdk/dependencies/DependencyContainer;)Landroid/content/Context;
    .locals 0

    .line 514
    iget-object p0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->context:Landroid/content/Context;

    return-object p0
.end method

.method private static final _init_$lambda$26(Lcom/superwall/sdk/misc/AlertControllerFactory$AlertProps;)Lkotlin/Unit;
    .locals 8

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 599
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall;->getPaywallView()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 600
    invoke-virtual {p0}, Lcom/superwall/sdk/misc/AlertControllerFactory$AlertProps;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 601
    invoke-virtual {p0}, Lcom/superwall/sdk/misc/AlertControllerFactory$AlertProps;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 602
    invoke-virtual {p0}, Lcom/superwall/sdk/misc/AlertControllerFactory$AlertProps;->getActionTitle()Ljava/lang/String;

    move-result-object v4

    .line 603
    invoke-virtual {p0}, Lcom/superwall/sdk/misc/AlertControllerFactory$AlertProps;->getCloseActionTitle()Ljava/lang/String;

    move-result-object v5

    .line 604
    invoke-virtual {p0}, Lcom/superwall/sdk/misc/AlertControllerFactory$AlertProps;->getAction()Lkotlin/jvm/functions/Function0;

    move-result-object v6

    .line 605
    invoke-virtual {p0}, Lcom/superwall/sdk/misc/AlertControllerFactory$AlertProps;->getOnClose()Lkotlin/jvm/functions/Function0;

    move-result-object v7

    .line 599
    invoke-virtual/range {v1 .. v7}, Lcom/superwall/sdk/paywall/view/PaywallView;->showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 607
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final _init_$lambda$27(Lcom/superwall/sdk/dependencies/DependencyContainer;Ljava/lang/String;)Ljava/util/Set;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 590
    iget-object p0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->entitlements:Lcom/superwall/sdk/store/Entitlements;

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/store/Entitlements;->byProductId$superwall_release(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private static final _init_$lambda$28(Lcom/superwall/sdk/dependencies/DependencyContainer;)Ljava/util/Map;
    .locals 0

    .line 593
    iget-object p0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->entitlements:Lcom/superwall/sdk/store/Entitlements;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/Entitlements;->getEntitlementsByProductId()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static final _init_$lambda$29(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lkotlin/Unit;
    .locals 0

    .line 596
    iget-object p0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/StoreManager;->refreshReceipt()V

    .line 597
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final _init_$lambda$3(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lcom/superwall/sdk/misc/ActivityProvider;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->activityProvider:Lcom/superwall/sdk/misc/ActivityProvider;

    return-object p0
.end method

.method private static final _init_$lambda$30(Lcom/superwall/sdk/dependencies/DependencyContainer;Ljava/lang/String;Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)Lkotlin/Unit;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->makeViewStore()Lcom/superwall/sdk/paywall/view/ViewStorageViewModel;

    move-result-object p0

    check-cast p0, Lcom/superwall/sdk/paywall/view/ViewStorage;

    .line 612
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall;->getPaywallView()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object v0

    .line 610
    invoke-static {p0, v0, p1}, Lcom/superwall/sdk/dependencies/ViewResolutionKt;->resolvePaywallViewForKey(Lcom/superwall/sdk/paywall/view/ViewStorage;Lcom/superwall/sdk/paywall/view/PaywallView;Ljava/lang/String;)Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object p0

    if-nez p0, :cond_0

    .line 616
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 618
    :cond_0
    invoke-virtual {p0, p2}, Lcom/superwall/sdk/paywall/view/PaywallView;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    .line 619
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final _init_$lambda$31(Lcom/superwall/sdk/dependencies/DependencyContainer;Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)Lkotlin/Unit;
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 568
    iget-object p0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->entitlements:Lcom/superwall/sdk/store/Entitlements;

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/store/Entitlements;->setSubscriptionStatus(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V

    .line 569
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final _init_$lambda$32(Lcom/superwall/sdk/dependencies/DependencyContainer;)Z
    .locals 0

    .line 700
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->makeIsSandbox()Z

    move-result p0

    return p0
.end method

.method private static final _init_$lambda$33(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lkotlin/Unit;
    .locals 7

    .line 721
    invoke-direct {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIoScope()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/dependencies/DependencyContainer$43$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/superwall/sdk/dependencies/DependencyContainer$43$1;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 724
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final _init_$lambda$4(Lcom/superwall/sdk/misc/CurrentActivityTracker;)Lcom/superwall/sdk/misc/CurrentActivityTracker;
    .locals 0

    return-object p0
.end method

.method private static final _init_$lambda$5(Lcom/superwall/sdk/dependencies/DependencyContainer;)Z
    .locals 0

    .line 287
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->makeHasExternalPurchaseController()Z

    move-result p0

    return p0
.end method

.method private static final _init_$lambda$6(Lcom/superwall/sdk/dependencies/DependencyContainer;)Ljava/lang/String;
    .locals 0

    .line 288
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/superwall/sdk/storage/LocalStorage;->getApiKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final _init_$lambda$7(Lcom/superwall/sdk/config/options/SuperwallOptions;)Ljava/lang/String;
    .locals 0

    .line 290
    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getNetworkEnvironment()Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;

    move-result-object p0

    .line 291
    instance-of p0, p0, Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment$Developer;

    if-eqz p0, :cond_0

    const-string p0, "https://superwall.dev"

    return-object p0

    .line 292
    :cond_0
    const-string p0, "https://superwall.com"

    return-object p0
.end method

.method private static final _init_$lambda$8(Lcom/superwall/sdk/models/customer/CustomerInfo;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall;->get_customerInfo$superwall_release()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final _init_$lambda$9(Lcom/superwall/sdk/dependencies/DependencyContainer;)Z
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/StoreManager;->getPurchaseController()Lcom/superwall/sdk/store/InternalPurchaseController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/superwall/sdk/store/InternalPurchaseController;->getHasExternalPurchaseController()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getIoScope(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lcom/superwall/sdk/misc/IOScope;
    .locals 0

    .line 149
    invoke-direct {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIoScope()Lcom/superwall/sdk/misc/IOScope;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$showWebRestoreSuccesful(Lcom/superwall/sdk/dependencies/DependencyContainer;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->showWebRestoreSuccesful()V

    return-void
.end method

.method private static final evaluator_delegate$lambda$2(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/CombinedExpressionEvaluator;
    .locals 12

    .line 224
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/CombinedExpressionEvaluator;

    .line 225
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v1

    .line 229
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->json()Lkotlinx/serialization/json/Json;

    move-result-object v2

    new-instance v3, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda30;

    invoke-direct {v3}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda30;-><init>()V

    invoke-static {v2, v3}, Lkotlinx/serialization/json/JsonKt;->Json(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/json/Json;

    move-result-object v5

    .line 233
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/storage/LocalStorage;->getCoreDataManager()Lcom/superwall/sdk/storage/core_data/CoreDataManager;

    move-result-object v7

    .line 235
    invoke-direct {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIoScope()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v6

    .line 227
    new-instance v4, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;

    .line 234
    move-object v8, p0

    check-cast v8, Lcom/superwall/sdk/dependencies/RuleAttributesFactory;

    const/16 v10, 0x10

    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 227
    invoke-direct/range {v4 .. v11}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;-><init>(Lkotlinx/serialization/json/Json;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/storage/core_data/CoreDataManager;Lcom/superwall/sdk/dependencies/RuleAttributesFactory;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 224
    invoke-direct {v0, v1, v4}, Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/CombinedExpressionEvaluator;-><init>(Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;)V

    return-object v0
.end method

.method private static final evaluator_delegate$lambda$2$lambda$1(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$Json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    sget-object v0, Lkotlinx/serialization/json/ClassDiscriminatorMode;->POLYMORPHIC:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setClassDiscriminatorMode(Lkotlinx/serialization/json/ClassDiscriminatorMode;)V

    .line 231
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setClassDiscriminator(Ljava/lang/String;)V

    .line 232
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final getEvaluator()Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/CombinedExpressionEvaluator;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->evaluator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/CombinedExpressionEvaluator;

    return-object v0
.end method

.method private final getIoScope()Lcom/superwall/sdk/misc/IOScope;
    .locals 1

    .line 222
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->ioScope()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v0

    return-object v0
.end method

.method private static final getPaywallComponentsFactory_delegate$lambda$0()Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory;
    .locals 2

    .line 190
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory;

    sget-object v1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory;-><init>(Lcom/superwall/sdk/Superwall;)V

    return-object v0
.end method

.method private final getStoreOwner()Lcom/superwall/sdk/paywall/view/SuperwallStoreOwner;
    .locals 1

    .line 1081
    new-instance v0, Lcom/superwall/sdk/paywall/view/SuperwallStoreOwner;

    invoke-direct {v0}, Lcom/superwall/sdk/paywall/view/SuperwallStoreOwner;-><init>()V

    return-object v0
.end method

.method private final getUiScope()Lcom/superwall/sdk/misc/MainScope;
    .locals 1

    .line 220
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->mainScope()Lcom/superwall/sdk/misc/MainScope;

    move-result-object v0

    return-object v0
.end method

.method private final getVmFactory()Lcom/superwall/sdk/paywall/view/ViewModelFactory;
    .locals 1

    .line 1083
    new-instance v0, Lcom/superwall/sdk/paywall/view/ViewModelFactory;

    invoke-direct {v0}, Lcom/superwall/sdk/paywall/view/ViewModelFactory;-><init>()V

    return-object v0
.end method

.method static final lambda$12$lambda$11(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lcom/superwall/sdk/customer/CustomerInfoManager;
    .locals 0

    .line 330
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getCustomerInfoManager$superwall_release()Lcom/superwall/sdk/customer/CustomerInfoManager;

    move-result-object p0

    return-object p0
.end method

.method private static final makePaywallView$lambda$36(Lcom/superwall/sdk/dependencies/DependencyContainer;Ljava/util/Map;)Lkotlin/Unit;
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 815
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIdentityManager()Lcom/superwall/sdk/identity/IdentityManager;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/superwall/sdk/identity/IdentityManager;->mergeAndNotify$superwall_release$default(Lcom/superwall/sdk/identity/IdentityManager;Ljava/util/Map;ZILjava/lang/Object;)V

    .line 816
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final makePaywallView$lambda$37()Lcom/superwall/sdk/paywall/view/PaywallView;
    .locals 1

    .line 810
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall;->getPaywallView()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object v0

    return-object v0
.end method

.method private static final makePaywallView$lambda$38(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 821
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "UTF_8"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v0, "getBytes(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    const-string v0, "encodeToString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final makePaywallView$lambda$39(Lcom/superwall/sdk/dependencies/DependencyContainer;)Landroid/app/Activity;
    .locals 0

    .line 824
    iget-object p0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->activityProvider:Lcom/superwall/sdk/misc/ActivityProvider;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/superwall/sdk/misc/ActivityProvider;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final paywallJson$lambda$35(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 3

    const-string v0, "$this$Json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 794
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setEncodeDefaults(Z)V

    .line 1305
    new-instance v0, Lkotlinx/serialization/modules/SerializersModuleBuilder;

    invoke-direct {v0}, Lkotlinx/serialization/modules/SerializersModuleBuilder;-><init>()V

    .line 797
    const-class v1, Ljava/util/Date;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    sget-object v2, Lcom/superwall/sdk/models/serialization/DateSerializer;->INSTANCE:Lcom/superwall/sdk/models/serialization/DateSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/modules/SerializersModuleBuilder;->contextual(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;)V

    .line 1307
    invoke-virtual {v0}, Lkotlinx/serialization/modules/SerializersModuleBuilder;->build()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v0

    .line 795
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setSerializersModule(Lkotlinx/serialization/modules/SerializersModule;)V

    .line 799
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final showWebRestoreSuccesful()V
    .locals 9

    .line 1107
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall;->getPaywallView()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1110
    invoke-direct {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIoScope()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/superwall/sdk/dependencies/DependencyContainer$showWebRestoreSuccesful$1;

    const/4 v8, 0x0

    invoke-direct {v1, v0, v8}, Lcom/superwall/sdk/dependencies/DependencyContainer$showWebRestoreSuccesful$1;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1119
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->makeSuperwallOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getPaywalls()Lcom/superwall/sdk/config/options/PaywallOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/options/PaywallOptions;->getAutomaticallyDismiss()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1120
    invoke-direct {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIoScope()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/dependencies/DependencyContainer$showWebRestoreSuccesful$2;

    invoke-direct {v0, v8}, Lcom/superwall/sdk/dependencies/DependencyContainer$showWebRestoreSuccesful$2;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method private final trackRestorationFailure(Ljava/lang/String;)V
    .locals 10

    .line 1128
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall;->getPaywallView()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object v1

    .line 1129
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->makeSuperwallOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v0

    if-eqz v1, :cond_0

    .line 1133
    new-instance v2, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore;

    .line 1134
    new-instance v3, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore$State$Failure;

    invoke-direct {v3, p1}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore$State$Failure;-><init>(Ljava/lang/String;)V

    check-cast v3, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore$State;

    .line 1135
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v4

    .line 1133
    invoke-direct {v2, v3, v4}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore;-><init>(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore$State;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    .line 1137
    invoke-direct {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIoScope()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/superwall/sdk/dependencies/DependencyContainer$trackRestorationFailure$1;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5}, Lcom/superwall/sdk/dependencies/DependencyContainer$trackRestorationFailure$1;-><init>(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore;Lkotlin/coroutines/Continuation;)V

    move-object v7, v3

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1140
    new-instance v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RestoreFailed;

    invoke-direct {v2, p1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RestoreFailed;-><init>(Ljava/lang/String;)V

    check-cast v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;

    invoke-virtual {v1, v2}, Lcom/superwall/sdk/paywall/view/PaywallView;->handle(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;)V

    .line 1142
    invoke-virtual {v0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getPaywalls()Lcom/superwall/sdk/config/options/PaywallOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/config/options/PaywallOptions;->getRestoreFailed()Lcom/superwall/sdk/config/options/PaywallOptions$RestoreFailed;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/config/options/PaywallOptions$RestoreFailed;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 1143
    invoke-virtual {v0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getPaywalls()Lcom/superwall/sdk/config/options/PaywallOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/config/options/PaywallOptions;->getRestoreFailed()Lcom/superwall/sdk/config/options/PaywallOptions$RestoreFailed;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/config/options/PaywallOptions$RestoreFailed;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1144
    invoke-virtual {v0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getPaywalls()Lcom/superwall/sdk/config/options/PaywallOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/config/options/PaywallOptions;->getRestoreFailed()Lcom/superwall/sdk/config/options/PaywallOptions$RestoreFailed;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/config/options/PaywallOptions$RestoreFailed;->getCloseButtonTitle()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x34

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 1141
    invoke-static/range {v1 .. v9}, Lcom/superwall/sdk/paywall/view/PaywallView;->showAlert$default(Lcom/superwall/sdk/paywall/view/PaywallView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public activeEntitlements()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            ">;"
        }
    .end annotation

    .line 1169
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->entitlements:Lcom/superwall/sdk/store/Entitlements;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/Entitlements;->getActive()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public activePaywallId()Ljava/lang/String;
    .locals 1

    .line 891
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->paywallManager:Lcom/superwall/sdk/paywall/manager/PaywallManager;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/manager/PaywallManager;->getCurrentView()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 892
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 893
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPaywall()Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 894
    invoke-virtual {v0}, Lcom/superwall/sdk/models/paywall/Paywall;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public activeProductIds(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1059
    iget-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    invoke-virtual {p1}, Lcom/superwall/sdk/store/StoreManager;->getReceiptManager()Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->getPurchases()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public advertisedMemory()J
    .locals 2

    .line 149
    invoke-static {p0}, Lcom/superwall/sdk/analytics/ClassifierDataFactory$DefaultImpls;->advertisedMemory(Lcom/superwall/sdk/analytics/ClassifierDataFactory;)J

    move-result-wide v0

    return-wide v0
.end method

.method public closePaywallIfExists()V
    .locals 7

    .line 1275
    invoke-direct {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIoScope()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/dependencies/DependencyContainer$closePaywallIfExists$1;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/superwall/sdk/dependencies/DependencyContainer$closePaywallIfExists$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public codecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 149
    invoke-static {p0}, Lcom/superwall/sdk/analytics/ClassifierDataFactory$DefaultImpls;->codecs(Lcom/superwall/sdk/analytics/ClassifierDataFactory;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public context()Landroid/content/Context;
    .locals 1

    .line 1149
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->context:Landroid/content/Context;

    return-object v0
.end method

.method public currentCustomerInfo()Lcom/superwall/sdk/models/customer/CustomerInfo;
    .locals 1

    .line 896
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall;->getCustomerInfo()Lcom/superwall/sdk/models/customer/CustomerInfo;

    move-result-object v0

    return-object v0
.end method

.method public currentPaywallEntitlements()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            ">;"
        }
    .end annotation

    .line 1237
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall;->getPaywallView()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1238
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1239
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPaywall()Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1240
    invoke-virtual {v0}, Lcom/superwall/sdk/models/paywall/Paywall;->getProductIds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1237
    check-cast v0, Ljava/lang/Iterable;

    .line 1286
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 1287
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1288
    check-cast v2, Ljava/lang/String;

    .line 1241
    iget-object v3, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->entitlements:Lcom/superwall/sdk/store/Entitlements;

    invoke-virtual {v3, v2}, Lcom/superwall/sdk/store/Entitlements;->byProductId$superwall_release(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 1289
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 1291
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 1237
    check-cast v1, Ljava/lang/Iterable;

    .line 1242
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public customerInfoFlow()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/superwall/sdk/models/customer/CustomerInfo;",
            ">;"
        }
    .end annotation

    .line 1166
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall;->getCustomerInfo()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    return-object v0
.end method

.method public delegate()Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;
    .locals 1

    .line 1163
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->delegateAdapter:Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;

    return-object v0
.end method

.method public demandScore()Ljava/lang/Integer;
    .locals 1

    .line 1158
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/network/device/DeviceHelper;->getDemandScore$superwall_release()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public demandTier()Ljava/lang/String;
    .locals 1

    .line 1156
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/network/device/DeviceHelper;->getDemandTier$superwall_release()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public didRedeemLink(Lcom/superwall/sdk/models/internal/RedemptionResult;)V
    .locals 1

    const-string v0, "redemptionResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1198
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->delegateAdapter:Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->didRedeemLink(Lcom/superwall/sdk/models/internal/RedemptionResult;)V

    return-void
.end method

.method public didUpdateAppSession(Lcom/superwall/sdk/analytics/session/AppSession;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/analytics/session/AppSession;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 936
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public experimentalProperties()Ljava/util/Map;
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

    .line 1152
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/StoreManager;->getReceiptManager()Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->experimentalProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getActiveDeviceEntitlements()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            ">;"
        }
    .end annotation

    .line 1205
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->entitlements:Lcom/superwall/sdk/store/Entitlements;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/Entitlements;->getActiveDeviceEntitlements$superwall_release()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getActivityProvider()Lcom/superwall/sdk/misc/ActivityProvider;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->activityProvider:Lcom/superwall/sdk/misc/ActivityProvider;

    return-object v0
.end method

.method public getAliasId()Ljava/lang/String;
    .locals 1

    .line 1220
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIdentityManager()Lcom/superwall/sdk/identity/IdentityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/identity/IdentityManager;->getAliasId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApi()Lcom/superwall/sdk/network/Api;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->api:Lcom/superwall/sdk/network/Api;

    return-object v0
.end method

.method public final getApiKey()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLifecycleObserver()Lcom/superwall/sdk/misc/AppLifecycleObserver;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->appLifecycleObserver:Lcom/superwall/sdk/misc/AppLifecycleObserver;

    return-object v0
.end method

.method public final getAppSessionManager()Lcom/superwall/sdk/analytics/session/AppSessionManager;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->appSessionManager:Lcom/superwall/sdk/analytics/session/AppSessionManager;

    return-object v0
.end method

.method public final getAssignments$superwall_release()Lcom/superwall/sdk/config/Assignments;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->assignments:Lcom/superwall/sdk/config/Assignments;

    return-object v0
.end method

.method public final getAttributionManager$superwall_release()Lcom/superwall/sdk/analytics/AttributionManager;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->attributionManager:Lcom/superwall/sdk/analytics/AttributionManager;

    return-object v0
.end method

.method public getConfigManager()Lcom/superwall/sdk/config/ConfigManager;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->configManager:Lcom/superwall/sdk/config/ConfigManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "configManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCpuInfo()Lcom/superwall/sdk/analytics/CPUInfo$Data;
    .locals 1

    .line 149
    invoke-static {p0}, Lcom/superwall/sdk/analytics/ClassifierDataFactory$DefaultImpls;->getCpuInfo(Lcom/superwall/sdk/analytics/ClassifierDataFactory;)Lcom/superwall/sdk/analytics/CPUInfo$Data;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUserAttributes()Ljava/util/Map;
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

    .line 1154
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIdentityManager()Lcom/superwall/sdk/identity/IdentityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/identity/IdentityManager;->getUserAttributes()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomCallbackRegistry$superwall_release()Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->customCallbackRegistry:Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;

    return-object v0
.end method

.method public final getCustomerInfoManager$superwall_release()Lcom/superwall/sdk/customer/CustomerInfoManager;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->customerInfoManager:Lcom/superwall/sdk/customer/CustomerInfoManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "customerInfoManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDebugManager()Lcom/superwall/sdk/debug/DebugManager;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->debugManager:Lcom/superwall/sdk/debug/DebugManager;

    return-object v0
.end method

.method public final getDeepLinkRouter$superwall_release()Lcom/superwall/sdk/deeplinks/DeepLinkRouter;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->deepLinkRouter:Lcom/superwall/sdk/deeplinks/DeepLinkRouter;

    return-object v0
.end method

.method public final getDelegateAdapter()Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->delegateAdapter:Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;

    return-object v0
.end method

.method public getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->deviceHelper:Lcom/superwall/sdk/network/device/DeviceHelper;

    return-object v0
.end method

.method public getDeviceId()Lcom/superwall/sdk/models/internal/DeviceVendorId;
    .locals 3

    .line 1215
    new-instance v0, Lcom/superwall/sdk/models/internal/DeviceVendorId;

    .line 1217
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/network/device/DeviceHelper;->getVendorId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/superwall/sdk/models/internal/VendorId;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1215
    invoke-direct {v0, v1, v2}, Lcom/superwall/sdk/models/internal/DeviceVendorId;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getEntitlements()Lcom/superwall/sdk/store/Entitlements;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->entitlements:Lcom/superwall/sdk/store/Entitlements;

    return-object v0
.end method

.method public final getErrorTracker$superwall_release()Lcom/superwall/sdk/utilities/ErrorTracker;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->errorTracker:Lcom/superwall/sdk/utilities/ErrorTracker;

    return-object v0
.end method

.method public final getEventsQueue()Lcom/superwall/sdk/storage/EventsQueue;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->eventsQueue:Lcom/superwall/sdk/storage/EventsQueue;

    return-object v0
.end method

.method public getExternalAccountId()Ljava/lang/String;
    .locals 1

    .line 1267
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIdentityManager()Lcom/superwall/sdk/identity/IdentityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/identity/IdentityManager;->getExternalAccountId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getGetPaywallComponentsFactory$superwall_release()Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->getPaywallComponentsFactory$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;

    return-object v0
.end method

.method public final getGoogleBillingWrapper()Lcom/superwall/sdk/billing/GoogleBillingWrapper;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->googleBillingWrapper:Lcom/superwall/sdk/billing/GoogleBillingWrapper;

    return-object v0
.end method

.method public getIdentityManager()Lcom/superwall/sdk/identity/IdentityManager;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->identityManager:Lcom/superwall/sdk/identity/IdentityManager;

    return-object v0
.end method

.method public getIntegrationProps()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1270
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v0

    sget-object v1, Lcom/superwall/sdk/storage/IntegrationAttributes;->INSTANCE:Lcom/superwall/sdk/storage/IntegrationAttributes;

    check-cast v1, Lcom/superwall/sdk/storage/Storable;

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/storage/LocalStorage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 1296
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    .line 1297
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1298
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1299
    check-cast v2, Ljava/util/Map$Entry;

    .line 1271
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/superwall/sdk/models/attribution/AttributionProvider;

    invoke-virtual {v3}, Lcom/superwall/sdk/models/attribution/AttributionProvider;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1297
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 1299
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final getNetwork()Lcom/superwall/sdk/network/Network;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->network:Lcom/superwall/sdk/network/Network;

    return-object v0
.end method

.method public getOrientation()Lcom/superwall/sdk/analytics/DeviceClassifier$Orientation;
    .locals 1

    .line 149
    invoke-static {p0}, Lcom/superwall/sdk/analytics/ClassifierDataFactory$DefaultImpls;->getOrientation(Lcom/superwall/sdk/analytics/ClassifierDataFactory;)Lcom/superwall/sdk/analytics/DeviceClassifier$Orientation;

    move-result-object v0

    return-object v0
.end method

.method public getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;
    .locals 1

    .line 1245
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall;->getPaywallView()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->Companion:Lcom/superwall/sdk/paywall/presentation/PaywallInfo$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo$Companion;->empty()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getPaywallManager()Lcom/superwall/sdk/paywall/manager/PaywallManager;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->paywallManager:Lcom/superwall/sdk/paywall/manager/PaywallManager;

    return-object v0
.end method

.method public final getPaywallRequestManager()Lcom/superwall/sdk/paywall/request/PaywallRequestManager;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->paywallRequestManager:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    return-object v0
.end method

.method public final getReedemer()Lcom/superwall/sdk/web/WebPaywallRedeemer;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->reedemer:Lcom/superwall/sdk/web/WebPaywallRedeemer;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "reedemer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getReviewManager$superwall_release()Lcom/superwall/sdk/review/ReviewManager;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->reviewManager:Lcom/superwall/sdk/review/ReviewManager;

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 1

    .line 149
    invoke-static {p0}, Lcom/superwall/sdk/analytics/ClassifierDataFactory$DefaultImpls;->getScreenHeight(Lcom/superwall/sdk/analytics/ClassifierDataFactory;)I

    move-result v0

    return v0
.end method

.method public getScreenSize()D
    .locals 2

    .line 149
    invoke-static {p0}, Lcom/superwall/sdk/analytics/ClassifierDataFactory$DefaultImpls;->getScreenSize(Lcom/superwall/sdk/analytics/ClassifierDataFactory;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getScreenWidth()I
    .locals 1

    .line 149
    invoke-static {p0}, Lcom/superwall/sdk/analytics/ClassifierDataFactory$DefaultImpls;->getScreenWidth(Lcom/superwall/sdk/analytics/ClassifierDataFactory;)I

    move-result v0

    return v0
.end method

.method public final getSessionEventsManager()Lcom/superwall/sdk/analytics/SessionEventsManager;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->sessionEventsManager:Lcom/superwall/sdk/analytics/SessionEventsManager;

    return-object v0
.end method

.method public getStorage()Lcom/superwall/sdk/storage/LocalStorage;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->storage:Lcom/superwall/sdk/storage/LocalStorage;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "storage"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getStoreManager()Lcom/superwall/sdk/store/StoreManager;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    return-object v0
.end method

.method public final getTestMode$superwall_release()Lcom/superwall/sdk/store/testmode/TestMode;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->testMode:Lcom/superwall/sdk/store/testmode/TestMode;

    return-object v0
.end method

.method public final getTestModeTransactionHandler$superwall_release()Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->testModeTransactionHandler:Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;

    return-object v0
.end method

.method public final getTransactionManager()Lcom/superwall/sdk/store/transactions/TransactionManager;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->transactionManager:Lcom/superwall/sdk/store/transactions/TransactionManager;

    return-object v0
.end method

.method public getUserId-P5Wmf0A()Ljava/lang/String;
    .locals 1

    .line 1208
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIdentityManager()Lcom/superwall/sdk/identity/IdentityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/identity/IdentityManager;->getAppUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1210
    invoke-static {v0}, Lcom/superwall/sdk/models/internal/UserId;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getUserPermissions$superwall_release()Lcom/superwall/sdk/permissions/UserPermissions;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->userPermissions:Lcom/superwall/sdk/permissions/UserPermissions;

    return-object v0
.end method

.method public internallyGetPresentationResult(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1186
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/superwall/sdk/paywall/presentation/get_presentation_result/PublicGetPresentationResultKt;->internallyGetPresentationResult(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public internallySetSubscriptionStatus(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1227
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/Superwall;->internallySetSubscriptionStatus$superwall_release(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V

    return-void
.end method

.method public ioScope()Lcom/superwall/sdk/misc/IOScope;
    .locals 3

    .line 1100
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->_ioScope:Lcom/superwall/sdk/misc/IOScope;

    if-nez v0, :cond_0

    .line 1101
    new-instance v0, Lcom/superwall/sdk/misc/IOScope;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/superwall/sdk/misc/IOScope;-><init>(Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->_ioScope:Lcom/superwall/sdk/misc/IOScope;

    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->_ioScope:Lcom/superwall/sdk/misc/IOScope;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public isPaymentSheetOpen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPaywallVisible(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1230
    sget-object p1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p1}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/Superwall;->isPaywallPresented()Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public isTabletMinWidth()Z
    .locals 1

    .line 149
    invoke-static {p0}, Lcom/superwall/sdk/analytics/ClassifierDataFactory$DefaultImpls;->isTabletMinWidth(Lcom/superwall/sdk/analytics/ClassifierDataFactory;)Z

    move-result v0

    return v0
.end method

.method public isWebToAppEnabled()Z
    .locals 1

    .line 931
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getConfigManager()Lcom/superwall/sdk/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/ConfigManager;->getConfig()Lcom/superwall/sdk/models/config/Config;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/config/Config;->getFeatureFlags()Lcom/superwall/sdk/models/config/FeatureFlags;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/config/FeatureFlags;->getWeb2App()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public json()Lkotlinx/serialization/json/Json;
    .locals 1

    .line 149
    invoke-static {p0}, Lcom/superwall/sdk/dependencies/ApiFactory$DefaultImpls;->json(Lcom/superwall/sdk/dependencies/ApiFactory;)Lkotlinx/serialization/json/Json;

    move-result-object v0

    return-object v0
.end method

.method public mainScope()Lcom/superwall/sdk/misc/MainScope;
    .locals 3

    .line 1093
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->_mainScope:Lcom/superwall/sdk/misc/MainScope;

    if-nez v0, :cond_0

    .line 1094
    new-instance v0, Lcom/superwall/sdk/misc/MainScope;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/superwall/sdk/misc/MainScope;-><init>(Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->_mainScope:Lcom/superwall/sdk/misc/MainScope;

    .line 1096
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->_mainScope:Lcom/superwall/sdk/misc/MainScope;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public makeCache()Lcom/superwall/sdk/paywall/manager/PaywallViewCache;
    .locals 5

    .line 888
    new-instance v0, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;

    iget-object v1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->makeViewStore()Lcom/superwall/sdk/paywall/view/ViewStorageViewModel;

    move-result-object v2

    check-cast v2, Lcom/superwall/sdk/paywall/view/ViewStorage;

    iget-object v3, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->activityProvider:Lcom/superwall/sdk/misc/ActivityProvider;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;-><init>(Landroid/content/Context;Lcom/superwall/sdk/paywall/view/ViewStorage;Lcom/superwall/sdk/misc/ActivityProvider;Lcom/superwall/sdk/network/device/DeviceHelper;)V

    return-object v0
.end method

.method public makeComputedPropertyRequests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;",
            ">;"
        }
    .end annotation

    .line 1020
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getConfigManager()Lcom/superwall/sdk/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/ConfigManager;->getConfig()Lcom/superwall/sdk/models/config/Config;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/superwall/sdk/models/config/Config;->getAllComputedProperties()Ljava/util/List;

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

.method public makeConfigAttributes()Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ConfigAttributes;
    .locals 4

    .line 1072
    new-instance v0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ConfigAttributes;

    .line 1073
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getConfigManager()Lcom/superwall/sdk/config/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/config/ConfigManager;->getOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v1

    .line 1074
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->makeHasExternalPurchaseController()Z

    move-result v2

    .line 1075
    iget-object v3, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->delegateAdapter:Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;

    invoke-virtual {v3}, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->getKotlinDelegate()Lcom/superwall/sdk/delegate/SuperwallDelegate;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->delegateAdapter:Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;

    invoke-virtual {v3}, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->getJavaDelegate()Lcom/superwall/sdk/delegate/SuperwallDelegateJava;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 1072
    :goto_1
    invoke-direct {v0, v1, v2, v3}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ConfigAttributes;-><init>(Lcom/superwall/sdk/config/options/SuperwallOptions;ZZ)V

    return-object v0
.end method

.method public makeDebugView(Ljava/lang/String;)Lcom/superwall/sdk/debug/DebugView;
    .locals 8

    .line 873
    new-instance v0, Lcom/superwall/sdk/debug/DebugView;

    .line 874
    iget-object v1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->context:Landroid/content/Context;

    .line 875
    iget-object v2, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    .line 876
    iget-object v3, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->network:Lcom/superwall/sdk/network/Network;

    .line 877
    iget-object v4, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->paywallRequestManager:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    .line 878
    iget-object v5, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->paywallManager:Lcom/superwall/sdk/paywall/manager/PaywallManager;

    .line 879
    iget-object v6, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->debugManager:Lcom/superwall/sdk/debug/DebugManager;

    .line 880
    move-object v7, p0

    check-cast v7, Lcom/superwall/sdk/debug/DebugView$Factory;

    .line 873
    invoke-direct/range {v0 .. v7}, Lcom/superwall/sdk/debug/DebugView;-><init>(Landroid/content/Context;Lcom/superwall/sdk/store/StoreManager;Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/paywall/manager/PaywallManager;Lcom/superwall/sdk/debug/DebugManager;Lcom/superwall/sdk/debug/DebugView$Factory;)V

    .line 882
    invoke-virtual {v0, p1}, Lcom/superwall/sdk/debug/DebugView;->setPaywallDatabaseId$superwall_release(Ljava/lang/String;)V

    return-object v0
.end method

.method public makeDeviceInfo()Lcom/superwall/sdk/network/device/DeviceInfo;
    .locals 3

    .line 899
    new-instance v0, Lcom/superwall/sdk/network/device/DeviceInfo;

    .line 900
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/network/device/DeviceHelper;->getAppInstalledAtString()Ljava/lang/String;

    move-result-object v1

    .line 901
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/network/device/DeviceHelper;->getLocale()Ljava/lang/String;

    move-result-object v2

    .line 899
    invoke-direct {v0, v1, v2}, Lcom/superwall/sdk/network/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public makeFeatureFlags()Lcom/superwall/sdk/models/config/FeatureFlags;
    .locals 1

    .line 1017
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getConfigManager()Lcom/superwall/sdk/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/ConfigManager;->getConfig()Lcom/superwall/sdk/models/config/Config;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/config/Config;->getFeatureFlags()Lcom/superwall/sdk/models/config/FeatureFlags;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public makeHasExternalPurchaseController()Z
    .locals 1

    .line 926
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/StoreManager;->getPurchaseController()Lcom/superwall/sdk/store/InternalPurchaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/store/InternalPurchaseController;->getHasExternalPurchaseController()Z

    move-result v0

    return v0
.end method

.method public makeHasInternalPurchaseController()Z
    .locals 1

    .line 929
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/StoreManager;->getPurchaseController()Lcom/superwall/sdk/store/InternalPurchaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/store/InternalPurchaseController;->getHasInternalPurchaseController()Z

    move-result v0

    return v0
.end method

.method public makeHeaders(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 752
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/storage/LocalStorage;->getDebugKey()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/storage/LocalStorage;->getApiKey()Ljava/lang/String;

    move-result-object p1

    .line 753
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Bearer "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x1d

    .line 756
    new-array p2, p2, [Lkotlin/Pair;

    const-string p3, "Authorization"

    invoke-static {p3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p3, 0x0

    aput-object p1, p2, p3

    .line 757
    const-string p1, "X-Platform"

    const-string p3, "Android"

    invoke-static {p1, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, p2, p3

    .line 758
    const-string p1, "X-Platform-Environment"

    const-string p3, "SDK"

    invoke-static {p1, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p3, 0x2

    aput-object p1, p2, p3

    .line 759
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/network/device/DeviceHelper;->getPlatformWrapper()Ljava/lang/String;

    move-result-object p1

    const-string p3, "X-Platform-Wrapper"

    invoke-static {p3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p3, 0x3

    aput-object p1, p2, p3

    .line 760
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIdentityManager()Lcom/superwall/sdk/identity/IdentityManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/identity/IdentityManager;->getAppUserId()Ljava/lang/String;

    move-result-object p1

    const-string p3, ""

    if-nez p1, :cond_1

    move-object p1, p3

    :cond_1
    const-string v0, "X-App-User-ID"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v0, 0x4

    aput-object p1, p2, v0

    .line 761
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIdentityManager()Lcom/superwall/sdk/identity/IdentityManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/identity/IdentityManager;->getAliasId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "X-Alias-ID"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v0, 0x5

    aput-object p1, p2, v0

    .line 762
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/network/device/DeviceHelper;->getUrlScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "X-URL-Scheme"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v0, 0x6

    aput-object p1, p2, v0

    .line 763
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/network/device/DeviceHelper;->getVendorId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "X-Vendor-ID"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v0, 0x7

    aput-object p1, p2, v0

    .line 764
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/network/device/DeviceHelper;->getAppVersion()Ljava/lang/String;

    move-result-object p1

    const-string v0, "X-App-Version"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/16 v0, 0x8

    aput-object p1, p2, v0

    .line 765
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/network/device/DeviceHelper;->getOsVersion()Ljava/lang/String;

    move-result-object p1

    const-string v0, "X-OS-Version"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/16 v0, 0x9

    aput-object p1, p2, v0

    .line 766
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/network/device/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object p1

    const-string v0, "X-Device-Model"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/16 v0, 0xa

    aput-object p1, p2, v0

    .line 767
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/network/device/DeviceHelper;->getLocale()Ljava/lang/String;

    move-result-object p1

    const-string v0, "X-Device-Locale"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/16 v0, 0xb

    aput-object p1, p2, v0

    .line 768
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/network/device/DeviceHelper;->getLanguageCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "X-Device-Language-Code"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/16 v0, 0xc

    aput-object p1, p2, v0

    .line 769
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/network/device/DeviceHelper;->getCurrencyCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "X-Device-Currency-Code"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/16 v0, 0xd

    aput-object p1, p2, v0

    .line 770
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/network/device/DeviceHelper;->getCurrencySymbol()Ljava/lang/String;

    move-result-object p1

    const-string v0, "X-Device-Currency-Symbol"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/16 v0, 0xe

    aput-object p1, p2, v0

    .line 771
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/network/device/DeviceHelper;->getSecondsFromGMT()Ljava/lang/String;

    move-result-object p1

    const-string v0, "X-Device-Timezone-Offset"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/16 v0, 0xf

    aput-object p1, p2, v0

    .line 772
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/network/device/DeviceHelper;->getAppInstalledAtString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "X-App-Install-Date"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/16 v0, 0x10

    aput-object p1, p2, v0

    .line 773
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/network/device/DeviceHelper;->getRadioType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "X-Radio-Type"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/16 v0, 0x11

    aput-object p1, p2, v0

    .line 774
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/network/device/DeviceHelper;->getInterfaceStyle()Ljava/lang/String;

    move-result-object p1

    const-string v0, "X-Device-Interface-Style"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/16 v0, 0x12

    aput-object p1, p2, v0

    .line 775
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/network/device/DeviceHelper;->getSdkVersion()Ljava/lang/String;

    move-result-object p1

    const-string v0, "X-SDK-Version"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/16 v0, 0x13

    aput-object p1, p2, v0

    .line 776
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/network/device/DeviceHelper;->getGitSha()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/network/device/DeviceHelper;->getGitSha()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move-object p1, p3

    :goto_1
    const-string v0, "X-Git-Sha"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/16 v0, 0x14

    aput-object p1, p2, v0

    .line 777
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/network/device/DeviceHelper;->getBuildTime()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/network/device/DeviceHelper;->getBuildTime()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    move-object p1, p3

    :goto_2
    const-string v0, "X-Build-Time"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/16 v0, 0x15

    aput-object p1, p2, v0

    .line 778
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/network/device/DeviceHelper;->getBundleId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "X-Bundle-ID"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/16 v0, 0x16

    aput-object p1, p2, v0

    .line 779
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/network/device/DeviceHelper;->isLowPowerModeEnabled()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "X-Low-Power-Mode"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/16 v0, 0x17

    aput-object p1, p2, v0

    .line 780
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/network/device/DeviceHelper;->isSandbox()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "X-Is-Sandbox"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/16 v0, 0x18

    aput-object p1, p2, v0

    .line 782
    sget-object p1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p1}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/Superwall;->getEntitlements()Lcom/superwall/sdk/store/Entitlements;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/store/Entitlements;->getStatus()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    .line 783
    invoke-virtual {p1}, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;->toString()Ljava/lang/String;

    move-result-object p1

    .line 781
    const-string v0, "X-Entitlement-Status"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/16 v0, 0x19

    aput-object p1, p2, v0

    .line 784
    const-string p1, "Content-Type"

    const-string v0, "application/json"

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/16 v0, 0x1a

    aput-object p1, p2, v0

    .line 785
    sget-object p1, Lcom/superwall/sdk/utilities/DateUtils;->INSTANCE:Lcom/superwall/sdk/utilities/DateUtils;

    invoke-virtual {p1}, Lcom/superwall/sdk/utilities/DateUtils;->getISO_MILLIS()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/superwall/sdk/utilities/DateUtilsKt;->dateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object p1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "X-Current-Time"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/16 v0, 0x1b

    aput-object p1, p2, v0

    .line 786
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getConfigManager()Lcom/superwall/sdk/config/ConfigManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/config/ConfigManager;->getConfig()Lcom/superwall/sdk/models/config/Config;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/superwall/sdk/models/config/Config;->getBuildId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    move-object p3, p1

    :cond_5
    :goto_3
    const-string p1, "X-Static-Config-Build-Id"

    invoke-static {p1, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/16 p3, 0x1c

    aput-object p1, p2, p3

    .line 755
    invoke-static {p2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public makeIdentityInfo(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/identity/IdentityInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1023
    new-instance p1, Lcom/superwall/sdk/identity/IdentityInfo;

    .line 1024
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIdentityManager()Lcom/superwall/sdk/identity/IdentityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/identity/IdentityManager;->getAliasId()Ljava/lang/String;

    move-result-object v0

    .line 1025
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIdentityManager()Lcom/superwall/sdk/identity/IdentityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/identity/IdentityManager;->getAppUserId()Ljava/lang/String;

    move-result-object v1

    .line 1023
    invoke-direct {p1, v0, v1}, Lcom/superwall/sdk/identity/IdentityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public makeIdentityManager(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/identity/IdentityManager;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1061
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIdentityManager()Lcom/superwall/sdk/identity/IdentityManager;

    move-result-object p1

    return-object p1
.end method

.method public makeIsSandbox()Z
    .locals 1

    .line 904
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->testMode:Lcom/superwall/sdk/store/testmode/TestMode;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/TestMode;->isTestMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/network/device/DeviceHelper;->isSandbox()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public makeJsonVariables(Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductVariable;",
            ">;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;",
            ">;",
            "Lcom/superwall/sdk/models/events/EventData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/superwall/sdk/dependencies/DependencyContainer$makeJsonVariables$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makeJsonVariables$1;

    iget v1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makeJsonVariables$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makeJsonVariables$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makeJsonVariables$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makeJsonVariables$1;

    invoke-direct {v0, p0, p4}, Lcom/superwall/sdk/dependencies/DependencyContainer$makeJsonVariables$1;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makeJsonVariables$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1030
    iget v2, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makeJsonVariables$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makeJsonVariables$1;->L$2:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Lcom/superwall/sdk/models/events/EventData;

    iget-object p1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makeJsonVariables$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p2, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makeJsonVariables$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lcom/superwall/sdk/dependencies/DependencyContainer;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1036
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object p4

    iput-object p0, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makeJsonVariables$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makeJsonVariables$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makeJsonVariables$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makeJsonVariables$1;->label:I

    invoke-virtual {p4, p3, p2, v0}, Lcom/superwall/sdk/network/device/DeviceHelper;->getDeviceAttributes(Lcom/superwall/sdk/models/events/EventData;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    move-object p2, p0

    .line 1030
    :goto_1
    check-cast p4, Ljava/util/Map;

    .line 1041
    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables;

    if-nez p1, :cond_4

    .line 1042
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_4
    if-eqz p3, :cond_5

    .line 1043
    invoke-virtual {p3}, Lcom/superwall/sdk/models/events/EventData;->getParameters()Ljava/util/Map;

    move-result-object p3

    if-nez p3, :cond_6

    :cond_5
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p3

    .line 1044
    :cond_6
    invoke-virtual {p2}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIdentityManager()Lcom/superwall/sdk/identity/IdentityManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/superwall/sdk/identity/IdentityManager;->getUserAttributes()Ljava/util/Map;

    move-result-object p2

    .line 1041
    invoke-direct {v0, p1, p3, p2, p4}, Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 1046
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables;->templated()Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;

    move-result-object p1

    return-object p1
.end method

.method public makeLocaleIdentifier()Ljava/lang/String;
    .locals 1

    .line 1028
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getConfigManager()Lcom/superwall/sdk/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/ConfigManager;->getOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getLocaleIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public makePaywallRequest(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/paywall/request/ResponseIdentifiers;Lcom/superwall/sdk/paywall/request/PaywallRequest$Overrides;ZLjava/lang/String;)Lcom/superwall/sdk/paywall/request/PaywallRequest;
    .locals 8

    const-string v0, "responseIdentifiers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 949
    new-instance v1, Lcom/superwall/sdk/paywall/request/PaywallRequest;

    if-nez p3, :cond_0

    .line 952
    new-instance p3, Lcom/superwall/sdk/paywall/request/PaywallRequest$Overrides;

    const/4 v0, 0x0

    invoke-direct {p3, v0, v0}, Lcom/superwall/sdk/paywall/request/PaywallRequest$Overrides;-><init>(Ljava/util/Map;Ljava/lang/Boolean;)V

    :cond_0
    move-object v4, p3

    const/4 v7, 0x6

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move-object v6, p5

    .line 949
    invoke-direct/range {v1 .. v7}, Lcom/superwall/sdk/paywall/request/PaywallRequest;-><init>(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/paywall/request/ResponseIdentifiers;Lcom/superwall/sdk/paywall/request/PaywallRequest$Overrides;ZLjava/lang/String;I)V

    return-object v1
.end method

.method public makePaywallView(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/manager/PaywallViewCache;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            "Lcom/superwall/sdk/paywall/manager/PaywallViewCache;",
            "Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    instance-of v2, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$1;

    iget v3, v2, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v0, v2, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$1;->label:I

    sub-int/2addr v0, v4

    iput v0, v2, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$1;

    invoke-direct {v2, v1, v0}, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$1;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v7, v2

    iget-object v0, v7, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v8

    .line 801
    iget v2, v7, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$1;->label:I

    const/4 v9, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v9, :cond_1

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 817
    invoke-direct {v1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIoScope()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v0

    .line 818
    iget-object v2, v1, Lcom/superwall/sdk/dependencies/DependencyContainer;->paywallJson:Lkotlinx/serialization/json/Json;

    .line 819
    invoke-virtual {v1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->mainScope()Lcom/superwall/sdk/misc/MainScope;

    move-result-object v16

    .line 823
    iget-object v3, v1, Lcom/superwall/sdk/dependencies/DependencyContainer;->userPermissions:Lcom/superwall/sdk/permissions/UserPermissions;

    .line 825
    iget-object v4, v1, Lcom/superwall/sdk/dependencies/DependencyContainer;->customCallbackRegistry:Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;

    .line 807
    new-instance v10, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;

    .line 808
    move-object v11, v1

    check-cast v11, Lcom/superwall/sdk/dependencies/VariablesFactory;

    .line 809
    move-object v12, v1

    check-cast v12, Lcom/superwall/sdk/dependencies/OptionsFactory;

    .line 806
    new-instance v5, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$messageHandler$1;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$messageHandler$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v13, v5

    check-cast v13, Lkotlin/jvm/functions/Function2;

    new-instance v14, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda0;

    invoke-direct {v14, v1}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda0;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;)V

    new-instance v15, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda11;

    invoke-direct {v15}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda11;-><init>()V

    .line 817
    move-object/from16 v17, v0

    check-cast v17, Lkotlinx/coroutines/CoroutineScope;

    .line 818
    new-instance v19, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda22;

    invoke-direct/range {v19 .. v19}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda22;-><init>()V

    .line 806
    new-instance v0, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda31;

    invoke-direct {v0, v1}, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda31;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;)V

    move-object/from16 v21, v0

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v4

    .line 807
    invoke-direct/range {v10 .. v22}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;-><init>(Lcom/superwall/sdk/dependencies/VariablesFactory;Lcom/superwall/sdk/dependencies/OptionsFactory;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/misc/MainScope;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;Lcom/superwall/sdk/permissions/UserPermissions;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;)V

    move-object v2, v10

    .line 829
    new-instance v10, Lcom/superwall/sdk/paywall/view/PaywallViewState;

    .line 831
    invoke-virtual {v1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/network/device/DeviceHelper;->getLocale()Ljava/lang/String;

    move-result-object v12

    .line 833
    invoke-virtual {v1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getConfigManager()Lcom/superwall/sdk/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/ConfigManager;->getConfig()Lcom/superwall/sdk/models/config/Config;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/superwall/sdk/models/config/Config;->getFeatureFlags()Lcom/superwall/sdk/models/config/FeatureFlags;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/superwall/sdk/models/config/FeatureFlags;->getEnableMultiplePaywallUrls()Z

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    move/from16 v30, v0

    const v33, 0x37fffc

    const/16 v34, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v11, p1

    .line 829
    invoke-direct/range {v10 .. v34}, Lcom/superwall/sdk/paywall/view/PaywallViewState;-><init>(Lcom/superwall/sdk/models/paywall/Paywall;Ljava/lang/String;Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function1;ZZLcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;ZZZZLcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;ZILjava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 836
    new-instance v5, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    invoke-direct {v5, v10}, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;-><init>(Lcom/superwall/sdk/paywall/view/PaywallViewState;)V

    .line 838
    invoke-direct {v1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getUiScope()Lcom/superwall/sdk/misc/MainScope;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lkotlinx/coroutines/CoroutineScope;

    .line 839
    new-instance v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;

    const/4 v6, 0x0

    move-object/from16 v4, p2

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;Lcom/superwall/sdk/paywall/manager/PaywallViewCache;Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;Lkotlin/coroutines/Continuation;)V

    move-object v13, v0

    check-cast v13, Lkotlin/jvm/functions/Function2;

    const/4 v14, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    .line 866
    iput v9, v7, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$1;->label:I

    invoke-interface {v0, v7}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_4

    return-object v8

    .line 801
    :cond_4
    :goto_2
    check-cast v0, Lcom/superwall/sdk/paywall/view/PaywallView;

    return-object v0
.end method

.method public makePresentationRequest(Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;Landroid/app/Activity;Ljava/lang/Boolean;Lkotlinx/coroutines/flow/StateFlow;ZLcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;)Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;",
            "Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;",
            "Landroid/app/Activity;",
            "Ljava/lang/Boolean;",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "+",
            "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
            ">;Z",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;",
            ")",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;"
        }
    .end annotation

    const-string v0, "presentationInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 967
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    .line 969
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 972
    new-instance p3, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;

    if-eqz p4, :cond_0

    .line 973
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->debugManager:Lcom/superwall/sdk/debug/DebugManager;

    invoke-virtual {p4}, Lcom/superwall/sdk/debug/DebugManager;->isDebuggerLaunched()Z

    move-result p4

    :goto_0
    if-nez p5, :cond_1

    .line 975
    sget-object p5, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p5}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object p5

    invoke-virtual {p5}, Lcom/superwall/sdk/Superwall;->getEntitlements()Lcom/superwall/sdk/store/Entitlements;

    move-result-object p5

    invoke-virtual {p5}, Lcom/superwall/sdk/store/Entitlements;->getStatus()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p5

    .line 972
    :cond_1
    invoke-direct {p3, p4, p5, p6, p7}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;-><init>(ZLkotlinx/coroutines/flow/StateFlow;ZLcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;)V

    .line 967
    invoke-direct {v0, p1, v1, p2, p3}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;-><init>(Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;Ljava/lang/ref/WeakReference;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;)V

    return-object v0
.end method

.method public makeRuleAttributes(Lcom/superwall/sdk/models/events/EventData;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    instance-of v0, p3, Lcom/superwall/sdk/dependencies/DependencyContainer$makeRuleAttributes$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makeRuleAttributes$1;

    iget v1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makeRuleAttributes$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makeRuleAttributes$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makeRuleAttributes$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makeRuleAttributes$1;

    invoke-direct {v0, p0, p3}, Lcom/superwall/sdk/dependencies/DependencyContainer$makeRuleAttributes$1;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makeRuleAttributes$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 997
    iget v2, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makeRuleAttributes$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makeRuleAttributes$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    iget-object p2, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makeRuleAttributes$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lcom/superwall/sdk/models/events/EventData;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1001
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIdentityManager()Lcom/superwall/sdk/identity/IdentityManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/superwall/sdk/identity/IdentityManager;->getUserAttributes()Ljava/util/Map;

    move-result-object p3

    invoke-static {p3}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    .line 1002
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIdentityManager()Lcom/superwall/sdk/identity/IdentityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/identity/IdentityManager;->isLoggedIn()Z

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "isLoggedIn"

    invoke-interface {p3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object v2

    iput-object p1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makeRuleAttributes$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makeRuleAttributes$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makeRuleAttributes$1;->label:I

    invoke-virtual {v2, p1, p2, v0}, Lcom/superwall/sdk/network/device/DeviceHelper;->getDeviceAttributes(Lcom/superwall/sdk/models/events/EventData;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v5, p2

    move-object p2, p1

    move-object p1, p3

    move-object p3, v5

    .line 997
    :goto_1
    check-cast p3, Ljava/util/Map;

    const/4 v0, 0x3

    .line 1011
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "user"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1012
    const-string p1, "device"

    invoke-static {p1, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v0, v3

    if-eqz p2, :cond_4

    .line 1013
    invoke-virtual {p2}, Lcom/superwall/sdk/models/events/EventData;->getParameters()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_5

    :cond_4
    const-string p1, ""

    :cond_5
    const-string p2, "params"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    .line 1010
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public makeSessionDeviceAttributes(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/superwall/sdk/dependencies/DependencyContainer$makeSessionDeviceAttributes$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makeSessionDeviceAttributes$1;

    iget v1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makeSessionDeviceAttributes$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makeSessionDeviceAttributes$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makeSessionDeviceAttributes$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makeSessionDeviceAttributes$1;

    invoke-direct {v0, p0, p1}, Lcom/superwall/sdk/dependencies/DependencyContainer$makeSessionDeviceAttributes$1;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makeSessionDeviceAttributes$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 906
    iget v2, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makeSessionDeviceAttributes$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 907
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object p1

    iput v3, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makeSessionDeviceAttributes$1;->label:I

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/network/device/DeviceHelper;->getTemplateDevice(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 909
    const-string v0, "utcDate"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    const-string v0, "localDate"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    const-string v0, "localTime"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    const-string v0, "utcTime"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    const-string v0, "utcDateTime"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    const-string v0, "localDateTime"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public makeStaticPaywall(Ljava/lang/String;Z)Lcom/superwall/sdk/models/paywall/Paywall;
    .locals 2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 989
    :cond_0
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->makeDeviceInfo()Lcom/superwall/sdk/network/device/DeviceInfo;

    move-result-object p2

    .line 990
    sget-object v0, Lcom/superwall/sdk/config/ConfigLogic;->INSTANCE:Lcom/superwall/sdk/config/ConfigLogic;

    .line 992
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getConfigManager()Lcom/superwall/sdk/config/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/config/ConfigManager;->getConfig()Lcom/superwall/sdk/models/config/Config;

    move-result-object v1

    .line 993
    invoke-virtual {p2}, Lcom/superwall/sdk/network/device/DeviceInfo;->getLocale()Ljava/lang/String;

    move-result-object p2

    .line 990
    invoke-virtual {v0, p1, v1, p2}, Lcom/superwall/sdk/config/ConfigLogic;->getStaticPaywall(Ljava/lang/String;Lcom/superwall/sdk/models/config/Config;Ljava/lang/String;)Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object p1

    return-object p1
.end method

.method public makeStoreTransaction(Lcom/android/billingclient/api/Purchase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/Purchase;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1050
    new-instance p2, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;

    .line 1051
    new-instance v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;-><init>(Lcom/android/billingclient/api/Purchase;)V

    .line 1054
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getConfigManager()Lcom/superwall/sdk/config/ConfigManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/config/ConfigManager;->getConfig()Lcom/superwall/sdk/models/config/Config;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/superwall/sdk/models/config/Config;->getRequestId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    .line 1055
    :cond_1
    iget-object v1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->appSessionManager:Lcom/superwall/sdk/analytics/session/AppSessionManager;

    invoke-virtual {v1}, Lcom/superwall/sdk/analytics/session/AppSessionManager;->getAppSession()Lcom/superwall/sdk/analytics/session/AppSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/analytics/session/AppSession;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1050
    invoke-direct {p2, v0, p1, v1}, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;-><init>(Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public makeSuperwallOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;
    .locals 1

    .line 1065
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getConfigManager()Lcom/superwall/sdk/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/ConfigManager;->getOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v0

    return-object v0
.end method

.method public makeTransactionVerifier()Lcom/superwall/sdk/billing/GoogleBillingWrapper;
    .locals 1

    .line 1063
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->googleBillingWrapper:Lcom/superwall/sdk/billing/GoogleBillingWrapper;

    return-object v0
.end method

.method public makeTriggers(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1067
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getConfigManager()Lcom/superwall/sdk/config/ConfigManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/config/ConfigManager;->getTriggersByEventName()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public makeUserAttributesEvent()Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Attributes;
    .locals 4

    .line 920
    new-instance v0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Attributes;

    .line 921
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/network/device/DeviceHelper;->getAppInstalledAtString()Ljava/lang/String;

    move-result-object v1

    .line 922
    new-instance v2, Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIdentityManager()Lcom/superwall/sdk/identity/IdentityManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/identity/IdentityManager;->getUserAttributes()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 920
    invoke-direct {v0, v1, v2}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Attributes;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public bridge synthetic makeViewStore()Lcom/superwall/sdk/paywall/view/ViewStorage;
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->makeViewStore()Lcom/superwall/sdk/paywall/view/ViewStorageViewModel;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/paywall/view/ViewStorage;

    return-object v0
.end method

.method public makeViewStore()Lcom/superwall/sdk/paywall/view/ViewStorageViewModel;
    .locals 2

    .line 1087
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->vmProvider:Landroidx/lifecycle/ViewModelProvider;

    const-class v1, Lcom/superwall/sdk/paywall/view/ViewStorageViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/paywall/view/ViewStorageViewModel;

    return-object v0
.end method

.method public maxAge()J
    .locals 2

    .line 1202
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getConfigManager()Lcom/superwall/sdk/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/ConfigManager;->getConfig()Lcom/superwall/sdk/models/config/Config;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/config/Config;->getWebToAppConfig()Lcom/superwall/sdk/models/config/WebToAppConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/config/WebToAppConfig;->getEntitlementsMaxAgeMs()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/32 v0, 0x5265c00

    return-wide v0
.end method

.method public provideRuleEvaluator(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1069
    invoke-direct {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getEvaluator()Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/CombinedExpressionEvaluator;

    move-result-object p1

    return-object p1
.end method

.method public receipts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/entitlements/TransactionReceipt;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/superwall/sdk/dependencies/DependencyContainer$receipts$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/dependencies/DependencyContainer$receipts$1;

    iget v1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$receipts$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$receipts$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$receipts$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/dependencies/DependencyContainer$receipts$1;

    invoke-direct {v0, p0, p1}, Lcom/superwall/sdk/dependencies/DependencyContainer$receipts$1;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$receipts$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1251
    iget v2, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$receipts$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v2, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$receipts$1;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    iget-object v6, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$receipts$1;->L$4:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$receipts$1;->L$3:Ljava/lang/Object;

    check-cast v7, Lcom/android/billingclient/api/Purchase;

    iget-object v8, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$receipts$1;->L$2:Ljava/lang/Object;

    check-cast v8, Ljava/util/Iterator;

    iget-object v9, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$receipts$1;->L$1:Ljava/lang/Object;

    check-cast v9, Ljava/util/Collection;

    iget-object v10, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$receipts$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lcom/superwall/sdk/dependencies/DependencyContainer;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$receipts$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/dependencies/DependencyContainer;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1252
    iget-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->googleBillingWrapper:Lcom/superwall/sdk/billing/GoogleBillingWrapper;

    iput-object p0, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$receipts$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$receipts$1;->label:I

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->queryAllPurchases(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v2, p0

    .line 1251
    :goto_1
    check-cast p1, Ljava/lang/Iterable;

    .line 1292
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {p1, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .line 1293
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v8, p1

    move-object v10, v2

    move-object v2, v6

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 1294
    move-object v7, p1

    check-cast v7, Lcom/android/billingclient/api/Purchase;

    .line 1253
    invoke-virtual {v7}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object p1

    const-string v6, "getProducts(...)"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_5

    move-object v9, v2

    goto :goto_5

    .line 1254
    :cond_5
    iget-object p1, v10, Lcom/superwall/sdk/dependencies/DependencyContainer;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    invoke-static {v6}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v9

    iput-object v10, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$receipts$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$receipts$1;->L$1:Ljava/lang/Object;

    iput-object v8, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$receipts$1;->L$2:Ljava/lang/Object;

    iput-object v7, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$receipts$1;->L$3:Ljava/lang/Object;

    iput-object v6, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$receipts$1;->L$4:Ljava/lang/Object;

    iput-object v2, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$receipts$1;->L$5:Ljava/lang/Object;

    iput v4, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$receipts$1;->label:I

    invoke-virtual {p1, v9, v0}, Lcom/superwall/sdk/store/StoreManager;->products(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    :goto_3
    return-object v1

    :cond_6
    move-object v9, v2

    :goto_4
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    if-nez p1, :cond_7

    :goto_5
    move-object v11, v3

    goto :goto_7

    .line 1255
    :cond_7
    new-instance v11, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;

    .line 1256
    invoke-virtual {v7}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v12

    const-string v13, "getPurchaseToken(...)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1257
    invoke-virtual {v7}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v7

    .line 1259
    invoke-virtual {p1}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getRawStoreProduct()Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->isSubscription$superwall_release()Z

    move-result p1

    if-ne p1, v5, :cond_8

    .line 1260
    sget-object p1, Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;->SUBSCRIPTION:Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;

    goto :goto_6

    .line 1262
    :cond_8
    sget-object p1, Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;->IAP:Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;

    .line 1255
    :goto_6
    invoke-direct {v11, v12, v7, v6, p1}, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;)V

    .line 1294
    :goto_7
    invoke-interface {v2, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v2, v9

    goto :goto_2

    .line 1295
    :cond_9
    check-cast v2, Ljava/util/List;

    .line 1292
    check-cast v2, Ljava/lang/Iterable;

    .line 1265
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public restoreUrl()Ljava/lang/String;
    .locals 1

    .line 933
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getConfigManager()Lcom/superwall/sdk/config/ConfigManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/superwall/sdk/config/ConfigManager;->getConfig()Lcom/superwall/sdk/models/config/Config;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/superwall/sdk/models/config/Config;->getWebToAppConfig()Lcom/superwall/sdk/models/config/WebToAppConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/superwall/sdk/models/config/WebToAppConfig;->getRestoreAccesUrl()Ljava/lang/String;

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

.method public final setActivityProvider(Lcom/superwall/sdk/misc/ActivityProvider;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->activityProvider:Lcom/superwall/sdk/misc/ActivityProvider;

    return-void
.end method

.method public setApi(Lcom/superwall/sdk/network/Api;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iput-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->api:Lcom/superwall/sdk/network/Api;

    return-void
.end method

.method public setAppLifecycleObserver(Lcom/superwall/sdk/misc/AppLifecycleObserver;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iput-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->appLifecycleObserver:Lcom/superwall/sdk/misc/AppLifecycleObserver;

    return-void
.end method

.method public final setAppSessionManager(Lcom/superwall/sdk/analytics/session/AppSessionManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iput-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->appSessionManager:Lcom/superwall/sdk/analytics/session/AppSessionManager;

    return-void
.end method

.method public setConfigManager(Lcom/superwall/sdk/config/ConfigManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    iput-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->configManager:Lcom/superwall/sdk/config/ConfigManager;

    return-void
.end method

.method public final setCustomerInfoManager$superwall_release(Lcom/superwall/sdk/customer/CustomerInfoManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    iput-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->customerInfoManager:Lcom/superwall/sdk/customer/CustomerInfoManager;

    return-void
.end method

.method public final setDebugManager(Lcom/superwall/sdk/debug/DebugManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iput-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->debugManager:Lcom/superwall/sdk/debug/DebugManager;

    return-void
.end method

.method public final setDelegateAdapter(Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    iput-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->delegateAdapter:Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;

    return-void
.end method

.method public setDeviceHelper(Lcom/superwall/sdk/network/device/DeviceHelper;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    iput-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->deviceHelper:Lcom/superwall/sdk/network/device/DeviceHelper;

    return-void
.end method

.method public final setEntitlements(Lcom/superwall/sdk/store/Entitlements;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    iput-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->entitlements:Lcom/superwall/sdk/store/Entitlements;

    return-void
.end method

.method public final setEventsQueue(Lcom/superwall/sdk/storage/EventsQueue;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iput-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->eventsQueue:Lcom/superwall/sdk/storage/EventsQueue;

    return-void
.end method

.method public setIdentityManager(Lcom/superwall/sdk/identity/IdentityManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iput-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->identityManager:Lcom/superwall/sdk/identity/IdentityManager;

    return-void
.end method

.method public final setNetwork(Lcom/superwall/sdk/network/Network;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    iput-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->network:Lcom/superwall/sdk/network/Network;

    return-void
.end method

.method public final setPaywallManager(Lcom/superwall/sdk/paywall/manager/PaywallManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iput-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->paywallManager:Lcom/superwall/sdk/paywall/manager/PaywallManager;

    return-void
.end method

.method public final setPaywallRequestManager(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iput-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->paywallRequestManager:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    return-void
.end method

.method public final setReedemer(Lcom/superwall/sdk/web/WebPaywallRedeemer;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    iput-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->reedemer:Lcom/superwall/sdk/web/WebPaywallRedeemer;

    return-void
.end method

.method public final setSessionEventsManager(Lcom/superwall/sdk/analytics/SessionEventsManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    iput-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->sessionEventsManager:Lcom/superwall/sdk/analytics/SessionEventsManager;

    return-void
.end method

.method public setStorage(Lcom/superwall/sdk/storage/LocalStorage;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    iput-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->storage:Lcom/superwall/sdk/storage/LocalStorage;

    return-void
.end method

.method public final setStoreManager(Lcom/superwall/sdk/store/StoreManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    iput-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    return-void
.end method

.method public storePresentationObject(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1179
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/superwall/sdk/paywall/presentation/internal/operators/StorePresentationObjectsKt;->storePresentationObjects(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public track(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/superwall/sdk/dependencies/DependencyContainer$track$2;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/dependencies/DependencyContainer$track$2;

    iget v1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$track$2;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$track$2;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$track$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/dependencies/DependencyContainer$track$2;

    invoke-direct {v0, p0, p2}, Lcom/superwall/sdk/dependencies/DependencyContainer$track$2;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$track$2;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1222
    iget v2, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$track$2;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1223
    sget-object p2, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p2}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object p2

    iput v3, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$track$2;->label:I

    invoke-static {p2, p1, v0}, Lcom/superwall/sdk/analytics/internal/TrackingKt;->track(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public track-gIAlu-s(Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/superwall/sdk/analytics/internal/TrackingResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/superwall/sdk/dependencies/DependencyContainer$track$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/dependencies/DependencyContainer$track$1;

    iget v1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$track$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$track$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$track$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/dependencies/DependencyContainer$track$1;

    invoke-direct {v0, p0, p2}, Lcom/superwall/sdk/dependencies/DependencyContainer$track$1;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$track$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1160
    iget v2, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$track$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1161
    sget-object p2, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p2}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object p2

    check-cast p1, Lcom/superwall/sdk/analytics/internal/trackable/Trackable;

    iput v3, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$track$1;->label:I

    invoke-static {p2, p1, v0}, Lcom/superwall/sdk/analytics/internal/TrackingKt;->track(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    return-object p1
.end method

.method public trackRestorationFailed(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1248
    invoke-direct {p0, p1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->trackRestorationFailure(Ljava/lang/String;)V

    return-void
.end method

.method public triggerRestoreInPaywall(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
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

    .line 1233
    invoke-direct {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->showWebRestoreSuccesful()V

    .line 1234
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public updatePaywallInfo(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V
    .locals 1

    const-string v0, "paywallInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1172
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall;->getPresentationItems$superwall_release()Lcom/superwall/sdk/paywall/presentation/PresentationItems;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/paywall/presentation/PresentationItems;->setPaywallInfo(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    return-void
.end method

.method public willRedeemLink()V
    .locals 1

    .line 1194
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer;->delegateAdapter:Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;

    invoke-virtual {v0}, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->willRedeemLink()V

    return-void
.end method
