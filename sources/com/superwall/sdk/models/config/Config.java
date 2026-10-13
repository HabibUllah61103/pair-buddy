package com.superwall.sdk.models.config;

import com.superwall.sdk.models.SerializableEntity;
import com.superwall.sdk.models.paywall.Paywall;
import com.superwall.sdk.models.paywall.Paywall$$serializer;
import com.superwall.sdk.models.postback.PostbackRequest;
import com.superwall.sdk.models.postback.PostbackRequest$$serializer;
import com.superwall.sdk.models.product.CrossplatformProduct;
import com.superwall.sdk.models.product.CrossplatformProductSerializer;
import com.superwall.sdk.models.product.ProductItem;
import com.superwall.sdk.models.product.ProductItemSerializer;
import com.superwall.sdk.models.triggers.Trigger;
import com.superwall.sdk.models.triggers.Trigger$$serializer;
import com.superwall.sdk.models.triggers.TriggerRule;
import com.superwall.sdk.store.testmode.models.TestStoreUser;
import com.superwall.sdk.store.testmode.models.TestStoreUser$$serializer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.LinkedHashSetSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: Config.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000¢\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b?\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 \u008c\u00012\u00020\u0001:\u0004\u008c\u0001\u008d\u0001BÓ\u0001\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0006\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\u0006\u0012\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0006\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\u000e\b\u0002\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u0003\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u0012\u0006\u0010\u001d\u001a\u00020\u0019\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0019\u0012\u0010\b\u0002\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u0006\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0019¢\u0006\u0004\b\"\u0010#Bë\u0001\b\u0010\u0012\u0006\u0010$\u001a\u00020\t\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0006\u0012\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0006\u0012\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0006\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0003\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u0019\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u0019\u0012\u000e\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u0006\u0012\b\u0010!\u001a\u0004\u0018\u00010\u0019\u0012\b\u0010%\u001a\u0004\u0018\u00010&¢\u0006\u0004\b\"\u0010'J\u000f\u0010l\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000f\u0010m\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006HÆ\u0003J\t\u0010n\u001a\u00020\tHÆ\u0003J\t\u0010o\u001a\u00020\u000bHÆ\u0003J\t\u0010p\u001a\u00020\rHÆ\u0003J\u000f\u0010q\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0006HÆ\u0003J\u000f\u0010r\u001a\b\u0012\u0004\u0012\u00020\u00110\u0006HÆ\u0003J\u0011\u0010s\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0006HÆ\u0003J\t\u0010t\u001a\u00020\u0015HÆ\u0003J\t\u0010u\u001a\u00020\u0017HÆ\u0003J\u000b\u0010v\u001a\u0004\u0018\u00010\u0019HÆ\u0003J\u000f\u0010w\u001a\b\u0012\u0004\u0012\u00020\u00190\u0003HÆ\u0003J\u000b\u0010x\u001a\u0004\u0018\u00010\u001cHÆ\u0003J\t\u0010y\u001a\u00020\u0019HÆ\u0003J\u000b\u0010z\u001a\u0004\u0018\u00010\u0019HÆ\u0003J\u0011\u0010{\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u0006HÆ\u0003J\u000b\u0010|\u001a\u0004\u0018\u00010\u0019HÆ\u0003Jé\u0001\u0010}\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00062\u000e\b\u0002\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\u00062\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u00062\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u000e\b\u0002\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u00032\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\b\u0002\u0010\u001d\u001a\u00020\u00192\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00192\u0010\b\u0002\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u00062\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0019HÆ\u0001J\u0015\u0010~\u001a\u00020\u007f2\n\u0010\u0080\u0001\u001a\u0005\u0018\u00010\u0081\u0001HÖ\u0003J\n\u0010\u0082\u0001\u001a\u00020\tHÖ\u0001J\n\u0010\u0083\u0001\u001a\u00020\u0019HÖ\u0001J-\u0010\u0084\u0001\u001a\u00030\u0085\u00012\u0007\u0010\u0086\u0001\u001a\u00020\u00002\b\u0010\u0087\u0001\u001a\u00030\u0088\u00012\b\u0010\u0089\u0001\u001a\u00030\u008a\u0001H\u0001¢\u0006\u0003\b\u008b\u0001R*\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R*\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b.\u0010)\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u00104\"\u0004\b5\u00106R$\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b7\u0010)\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R$\u0010\f\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b<\u0010)\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R*\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bA\u0010)\u001a\u0004\bB\u00100\"\u0004\bC\u00102R\"\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bD\u0010)\u001a\u0004\bE\u00100R$\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bF\u0010)\u001a\u0004\bG\u00100R$\u0010\u0014\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bH\u0010)\u001a\u0004\bI\u0010J\"\u0004\bK\u0010LR$\u0010\u0016\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bM\u0010)\u001a\u0004\bN\u0010O\"\u0004\bP\u0010QR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bR\u0010S\"\u0004\bT\u0010UR \u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bV\u0010+\"\u0004\bW\u0010-R&\u0010\u001b\u001a\u0004\u0018\u00010\u001c8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bX\u0010)\u001a\u0004\bY\u0010Z\"\u0004\b[\u0010\\R\u001c\u0010\u001d\u001a\u00020\u00198\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b]\u0010)\u001a\u0004\b^\u0010SR\u001e\u0010\u001e\u001a\u0004\u0018\u00010\u00198\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b_\u0010)\u001a\u0004\b`\u0010SR$\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\ba\u0010)\u001a\u0004\bb\u00100R\u001e\u0010!\u001a\u0004\u0018\u00010\u00198\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bc\u0010)\u001a\u0004\bd\u0010SR\u0017\u0010e\u001a\b\u0012\u0004\u0012\u00020f0\u00068F¢\u0006\u0006\u001a\u0004\bg\u00100R\u0011\u0010h\u001a\u00020i8F¢\u0006\u0006\u001a\u0004\bj\u0010k¨\u0006\u008e\u0001"}, d2 = {"Lcom/superwall/sdk/models/config/Config;", "Lcom/superwall/sdk/models/SerializableEntity;", "triggers", "", "Lcom/superwall/sdk/models/triggers/Trigger;", "paywalls", "", "Lcom/superwall/sdk/models/paywall/Paywall;", "logLevel", "", "postback", "Lcom/superwall/sdk/models/postback/PostbackRequest;", "appSessionTimeout", "", "rawFeatureFlags", "Lcom/superwall/sdk/models/config/RawFeatureFlag;", "products", "Lcom/superwall/sdk/models/product/ProductItem;", "productsV3", "Lcom/superwall/sdk/models/product/CrossplatformProduct;", "preloadingDisabled", "Lcom/superwall/sdk/models/config/PreloadingDisabled;", "localizationConfig", "Lcom/superwall/sdk/models/config/LocalizationConfig;", "requestId", "", "locales", "webToAppConfig", "Lcom/superwall/sdk/models/config/WebToAppConfig;", "buildId", "bundleIdConfig", "testModeUserIds", "Lcom/superwall/sdk/store/testmode/models/TestStoreUser;", "prioritizedCampaignId", "<init>", "(Ljava/util/Set;Ljava/util/List;ILcom/superwall/sdk/models/postback/PostbackRequest;JLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/config/PreloadingDisabled;Lcom/superwall/sdk/models/config/LocalizationConfig;Ljava/lang/String;Ljava/util/Set;Lcom/superwall/sdk/models/config/WebToAppConfig;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V", "seen0", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/util/Set;Ljava/util/List;ILcom/superwall/sdk/models/postback/PostbackRequest;JLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/config/PreloadingDisabled;Lcom/superwall/sdk/models/config/LocalizationConfig;Ljava/lang/String;Ljava/util/Set;Lcom/superwall/sdk/models/config/WebToAppConfig;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getTriggers$annotations", "()V", "getTriggers", "()Ljava/util/Set;", "setTriggers", "(Ljava/util/Set;)V", "getPaywalls$annotations", "getPaywalls", "()Ljava/util/List;", "setPaywalls", "(Ljava/util/List;)V", "getLogLevel", "()I", "setLogLevel", "(I)V", "getPostback$annotations", "getPostback", "()Lcom/superwall/sdk/models/postback/PostbackRequest;", "setPostback", "(Lcom/superwall/sdk/models/postback/PostbackRequest;)V", "getAppSessionTimeout$annotations", "getAppSessionTimeout", "()J", "setAppSessionTimeout", "(J)V", "getRawFeatureFlags$annotations", "getRawFeatureFlags", "setRawFeatureFlags", "getProducts$annotations", "getProducts", "getProductsV3$annotations", "getProductsV3", "getPreloadingDisabled$annotations", "getPreloadingDisabled", "()Lcom/superwall/sdk/models/config/PreloadingDisabled;", "setPreloadingDisabled", "(Lcom/superwall/sdk/models/config/PreloadingDisabled;)V", "getLocalizationConfig$annotations", "getLocalizationConfig", "()Lcom/superwall/sdk/models/config/LocalizationConfig;", "setLocalizationConfig", "(Lcom/superwall/sdk/models/config/LocalizationConfig;)V", "getRequestId", "()Ljava/lang/String;", "setRequestId", "(Ljava/lang/String;)V", "getLocales", "setLocales", "getWebToAppConfig$annotations", "getWebToAppConfig", "()Lcom/superwall/sdk/models/config/WebToAppConfig;", "setWebToAppConfig", "(Lcom/superwall/sdk/models/config/WebToAppConfig;)V", "getBuildId$annotations", "getBuildId", "getBundleIdConfig$annotations", "getBundleIdConfig", "getTestModeUserIds$annotations", "getTestModeUserIds", "getPrioritizedCampaignId$annotations", "getPrioritizedCampaignId", "allComputedProperties", "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;", "getAllComputedProperties", "featureFlags", "Lcom/superwall/sdk/models/config/FeatureFlags;", "getFeatureFlags", "()Lcom/superwall/sdk/models/config/FeatureFlags;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "copy", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "Companion", "$serializer", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class Config implements SerializableEntity {
    private long appSessionTimeout;
    private final String buildId;
    private final String bundleIdConfig;
    private transient Set<String> locales;
    private LocalizationConfig localizationConfig;
    private int logLevel;
    private List<Paywall> paywalls;
    private PostbackRequest postback;
    private PreloadingDisabled preloadingDisabled;
    private final String prioritizedCampaignId;
    private final List<ProductItem> products;
    private final List<CrossplatformProduct> productsV3;
    private List<RawFeatureFlag> rawFeatureFlags;
    private String requestId;
    private final List<TestStoreUser> testModeUserIds;
    private Set<Trigger> triggers;
    private WebToAppConfig webToAppConfig;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new LinkedHashSetSerializer(Trigger$$serializer.INSTANCE), new ArrayListSerializer(Paywall$$serializer.INSTANCE), null, null, null, new ArrayListSerializer(RawFeatureFlag$$serializer.INSTANCE), new ArrayListSerializer(ProductItemSerializer.INSTANCE), new ArrayListSerializer(CrossplatformProductSerializer.INSTANCE), null, null, null, new LinkedHashSetSerializer(StringSerializer.INSTANCE), null, null, null, new ArrayListSerializer(TestStoreUser$$serializer.INSTANCE), null};

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Config copy$default(Config config, Set set, List list, int i, PostbackRequest postbackRequest, long j, List list2, List list3, List list4, PreloadingDisabled preloadingDisabled, LocalizationConfig localizationConfig, String str, Set set2, WebToAppConfig webToAppConfig, String str2, String str3, List list5, String str4, int i2, Object obj) {
        String str5;
        List list6;
        Set set3 = (i2 & 1) != 0 ? config.triggers : set;
        List list7 = (i2 & 2) != 0 ? config.paywalls : list;
        int i3 = (i2 & 4) != 0 ? config.logLevel : i;
        PostbackRequest postbackRequest2 = (i2 & 8) != 0 ? config.postback : postbackRequest;
        long j2 = (i2 & 16) != 0 ? config.appSessionTimeout : j;
        List list8 = (i2 & 32) != 0 ? config.rawFeatureFlags : list2;
        List list9 = (i2 & 64) != 0 ? config.products : list3;
        List list10 = (i2 & 128) != 0 ? config.productsV3 : list4;
        PreloadingDisabled preloadingDisabled2 = (i2 & 256) != 0 ? config.preloadingDisabled : preloadingDisabled;
        LocalizationConfig localizationConfig2 = (i2 & 512) != 0 ? config.localizationConfig : localizationConfig;
        String str6 = (i2 & 1024) != 0 ? config.requestId : str;
        Set set4 = (i2 & 2048) != 0 ? config.locales : set2;
        WebToAppConfig webToAppConfig2 = (i2 & 4096) != 0 ? config.webToAppConfig : webToAppConfig;
        Set set5 = set3;
        String str7 = (i2 & 8192) != 0 ? config.buildId : str2;
        String str8 = (i2 & 16384) != 0 ? config.bundleIdConfig : str3;
        List list11 = (i2 & 32768) != 0 ? config.testModeUserIds : list5;
        if ((i2 & 65536) != 0) {
            list6 = list11;
            str5 = config.prioritizedCampaignId;
        } else {
            str5 = str4;
            list6 = list11;
        }
        return config.copy(set5, list7, i3, postbackRequest2, j2, list8, list9, list10, preloadingDisabled2, localizationConfig2, str6, set4, webToAppConfig2, str7, str8, list6, str5);
    }

    @SerialName("appSessionTimeoutMs")
    public static /* synthetic */ void getAppSessionTimeout$annotations() {
    }

    @SerialName("build_id")
    public static /* synthetic */ void getBuildId$annotations() {
    }

    @SerialName("bundle_id_config")
    public static /* synthetic */ void getBundleIdConfig$annotations() {
    }

    @SerialName("localization")
    public static /* synthetic */ void getLocalizationConfig$annotations() {
    }

    @SerialName("paywallResponses")
    public static /* synthetic */ void getPaywalls$annotations() {
    }

    @SerialName("postback")
    public static /* synthetic */ void getPostback$annotations() {
    }

    @SerialName("disablePreload")
    public static /* synthetic */ void getPreloadingDisabled$annotations() {
    }

    @SerialName("prioritized_campaign_id")
    public static /* synthetic */ void getPrioritizedCampaignId$annotations() {
    }

    @SerialName("products")
    public static /* synthetic */ void getProducts$annotations() {
    }

    @SerialName("products_v3")
    public static /* synthetic */ void getProductsV3$annotations() {
    }

    @SerialName("toggles")
    public static /* synthetic */ void getRawFeatureFlags$annotations() {
    }

    @SerialName("test_mode_user_ids")
    public static /* synthetic */ void getTestModeUserIds$annotations() {
    }

    @SerialName("triggerOptions")
    public static /* synthetic */ void getTriggers$annotations() {
    }

    @SerialName("web2app_config")
    public static /* synthetic */ void getWebToAppConfig$annotations() {
    }

    public final Set<Trigger> component1() {
        return this.triggers;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final LocalizationConfig getLocalizationConfig() {
        return this.localizationConfig;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getRequestId() {
        return this.requestId;
    }

    public final Set<String> component12() {
        return this.locales;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final WebToAppConfig getWebToAppConfig() {
        return this.webToAppConfig;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getBuildId() {
        return this.buildId;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final String getBundleIdConfig() {
        return this.bundleIdConfig;
    }

    public final List<TestStoreUser> component16() {
        return this.testModeUserIds;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final String getPrioritizedCampaignId() {
        return this.prioritizedCampaignId;
    }

    public final List<Paywall> component2() {
        return this.paywalls;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getLogLevel() {
        return this.logLevel;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final PostbackRequest getPostback() {
        return this.postback;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final long getAppSessionTimeout() {
        return this.appSessionTimeout;
    }

    public final List<RawFeatureFlag> component6() {
        return this.rawFeatureFlags;
    }

    public final List<ProductItem> component7() {
        return this.products;
    }

    public final List<CrossplatformProduct> component8() {
        return this.productsV3;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final PreloadingDisabled getPreloadingDisabled() {
        return this.preloadingDisabled;
    }

    public final Config copy(Set<Trigger> triggers, List<Paywall> paywalls, int logLevel, PostbackRequest postback, long appSessionTimeout, List<RawFeatureFlag> rawFeatureFlags, List<ProductItem> products, List<CrossplatformProduct> productsV3, PreloadingDisabled preloadingDisabled, LocalizationConfig localizationConfig, String requestId, Set<String> locales, WebToAppConfig webToAppConfig, String buildId, String bundleIdConfig, List<TestStoreUser> testModeUserIds, String prioritizedCampaignId) {
        Intrinsics.checkNotNullParameter(triggers, "triggers");
        Intrinsics.checkNotNullParameter(paywalls, "paywalls");
        Intrinsics.checkNotNullParameter(postback, "postback");
        Intrinsics.checkNotNullParameter(rawFeatureFlags, "rawFeatureFlags");
        Intrinsics.checkNotNullParameter(products, "products");
        Intrinsics.checkNotNullParameter(preloadingDisabled, "preloadingDisabled");
        Intrinsics.checkNotNullParameter(localizationConfig, "localizationConfig");
        Intrinsics.checkNotNullParameter(locales, "locales");
        Intrinsics.checkNotNullParameter(buildId, "buildId");
        return new Config(triggers, paywalls, logLevel, postback, appSessionTimeout, rawFeatureFlags, products, productsV3, preloadingDisabled, localizationConfig, requestId, locales, webToAppConfig, buildId, bundleIdConfig, testModeUserIds, prioritizedCampaignId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Config)) {
            return false;
        }
        Config config = (Config) other;
        return Intrinsics.areEqual(this.triggers, config.triggers) && Intrinsics.areEqual(this.paywalls, config.paywalls) && this.logLevel == config.logLevel && Intrinsics.areEqual(this.postback, config.postback) && this.appSessionTimeout == config.appSessionTimeout && Intrinsics.areEqual(this.rawFeatureFlags, config.rawFeatureFlags) && Intrinsics.areEqual(this.products, config.products) && Intrinsics.areEqual(this.productsV3, config.productsV3) && Intrinsics.areEqual(this.preloadingDisabled, config.preloadingDisabled) && Intrinsics.areEqual(this.localizationConfig, config.localizationConfig) && Intrinsics.areEqual(this.requestId, config.requestId) && Intrinsics.areEqual(this.locales, config.locales) && Intrinsics.areEqual(this.webToAppConfig, config.webToAppConfig) && Intrinsics.areEqual(this.buildId, config.buildId) && Intrinsics.areEqual(this.bundleIdConfig, config.bundleIdConfig) && Intrinsics.areEqual(this.testModeUserIds, config.testModeUserIds) && Intrinsics.areEqual(this.prioritizedCampaignId, config.prioritizedCampaignId);
    }

    public int hashCode() {
        int iHashCode = ((((((((((((this.triggers.hashCode() * 31) + this.paywalls.hashCode()) * 31) + Integer.hashCode(this.logLevel)) * 31) + this.postback.hashCode()) * 31) + Long.hashCode(this.appSessionTimeout)) * 31) + this.rawFeatureFlags.hashCode()) * 31) + this.products.hashCode()) * 31;
        List<CrossplatformProduct> list = this.productsV3;
        int iHashCode2 = (((((iHashCode + (list == null ? 0 : list.hashCode())) * 31) + this.preloadingDisabled.hashCode()) * 31) + this.localizationConfig.hashCode()) * 31;
        String str = this.requestId;
        int iHashCode3 = (((iHashCode2 + (str == null ? 0 : str.hashCode())) * 31) + this.locales.hashCode()) * 31;
        WebToAppConfig webToAppConfig = this.webToAppConfig;
        int iHashCode4 = (((iHashCode3 + (webToAppConfig == null ? 0 : webToAppConfig.hashCode())) * 31) + this.buildId.hashCode()) * 31;
        String str2 = this.bundleIdConfig;
        int iHashCode5 = (iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        List<TestStoreUser> list2 = this.testModeUserIds;
        int iHashCode6 = (iHashCode5 + (list2 == null ? 0 : list2.hashCode())) * 31;
        String str3 = this.prioritizedCampaignId;
        return iHashCode6 + (str3 != null ? str3.hashCode() : 0);
    }

    public String toString() {
        return "Config(triggers=" + this.triggers + ", paywalls=" + this.paywalls + ", logLevel=" + this.logLevel + ", postback=" + this.postback + ", appSessionTimeout=" + this.appSessionTimeout + ", rawFeatureFlags=" + this.rawFeatureFlags + ", products=" + this.products + ", productsV3=" + this.productsV3 + ", preloadingDisabled=" + this.preloadingDisabled + ", localizationConfig=" + this.localizationConfig + ", requestId=" + this.requestId + ", locales=" + this.locales + ", webToAppConfig=" + this.webToAppConfig + ", buildId=" + this.buildId + ", bundleIdConfig=" + this.bundleIdConfig + ", testModeUserIds=" + this.testModeUserIds + ", prioritizedCampaignId=" + this.prioritizedCampaignId + ")";
    }

    public /* synthetic */ Config(int i, Set set, List list, int i2, PostbackRequest postbackRequest, long j, List list2, List list3, List list4, PreloadingDisabled preloadingDisabled, LocalizationConfig localizationConfig, String str, Set set2, WebToAppConfig webToAppConfig, String str2, String str3, List list5, String str4, SerializationConstructorMarker serializationConstructorMarker) {
        if (9087 != (i & 9087)) {
            PluginExceptionsKt.throwMissingFieldException(i, 9087, Config$$serializer.INSTANCE.getDescriptor());
        }
        this.triggers = set;
        this.paywalls = list;
        this.logLevel = i2;
        this.postback = postbackRequest;
        this.appSessionTimeout = j;
        this.rawFeatureFlags = list2;
        this.products = list3;
        if ((i & 128) == 0) {
            this.productsV3 = null;
        } else {
            this.productsV3 = list4;
        }
        this.preloadingDisabled = preloadingDisabled;
        this.localizationConfig = localizationConfig;
        if ((i & 1024) == 0) {
            this.requestId = null;
        } else {
            this.requestId = str;
        }
        this.locales = (i & 2048) == 0 ? SetsKt.emptySet() : set2;
        if ((i & 4096) == 0) {
            this.webToAppConfig = null;
        } else {
            this.webToAppConfig = webToAppConfig;
        }
        this.buildId = str2;
        if ((i & 16384) == 0) {
            this.bundleIdConfig = null;
        } else {
            this.bundleIdConfig = str3;
        }
        if ((32768 & i) == 0) {
            this.testModeUserIds = null;
        } else {
            this.testModeUserIds = list5;
        }
        if ((i & 65536) == 0) {
            this.prioritizedCampaignId = null;
        } else {
            this.prioritizedCampaignId = str4;
        }
        List<LocalizationConfig.LocaleConfig> locales = this.localizationConfig.getLocales();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(locales, 10));
        Iterator<T> it = locales.iterator();
        while (it.hasNext()) {
            arrayList.add(((LocalizationConfig.LocaleConfig) it.next()).getLocale());
        }
        this.locales = CollectionsKt.toSet(arrayList);
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(Config self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeSerializableElement(serialDesc, 0, kSerializerArr[0], self.triggers);
        output.encodeSerializableElement(serialDesc, 1, kSerializerArr[1], self.paywalls);
        output.encodeIntElement(serialDesc, 2, self.logLevel);
        output.encodeSerializableElement(serialDesc, 3, PostbackRequest$$serializer.INSTANCE, self.postback);
        output.encodeLongElement(serialDesc, 4, self.appSessionTimeout);
        output.encodeSerializableElement(serialDesc, 5, kSerializerArr[5], self.rawFeatureFlags);
        output.encodeSerializableElement(serialDesc, 6, kSerializerArr[6], self.products);
        if (output.shouldEncodeElementDefault(serialDesc, 7) || self.productsV3 != null) {
            output.encodeNullableSerializableElement(serialDesc, 7, kSerializerArr[7], self.productsV3);
        }
        output.encodeSerializableElement(serialDesc, 8, PreloadingDisabled$$serializer.INSTANCE, self.preloadingDisabled);
        output.encodeSerializableElement(serialDesc, 9, LocalizationConfig$$serializer.INSTANCE, self.localizationConfig);
        if (output.shouldEncodeElementDefault(serialDesc, 10) || self.requestId != null) {
            output.encodeNullableSerializableElement(serialDesc, 10, StringSerializer.INSTANCE, self.requestId);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 11) || !Intrinsics.areEqual(self.locales, SetsKt.emptySet())) {
            output.encodeSerializableElement(serialDesc, 11, kSerializerArr[11], self.locales);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 12) || self.webToAppConfig != null) {
            output.encodeNullableSerializableElement(serialDesc, 12, WebToAppConfig$$serializer.INSTANCE, self.webToAppConfig);
        }
        output.encodeStringElement(serialDesc, 13, self.buildId);
        if (output.shouldEncodeElementDefault(serialDesc, 14) || self.bundleIdConfig != null) {
            output.encodeNullableSerializableElement(serialDesc, 14, StringSerializer.INSTANCE, self.bundleIdConfig);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 15) || self.testModeUserIds != null) {
            output.encodeNullableSerializableElement(serialDesc, 15, kSerializerArr[15], self.testModeUserIds);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 16) && self.prioritizedCampaignId == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 16, StringSerializer.INSTANCE, self.prioritizedCampaignId);
    }

    public Config(Set<Trigger> triggers, List<Paywall> paywalls, int i, PostbackRequest postback, long j, List<RawFeatureFlag> rawFeatureFlags, List<ProductItem> products, List<CrossplatformProduct> list, PreloadingDisabled preloadingDisabled, LocalizationConfig localizationConfig, String str, Set<String> locales, WebToAppConfig webToAppConfig, String buildId, String str2, List<TestStoreUser> list2, String str3) {
        Intrinsics.checkNotNullParameter(triggers, "triggers");
        Intrinsics.checkNotNullParameter(paywalls, "paywalls");
        Intrinsics.checkNotNullParameter(postback, "postback");
        Intrinsics.checkNotNullParameter(rawFeatureFlags, "rawFeatureFlags");
        Intrinsics.checkNotNullParameter(products, "products");
        Intrinsics.checkNotNullParameter(preloadingDisabled, "preloadingDisabled");
        Intrinsics.checkNotNullParameter(localizationConfig, "localizationConfig");
        Intrinsics.checkNotNullParameter(locales, "locales");
        Intrinsics.checkNotNullParameter(buildId, "buildId");
        this.triggers = triggers;
        this.paywalls = paywalls;
        this.logLevel = i;
        this.postback = postback;
        this.appSessionTimeout = j;
        this.rawFeatureFlags = rawFeatureFlags;
        this.products = products;
        this.productsV3 = list;
        this.preloadingDisabled = preloadingDisabled;
        this.localizationConfig = localizationConfig;
        this.requestId = str;
        this.locales = locales;
        this.webToAppConfig = webToAppConfig;
        this.buildId = buildId;
        this.bundleIdConfig = str2;
        this.testModeUserIds = list2;
        this.prioritizedCampaignId = str3;
        List<LocalizationConfig.LocaleConfig> locales2 = localizationConfig.getLocales();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(locales2, 10));
        Iterator<T> it = locales2.iterator();
        while (it.hasNext()) {
            arrayList.add(((LocalizationConfig.LocaleConfig) it.next()).getLocale());
        }
        this.locales = CollectionsKt.toSet(arrayList);
    }

    public final Set<Trigger> getTriggers() {
        return this.triggers;
    }

    public final void setTriggers(Set<Trigger> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.triggers = set;
    }

    public final List<Paywall> getPaywalls() {
        return this.paywalls;
    }

    public final void setPaywalls(List<Paywall> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.paywalls = list;
    }

    public final int getLogLevel() {
        return this.logLevel;
    }

    public final void setLogLevel(int i) {
        this.logLevel = i;
    }

    public final PostbackRequest getPostback() {
        return this.postback;
    }

    public final void setPostback(PostbackRequest postbackRequest) {
        Intrinsics.checkNotNullParameter(postbackRequest, "<set-?>");
        this.postback = postbackRequest;
    }

    public final long getAppSessionTimeout() {
        return this.appSessionTimeout;
    }

    public final void setAppSessionTimeout(long j) {
        this.appSessionTimeout = j;
    }

    public final List<RawFeatureFlag> getRawFeatureFlags() {
        return this.rawFeatureFlags;
    }

    public final void setRawFeatureFlags(List<RawFeatureFlag> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.rawFeatureFlags = list;
    }

    public final List<ProductItem> getProducts() {
        return this.products;
    }

    public final List<CrossplatformProduct> getProductsV3() {
        return this.productsV3;
    }

    public final PreloadingDisabled getPreloadingDisabled() {
        return this.preloadingDisabled;
    }

    public final void setPreloadingDisabled(PreloadingDisabled preloadingDisabled) {
        Intrinsics.checkNotNullParameter(preloadingDisabled, "<set-?>");
        this.preloadingDisabled = preloadingDisabled;
    }

    public final LocalizationConfig getLocalizationConfig() {
        return this.localizationConfig;
    }

    public final void setLocalizationConfig(LocalizationConfig localizationConfig) {
        Intrinsics.checkNotNullParameter(localizationConfig, "<set-?>");
        this.localizationConfig = localizationConfig;
    }

    public final String getRequestId() {
        return this.requestId;
    }

    public final void setRequestId(String str) {
        this.requestId = str;
    }

    public /* synthetic */ Config(Set set, List list, int i, PostbackRequest postbackRequest, long j, List list2, List list3, List list4, PreloadingDisabled preloadingDisabled, LocalizationConfig localizationConfig, String str, Set set2, WebToAppConfig webToAppConfig, String str2, String str3, List list5, String str4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(set, list, i, postbackRequest, j, list2, list3, (i2 & 128) != 0 ? null : list4, preloadingDisabled, localizationConfig, (i2 & 1024) != 0 ? null : str, (i2 & 2048) != 0 ? SetsKt.emptySet() : set2, (i2 & 4096) != 0 ? null : webToAppConfig, str2, (i2 & 16384) != 0 ? null : str3, (32768 & i2) != 0 ? null : list5, (i2 & 65536) != 0 ? null : str4);
    }

    public final Set<String> getLocales() {
        return this.locales;
    }

    public final void setLocales(Set<String> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.locales = set;
    }

    public final WebToAppConfig getWebToAppConfig() {
        return this.webToAppConfig;
    }

    public final void setWebToAppConfig(WebToAppConfig webToAppConfig) {
        this.webToAppConfig = webToAppConfig;
    }

    public final String getBuildId() {
        return this.buildId;
    }

    public final String getBundleIdConfig() {
        return this.bundleIdConfig;
    }

    public final List<TestStoreUser> getTestModeUserIds() {
        return this.testModeUserIds;
    }

    public final String getPrioritizedCampaignId() {
        return this.prioritizedCampaignId;
    }

    public final List<ComputedPropertyRequest> getAllComputedProperties() {
        Set<Trigger> set = this.triggers;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = set.iterator();
        while (it.hasNext()) {
            List<TriggerRule> rules = ((Trigger) it.next()).getRules();
            ArrayList arrayList2 = new ArrayList();
            Iterator<T> it2 = rules.iterator();
            while (it2.hasNext()) {
                CollectionsKt.addAll(arrayList2, ((TriggerRule) it2.next()).getComputedPropertyRequests());
            }
            CollectionsKt.addAll(arrayList, arrayList2);
        }
        return arrayList;
    }

    public final FeatureFlags getFeatureFlags() {
        Object obj;
        Object next;
        Object next2;
        Object next3;
        Object next4;
        Object next5;
        Object next6;
        Object next7;
        Iterator<T> it = this.rawFeatureFlags.iterator();
        do {
            obj = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.areEqual(((RawFeatureFlag) next).getKey(), "enable_multiple_paywall_urls"));
        RawFeatureFlag rawFeatureFlag = (RawFeatureFlag) next;
        boolean enabled = rawFeatureFlag != null ? rawFeatureFlag.getEnabled() : false;
        Iterator<T> it2 = this.rawFeatureFlags.iterator();
        do {
            if (!it2.hasNext()) {
                next2 = null;
                break;
            }
            next2 = it2.next();
        } while (!Intrinsics.areEqual(((RawFeatureFlag) next2).getKey(), "enable_config_refresh_v2"));
        RawFeatureFlag rawFeatureFlag2 = (RawFeatureFlag) next2;
        boolean enabled2 = rawFeatureFlag2 != null ? rawFeatureFlag2.getEnabled() : false;
        Iterator<T> it3 = this.rawFeatureFlags.iterator();
        do {
            if (!it3.hasNext()) {
                next3 = null;
                break;
            }
            next3 = it3.next();
        } while (!Intrinsics.areEqual(((RawFeatureFlag) next3).getKey(), "enable_session_events"));
        RawFeatureFlag rawFeatureFlag3 = (RawFeatureFlag) next3;
        boolean enabled3 = rawFeatureFlag3 != null ? rawFeatureFlag3.getEnabled() : false;
        Iterator<T> it4 = this.rawFeatureFlags.iterator();
        do {
            if (!it4.hasNext()) {
                next4 = null;
                break;
            }
            next4 = it4.next();
        } while (!Intrinsics.areEqual(((RawFeatureFlag) next4).getKey(), "enable_postback"));
        RawFeatureFlag rawFeatureFlag4 = (RawFeatureFlag) next4;
        boolean enabled4 = rawFeatureFlag4 != null ? rawFeatureFlag4.getEnabled() : false;
        Iterator<T> it5 = this.rawFeatureFlags.iterator();
        do {
            if (!it5.hasNext()) {
                next5 = null;
                break;
            }
            next5 = it5.next();
        } while (!Intrinsics.areEqual(((RawFeatureFlag) next5).getKey(), "enable_userid_seed"));
        RawFeatureFlag rawFeatureFlag5 = (RawFeatureFlag) next5;
        boolean enabled5 = rawFeatureFlag5 != null ? rawFeatureFlag5.getEnabled() : false;
        Iterator<T> it6 = this.rawFeatureFlags.iterator();
        do {
            if (!it6.hasNext()) {
                next6 = null;
                break;
            }
            next6 = it6.next();
        } while (!Intrinsics.areEqual(((RawFeatureFlag) next6).getKey(), "disable_verbose_events"));
        RawFeatureFlag rawFeatureFlag6 = (RawFeatureFlag) next6;
        boolean enabled6 = rawFeatureFlag6 != null ? rawFeatureFlag6.getEnabled() : false;
        Iterator<T> it7 = this.rawFeatureFlags.iterator();
        do {
            if (!it7.hasNext()) {
                next7 = null;
                break;
            }
            next7 = it7.next();
        } while (!Intrinsics.areEqual(((RawFeatureFlag) next7).getKey(), "enable_cel_logging"));
        RawFeatureFlag rawFeatureFlag7 = (RawFeatureFlag) next7;
        boolean enabled7 = rawFeatureFlag7 != null ? rawFeatureFlag7.getEnabled() : false;
        for (Object obj2 : this.rawFeatureFlags) {
            if (Intrinsics.areEqual(((RawFeatureFlag) obj2).getKey(), "web_2_app")) {
                obj = obj2;
                break;
            }
        }
        RawFeatureFlag rawFeatureFlag8 = (RawFeatureFlag) obj;
        return new FeatureFlags(enabled2, enabled3, enabled4, enabled5, enabled6, enabled, enabled7, rawFeatureFlag8 != null ? rawFeatureFlag8.getEnabled() : false);
    }

    /* JADX INFO: compiled from: Config.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/models/config/Config$Companion;", "", "<init>", "()V", "stub", "Lcom/superwall/sdk/models/config/Config;", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<Config> serializer() {
            return Config$$serializer.INSTANCE;
        }

        public final Config stub() {
            return new Config(SetsKt.setOf(Trigger.INSTANCE.stub()), CollectionsKt.listOf(Paywall.INSTANCE.stub()), 0, PostbackRequest.INSTANCE.stub(), 3600000L, CollectionsKt.emptyList(), CollectionsKt.emptyList(), (List) null, PreloadingDisabled.INSTANCE.stub(), new LocalizationConfig(CollectionsKt.emptyList()), (String) null, (Set) null, (WebToAppConfig) null, "stub-build-id", (String) null, (List) null, (String) null, 121856, (DefaultConstructorMarker) null);
        }
    }
}
