.class public final Lcom/superwall/sdk/models/config/Config;
.super Ljava/lang/Object;
.source "Config.kt"

# interfaces
.implements Lcom/superwall/sdk/models/SerializableEntity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/config/Config$$serializer;,
        Lcom/superwall/sdk/models/config/Config$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Config.kt\ncom/superwall/sdk/models/config/Config\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,92:1\n1557#2:93\n1628#2,3:94\n1368#2:97\n1454#2,2:98\n1368#2:100\n1454#2,5:101\n1456#2,3:106\n1628#2,3:110\n1#3:109\n*S KotlinDebug\n*F\n+ 1 Config.kt\ncom/superwall/sdk/models/config/Config\n*L\n35#1:93\n35#1:94,3\n40#1:97\n40#1:98,2\n41#1:100\n41#1:101,5\n40#1:106,3\n35#1:110,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008?\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 \u008c\u00012\u00020\u0001:\u0004\u008c\u0001\u008d\u0001B\u00d3\u0001\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0006\u0012\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0006\u0012\u0010\u0008\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0006\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\u000e\u0008\u0002\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0003\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u0012\u0006\u0010\u001d\u001a\u00020\u0019\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0019\u0012\u0010\u0008\u0002\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u0006\u0012\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u0019\u00a2\u0006\u0004\u0008\"\u0010#B\u00eb\u0001\u0008\u0010\u0012\u0006\u0010$\u001a\u00020\t\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0006\u0012\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0006\u0012\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0006\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0003\u0012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0019\u0012\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0019\u0012\u000e\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u0006\u0012\u0008\u0010!\u001a\u0004\u0018\u00010\u0019\u0012\u0008\u0010%\u001a\u0004\u0018\u00010&\u00a2\u0006\u0004\u0008\"\u0010\'J\u000f\u0010l\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\u000f\u0010m\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u00c6\u0003J\t\u0010n\u001a\u00020\tH\u00c6\u0003J\t\u0010o\u001a\u00020\u000bH\u00c6\u0003J\t\u0010p\u001a\u00020\rH\u00c6\u0003J\u000f\u0010q\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0006H\u00c6\u0003J\u000f\u0010r\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0006H\u00c6\u0003J\u0011\u0010s\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0006H\u00c6\u0003J\t\u0010t\u001a\u00020\u0015H\u00c6\u0003J\t\u0010u\u001a\u00020\u0017H\u00c6\u0003J\u000b\u0010v\u001a\u0004\u0018\u00010\u0019H\u00c6\u0003J\u000f\u0010w\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0003H\u00c6\u0003J\u000b\u0010x\u001a\u0004\u0018\u00010\u001cH\u00c6\u0003J\t\u0010y\u001a\u00020\u0019H\u00c6\u0003J\u000b\u0010z\u001a\u0004\u0018\u00010\u0019H\u00c6\u0003J\u0011\u0010{\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010|\u001a\u0004\u0018\u00010\u0019H\u00c6\u0003J\u00e9\u0001\u0010}\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u000e\u0008\u0002\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00062\u000e\u0008\u0002\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00062\u0010\u0008\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u000e\u0008\u0002\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00032\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00192\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00192\u0010\u0008\u0002\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u00062\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u0019H\u00c6\u0001J\u0015\u0010~\u001a\u00020\u007f2\n\u0010\u0080\u0001\u001a\u0005\u0018\u00010\u0081\u0001H\u00d6\u0003J\n\u0010\u0082\u0001\u001a\u00020\tH\u00d6\u0001J\n\u0010\u0083\u0001\u001a\u00020\u0019H\u00d6\u0001J-\u0010\u0084\u0001\u001a\u00030\u0085\u00012\u0007\u0010\u0086\u0001\u001a\u00020\u00002\u0008\u0010\u0087\u0001\u001a\u00030\u0088\u00012\u0008\u0010\u0089\u0001\u001a\u00030\u008a\u0001H\u0001\u00a2\u0006\u0003\u0008\u008b\u0001R*\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R*\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008.\u0010)\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R$\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u00087\u0010)\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R$\u0010\u000c\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008<\u0010)\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R*\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008A\u0010)\u001a\u0004\u0008B\u00100\"\u0004\u0008C\u00102R\"\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008D\u0010)\u001a\u0004\u0008E\u00100R$\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008F\u0010)\u001a\u0004\u0008G\u00100R$\u0010\u0014\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008H\u0010)\u001a\u0004\u0008I\u0010J\"\u0004\u0008K\u0010LR$\u0010\u0016\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008M\u0010)\u001a\u0004\u0008N\u0010O\"\u0004\u0008P\u0010QR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008R\u0010S\"\u0004\u0008T\u0010UR \u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008V\u0010+\"\u0004\u0008W\u0010-R&\u0010\u001b\u001a\u0004\u0018\u00010\u001c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008X\u0010)\u001a\u0004\u0008Y\u0010Z\"\u0004\u0008[\u0010\\R\u001c\u0010\u001d\u001a\u00020\u00198\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008]\u0010)\u001a\u0004\u0008^\u0010SR\u001e\u0010\u001e\u001a\u0004\u0018\u00010\u00198\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008_\u0010)\u001a\u0004\u0008`\u0010SR$\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008a\u0010)\u001a\u0004\u0008b\u00100R\u001e\u0010!\u001a\u0004\u0018\u00010\u00198\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008c\u0010)\u001a\u0004\u0008d\u0010SR\u0017\u0010e\u001a\u0008\u0012\u0004\u0012\u00020f0\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008g\u00100R\u0011\u0010h\u001a\u00020i8F\u00a2\u0006\u0006\u001a\u0004\u0008j\u0010k\u00a8\u0006\u008e\u0001"
    }
    d2 = {
        "Lcom/superwall/sdk/models/config/Config;",
        "Lcom/superwall/sdk/models/SerializableEntity;",
        "triggers",
        "",
        "Lcom/superwall/sdk/models/triggers/Trigger;",
        "paywalls",
        "",
        "Lcom/superwall/sdk/models/paywall/Paywall;",
        "logLevel",
        "",
        "postback",
        "Lcom/superwall/sdk/models/postback/PostbackRequest;",
        "appSessionTimeout",
        "",
        "rawFeatureFlags",
        "Lcom/superwall/sdk/models/config/RawFeatureFlag;",
        "products",
        "Lcom/superwall/sdk/models/product/ProductItem;",
        "productsV3",
        "Lcom/superwall/sdk/models/product/CrossplatformProduct;",
        "preloadingDisabled",
        "Lcom/superwall/sdk/models/config/PreloadingDisabled;",
        "localizationConfig",
        "Lcom/superwall/sdk/models/config/LocalizationConfig;",
        "requestId",
        "",
        "locales",
        "webToAppConfig",
        "Lcom/superwall/sdk/models/config/WebToAppConfig;",
        "buildId",
        "bundleIdConfig",
        "testModeUserIds",
        "Lcom/superwall/sdk/store/testmode/models/TestStoreUser;",
        "prioritizedCampaignId",
        "<init>",
        "(Ljava/util/Set;Ljava/util/List;ILcom/superwall/sdk/models/postback/PostbackRequest;JLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/config/PreloadingDisabled;Lcom/superwall/sdk/models/config/LocalizationConfig;Ljava/lang/String;Ljava/util/Set;Lcom/superwall/sdk/models/config/WebToAppConfig;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V",
        "seen0",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/util/Set;Ljava/util/List;ILcom/superwall/sdk/models/postback/PostbackRequest;JLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/config/PreloadingDisabled;Lcom/superwall/sdk/models/config/LocalizationConfig;Ljava/lang/String;Ljava/util/Set;Lcom/superwall/sdk/models/config/WebToAppConfig;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getTriggers$annotations",
        "()V",
        "getTriggers",
        "()Ljava/util/Set;",
        "setTriggers",
        "(Ljava/util/Set;)V",
        "getPaywalls$annotations",
        "getPaywalls",
        "()Ljava/util/List;",
        "setPaywalls",
        "(Ljava/util/List;)V",
        "getLogLevel",
        "()I",
        "setLogLevel",
        "(I)V",
        "getPostback$annotations",
        "getPostback",
        "()Lcom/superwall/sdk/models/postback/PostbackRequest;",
        "setPostback",
        "(Lcom/superwall/sdk/models/postback/PostbackRequest;)V",
        "getAppSessionTimeout$annotations",
        "getAppSessionTimeout",
        "()J",
        "setAppSessionTimeout",
        "(J)V",
        "getRawFeatureFlags$annotations",
        "getRawFeatureFlags",
        "setRawFeatureFlags",
        "getProducts$annotations",
        "getProducts",
        "getProductsV3$annotations",
        "getProductsV3",
        "getPreloadingDisabled$annotations",
        "getPreloadingDisabled",
        "()Lcom/superwall/sdk/models/config/PreloadingDisabled;",
        "setPreloadingDisabled",
        "(Lcom/superwall/sdk/models/config/PreloadingDisabled;)V",
        "getLocalizationConfig$annotations",
        "getLocalizationConfig",
        "()Lcom/superwall/sdk/models/config/LocalizationConfig;",
        "setLocalizationConfig",
        "(Lcom/superwall/sdk/models/config/LocalizationConfig;)V",
        "getRequestId",
        "()Ljava/lang/String;",
        "setRequestId",
        "(Ljava/lang/String;)V",
        "getLocales",
        "setLocales",
        "getWebToAppConfig$annotations",
        "getWebToAppConfig",
        "()Lcom/superwall/sdk/models/config/WebToAppConfig;",
        "setWebToAppConfig",
        "(Lcom/superwall/sdk/models/config/WebToAppConfig;)V",
        "getBuildId$annotations",
        "getBuildId",
        "getBundleIdConfig$annotations",
        "getBundleIdConfig",
        "getTestModeUserIds$annotations",
        "getTestModeUserIds",
        "getPrioritizedCampaignId$annotations",
        "getPrioritizedCampaignId",
        "allComputedProperties",
        "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;",
        "getAllComputedProperties",
        "featureFlags",
        "Lcom/superwall/sdk/models/config/FeatureFlags;",
        "getFeatureFlags",
        "()Lcom/superwall/sdk/models/config/FeatureFlags;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "write$Self$superwall_release",
        "Companion",
        "$serializer",
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
.field private static final $childSerializers:[Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/superwall/sdk/models/config/Config$Companion;


# instance fields
.field private appSessionTimeout:J

.field private final buildId:Ljava/lang/String;

.field private final bundleIdConfig:Ljava/lang/String;

.field private transient locales:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private localizationConfig:Lcom/superwall/sdk/models/config/LocalizationConfig;

.field private logLevel:I

.field private paywalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            ">;"
        }
    .end annotation
.end field

.field private postback:Lcom/superwall/sdk/models/postback/PostbackRequest;

.field private preloadingDisabled:Lcom/superwall/sdk/models/config/PreloadingDisabled;

.field private final prioritizedCampaignId:Ljava/lang/String;

.field private final products:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductItem;",
            ">;"
        }
    .end annotation
.end field

.field private final productsV3:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/CrossplatformProduct;",
            ">;"
        }
    .end annotation
.end field

.field private rawFeatureFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/config/RawFeatureFlag;",
            ">;"
        }
    .end annotation
.end field

.field private requestId:Ljava/lang/String;

.field private final testModeUserIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/testmode/models/TestStoreUser;",
            ">;"
        }
    .end annotation
.end field

.field private triggers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/triggers/Trigger;",
            ">;"
        }
    .end annotation
.end field

.field private webToAppConfig:Lcom/superwall/sdk/models/config/WebToAppConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/superwall/sdk/models/config/Config$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/config/Config$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/config/Config;->Companion:Lcom/superwall/sdk/models/config/Config$Companion;

    const/16 v0, 0x11

    .line 75
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    new-instance v2, Lkotlinx/serialization/internal/LinkedHashSetSerializer;

    sget-object v3, Lcom/superwall/sdk/models/triggers/Trigger$$serializer;->INSTANCE:Lcom/superwall/sdk/models/triggers/Trigger$$serializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/LinkedHashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lcom/superwall/sdk/models/paywall/Paywall$$serializer;->INSTANCE:Lcom/superwall/sdk/models/paywall/Paywall$$serializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lcom/superwall/sdk/models/config/RawFeatureFlag$$serializer;->INSTANCE:Lcom/superwall/sdk/models/config/RawFeatureFlag$$serializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lcom/superwall/sdk/models/product/ProductItemSerializer;->INSTANCE:Lcom/superwall/sdk/models/product/ProductItemSerializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lcom/superwall/sdk/models/product/CrossplatformProductSerializer;->INSTANCE:Lcom/superwall/sdk/models/product/CrossplatformProductSerializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/4 v3, 0x7

    aput-object v2, v0, v3

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v2, Lkotlinx/serialization/internal/LinkedHashSetSerializer;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/LinkedHashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v3, 0xb

    aput-object v2, v0, v3

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lcom/superwall/sdk/store/testmode/models/TestStoreUser$$serializer;->INSTANCE:Lcom/superwall/sdk/store/testmode/models/TestStoreUser$$serializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v3, 0xf

    aput-object v2, v0, v3

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lcom/superwall/sdk/models/config/Config;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/Set;Ljava/util/List;ILcom/superwall/sdk/models/postback/PostbackRequest;JLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/config/PreloadingDisabled;Lcom/superwall/sdk/models/config/LocalizationConfig;Ljava/lang/String;Ljava/util/Set;Lcom/superwall/sdk/models/config/WebToAppConfig;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit16 v0, p1, 0x237f

    const/16 v1, 0x237f

    if-eq v1, v0, :cond_0

    .line 13
    sget-object v0, Lcom/superwall/sdk/models/config/Config$$serializer;->INSTANCE:Lcom/superwall/sdk/models/config/Config$$serializer;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/config/Config$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/superwall/sdk/models/config/Config;->triggers:Ljava/util/Set;

    iput-object p3, p0, Lcom/superwall/sdk/models/config/Config;->paywalls:Ljava/util/List;

    iput p4, p0, Lcom/superwall/sdk/models/config/Config;->logLevel:I

    iput-object p5, p0, Lcom/superwall/sdk/models/config/Config;->postback:Lcom/superwall/sdk/models/postback/PostbackRequest;

    iput-wide p6, p0, Lcom/superwall/sdk/models/config/Config;->appSessionTimeout:J

    iput-object p8, p0, Lcom/superwall/sdk/models/config/Config;->rawFeatureFlags:Ljava/util/List;

    iput-object p9, p0, Lcom/superwall/sdk/models/config/Config;->products:Ljava/util/List;

    and-int/lit16 p2, p1, 0x80

    const/4 p3, 0x0

    if-nez p2, :cond_1

    iput-object p3, p0, Lcom/superwall/sdk/models/config/Config;->productsV3:Ljava/util/List;

    goto :goto_0

    :cond_1
    iput-object p10, p0, Lcom/superwall/sdk/models/config/Config;->productsV3:Ljava/util/List;

    :goto_0
    iput-object p11, p0, Lcom/superwall/sdk/models/config/Config;->preloadingDisabled:Lcom/superwall/sdk/models/config/PreloadingDisabled;

    iput-object p12, p0, Lcom/superwall/sdk/models/config/Config;->localizationConfig:Lcom/superwall/sdk/models/config/LocalizationConfig;

    and-int/lit16 p2, p1, 0x400

    if-nez p2, :cond_2

    iput-object p3, p0, Lcom/superwall/sdk/models/config/Config;->requestId:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object p13, p0, Lcom/superwall/sdk/models/config/Config;->requestId:Ljava/lang/String;

    :goto_1
    and-int/lit16 p2, p1, 0x800

    if-nez p2, :cond_3

    .line 27
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p2

    goto :goto_2

    :cond_3
    move-object/from16 p2, p14

    .line 13
    :goto_2
    iput-object p2, p0, Lcom/superwall/sdk/models/config/Config;->locales:Ljava/util/Set;

    and-int/lit16 p2, p1, 0x1000

    if-nez p2, :cond_4

    iput-object p3, p0, Lcom/superwall/sdk/models/config/Config;->webToAppConfig:Lcom/superwall/sdk/models/config/WebToAppConfig;

    goto :goto_3

    :cond_4
    move-object/from16 p2, p15

    iput-object p2, p0, Lcom/superwall/sdk/models/config/Config;->webToAppConfig:Lcom/superwall/sdk/models/config/WebToAppConfig;

    :goto_3
    move-object/from16 p2, p16

    iput-object p2, p0, Lcom/superwall/sdk/models/config/Config;->buildId:Ljava/lang/String;

    and-int/lit16 p2, p1, 0x4000

    if-nez p2, :cond_5

    iput-object p3, p0, Lcom/superwall/sdk/models/config/Config;->bundleIdConfig:Ljava/lang/String;

    goto :goto_4

    :cond_5
    move-object/from16 p2, p17

    iput-object p2, p0, Lcom/superwall/sdk/models/config/Config;->bundleIdConfig:Ljava/lang/String;

    :goto_4
    const p2, 0x8000

    and-int/2addr p2, p1

    if-nez p2, :cond_6

    iput-object p3, p0, Lcom/superwall/sdk/models/config/Config;->testModeUserIds:Ljava/util/List;

    goto :goto_5

    :cond_6
    move-object/from16 p2, p18

    iput-object p2, p0, Lcom/superwall/sdk/models/config/Config;->testModeUserIds:Ljava/util/List;

    :goto_5
    const/high16 p2, 0x10000

    and-int/2addr p1, p2

    if-nez p1, :cond_7

    iput-object p3, p0, Lcom/superwall/sdk/models/config/Config;->prioritizedCampaignId:Ljava/lang/String;

    goto :goto_6

    :cond_7
    move-object/from16 p1, p19

    iput-object p1, p0, Lcom/superwall/sdk/models/config/Config;->prioritizedCampaignId:Ljava/lang/String;

    .line 35
    :goto_6
    iget-object p1, p0, Lcom/superwall/sdk/models/config/Config;->localizationConfig:Lcom/superwall/sdk/models/config/LocalizationConfig;

    invoke-virtual {p1}, Lcom/superwall/sdk/models/config/LocalizationConfig;->getLocales()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 93
    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/Collection;

    .line 110
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 111
    check-cast p3, Lcom/superwall/sdk/models/config/LocalizationConfig$LocaleConfig;

    .line 35
    invoke-virtual {p3}, Lcom/superwall/sdk/models/config/LocalizationConfig$LocaleConfig;->getLocale()Ljava/lang/String;

    move-result-object p3

    .line 111
    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 112
    :cond_8
    check-cast p2, Ljava/util/List;

    .line 93
    check-cast p2, Ljava/lang/Iterable;

    .line 35
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/models/config/Config;->locales:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/List;ILcom/superwall/sdk/models/postback/PostbackRequest;JLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/config/PreloadingDisabled;Lcom/superwall/sdk/models/config/LocalizationConfig;Ljava/lang/String;Ljava/util/Set;Lcom/superwall/sdk/models/config/WebToAppConfig;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/triggers/Trigger;",
            ">;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            ">;I",
            "Lcom/superwall/sdk/models/postback/PostbackRequest;",
            "J",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/config/RawFeatureFlag;",
            ">;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/CrossplatformProduct;",
            ">;",
            "Lcom/superwall/sdk/models/config/PreloadingDisabled;",
            "Lcom/superwall/sdk/models/config/LocalizationConfig;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/superwall/sdk/models/config/WebToAppConfig;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/testmode/models/TestStoreUser;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p10

    move-object/from16 v1, p11

    move-object/from16 v2, p13

    move-object/from16 v3, p15

    const-string v4, "triggers"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "paywalls"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "postback"

    invoke-static {p4, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "rawFeatureFlags"

    invoke-static {p7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "products"

    invoke-static {p8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "preloadingDisabled"

    invoke-static {p10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "localizationConfig"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "locales"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "buildId"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/superwall/sdk/models/config/Config;->triggers:Ljava/util/Set;

    .line 16
    iput-object p2, p0, Lcom/superwall/sdk/models/config/Config;->paywalls:Ljava/util/List;

    .line 17
    iput p3, p0, Lcom/superwall/sdk/models/config/Config;->logLevel:I

    .line 18
    iput-object p4, p0, Lcom/superwall/sdk/models/config/Config;->postback:Lcom/superwall/sdk/models/postback/PostbackRequest;

    .line 20
    iput-wide p5, p0, Lcom/superwall/sdk/models/config/Config;->appSessionTimeout:J

    .line 21
    iput-object p7, p0, Lcom/superwall/sdk/models/config/Config;->rawFeatureFlags:Ljava/util/List;

    .line 22
    iput-object p8, p0, Lcom/superwall/sdk/models/config/Config;->products:Ljava/util/List;

    move-object p1, p9

    .line 23
    iput-object p1, p0, Lcom/superwall/sdk/models/config/Config;->productsV3:Ljava/util/List;

    .line 24
    iput-object v0, p0, Lcom/superwall/sdk/models/config/Config;->preloadingDisabled:Lcom/superwall/sdk/models/config/PreloadingDisabled;

    .line 25
    iput-object v1, p0, Lcom/superwall/sdk/models/config/Config;->localizationConfig:Lcom/superwall/sdk/models/config/LocalizationConfig;

    move-object/from16 p1, p12

    .line 26
    iput-object p1, p0, Lcom/superwall/sdk/models/config/Config;->requestId:Ljava/lang/String;

    .line 27
    iput-object v2, p0, Lcom/superwall/sdk/models/config/Config;->locales:Ljava/util/Set;

    move-object/from16 p1, p14

    .line 28
    iput-object p1, p0, Lcom/superwall/sdk/models/config/Config;->webToAppConfig:Lcom/superwall/sdk/models/config/WebToAppConfig;

    .line 29
    iput-object v3, p0, Lcom/superwall/sdk/models/config/Config;->buildId:Ljava/lang/String;

    move-object/from16 p1, p16

    .line 30
    iput-object p1, p0, Lcom/superwall/sdk/models/config/Config;->bundleIdConfig:Ljava/lang/String;

    move-object/from16 p1, p17

    .line 31
    iput-object p1, p0, Lcom/superwall/sdk/models/config/Config;->testModeUserIds:Ljava/util/List;

    move-object/from16 p1, p18

    .line 32
    iput-object p1, p0, Lcom/superwall/sdk/models/config/Config;->prioritizedCampaignId:Ljava/lang/String;

    .line 35
    invoke-virtual {v1}, Lcom/superwall/sdk/models/config/LocalizationConfig;->getLocales()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 93
    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/Collection;

    .line 94
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 95
    check-cast p3, Lcom/superwall/sdk/models/config/LocalizationConfig$LocaleConfig;

    .line 35
    invoke-virtual {p3}, Lcom/superwall/sdk/models/config/LocalizationConfig$LocaleConfig;->getLocale()Ljava/lang/String;

    move-result-object p3

    .line 95
    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_0
    check-cast p2, Ljava/util/List;

    .line 93
    check-cast p2, Ljava/lang/Iterable;

    .line 35
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/models/config/Config;->locales:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;Ljava/util/List;ILcom/superwall/sdk/models/postback/PostbackRequest;JLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/config/PreloadingDisabled;Lcom/superwall/sdk/models/config/LocalizationConfig;Ljava/lang/String;Ljava/util/Set;Lcom/superwall/sdk/models/config/WebToAppConfig;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 22

    move/from16 v0, p19

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v12, v2

    goto :goto_0

    :cond_0
    move-object/from16 v12, p9

    :goto_0
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_1

    move-object v15, v2

    goto :goto_1

    :cond_1
    move-object/from16 v15, p12

    :goto_1
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_2

    .line 27
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_2

    :cond_2
    move-object/from16 v16, p13

    :goto_2
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_3

    move-object/from16 v17, v2

    goto :goto_3

    :cond_3
    move-object/from16 v17, p14

    :goto_3
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_4

    move-object/from16 v19, v2

    goto :goto_4

    :cond_4
    move-object/from16 v19, p16

    :goto_4
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_5

    move-object/from16 v20, v2

    goto :goto_5

    :cond_5
    move-object/from16 v20, p17

    :goto_5
    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_6

    move-object/from16 v21, v2

    goto :goto_6

    :cond_6
    move-object/from16 v21, p18

    :goto_6
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v18, p15

    .line 14
    invoke-direct/range {v3 .. v21}, Lcom/superwall/sdk/models/config/Config;-><init>(Ljava/util/Set;Ljava/util/List;ILcom/superwall/sdk/models/postback/PostbackRequest;JLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/config/PreloadingDisabled;Lcom/superwall/sdk/models/config/LocalizationConfig;Ljava/lang/String;Ljava/util/Set;Lcom/superwall/sdk/models/config/WebToAppConfig;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 13
    sget-object v0, Lcom/superwall/sdk/models/config/Config;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/models/config/Config;Ljava/util/Set;Ljava/util/List;ILcom/superwall/sdk/models/postback/PostbackRequest;JLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/config/PreloadingDisabled;Lcom/superwall/sdk/models/config/LocalizationConfig;Ljava/lang/String;Ljava/util/Set;Lcom/superwall/sdk/models/config/WebToAppConfig;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lcom/superwall/sdk/models/config/Config;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p19

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/superwall/sdk/models/config/Config;->triggers:Ljava/util/Set;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/superwall/sdk/models/config/Config;->paywalls:Ljava/util/List;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/superwall/sdk/models/config/Config;->logLevel:I

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/superwall/sdk/models/config/Config;->postback:Lcom/superwall/sdk/models/postback/PostbackRequest;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-wide v6, v0, Lcom/superwall/sdk/models/config/Config;->appSessionTimeout:J

    goto :goto_4

    :cond_4
    move-wide/from16 v6, p5

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/superwall/sdk/models/config/Config;->rawFeatureFlags:Ljava/util/List;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/superwall/sdk/models/config/Config;->products:Ljava/util/List;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/superwall/sdk/models/config/Config;->productsV3:Ljava/util/List;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/superwall/sdk/models/config/Config;->preloadingDisabled:Lcom/superwall/sdk/models/config/PreloadingDisabled;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/superwall/sdk/models/config/Config;->localizationConfig:Lcom/superwall/sdk/models/config/LocalizationConfig;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/superwall/sdk/models/config/Config;->requestId:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-object v14, v0, Lcom/superwall/sdk/models/config/Config;->locales:Ljava/util/Set;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lcom/superwall/sdk/models/config/Config;->webToAppConfig:Lcom/superwall/sdk/models/config/WebToAppConfig;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p14

    :goto_c
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/superwall/sdk/models/config/Config;->buildId:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v2, p15

    :goto_d
    move-object/from16 p2, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/superwall/sdk/models/config/Config;->bundleIdConfig:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    iget-object v1, v0, Lcom/superwall/sdk/models/config/Config;->testModeUserIds:Ljava/util/List;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p17

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p19, v16

    if-eqz v16, :cond_10

    move-object/from16 p3, v1

    iget-object v1, v0, Lcom/superwall/sdk/models/config/Config;->prioritizedCampaignId:Ljava/lang/String;

    move-object/from16 p18, p3

    move-object/from16 p19, v1

    goto :goto_10

    :cond_10
    move-object/from16 p19, p18

    move-object/from16 p18, v1

    :goto_10
    move-object/from16 p16, p2

    move-object/from16 p17, v2

    move-object/from16 p3, v3

    move/from16 p4, v4

    move-object/from16 p5, v5

    move-wide/from16 p6, v6

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    invoke-virtual/range {p1 .. p19}, Lcom/superwall/sdk/models/config/Config;->copy(Ljava/util/Set;Ljava/util/List;ILcom/superwall/sdk/models/postback/PostbackRequest;JLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/config/PreloadingDisabled;Lcom/superwall/sdk/models/config/LocalizationConfig;Ljava/lang/String;Ljava/util/Set;Lcom/superwall/sdk/models/config/WebToAppConfig;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/superwall/sdk/models/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getAppSessionTimeout$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "appSessionTimeoutMs"
    .end annotation

    return-void
.end method

.method public static synthetic getBuildId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "build_id"
    .end annotation

    return-void
.end method

.method public static synthetic getBundleIdConfig$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "bundle_id_config"
    .end annotation

    return-void
.end method

.method public static synthetic getLocalizationConfig$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "localization"
    .end annotation

    return-void
.end method

.method public static synthetic getPaywalls$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "paywallResponses"
    .end annotation

    return-void
.end method

.method public static synthetic getPostback$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "postback"
    .end annotation

    return-void
.end method

.method public static synthetic getPreloadingDisabled$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "disablePreload"
    .end annotation

    return-void
.end method

.method public static synthetic getPrioritizedCampaignId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "prioritized_campaign_id"
    .end annotation

    return-void
.end method

.method public static synthetic getProducts$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "products"
    .end annotation

    return-void
.end method

.method public static synthetic getProductsV3$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "products_v3"
    .end annotation

    return-void
.end method

.method public static synthetic getRawFeatureFlags$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "toggles"
    .end annotation

    return-void
.end method

.method public static synthetic getTestModeUserIds$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "test_mode_user_ids"
    .end annotation

    return-void
.end method

.method public static synthetic getTriggers$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "triggerOptions"
    .end annotation

    return-void
.end method

.method public static synthetic getWebToAppConfig$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "web2app_config"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/models/config/Config;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 13
    sget-object v0, Lcom/superwall/sdk/models/config/Config;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/models/config/Config;->triggers:Ljava/util/Set;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aget-object v2, v0, v1

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/models/config/Config;->paywalls:Ljava/util/List;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x2

    iget v2, p0, Lcom/superwall/sdk/models/config/Config;->logLevel:I

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    sget-object v1, Lcom/superwall/sdk/models/postback/PostbackRequest$$serializer;->INSTANCE:Lcom/superwall/sdk/models/postback/PostbackRequest$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/models/config/Config;->postback:Lcom/superwall/sdk/models/postback/PostbackRequest;

    const/4 v3, 0x3

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/superwall/sdk/models/config/Config;->appSessionTimeout:J

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    const/4 v1, 0x5

    aget-object v2, v0, v1

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/models/config/Config;->rawFeatureFlags:Ljava/util/List;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x6

    aget-object v2, v0, v1

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/models/config/Config;->products:Ljava/util/List;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x7

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/superwall/sdk/models/config/Config;->productsV3:Ljava/util/List;

    if-eqz v2, :cond_1

    :goto_0
    aget-object v2, v0, v1

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/models/config/Config;->productsV3:Ljava/util/List;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    sget-object v1, Lcom/superwall/sdk/models/config/PreloadingDisabled$$serializer;->INSTANCE:Lcom/superwall/sdk/models/config/PreloadingDisabled$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/models/config/Config;->preloadingDisabled:Lcom/superwall/sdk/models/config/PreloadingDisabled;

    const/16 v3, 0x8

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lcom/superwall/sdk/models/config/LocalizationConfig$$serializer;->INSTANCE:Lcom/superwall/sdk/models/config/LocalizationConfig$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/models/config/Config;->localizationConfig:Lcom/superwall/sdk/models/config/LocalizationConfig;

    const/16 v3, 0x9

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0xa

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/superwall/sdk/models/config/Config;->requestId:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_1
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/models/config/Config;->requestId:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    const/16 v1, 0xb

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/superwall/sdk/models/config/Config;->locales:Ljava/util/Set;

    .line 27
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v3

    .line 13
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :goto_2
    aget-object v2, v0, v1

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/models/config/Config;->locales:Ljava/util/Set;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    const/16 v1, 0xc

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/superwall/sdk/models/config/Config;->webToAppConfig:Lcom/superwall/sdk/models/config/WebToAppConfig;

    if-eqz v2, :cond_7

    :goto_3
    sget-object v2, Lcom/superwall/sdk/models/config/WebToAppConfig$$serializer;->INSTANCE:Lcom/superwall/sdk/models/config/WebToAppConfig$$serializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/models/config/Config;->webToAppConfig:Lcom/superwall/sdk/models/config/WebToAppConfig;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_7
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/superwall/sdk/models/config/Config;->buildId:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0xe

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lcom/superwall/sdk/models/config/Config;->bundleIdConfig:Ljava/lang/String;

    if-eqz v2, :cond_9

    :goto_4
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/models/config/Config;->bundleIdConfig:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_9
    const/16 v1, 0xf

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    iget-object v2, p0, Lcom/superwall/sdk/models/config/Config;->testModeUserIds:Ljava/util/List;

    if-eqz v2, :cond_b

    :goto_5
    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/models/config/Config;->testModeUserIds:Ljava/util/List;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_b
    const/16 v0, 0x10

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_6

    :cond_c
    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->prioritizedCampaignId:Ljava/lang/String;

    if-eqz v1, :cond_d

    :goto_6
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/superwall/sdk/models/config/Config;->prioritizedCampaignId:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public final component1()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/triggers/Trigger;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/models/config/Config;->triggers:Ljava/util/Set;

    return-object v0
.end method

.method public final component10()Lcom/superwall/sdk/models/config/LocalizationConfig;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/config/Config;->localizationConfig:Lcom/superwall/sdk/models/config/LocalizationConfig;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/config/Config;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/models/config/Config;->locales:Ljava/util/Set;

    return-object v0
.end method

.method public final component13()Lcom/superwall/sdk/models/config/WebToAppConfig;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/config/Config;->webToAppConfig:Lcom/superwall/sdk/models/config/WebToAppConfig;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/config/Config;->buildId:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/config/Config;->bundleIdConfig:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/testmode/models/TestStoreUser;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/models/config/Config;->testModeUserIds:Ljava/util/List;

    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/config/Config;->prioritizedCampaignId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/models/config/Config;->paywalls:Ljava/util/List;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/superwall/sdk/models/config/Config;->logLevel:I

    return v0
.end method

.method public final component4()Lcom/superwall/sdk/models/postback/PostbackRequest;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/config/Config;->postback:Lcom/superwall/sdk/models/postback/PostbackRequest;

    return-object v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/superwall/sdk/models/config/Config;->appSessionTimeout:J

    return-wide v0
.end method

.method public final component6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/config/RawFeatureFlag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/models/config/Config;->rawFeatureFlags:Ljava/util/List;

    return-object v0
.end method

.method public final component7()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/models/config/Config;->products:Ljava/util/List;

    return-object v0
.end method

.method public final component8()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/CrossplatformProduct;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/models/config/Config;->productsV3:Ljava/util/List;

    return-object v0
.end method

.method public final component9()Lcom/superwall/sdk/models/config/PreloadingDisabled;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/config/Config;->preloadingDisabled:Lcom/superwall/sdk/models/config/PreloadingDisabled;

    return-object v0
.end method

.method public final copy(Ljava/util/Set;Ljava/util/List;ILcom/superwall/sdk/models/postback/PostbackRequest;JLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/config/PreloadingDisabled;Lcom/superwall/sdk/models/config/LocalizationConfig;Ljava/lang/String;Ljava/util/Set;Lcom/superwall/sdk/models/config/WebToAppConfig;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/superwall/sdk/models/config/Config;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/triggers/Trigger;",
            ">;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            ">;I",
            "Lcom/superwall/sdk/models/postback/PostbackRequest;",
            "J",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/config/RawFeatureFlag;",
            ">;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/CrossplatformProduct;",
            ">;",
            "Lcom/superwall/sdk/models/config/PreloadingDisabled;",
            "Lcom/superwall/sdk/models/config/LocalizationConfig;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/superwall/sdk/models/config/WebToAppConfig;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/testmode/models/TestStoreUser;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/superwall/sdk/models/config/Config;"
        }
    .end annotation

    const-string v0, "triggers"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paywalls"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postback"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rawFeatureFlags"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "products"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preloadingDisabled"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localizationConfig"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locales"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildId"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/superwall/sdk/models/config/Config;

    move/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v10, p9

    move-object/from16 v13, p12

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    invoke-direct/range {v1 .. v19}, Lcom/superwall/sdk/models/config/Config;-><init>(Ljava/util/Set;Ljava/util/List;ILcom/superwall/sdk/models/postback/PostbackRequest;JLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/config/PreloadingDisabled;Lcom/superwall/sdk/models/config/LocalizationConfig;Ljava/lang/String;Ljava/util/Set;Lcom/superwall/sdk/models/config/WebToAppConfig;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/models/config/Config;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/models/config/Config;

    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->triggers:Ljava/util/Set;

    iget-object v3, p1, Lcom/superwall/sdk/models/config/Config;->triggers:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->paywalls:Ljava/util/List;

    iget-object v3, p1, Lcom/superwall/sdk/models/config/Config;->paywalls:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/superwall/sdk/models/config/Config;->logLevel:I

    iget v3, p1, Lcom/superwall/sdk/models/config/Config;->logLevel:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->postback:Lcom/superwall/sdk/models/postback/PostbackRequest;

    iget-object v3, p1, Lcom/superwall/sdk/models/config/Config;->postback:Lcom/superwall/sdk/models/postback/PostbackRequest;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/superwall/sdk/models/config/Config;->appSessionTimeout:J

    iget-wide v5, p1, Lcom/superwall/sdk/models/config/Config;->appSessionTimeout:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->rawFeatureFlags:Ljava/util/List;

    iget-object v3, p1, Lcom/superwall/sdk/models/config/Config;->rawFeatureFlags:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->products:Ljava/util/List;

    iget-object v3, p1, Lcom/superwall/sdk/models/config/Config;->products:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->productsV3:Ljava/util/List;

    iget-object v3, p1, Lcom/superwall/sdk/models/config/Config;->productsV3:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->preloadingDisabled:Lcom/superwall/sdk/models/config/PreloadingDisabled;

    iget-object v3, p1, Lcom/superwall/sdk/models/config/Config;->preloadingDisabled:Lcom/superwall/sdk/models/config/PreloadingDisabled;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->localizationConfig:Lcom/superwall/sdk/models/config/LocalizationConfig;

    iget-object v3, p1, Lcom/superwall/sdk/models/config/Config;->localizationConfig:Lcom/superwall/sdk/models/config/LocalizationConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->requestId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/config/Config;->requestId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->locales:Ljava/util/Set;

    iget-object v3, p1, Lcom/superwall/sdk/models/config/Config;->locales:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->webToAppConfig:Lcom/superwall/sdk/models/config/WebToAppConfig;

    iget-object v3, p1, Lcom/superwall/sdk/models/config/Config;->webToAppConfig:Lcom/superwall/sdk/models/config/WebToAppConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->buildId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/config/Config;->buildId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->bundleIdConfig:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/config/Config;->bundleIdConfig:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->testModeUserIds:Ljava/util/List;

    iget-object v3, p1, Lcom/superwall/sdk/models/config/Config;->testModeUserIds:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->prioritizedCampaignId:Ljava/lang/String;

    iget-object p1, p1, Lcom/superwall/sdk/models/config/Config;->prioritizedCampaignId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v2

    :cond_12
    return v0
.end method

.method public final getAllComputedProperties()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/superwall/sdk/models/config/Config;->triggers:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 98
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 99
    check-cast v2, Lcom/superwall/sdk/models/triggers/Trigger;

    .line 41
    invoke-virtual {v2}, Lcom/superwall/sdk/models/triggers/Trigger;->getRules()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 100
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 101
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 102
    check-cast v4, Lcom/superwall/sdk/models/triggers/TriggerRule;

    .line 42
    invoke-virtual {v4}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getComputedPropertyRequests()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 103
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    .line 105
    :cond_0
    check-cast v3, Ljava/util/List;

    .line 100
    check-cast v3, Ljava/lang/Iterable;

    .line 106
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 108
    :cond_1
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final getAppSessionTimeout()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/superwall/sdk/models/config/Config;->appSessionTimeout:J

    return-wide v0
.end method

.method public final getBuildId()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/superwall/sdk/models/config/Config;->buildId:Ljava/lang/String;

    return-object v0
.end method

.method public final getBundleIdConfig()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/superwall/sdk/models/config/Config;->bundleIdConfig:Ljava/lang/String;

    return-object v0
.end method

.method public final getFeatureFlags()Lcom/superwall/sdk/models/config/FeatureFlags;
    .locals 13

    .line 50
    iget-object v0, p0, Lcom/superwall/sdk/models/config/Config;->rawFeatureFlags:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/superwall/sdk/models/config/RawFeatureFlag;

    invoke-virtual {v3}, Lcom/superwall/sdk/models/config/RawFeatureFlag;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "enable_multiple_paywall_urls"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lcom/superwall/sdk/models/config/RawFeatureFlag;

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/superwall/sdk/models/config/RawFeatureFlag;->getEnabled()Z

    move-result v1

    move v9, v1

    goto :goto_1

    :cond_2
    move v9, v0

    .line 53
    :goto_1
    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->rawFeatureFlags:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/superwall/sdk/models/config/RawFeatureFlag;

    invoke-virtual {v4}, Lcom/superwall/sdk/models/config/RawFeatureFlag;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "enable_config_refresh_v2"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_4
    move-object v3, v2

    :goto_2
    check-cast v3, Lcom/superwall/sdk/models/config/RawFeatureFlag;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/superwall/sdk/models/config/RawFeatureFlag;->getEnabled()Z

    move-result v1

    move v4, v1

    goto :goto_3

    :cond_5
    move v4, v0

    .line 56
    :goto_3
    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->rawFeatureFlags:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/superwall/sdk/models/config/RawFeatureFlag;

    invoke-virtual {v5}, Lcom/superwall/sdk/models/config/RawFeatureFlag;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "enable_session_events"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_4

    :cond_7
    move-object v3, v2

    :goto_4
    check-cast v3, Lcom/superwall/sdk/models/config/RawFeatureFlag;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/superwall/sdk/models/config/RawFeatureFlag;->getEnabled()Z

    move-result v1

    move v5, v1

    goto :goto_5

    :cond_8
    move v5, v0

    .line 59
    :goto_5
    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->rawFeatureFlags:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/superwall/sdk/models/config/RawFeatureFlag;

    invoke-virtual {v6}, Lcom/superwall/sdk/models/config/RawFeatureFlag;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "enable_postback"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_6

    :cond_a
    move-object v3, v2

    :goto_6
    check-cast v3, Lcom/superwall/sdk/models/config/RawFeatureFlag;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/superwall/sdk/models/config/RawFeatureFlag;->getEnabled()Z

    move-result v1

    move v6, v1

    goto :goto_7

    :cond_b
    move v6, v0

    .line 62
    :goto_7
    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->rawFeatureFlags:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/superwall/sdk/models/config/RawFeatureFlag;

    invoke-virtual {v7}, Lcom/superwall/sdk/models/config/RawFeatureFlag;->getKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "enable_userid_seed"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_8

    :cond_d
    move-object v3, v2

    :goto_8
    check-cast v3, Lcom/superwall/sdk/models/config/RawFeatureFlag;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/superwall/sdk/models/config/RawFeatureFlag;->getEnabled()Z

    move-result v1

    move v7, v1

    goto :goto_9

    :cond_e
    move v7, v0

    .line 65
    :goto_9
    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->rawFeatureFlags:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/superwall/sdk/models/config/RawFeatureFlag;

    invoke-virtual {v8}, Lcom/superwall/sdk/models/config/RawFeatureFlag;->getKey()Ljava/lang/String;

    move-result-object v8

    const-string v10, "disable_verbose_events"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    goto :goto_a

    :cond_10
    move-object v3, v2

    :goto_a
    check-cast v3, Lcom/superwall/sdk/models/config/RawFeatureFlag;

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lcom/superwall/sdk/models/config/RawFeatureFlag;->getEnabled()Z

    move-result v1

    move v8, v1

    goto :goto_b

    :cond_11
    move v8, v0

    .line 68
    :goto_b
    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->rawFeatureFlags:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/superwall/sdk/models/config/RawFeatureFlag;

    invoke-virtual {v10}, Lcom/superwall/sdk/models/config/RawFeatureFlag;->getKey()Ljava/lang/String;

    move-result-object v10

    const-string v11, "enable_cel_logging"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    goto :goto_c

    :cond_13
    move-object v3, v2

    :goto_c
    check-cast v3, Lcom/superwall/sdk/models/config/RawFeatureFlag;

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Lcom/superwall/sdk/models/config/RawFeatureFlag;->getEnabled()Z

    move-result v1

    move v10, v1

    goto :goto_d

    :cond_14
    move v10, v0

    .line 71
    :goto_d
    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->rawFeatureFlags:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/superwall/sdk/models/config/RawFeatureFlag;

    invoke-virtual {v11}, Lcom/superwall/sdk/models/config/RawFeatureFlag;->getKey()Ljava/lang/String;

    move-result-object v11

    const-string v12, "web_2_app"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    move-object v2, v3

    :cond_16
    check-cast v2, Lcom/superwall/sdk/models/config/RawFeatureFlag;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lcom/superwall/sdk/models/config/RawFeatureFlag;->getEnabled()Z

    move-result v0

    :cond_17
    move v11, v0

    .line 48
    new-instance v3, Lcom/superwall/sdk/models/config/FeatureFlags;

    invoke-direct/range {v3 .. v11}, Lcom/superwall/sdk/models/config/FeatureFlags;-><init>(ZZZZZZZZ)V

    return-object v3
.end method

.method public final getLocales()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/superwall/sdk/models/config/Config;->locales:Ljava/util/Set;

    return-object v0
.end method

.method public final getLocalizationConfig()Lcom/superwall/sdk/models/config/LocalizationConfig;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/superwall/sdk/models/config/Config;->localizationConfig:Lcom/superwall/sdk/models/config/LocalizationConfig;

    return-object v0
.end method

.method public final getLogLevel()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/superwall/sdk/models/config/Config;->logLevel:I

    return v0
.end method

.method public final getPaywalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/superwall/sdk/models/config/Config;->paywalls:Ljava/util/List;

    return-object v0
.end method

.method public final getPostback()Lcom/superwall/sdk/models/postback/PostbackRequest;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/superwall/sdk/models/config/Config;->postback:Lcom/superwall/sdk/models/postback/PostbackRequest;

    return-object v0
.end method

.method public final getPreloadingDisabled()Lcom/superwall/sdk/models/config/PreloadingDisabled;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/superwall/sdk/models/config/Config;->preloadingDisabled:Lcom/superwall/sdk/models/config/PreloadingDisabled;

    return-object v0
.end method

.method public final getPrioritizedCampaignId()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/superwall/sdk/models/config/Config;->prioritizedCampaignId:Ljava/lang/String;

    return-object v0
.end method

.method public final getProducts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductItem;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/superwall/sdk/models/config/Config;->products:Ljava/util/List;

    return-object v0
.end method

.method public final getProductsV3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/CrossplatformProduct;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/superwall/sdk/models/config/Config;->productsV3:Ljava/util/List;

    return-object v0
.end method

.method public final getRawFeatureFlags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/config/RawFeatureFlag;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/superwall/sdk/models/config/Config;->rawFeatureFlags:Ljava/util/List;

    return-object v0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/superwall/sdk/models/config/Config;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTestModeUserIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/testmode/models/TestStoreUser;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/superwall/sdk/models/config/Config;->testModeUserIds:Ljava/util/List;

    return-object v0
.end method

.method public final getTriggers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/triggers/Trigger;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/superwall/sdk/models/config/Config;->triggers:Ljava/util/Set;

    return-object v0
.end method

.method public final getWebToAppConfig()Lcom/superwall/sdk/models/config/WebToAppConfig;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/superwall/sdk/models/config/Config;->webToAppConfig:Lcom/superwall/sdk/models/config/WebToAppConfig;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/superwall/sdk/models/config/Config;->triggers:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->paywalls:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/superwall/sdk/models/config/Config;->logLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->postback:Lcom/superwall/sdk/models/postback/PostbackRequest;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/postback/PostbackRequest;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/superwall/sdk/models/config/Config;->appSessionTimeout:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->rawFeatureFlags:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->products:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->productsV3:Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->preloadingDisabled:Lcom/superwall/sdk/models/config/PreloadingDisabled;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/config/PreloadingDisabled;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->localizationConfig:Lcom/superwall/sdk/models/config/LocalizationConfig;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/config/LocalizationConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->requestId:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->locales:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->webToAppConfig:Lcom/superwall/sdk/models/config/WebToAppConfig;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/superwall/sdk/models/config/WebToAppConfig;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->buildId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->bundleIdConfig:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->testModeUserIds:Ljava/util/List;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/config/Config;->prioritizedCampaignId:Ljava/lang/String;

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    return v0
.end method

.method public final setAppSessionTimeout(J)V
    .locals 0

    .line 20
    iput-wide p1, p0, Lcom/superwall/sdk/models/config/Config;->appSessionTimeout:J

    return-void
.end method

.method public final setLocales(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/superwall/sdk/models/config/Config;->locales:Ljava/util/Set;

    return-void
.end method

.method public final setLocalizationConfig(Lcom/superwall/sdk/models/config/LocalizationConfig;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/superwall/sdk/models/config/Config;->localizationConfig:Lcom/superwall/sdk/models/config/LocalizationConfig;

    return-void
.end method

.method public final setLogLevel(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/superwall/sdk/models/config/Config;->logLevel:I

    return-void
.end method

.method public final setPaywalls(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/superwall/sdk/models/config/Config;->paywalls:Ljava/util/List;

    return-void
.end method

.method public final setPostback(Lcom/superwall/sdk/models/postback/PostbackRequest;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/superwall/sdk/models/config/Config;->postback:Lcom/superwall/sdk/models/postback/PostbackRequest;

    return-void
.end method

.method public final setPreloadingDisabled(Lcom/superwall/sdk/models/config/PreloadingDisabled;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/superwall/sdk/models/config/Config;->preloadingDisabled:Lcom/superwall/sdk/models/config/PreloadingDisabled;

    return-void
.end method

.method public final setRawFeatureFlags(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/config/RawFeatureFlag;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/superwall/sdk/models/config/Config;->rawFeatureFlags:Ljava/util/List;

    return-void
.end method

.method public final setRequestId(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/superwall/sdk/models/config/Config;->requestId:Ljava/lang/String;

    return-void
.end method

.method public final setTriggers(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/triggers/Trigger;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/superwall/sdk/models/config/Config;->triggers:Ljava/util/Set;

    return-void
.end method

.method public final setWebToAppConfig(Lcom/superwall/sdk/models/config/WebToAppConfig;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/superwall/sdk/models/config/Config;->webToAppConfig:Lcom/superwall/sdk/models/config/WebToAppConfig;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/superwall/sdk/models/config/Config;->triggers:Ljava/util/Set;

    iget-object v2, v0, Lcom/superwall/sdk/models/config/Config;->paywalls:Ljava/util/List;

    iget v3, v0, Lcom/superwall/sdk/models/config/Config;->logLevel:I

    iget-object v4, v0, Lcom/superwall/sdk/models/config/Config;->postback:Lcom/superwall/sdk/models/postback/PostbackRequest;

    iget-wide v5, v0, Lcom/superwall/sdk/models/config/Config;->appSessionTimeout:J

    iget-object v7, v0, Lcom/superwall/sdk/models/config/Config;->rawFeatureFlags:Ljava/util/List;

    iget-object v8, v0, Lcom/superwall/sdk/models/config/Config;->products:Ljava/util/List;

    iget-object v9, v0, Lcom/superwall/sdk/models/config/Config;->productsV3:Ljava/util/List;

    iget-object v10, v0, Lcom/superwall/sdk/models/config/Config;->preloadingDisabled:Lcom/superwall/sdk/models/config/PreloadingDisabled;

    iget-object v11, v0, Lcom/superwall/sdk/models/config/Config;->localizationConfig:Lcom/superwall/sdk/models/config/LocalizationConfig;

    iget-object v12, v0, Lcom/superwall/sdk/models/config/Config;->requestId:Ljava/lang/String;

    iget-object v13, v0, Lcom/superwall/sdk/models/config/Config;->locales:Ljava/util/Set;

    iget-object v14, v0, Lcom/superwall/sdk/models/config/Config;->webToAppConfig:Lcom/superwall/sdk/models/config/WebToAppConfig;

    iget-object v15, v0, Lcom/superwall/sdk/models/config/Config;->buildId:Ljava/lang/String;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/superwall/sdk/models/config/Config;->bundleIdConfig:Ljava/lang/String;

    move-object/from16 v17, v15

    iget-object v15, v0, Lcom/superwall/sdk/models/config/Config;->testModeUserIds:Ljava/util/List;

    move-object/from16 v18, v15

    iget-object v15, v0, Lcom/superwall/sdk/models/config/Config;->prioritizedCampaignId:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v19, v15

    const-string v15, "Config(triggers="

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paywalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", postback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appSessionTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rawFeatureFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", products="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productsV3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", preloadingDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localizationConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locales="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", webToAppConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", buildId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bundleIdConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", testModeUserIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prioritizedCampaignId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
