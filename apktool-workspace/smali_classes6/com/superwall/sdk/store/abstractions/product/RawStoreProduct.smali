.class public final Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;
.super Ljava/lang/Object;
.source "RawStoreProduct.kt"

# interfaces
.implements Lcom/superwall/sdk/store/abstractions/product/StoreProductType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$Companion;,
        Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails;,
        Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRawStoreProduct.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RawStoreProduct.kt\ncom/superwall/sdk/store/abstractions/product/RawStoreProduct\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,796:1\n774#2:797\n865#2,2:798\n774#2:800\n865#2,2:801\n2341#2,14:803\n295#2,2:817\n295#2,2:819\n774#2:821\n865#2,2:822\n2341#2,14:824\n774#2:838\n865#2,2:839\n2341#2,14:841\n774#2:855\n865#2,2:856\n2341#2,14:858\n295#2,2:873\n774#2:875\n865#2,2:876\n295#2,2:878\n295#2,2:880\n774#2:882\n865#2,2:883\n774#2:885\n865#2,2:886\n774#2:888\n865#2:889\n1755#2,3:890\n866#2:893\n1611#2,9:894\n1863#2:903\n295#2,2:904\n1864#2:907\n1620#2:908\n1971#2,14:909\n1611#2,9:923\n1863#2:932\n295#2,2:933\n1864#2:936\n1620#2:937\n2341#2,14:938\n295#2,2:952\n295#2,2:954\n295#2,2:956\n295#2,2:958\n1#3:872\n1#3:906\n1#3:935\n*S KotlinDebug\n*F\n+ 1 RawStoreProduct.kt\ncom/superwall/sdk/store/abstractions/product/RawStoreProduct\n*L\n347#1:797\n347#1:798,2\n349#1:800\n349#1:801,2\n351#1:803,14\n356#1:817,2\n357#1:819,2\n362#1:821\n362#1:822,2\n362#1:824,14\n367#1:838\n367#1:839,2\n367#1:841,14\n372#1:855\n372#1:856,2\n373#1:858,14\n397#1:873,2\n401#1:875\n401#1:876,2\n402#1:878,2\n408#1:880,2\n429#1:882\n429#1:883,2\n434#1:885\n434#1:886,2\n436#1:888\n436#1:889\n436#1:890,3\n436#1:893\n447#1:894,9\n447#1:903\n450#1:904,2\n447#1:907\n447#1:908\n457#1:909,14\n463#1:923,9\n463#1:932\n466#1:933,2\n463#1:936\n463#1:937\n471#1:938,14\n82#1:952,2\n85#1:954,2\n318#1:956,2\n322#1:958,2\n447#1:906\n463#1:935\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0010\u0008\n\u0002\u0008%\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u00081\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000 \u00c1\u00012\u00020\u0001:\u0004\u00c1\u0001\u00c2\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\n\u0010v\u001a\u0004\u0018\u00010\"H\u0002J\n\u0010w\u001a\u0004\u0018\u00010xH\u0002J\u0018\u0010y\u001a\u0004\u0018\u00010z2\u000c\u0010{\u001a\u0008\u0012\u0004\u0012\u00020z0|H\u0002J\u0018\u0010}\u001a\u0004\u0018\u00010z2\u000c\u0010{\u001a\u0008\u0012\u0004\u0012\u00020z0|H\u0002J\u0013\u0010\u00b5\u0001\u001a\u00020\u00052\u0008\u0010\u00b6\u0001\u001a\u00030\u00b7\u0001H\u0016J\u001c\u0010\u00b8\u0001\u001a\u00020\'2\u0008\u0010\u00b6\u0001\u001a\u00030\u00b7\u00012\u0007\u0010\u00b9\u0001\u001a\u00020-H\u0002J\u0013\u0010\u00ba\u0001\u001a\u00020\'2\u0008\u0010\u00b6\u0001\u001a\u00030\u00b7\u0001H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00158\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0016\u0010\u0017R\u001d\u0010\u0018\u001a\u0004\u0018\u00010\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001a\u0010\u001bR\u001d\u0010\u001e\u001a\u0004\u0018\u00010\u00058@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u001d\u001a\u0004\u0008\u001f\u0010\u000fR\u001d\u0010!\u001a\u0004\u0018\u00010\"8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010\u001d\u001a\u0004\u0008#\u0010$R#\u0010&\u001a\n (*\u0004\u0018\u00010\'0\'8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010\u001d\u001a\u0004\u0008)\u0010*R\u001d\u0010,\u001a\u0004\u0018\u00010-8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00080\u0010\u001d\u001a\u0004\u0008.\u0010/R\u001b\u00101\u001a\u00020\u00058VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00083\u0010\u001d\u001a\u0004\u00082\u0010\u000fR\u0014\u00104\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00085\u0010\u000fR#\u00106\u001a\n (*\u0004\u0018\u00010\'0\'8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00088\u0010\u001d\u001a\u0004\u00087\u0010*R\u001b\u00109\u001a\u00020\u00058VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008;\u0010\u001d\u001a\u0004\u0008:\u0010\u000fR\u001b\u0010<\u001a\u00020\u00058VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008>\u0010\u001d\u001a\u0004\u0008=\u0010\u000fR\u001b\u0010?\u001a\u00020\u00058VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008A\u0010\u001d\u001a\u0004\u0008@\u0010\u000fR\u001b\u0010B\u001a\u00020\u00058VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008D\u0010\u001d\u001a\u0004\u0008C\u0010\u000fR\u001b\u0010E\u001a\u00020F8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008I\u0010\u001d\u001a\u0004\u0008G\u0010HR\u001b\u0010J\u001a\u00020\u00058VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008L\u0010\u001d\u001a\u0004\u0008K\u0010\u000fR\u001b\u0010M\u001a\u00020F8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008O\u0010\u001d\u001a\u0004\u0008N\u0010HR\u001b\u0010P\u001a\u00020\u00058VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008R\u0010\u001d\u001a\u0004\u0008Q\u0010\u000fR\u001b\u0010S\u001a\u00020F8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008U\u0010\u001d\u001a\u0004\u0008T\u0010HR\u001b\u0010V\u001a\u00020\u00058VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008X\u0010\u001d\u001a\u0004\u0008W\u0010\u000fR\u001b\u0010Y\u001a\u00020F8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008[\u0010\u001d\u001a\u0004\u0008Z\u0010HR\u001b\u0010\\\u001a\u00020\u00058VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008^\u0010\u001d\u001a\u0004\u0008]\u0010\u000fR\u001b\u0010_\u001a\u00020\u00058VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008a\u0010\u001d\u001a\u0004\u0008`\u0010\u000fR\u001b\u0010b\u001a\u00020\u00058VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008d\u0010\u001d\u001a\u0004\u0008c\u0010\u000fR\u001b\u0010e\u001a\u00020\u00058VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008g\u0010\u001d\u001a\u0004\u0008f\u0010\u000fR\u001b\u0010h\u001a\u00020\u00058VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008j\u0010\u001d\u001a\u0004\u0008i\u0010\u000fR\u001b\u0010k\u001a\u00020l8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008o\u0010\u001d\u001a\u0004\u0008m\u0010nR\u001b\u0010p\u001a\u00020\u00058VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008r\u0010\u001d\u001a\u0004\u0008q\u0010\u000fR\u001b\u0010s\u001a\u00020\'8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008u\u0010\u001d\u001a\u0004\u0008t\u0010*R \u0010~\u001a\u0004\u0018\u00010\u007f8VX\u0096\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u0082\u0001\u0010\u001d\u001a\u0006\u0008\u0080\u0001\u0010\u0081\u0001R\u001e\u0010\u0083\u0001\u001a\u00020\u00058VX\u0096\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u0085\u0001\u0010\u001d\u001a\u0005\u0008\u0084\u0001\u0010\u000fR\u001e\u0010\u0086\u0001\u001a\u00020F8VX\u0096\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u0088\u0001\u0010\u001d\u001a\u0005\u0008\u0087\u0001\u0010HR\u001e\u0010\u0089\u0001\u001a\u00020\u00058VX\u0096\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u008b\u0001\u0010\u001d\u001a\u0005\u0008\u008a\u0001\u0010\u000fR\u001e\u0010\u008c\u0001\u001a\u00020F8VX\u0096\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u008e\u0001\u0010\u001d\u001a\u0005\u0008\u008d\u0001\u0010HR\u001e\u0010\u008f\u0001\u001a\u00020\u00058VX\u0096\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u0091\u0001\u0010\u001d\u001a\u0005\u0008\u0090\u0001\u0010\u000fR\u001e\u0010\u0092\u0001\u001a\u00020F8VX\u0096\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u0094\u0001\u0010\u001d\u001a\u0005\u0008\u0093\u0001\u0010HR\u001e\u0010\u0095\u0001\u001a\u00020\u00058VX\u0096\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u0097\u0001\u0010\u001d\u001a\u0005\u0008\u0096\u0001\u0010\u000fR\u001e\u0010\u0098\u0001\u001a\u00020F8VX\u0096\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u009a\u0001\u0010\u001d\u001a\u0005\u0008\u0099\u0001\u0010HR\u001e\u0010\u009b\u0001\u001a\u00020\u00058VX\u0096\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u009d\u0001\u0010\u001d\u001a\u0005\u0008\u009c\u0001\u0010\u000fR\u001e\u0010\u009e\u0001\u001a\u00020\u00058VX\u0096\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u00a0\u0001\u0010\u001d\u001a\u0005\u0008\u009f\u0001\u0010\u000fR\u001e\u0010\u00a1\u0001\u001a\u00020\u00058VX\u0096\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u00a3\u0001\u0010\u001d\u001a\u0005\u0008\u00a2\u0001\u0010\u000fR \u0010\u00a4\u0001\u001a\u0004\u0018\u00010\u00058VX\u0096\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u00a6\u0001\u0010\u001d\u001a\u0005\u0008\u00a5\u0001\u0010\u000fR \u0010\u00a7\u0001\u001a\u0004\u0018\u00010\u00058VX\u0096\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u00a9\u0001\u0010\u001d\u001a\u0005\u0008\u00a8\u0001\u0010\u000fR \u0010\u00aa\u0001\u001a\u0004\u0018\u00010\u00058VX\u0096\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u00ac\u0001\u0010\u001d\u001a\u0005\u0008\u00ab\u0001\u0010\u000fR \u0010\u00ad\u0001\u001a\u0004\u0018\u00010\u00058VX\u0096\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u00af\u0001\u0010\u001d\u001a\u0005\u0008\u00ae\u0001\u0010\u000fR\"\u0010\u00b0\u0001\u001a\u0005\u0018\u00010\u00b1\u00018VX\u0096\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u00b4\u0001\u0010\u001d\u001a\u0006\u0008\u00b2\u0001\u0010\u00b3\u0001R\"\u0010\u00bb\u0001\u001a\u0005\u0018\u00010\u00b1\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u00bd\u0001\u0010\u001d\u001a\u0006\u0008\u00bc\u0001\u0010\u00b3\u0001R\u001e\u0010\u00be\u0001\u001a\u00020l8@X\u0080\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u00c0\u0001\u0010\u001d\u001a\u0005\u0008\u00bf\u0001\u0010n\u00a8\u0006\u00c3\u0001"
    }
    d2 = {
        "Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;",
        "Lcom/superwall/sdk/store/abstractions/product/StoreProductType;",
        "underlyingProductDetails",
        "Lcom/android/billingclient/api/ProductDetails;",
        "fullIdentifier",
        "",
        "basePlanType",
        "Lcom/superwall/sdk/store/abstractions/product/BasePlanType;",
        "offerType",
        "Lcom/superwall/sdk/store/abstractions/product/OfferType;",
        "<init>",
        "(Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/BasePlanType;Lcom/superwall/sdk/store/abstractions/product/OfferType;)V",
        "getUnderlyingProductDetails",
        "()Lcom/android/billingclient/api/ProductDetails;",
        "getFullIdentifier",
        "()Ljava/lang/String;",
        "getBasePlanType",
        "()Lcom/superwall/sdk/store/abstractions/product/BasePlanType;",
        "basePlanId",
        "getBasePlanId",
        "priceFormatterProvider",
        "Lcom/superwall/sdk/store/abstractions/product/PriceFormatterProvider;",
        "getPriceFormatterProvider$annotations",
        "()V",
        "priceFormatter",
        "Ljava/text/NumberFormat;",
        "getPriceFormatter",
        "()Ljava/text/NumberFormat;",
        "priceFormatter$delegate",
        "Lkotlin/Lazy;",
        "offerId",
        "getOfferId$superwall_release",
        "offerId$delegate",
        "selectedOffer",
        "Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails;",
        "getSelectedOffer",
        "()Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails;",
        "selectedOffer$delegate",
        "basePriceForSelectedOffer",
        "Ljava/math/BigDecimal;",
        "kotlin.jvm.PlatformType",
        "getBasePriceForSelectedOffer",
        "()Ljava/math/BigDecimal;",
        "basePriceForSelectedOffer$delegate",
        "selectedOfferPricingPhase",
        "Lcom/android/billingclient/api/ProductDetails$PricingPhase;",
        "getSelectedOfferPricingPhase",
        "()Lcom/android/billingclient/api/ProductDetails$PricingPhase;",
        "selectedOfferPricingPhase$delegate",
        "productIdentifier",
        "getProductIdentifier",
        "productIdentifier$delegate",
        "productType",
        "getProductType",
        "price",
        "getPrice",
        "price$delegate",
        "localizedPrice",
        "getLocalizedPrice",
        "localizedPrice$delegate",
        "localizedSubscriptionPeriod",
        "getLocalizedSubscriptionPeriod",
        "localizedSubscriptionPeriod$delegate",
        "period",
        "getPeriod",
        "period$delegate",
        "periodly",
        "getPeriodly",
        "periodly$delegate",
        "periodWeeks",
        "",
        "getPeriodWeeks",
        "()I",
        "periodWeeks$delegate",
        "periodWeeksString",
        "getPeriodWeeksString",
        "periodWeeksString$delegate",
        "periodMonths",
        "getPeriodMonths",
        "periodMonths$delegate",
        "periodMonthsString",
        "getPeriodMonthsString",
        "periodMonthsString$delegate",
        "periodYears",
        "getPeriodYears",
        "periodYears$delegate",
        "periodYearsString",
        "getPeriodYearsString",
        "periodYearsString$delegate",
        "periodDays",
        "getPeriodDays",
        "periodDays$delegate",
        "periodDaysString",
        "getPeriodDaysString",
        "periodDaysString$delegate",
        "dailyPrice",
        "getDailyPrice",
        "dailyPrice$delegate",
        "weeklyPrice",
        "getWeeklyPrice",
        "weeklyPrice$delegate",
        "monthlyPrice",
        "getMonthlyPrice",
        "monthlyPrice$delegate",
        "yearlyPrice",
        "getYearlyPrice",
        "yearlyPrice$delegate",
        "hasFreeTrial",
        "",
        "getHasFreeTrial",
        "()Z",
        "hasFreeTrial$delegate",
        "localizedTrialPeriodPrice",
        "getLocalizedTrialPeriodPrice",
        "localizedTrialPeriodPrice$delegate",
        "trialPeriodPrice",
        "getTrialPeriodPrice",
        "trialPeriodPrice$delegate",
        "getSelectedOfferDetails",
        "automaticallySelectSubscriptionOffer",
        "Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;",
        "findLongestFreeTrial",
        "Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;",
        "offers",
        "",
        "findLowestNonFreeOffer",
        "trialPeriodEndDate",
        "Ljava/util/Date;",
        "getTrialPeriodEndDate",
        "()Ljava/util/Date;",
        "trialPeriodEndDate$delegate",
        "trialPeriodEndDateString",
        "getTrialPeriodEndDateString",
        "trialPeriodEndDateString$delegate",
        "trialPeriodDays",
        "getTrialPeriodDays",
        "trialPeriodDays$delegate",
        "trialPeriodDaysString",
        "getTrialPeriodDaysString",
        "trialPeriodDaysString$delegate",
        "trialPeriodWeeks",
        "getTrialPeriodWeeks",
        "trialPeriodWeeks$delegate",
        "trialPeriodWeeksString",
        "getTrialPeriodWeeksString",
        "trialPeriodWeeksString$delegate",
        "trialPeriodMonths",
        "getTrialPeriodMonths",
        "trialPeriodMonths$delegate",
        "trialPeriodMonthsString",
        "getTrialPeriodMonthsString",
        "trialPeriodMonthsString$delegate",
        "trialPeriodYears",
        "getTrialPeriodYears",
        "trialPeriodYears$delegate",
        "trialPeriodYearsString",
        "getTrialPeriodYearsString",
        "trialPeriodYearsString$delegate",
        "trialPeriodText",
        "getTrialPeriodText",
        "trialPeriodText$delegate",
        "locale",
        "getLocale",
        "locale$delegate",
        "languageCode",
        "getLanguageCode",
        "languageCode$delegate",
        "currencyCode",
        "getCurrencyCode",
        "currencyCode$delegate",
        "currencySymbol",
        "getCurrencySymbol",
        "currencySymbol$delegate",
        "regionCode",
        "getRegionCode",
        "regionCode$delegate",
        "subscriptionPeriod",
        "Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;",
        "getSubscriptionPeriod",
        "()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;",
        "subscriptionPeriod$delegate",
        "trialPeriodPricePerUnit",
        "unit",
        "Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;",
        "pricePerUnit",
        "pricingPhase",
        "periodsPerUnit",
        "trialSubscriptionPeriod",
        "getTrialSubscriptionPeriod",
        "trialSubscriptionPeriod$delegate",
        "isSubscription",
        "isSubscription$superwall_release",
        "isSubscription$delegate",
        "Companion",
        "SelectedOfferDetails",
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
.field public static final Companion:Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$Companion;


# instance fields
.field private final basePlanType:Lcom/superwall/sdk/store/abstractions/product/BasePlanType;

.field private final basePriceForSelectedOffer$delegate:Lkotlin/Lazy;

.field private final currencyCode$delegate:Lkotlin/Lazy;

.field private final currencySymbol$delegate:Lkotlin/Lazy;

.field private final dailyPrice$delegate:Lkotlin/Lazy;

.field private final fullIdentifier:Ljava/lang/String;

.field private final hasFreeTrial$delegate:Lkotlin/Lazy;

.field private final isSubscription$delegate:Lkotlin/Lazy;

.field private final languageCode$delegate:Lkotlin/Lazy;

.field private final locale$delegate:Lkotlin/Lazy;

.field private final localizedPrice$delegate:Lkotlin/Lazy;

.field private final localizedSubscriptionPeriod$delegate:Lkotlin/Lazy;

.field private final localizedTrialPeriodPrice$delegate:Lkotlin/Lazy;

.field private final monthlyPrice$delegate:Lkotlin/Lazy;

.field private final offerId$delegate:Lkotlin/Lazy;

.field private final offerType:Lcom/superwall/sdk/store/abstractions/product/OfferType;

.field private final period$delegate:Lkotlin/Lazy;

.field private final periodDays$delegate:Lkotlin/Lazy;

.field private final periodDaysString$delegate:Lkotlin/Lazy;

.field private final periodMonths$delegate:Lkotlin/Lazy;

.field private final periodMonthsString$delegate:Lkotlin/Lazy;

.field private final periodWeeks$delegate:Lkotlin/Lazy;

.field private final periodWeeksString$delegate:Lkotlin/Lazy;

.field private final periodYears$delegate:Lkotlin/Lazy;

.field private final periodYearsString$delegate:Lkotlin/Lazy;

.field private final periodly$delegate:Lkotlin/Lazy;

.field private final price$delegate:Lkotlin/Lazy;

.field private final priceFormatter$delegate:Lkotlin/Lazy;

.field private final priceFormatterProvider:Lcom/superwall/sdk/store/abstractions/product/PriceFormatterProvider;

.field private final productIdentifier$delegate:Lkotlin/Lazy;

.field private final regionCode$delegate:Lkotlin/Lazy;

.field private final selectedOffer$delegate:Lkotlin/Lazy;

.field private final selectedOfferPricingPhase$delegate:Lkotlin/Lazy;

.field private final subscriptionPeriod$delegate:Lkotlin/Lazy;

.field private final trialPeriodDays$delegate:Lkotlin/Lazy;

.field private final trialPeriodDaysString$delegate:Lkotlin/Lazy;

.field private final trialPeriodEndDate$delegate:Lkotlin/Lazy;

.field private final trialPeriodEndDateString$delegate:Lkotlin/Lazy;

.field private final trialPeriodMonths$delegate:Lkotlin/Lazy;

.field private final trialPeriodMonthsString$delegate:Lkotlin/Lazy;

.field private final trialPeriodPrice$delegate:Lkotlin/Lazy;

.field private final trialPeriodText$delegate:Lkotlin/Lazy;

.field private final trialPeriodWeeks$delegate:Lkotlin/Lazy;

.field private final trialPeriodWeeksString$delegate:Lkotlin/Lazy;

.field private final trialPeriodYears$delegate:Lkotlin/Lazy;

.field private final trialPeriodYearsString$delegate:Lkotlin/Lazy;

.field private final trialSubscriptionPeriod$delegate:Lkotlin/Lazy;

.field private final underlyingProductDetails:Lcom/android/billingclient/api/ProductDetails;

.field private final weeklyPrice$delegate:Lkotlin/Lazy;

.field private final yearlyPrice$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$07VjpCeSC1JEbclW9eOaZv128Dk(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->monthlyPrice_delegate$lambda$32(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$0oTkEhmGEYh1DqmF3U1G_y9ZA1s(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodYearsString_delegate$lambda$87(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1aCa6JYUjhTmzqkkz2pMSbupZ0k(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodMonthsString_delegate$lambda$84(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2vmDWcxFanQQ-HG1o97Bkt2yHNM(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)I
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodDays_delegate$lambda$78(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$3AZevht2wKcqMFTcyQEPkmlKlJ0(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->selectedOffer_delegate$lambda$3(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$40l5O4-yjDQe4DWm0MYyjq180K0(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/util/Date;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodEndDate_delegate$lambda$74(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5vVG0a8Yvw-5AGMn8yotLHQVvIA(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->localizedTrialPeriodPrice_delegate$lambda$35(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7YJqttw4bC_RUHEM2mlOEHPB3pE(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Z
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->isSubscription_delegate$lambda$99(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$7gJ5Scs7dO0vjkoJ6tIzv1d1_GA(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)I
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodYears_delegate$lambda$86(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$7xQ6e4LrnEph9zsF0fozAcB5FLc(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)I
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodWeeks_delegate$lambda$80(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8SGxRni0lkOMOifeY5pfCmAAMu4(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/math/BigDecimal;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodPrice_delegate$lambda$39(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8YU0h7Garn7q2O-XhKggubZbtnA()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->regionCode_delegate$lambda$94()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$8eWLPc1KV25NfYAXI9kNE_2Hizs(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->periodDaysString_delegate$lambda$29(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9CORPNBzhpuaSODmJe1S_HCEjYI(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->yearlyPrice_delegate$lambda$33(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$C5yV3NOndUiqKaSSDIDdx_ks1us(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/text/NumberFormat;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->priceFormatter_delegate$lambda$1(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DWGR-8GiT8vO8lAbKYkDXEdjiHo(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->weeklyPrice_delegate$lambda$31(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ElbUgHTSnppYmrRuI-w49Cakj2c(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialSubscriptionPeriod_delegate$lambda$98(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FQjlEhr7eXAvPZSqeZ_MqZWexu0(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->periodly_delegate$lambda$17(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FfWhOddm35XlGk2EFgXrgyyI2-E(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->periodYearsString_delegate$lambda$26(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GIahwUmBf3yLn-dFMmol4HAg5BA(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->localizedPrice_delegate$lambda$11(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ID6eiqziG8Gk4mhpi5ShG8_91bY(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->offerId_delegate$lambda$2(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PNZJoncS9QcUEKYrhrSzAGN8tr0(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/math/BigDecimal;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->basePriceForSelectedOffer_delegate$lambda$4(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$V8hOeqvnXZpRET7tT0PtM3dlGBU(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)I
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->periodWeeks_delegate$lambda$19(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VG_WhclYUeFMtt9x_7O482kgeIQ(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->dailyPrice_delegate$lambda$30(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VhPJD0nWhXPd3M1LAstPJLilJiU()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->languageCode_delegate$lambda$90()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$Zxlj7zMzoL1DWkLbLXLk7qvAD-4(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->subscriptionPeriod_delegate$lambda$95(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$b_IrshfL3D45EHhpijPL6QSH-D8(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Lcom/android/billingclient/api/ProductDetails$PricingPhase;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->selectedOfferPricingPhase_delegate$lambda$7(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bkPkayKizRDiTTi0jTtffPJlF5o(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodWeeksString_delegate$lambda$81(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cjN3QXyycbWtSIj4LtvrWk2LluI(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->localizedSubscriptionPeriod_delegate$lambda$13(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$deXMrDQFhMwU00RHVqkB94OtBrI(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodText_delegate$lambda$88(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fqhkin9vzrypUpGTX1DSoXAdtlo(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)I
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->periodDays_delegate$lambda$28(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$iRiXY3przoTEr2aCfEU0fuDj2rE(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->currencySymbol_delegate$lambda$93(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$k2-xAi1roatx4xUt5UtOFP3qllU()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->locale_delegate$lambda$89()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$nltelzyz4m2z2HTFfT_IPYg_2K0(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->period_delegate$lambda$15(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nvI9hFLxlnwkTlROGFwF1Ytz2tM(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)I
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->periodYears_delegate$lambda$25(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pwSq0oYMsrPC3fypw2Gna6PB3l8(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->productIdentifier_delegate$lambda$8(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qJzslEKkY11ONhLIPiDebd8Sh74(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodDaysString_delegate$lambda$79(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qxnarTzkEA6balgOfwfzb5QdJhU(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodEndDateString_delegate$lambda$76(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$s-iL059pizSyBp7go16S7TvNCzk(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Z
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->hasFreeTrial_delegate$lambda$34(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$skn2BH2yJJpS7LqSjzUiwiNekks(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)I
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodMonths_delegate$lambda$83(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vBGBNY5GTJs-w_zCEf99lxx6aY8(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/math/BigDecimal;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->price_delegate$lambda$10(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wM678KJ19gk4qyLazoID9IO094Q(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)I
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->periodMonths_delegate$lambda$22(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yiZXLQmLIDlCCpShsqF2R8FE1Jg(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->periodMonthsString_delegate$lambda$23(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yrSbQR3FUjqglxDsQ3GI9JIXaj4(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->periodWeeksString_delegate$lambda$20(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$z4fct-ONiBk9jaifriwdCzyq3qY(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->currencyCode_delegate$lambda$91(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->Companion:Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/BasePlanType;Lcom/superwall/sdk/store/abstractions/product/OfferType;)V
    .locals 1

    const-string v0, "underlyingProductDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullIdentifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "basePlanType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offerType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->underlyingProductDetails:Lcom/android/billingclient/api/ProductDetails;

    .line 20
    iput-object p2, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->fullIdentifier:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->basePlanType:Lcom/superwall/sdk/store/abstractions/product/BasePlanType;

    .line 22
    iput-object p4, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->offerType:Lcom/superwall/sdk/store/abstractions/product/OfferType;

    .line 40
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/PriceFormatterProvider;

    invoke-direct {p1}, Lcom/superwall/sdk/store/abstractions/product/PriceFormatterProvider;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->priceFormatterProvider:Lcom/superwall/sdk/store/abstractions/product/PriceFormatterProvider;

    .line 42
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda0;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->priceFormatter$delegate:Lkotlin/Lazy;

    .line 48
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda2;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->offerId$delegate:Lkotlin/Lazy;

    .line 56
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda14;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda14;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->selectedOffer$delegate:Lkotlin/Lazy;

    .line 60
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda26;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda26;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->basePriceForSelectedOffer$delegate:Lkotlin/Lazy;

    .line 76
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda32;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda32;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->selectedOfferPricingPhase$delegate:Lkotlin/Lazy;

    .line 92
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda34;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda34;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->productIdentifier$delegate:Lkotlin/Lazy;

    .line 99
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda35;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda35;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->price$delegate:Lkotlin/Lazy;

    .line 115
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda36;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda36;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->localizedPrice$delegate:Lkotlin/Lazy;

    .line 119
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda37;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda37;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->localizedSubscriptionPeriod$delegate:Lkotlin/Lazy;

    .line 125
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda38;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda38;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->period$delegate:Lkotlin/Lazy;

    .line 143
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda11;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->periodly$delegate:Lkotlin/Lazy;

    .line 157
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda22;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda22;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->periodWeeks$delegate:Lkotlin/Lazy;

    .line 169
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda33;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda33;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->periodWeeksString$delegate:Lkotlin/Lazy;

    .line 173
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda39;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda39;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->periodMonths$delegate:Lkotlin/Lazy;

    .line 185
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda40;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda40;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->periodMonthsString$delegate:Lkotlin/Lazy;

    .line 189
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda41;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda41;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->periodYears$delegate:Lkotlin/Lazy;

    .line 201
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda42;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda42;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->periodYearsString$delegate:Lkotlin/Lazy;

    .line 205
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda43;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda43;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->periodDays$delegate:Lkotlin/Lazy;

    .line 217
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda44;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda44;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->periodDaysString$delegate:Lkotlin/Lazy;

    .line 221
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda1;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->dailyPrice$delegate:Lkotlin/Lazy;

    .line 239
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda3;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->weeklyPrice$delegate:Lkotlin/Lazy;

    .line 255
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda4;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->monthlyPrice$delegate:Lkotlin/Lazy;

    .line 274
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda5;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->yearlyPrice$delegate:Lkotlin/Lazy;

    .line 292
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda6;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->hasFreeTrial$delegate:Lkotlin/Lazy;

    .line 305
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda7;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->localizedTrialPeriodPrice$delegate:Lkotlin/Lazy;

    .line 309
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda8;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodPrice$delegate:Lkotlin/Lazy;

    .line 476
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda9;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodEndDate$delegate:Lkotlin/Lazy;

    .line 489
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda10;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodEndDateString$delegate:Lkotlin/Lazy;

    .line 496
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda12;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodDays$delegate:Lkotlin/Lazy;

    .line 509
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda13;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda13;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodDaysString$delegate:Lkotlin/Lazy;

    .line 513
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda15;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda15;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodWeeks$delegate:Lkotlin/Lazy;

    .line 525
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda16;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda16;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodWeeksString$delegate:Lkotlin/Lazy;

    .line 529
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda17;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda17;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodMonths$delegate:Lkotlin/Lazy;

    .line 541
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda18;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda18;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodMonthsString$delegate:Lkotlin/Lazy;

    .line 545
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda19;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda19;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodYears$delegate:Lkotlin/Lazy;

    .line 557
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda20;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda20;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodYearsString$delegate:Lkotlin/Lazy;

    .line 561
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda21;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda21;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodText$delegate:Lkotlin/Lazy;

    .line 574
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda23;

    invoke-direct {p1}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda23;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->locale$delegate:Lkotlin/Lazy;

    .line 579
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda24;

    invoke-direct {p1}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda24;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->languageCode$delegate:Lkotlin/Lazy;

    .line 583
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda25;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda25;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->currencyCode$delegate:Lkotlin/Lazy;

    .line 595
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda27;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda27;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->currencySymbol$delegate:Lkotlin/Lazy;

    .line 599
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda28;

    invoke-direct {p1}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda28;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->regionCode$delegate:Lkotlin/Lazy;

    .line 603
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda29;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda29;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->subscriptionPeriod$delegate:Lkotlin/Lazy;

    .line 763
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda30;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda30;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialSubscriptionPeriod$delegate:Lkotlin/Lazy;

    .line 780
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda31;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$$ExternalSyntheticLambda31;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->isSubscription$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final automaticallySelectSubscriptionOffer()Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;
    .locals 10

    .line 424
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->underlyingProductDetails:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;

    return-object v1

    .line 429
    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    .line 882
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 883
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    .line 429
    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getBasePlanId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getBasePlanId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 883
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 884
    :cond_2
    check-cast v2, Ljava/util/List;

    .line 432
    check-cast v2, Ljava/lang/Iterable;

    .line 885
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 886
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    .line 434
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v5, v4, :cond_3

    .line 886
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 887
    :cond_4
    check-cast v0, Ljava/util/List;

    .line 885
    check-cast v0, Ljava/lang/Iterable;

    .line 888
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 889
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    .line 436
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferTags()Ljava/util/List;

    move-result-object v5

    const-string v6, "getOfferTags(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Iterable;

    .line 890
    instance-of v6, v5, Ljava/util/Collection;

    const/4 v7, 0x0

    if-eqz v6, :cond_6

    move-object v6, v5

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_3

    .line 891
    :cond_6
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 436
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v6, Ljava/lang/CharSequence;

    const-string v8, "-ignore-offer"

    check-cast v8, Ljava/lang/CharSequence;

    const/4 v9, 0x2

    invoke-static {v6, v8, v7, v9, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v7, v4

    :cond_8
    :goto_3
    if-nez v7, :cond_5

    .line 889
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 893
    :cond_9
    check-cast v2, Ljava/util/List;

    .line 438
    invoke-direct {p0, v2}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->findLongestFreeTrial(Ljava/util/List;)Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    move-result-object v0

    .line 439
    invoke-direct {p0, v2}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->findLowestNonFreeOffer(Ljava/util/List;)Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    move-result-object v2

    if-nez v0, :cond_a

    move-object v0, v2

    :cond_a
    if-eqz v0, :cond_b

    .line 442
    new-instance v1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;-><init>(Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;)V

    :cond_b
    return-object v1
.end method

.method private static final basePriceForSelectedOffer_delegate$lambda$4(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/math/BigDecimal;
    .locals 5

    .line 61
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getSelectedOffer()Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails;

    move-result-object p0

    .line 62
    instance-of v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;

    const/4 v1, 0x2

    const v2, 0xf4240

    if-eqz v0, :cond_0

    .line 64
    check-cast p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;->getUnderlying()Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object p0

    const-string v0, "getPricingPhaseList(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    .line 66
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v3

    .line 67
    new-instance p0, Ljava/math/BigDecimal;

    invoke-direct {p0, v3, v4}, Ljava/math/BigDecimal;-><init>(J)V

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(I)V

    sget-object v2, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {p0, v0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    .line 69
    :cond_0
    instance-of v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$OneTime;

    if-eqz v0, :cond_1

    .line 70
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$OneTime;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$OneTime;->getUnderlying()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/math/BigDecimal;-><init>(J)V

    new-instance p0, Ljava/math/BigDecimal;

    invoke-direct {p0, v2}, Ljava/math/BigDecimal;-><init>(I)V

    sget-object v2, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v0, p0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    .line 72
    sget-object p0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object p0

    .line 61
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private static final currencyCode_delegate$lambda$91(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 1

    .line 584
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getSelectedOffer()Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails;

    move-result-object p0

    .line 585
    instance-of v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;

    if-eqz v0, :cond_0

    .line 586
    check-cast p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;->getUnderlying()Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object p0

    const-string v0, "getPricingPhaseList(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 587
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    .line 588
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 590
    :cond_0
    instance-of v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$OneTime;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$OneTime;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$OneTime;->getUnderlying()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 584
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private static final currencySymbol_delegate$lambda$93(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 0

    .line 596
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getCurrencyCode()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final dailyPrice_delegate$lambda$30(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 3

    .line 223
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getSelectedOffer()Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails;

    move-result-object v0

    instance-of v0, v0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$OneTime;

    const-string v1, "n/a"

    if-eqz v0, :cond_0

    return-object v1

    .line 227
    :cond_0
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getBasePriceForSelectedOffer()Ljava/math/BigDecimal;

    move-result-object v0

    .line 229
    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 230
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getPriceFormatter()Ljava/text/NumberFormat;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    const-string p0, "$0.00"

    return-object p0

    .line 232
    :cond_3
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object v2

    if-nez v2, :cond_4

    return-object v1

    .line 234
    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->pricePerDay(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 236
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getPriceFormatter()Ljava/text/NumberFormat;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    return-object p0

    :cond_6
    :goto_1
    return-object v1
.end method

.method private final findLongestFreeTrial(Ljava/util/List;)Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;",
            ">;)",
            "Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;"
        }
    .end annotation

    .line 446
    check-cast p1, Ljava/lang/Iterable;

    .line 894
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 903
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 902
    check-cast v1, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    .line 448
    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object v3

    const-string v4, "getPricingPhaseList(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 449
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->dropLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 904
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    .line 451
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    goto :goto_1

    :cond_2
    move-object v4, v2

    .line 450
    :goto_1
    check-cast v4, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    if-eqz v4, :cond_3

    .line 453
    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getBillingPeriod()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lorg/threeten/bp/Period;->parse(Ljava/lang/CharSequence;)Lorg/threeten/bp/Period;

    move-result-object v2

    .line 454
    invoke-virtual {v2}, Lorg/threeten/bp/Period;->toTotalMonths()J

    move-result-wide v3

    const/16 v5, 0x1e

    int-to-long v5, v5

    mul-long/2addr v3, v5

    invoke-virtual {v2}, Lorg/threeten/bp/Period;->getDays()I

    move-result v2

    int-to-long v5, v2

    add-long/2addr v3, v5

    .line 455
    new-instance v2, Lkotlin/Pair;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    if-eqz v2, :cond_0

    .line 902
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 908
    :cond_4
    check-cast v0, Ljava/util/List;

    .line 447
    check-cast v0, Ljava/lang/Iterable;

    .line 909
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 910
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, v2

    goto :goto_2

    .line 911
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 912
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_2

    .line 913
    :cond_6
    move-object v1, v0

    check-cast v1, Lkotlin/Pair;

    .line 457
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 915
    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 916
    move-object v5, v1

    check-cast v5, Lkotlin/Pair;

    .line 457
    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gez v7, :cond_8

    move-object v0, v1

    move-wide v3, v5

    .line 921
    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    .line 457
    :goto_2
    check-cast v0, Lkotlin/Pair;

    if-eqz v0, :cond_9

    .line 458
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    return-object p1

    :cond_9
    return-object v2
.end method

.method private final findLowestNonFreeOffer(Ljava/util/List;)Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;",
            ">;)",
            "Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;"
        }
    .end annotation

    .line 462
    check-cast p1, Ljava/lang/Iterable;

    .line 923
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 932
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 931
    check-cast v1, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    .line 464
    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object v3

    const-string v4, "getPricingPhaseList(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 465
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->dropLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 933
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    .line 467
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    goto :goto_1

    :cond_2
    move-object v4, v2

    .line 466
    :goto_1
    check-cast v4, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    if-eqz v4, :cond_3

    .line 469
    new-instance v2, Lkotlin/Pair;

    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    if-eqz v2, :cond_0

    .line 931
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 937
    :cond_4
    check-cast v0, Ljava/util/List;

    .line 463
    check-cast v0, Ljava/lang/Iterable;

    .line 938
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 939
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, v2

    goto :goto_2

    .line 940
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 941
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_2

    .line 942
    :cond_6
    move-object v1, v0

    check-cast v1, Lkotlin/Pair;

    .line 471
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 944
    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 945
    move-object v5, v1

    check-cast v5, Lkotlin/Pair;

    .line 471
    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_8

    move-object v0, v1

    move-wide v3, v5

    .line 950
    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    .line 471
    :goto_2
    check-cast v0, Lkotlin/Pair;

    if-eqz v0, :cond_9

    .line 472
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    return-object p1

    :cond_9
    return-object v2
.end method

.method private final getBasePriceForSelectedOffer()Ljava/math/BigDecimal;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->basePriceForSelectedOffer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    return-object v0
.end method

.method private final getPriceFormatter()Ljava/text/NumberFormat;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->priceFormatter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/NumberFormat;

    return-object v0
.end method

.method private static synthetic getPriceFormatterProvider$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Transient;
    .end annotation

    return-void
.end method

.method private final getSelectedOfferDetails()Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails;
    .locals 11

    .line 334
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->underlyingProductDetails:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetailsList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_e

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->underlyingProductDetails:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetailsList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 336
    :cond_1
    iget-object v2, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->basePlanType:Lcom/superwall/sdk/store/abstractions/product/BasePlanType;

    instance-of v2, v2, Lcom/superwall/sdk/store/abstractions/product/BasePlanType$Specific;

    .line 337
    iget-object v3, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->offerType:Lcom/superwall/sdk/store/abstractions/product/OfferType;

    invoke-virtual {v3}, Lcom/superwall/sdk/store/abstractions/product/OfferType;->getSpecificId()Ljava/lang/String;

    move-result-object v3

    .line 338
    iget-object v4, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->offerType:Lcom/superwall/sdk/store/abstractions/product/OfferType;

    instance-of v5, v4, Lcom/superwall/sdk/store/abstractions/product/OfferType$Specific;

    .line 339
    instance-of v4, v4, Lcom/superwall/sdk/store/abstractions/product/OfferType$None;

    if-eqz v4, :cond_d

    if-eqz v2, :cond_5

    .line 347
    check-cast v0, Ljava/lang/Iterable;

    .line 797
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 798
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    .line 347
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPurchaseOptionId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getBasePlanId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getOfferId()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 798
    :cond_3
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 799
    :cond_4
    check-cast v2, Ljava/util/List;

    goto :goto_2

    .line 349
    :cond_5
    check-cast v0, Ljava/lang/Iterable;

    .line 800
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 801
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    .line 349
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getOfferId()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    if-eqz v5, :cond_7

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_6

    .line 801
    :cond_7
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 802
    :cond_8
    check-cast v2, Ljava/util/List;

    .line 351
    :goto_2
    check-cast v2, Ljava/lang/Iterable;

    .line 803
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 804
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    move-object v0, v1

    goto :goto_3

    .line 805
    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 806
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_3

    .line 807
    :cond_a
    move-object v2, v0

    check-cast v2, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    .line 351
    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v2

    .line 809
    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 810
    move-object v7, v5

    check-cast v7, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    .line 351
    invoke-virtual {v7}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v7

    cmp-long v9, v2, v7

    if-lez v9, :cond_c

    move-object v0, v5

    move-wide v2, v7

    .line 815
    :cond_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_b

    .line 816
    :goto_3
    check-cast v0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    goto/16 :goto_d

    :cond_d
    if-eqz v2, :cond_13

    if-eqz v5, :cond_13

    .line 356
    check-cast v0, Ljava/lang/Iterable;

    .line 817
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    .line 356
    invoke-virtual {v6}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPurchaseOptionId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getBasePlanId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {v6}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getOfferId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_4

    :cond_f
    move-object v5, v1

    :goto_4
    move-object v2, v5

    check-cast v2, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    if-nez v2, :cond_12

    .line 819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    .line 357
    invoke-virtual {v3}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPurchaseOptionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getBasePlanId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_5

    :cond_11
    move-object v2, v1

    .line 820
    :goto_5
    move-object v0, v2

    check-cast v0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    goto/16 :goto_d

    :cond_12
    move-object v0, v2

    goto/16 :goto_d

    :cond_13
    if-nez v2, :cond_1a

    if-eqz v5, :cond_1a

    .line 362
    check-cast v0, Ljava/lang/Iterable;

    .line 821
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 822
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    .line 362
    invoke-virtual {v6}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getOfferId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 822
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 823
    :cond_15
    check-cast v2, Ljava/util/List;

    .line 821
    check-cast v2, Ljava/lang/Iterable;

    .line 824
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 825
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_16

    move-object v0, v1

    goto :goto_7

    .line 826
    :cond_16
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 827
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_7

    .line 828
    :cond_17
    move-object v2, v0

    check-cast v2, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    .line 362
    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v5

    .line 830
    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 831
    move-object v7, v2

    check-cast v7, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    .line 362
    invoke-virtual {v7}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-lez v9, :cond_19

    move-object v0, v2

    move-wide v5, v7

    .line 836
    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_18

    .line 837
    :goto_7
    check-cast v0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    goto/16 :goto_d

    :cond_1a
    if-eqz v2, :cond_21

    .line 367
    check-cast v0, Ljava/lang/Iterable;

    .line 838
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 839
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    .line 367
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPurchaseOptionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getBasePlanId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 839
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 840
    :cond_1c
    check-cast v2, Ljava/util/List;

    .line 838
    check-cast v2, Ljava/lang/Iterable;

    .line 841
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 842
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1d

    move-object v0, v1

    goto :goto_9

    .line 843
    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 844
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_9

    .line 845
    :cond_1e
    move-object v3, v0

    check-cast v3, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    .line 367
    invoke-virtual {v3}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v5

    .line 847
    :cond_1f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 848
    move-object v7, v3

    check-cast v7, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    .line 367
    invoke-virtual {v7}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-lez v9, :cond_20

    move-object v0, v3

    move-wide v5, v7

    .line 853
    :cond_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 854
    :goto_9
    check-cast v0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    goto/16 :goto_d

    .line 372
    :cond_21
    check-cast v0, Ljava/lang/Iterable;

    .line 855
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 856
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_22
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    .line 372
    invoke-virtual {v6}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPurchaseOptionId()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    if-eqz v7, :cond_22

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_23

    goto :goto_a

    :cond_23
    invoke-virtual {v6}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getOfferId()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_22

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_24

    goto :goto_a

    .line 856
    :cond_24
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 857
    :cond_25
    check-cast v2, Ljava/util/List;

    .line 373
    check-cast v2, Ljava/lang/Iterable;

    .line 858
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 859
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_26

    move-object v3, v1

    goto :goto_b

    .line 860
    :cond_26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 861
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_27

    goto :goto_b

    .line 862
    :cond_27
    move-object v5, v3

    check-cast v5, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    .line 373
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v5

    .line 864
    :cond_28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 865
    move-object v8, v7

    check-cast v8, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    .line 373
    invoke-virtual {v8}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v8

    cmp-long v10, v5, v8

    if-lez v10, :cond_29

    move-object v3, v7

    move-wide v5, v8

    .line 870
    :cond_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_28

    .line 373
    :goto_b
    move-object v2, v3

    check-cast v2, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    if-nez v2, :cond_12

    .line 858
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 859
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2a

    move-object v2, v1

    goto :goto_c

    .line 860
    :cond_2a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 861
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2b

    goto :goto_c

    .line 862
    :cond_2b
    move-object v3, v2

    check-cast v3, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    .line 373
    invoke-virtual {v3}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v5

    .line 864
    :cond_2c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 865
    move-object v7, v3

    check-cast v7, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    .line 373
    invoke-virtual {v7}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-lez v9, :cond_2d

    move-object v2, v3

    move-wide v5, v7

    .line 870
    :cond_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 871
    :goto_c
    move-object v0, v2

    check-cast v0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    :goto_d
    if-nez v0, :cond_2e

    if-nez v4, :cond_2e

    .line 380
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->underlyingProductDetails:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v0

    :cond_2e
    if-eqz v0, :cond_2f

    .line 384
    new-instance v1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$OneTime;

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPurchaseOptionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getOfferId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$OneTime;-><init>(Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    check-cast v1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails;

    return-object v1

    .line 388
    :cond_30
    :goto_e
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->underlyingProductDetails:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 389
    new-instance v1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$OneTime;

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPurchaseOptionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getOfferId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$OneTime;-><init>(Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails;

    return-object v1

    .line 393
    :cond_31
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->underlyingProductDetails:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_32

    return-object v1

    .line 396
    :cond_32
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getBasePlanId()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    if-eqz v2, :cond_41

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_33

    goto/16 :goto_12

    .line 401
    :cond_33
    check-cast v0, Ljava/lang/Iterable;

    .line 875
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 876
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_34
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    .line 401
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getBasePlanId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getBasePlanId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 876
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 877
    :cond_35
    check-cast v2, Ljava/util/List;

    .line 402
    check-cast v2, Ljava/lang/Iterable;

    .line 878
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    .line 402
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v3, :cond_36

    goto :goto_10

    :cond_37
    move-object v4, v1

    :goto_10
    check-cast v4, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    if-nez v4, :cond_38

    return-object v1

    .line 405
    :cond_38
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->offerType:Lcom/superwall/sdk/store/abstractions/product/OfferType;

    .line 406
    instance-of v3, v0, Lcom/superwall/sdk/store/abstractions/product/OfferType$Auto;

    if-eqz v3, :cond_3a

    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->automaticallySelectSubscriptionOffer()Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;->getUnderlying()Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    move-result-object v0

    if-nez v0, :cond_39

    goto :goto_11

    :cond_39
    move-object v4, v0

    goto :goto_11

    .line 407
    :cond_3a
    instance-of v3, v0, Lcom/superwall/sdk/store/abstractions/product/OfferType$None;

    if-eqz v3, :cond_3b

    goto :goto_11

    .line 408
    :cond_3b
    instance-of v0, v0, Lcom/superwall/sdk/store/abstractions/product/OfferType$Specific;

    if-eqz v0, :cond_40

    .line 880
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    .line 408
    invoke-virtual {v3}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferId()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->offerType:Lcom/superwall/sdk/store/abstractions/product/OfferType;

    check-cast v5, Lcom/superwall/sdk/store/abstractions/product/OfferType$Specific;

    invoke-virtual {v5}, Lcom/superwall/sdk/store/abstractions/product/OfferType$Specific;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    move-object v1, v2

    :cond_3d
    check-cast v1, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    if-nez v1, :cond_3e

    goto :goto_11

    :cond_3e
    move-object v4, v1

    .line 411
    :cond_3f
    :goto_11
    new-instance v0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;

    invoke-direct {v0, v4}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;-><init>(Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;)V

    check-cast v0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails;

    return-object v0

    .line 405
    :cond_40
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 397
    :cond_41
    :goto_12
    check-cast v0, Ljava/lang/Iterable;

    .line 873
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    .line 397
    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v3, :cond_42

    goto :goto_13

    :cond_43
    move-object v2, v1

    :goto_13
    check-cast v2, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    if-eqz v2, :cond_44

    .line 398
    new-instance v1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;

    invoke-direct {v1, v2}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;-><init>(Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;)V

    :cond_44
    check-cast v1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails;

    return-object v1
.end method

.method private final getSelectedOfferPricingPhase()Lcom/android/billingclient/api/ProductDetails$PricingPhase;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->selectedOfferPricingPhase$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    return-object v0
.end method

.method private final getTrialSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;
    .locals 1

    .line 763
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialSubscriptionPeriod$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    return-object v0
.end method

.method private static final hasFreeTrial_delegate$lambda$34(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Z
    .locals 2

    .line 293
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getSelectedOffer()Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails;

    move-result-object p0

    .line 294
    instance-of v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 296
    check-cast p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;->getUnderlying()Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object p0

    const-string v0, "getPricingPhaseList(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 297
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->dropLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    .line 298
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    return v1

    .line 300
    :cond_1
    instance-of v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$OneTime;

    if-eqz v0, :cond_2

    return v1

    :cond_2
    if-nez p0, :cond_3

    return v1

    .line 293
    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private static final isSubscription_delegate$lambda$99(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Z
    .locals 0

    .line 781
    iget-object p0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->underlyingProductDetails:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final languageCode_delegate$lambda$90()Ljava/lang/String;
    .locals 1

    .line 580
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final locale_delegate$lambda$89()Ljava/lang/String;
    .locals 1

    .line 575
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final localizedPrice_delegate$lambda$11(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 1

    .line 116
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getPriceFormatter()Ljava/text/NumberFormat;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getPrice()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private static final localizedSubscriptionPeriod_delegate$lambda$13(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 3

    .line 120
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 121
    sget-object v0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats;->INSTANCE:Lcom/superwall/sdk/contrib/threeteen/AmountFormats;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->toPeriod()Lorg/threeten/bp/Period;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "getDefault(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats;->wordBased(Lorg/threeten/bp/Period;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    .line 122
    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private static final localizedTrialPeriodPrice_delegate$lambda$35(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 1

    .line 306
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getPriceFormatter()Ljava/text/NumberFormat;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getTrialPeriodPrice()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const-string p0, "$0.00"

    return-object p0
.end method

.method private static final monthlyPrice_delegate$lambda$32(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 3

    .line 257
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getSelectedOffer()Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails;

    move-result-object v0

    instance-of v0, v0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$OneTime;

    const-string v1, "n/a"

    if-eqz v0, :cond_0

    return-object v1

    .line 261
    :cond_0
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getBasePriceForSelectedOffer()Ljava/math/BigDecimal;

    move-result-object v0

    .line 263
    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 264
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getPriceFormatter()Ljava/text/NumberFormat;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    const-string p0, "$0.00"

    return-object p0

    .line 267
    :cond_3
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object v2

    if-nez v2, :cond_4

    return-object v1

    .line 269
    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->pricePerMonth(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 271
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getPriceFormatter()Ljava/text/NumberFormat;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    return-object p0

    :cond_6
    :goto_1
    return-object v1
.end method

.method private static final offerId_delegate$lambda$2(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getSelectedOffer()Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails;

    move-result-object p0

    .line 50
    instance-of v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;->getUnderlying()Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 51
    :cond_0
    instance-of v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$OneTime;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$OneTime;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$OneTime;->getOfferId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 49
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private static final periodDaysString_delegate$lambda$29(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 0

    .line 218
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getPeriodDays()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final periodDays_delegate$lambda$28(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)I
    .locals 2

    .line 206
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 207
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result v0

    .line 208
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getUnit()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    move-result-object p0

    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    mul-int/lit16 v0, v0, 0x16d

    return v0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    mul-int/lit8 v0, v0, 0x1e

    return v0

    :cond_2
    mul-int/lit8 v0, v0, 0x7

    :cond_3
    return v0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private static final periodMonthsString_delegate$lambda$23(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 0

    .line 186
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getPeriodMonths()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final periodMonths_delegate$lambda$22(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)I
    .locals 3

    .line 174
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 175
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result v0

    .line 176
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getUnit()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    move-result-object p0

    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    if-ne p0, v2, :cond_0

    mul-int/lit8 v0, v0, 0xc

    return v0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    return v0

    .line 178
    :cond_2
    div-int/2addr v0, v2

    return v0

    .line 177
    :cond_3
    div-int/lit8 v0, v0, 0x1e

    return v0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private static final periodWeeksString_delegate$lambda$20(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 0

    .line 170
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getPeriodWeeks()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final periodWeeks_delegate$lambda$19(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)I
    .locals 3

    .line 158
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 159
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result v0

    .line 160
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getUnit()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    move-result-object p0

    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-eq p0, v1, :cond_1

    if-ne p0, v2, :cond_0

    mul-int/lit8 v0, v0, 0x34

    return v0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    mul-int/2addr v0, v2

    :cond_2
    return v0

    .line 161
    :cond_3
    div-int/lit8 v0, v0, 0x7

    return v0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private static final periodYearsString_delegate$lambda$26(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 0

    .line 202
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getPeriodYears()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final periodYears_delegate$lambda$25(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)I
    .locals 2

    .line 190
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 191
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result v0

    .line 192
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getUnit()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    move-result-object p0

    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 195
    :cond_1
    div-int/lit8 v0, v0, 0xc

    return v0

    .line 194
    :cond_2
    div-int/lit8 v0, v0, 0x34

    return v0

    .line 193
    :cond_3
    div-int/lit16 v0, v0, 0x16d

    return v0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private static final period_delegate$lambda$15(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 3

    .line 126
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 127
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getUnit()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    move-result-object v0

    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const-string v2, "week"

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 p0, 0x4

    if-ne v0, p0, :cond_0

    .line 138
    const-string p0, "year"

    return-object p0

    .line 127
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    if-eq p0, v1, :cond_4

    if-eq p0, v2, :cond_3

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2

    .line 135
    const-string p0, "month"

    return-object p0

    .line 134
    :cond_2
    const-string p0, "6 months"

    return-object p0

    .line 133
    :cond_3
    const-string p0, "quarter"

    return-object p0

    .line 132
    :cond_4
    const-string p0, "2 months"

    return-object p0

    :cond_5
    return-object v2

    .line 128
    :cond_6
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    return-object v2

    :cond_7
    const-string p0, "day"

    return-object p0

    .line 140
    :cond_8
    const-string p0, ""

    return-object p0
.end method

.method private static final periodly_delegate$lambda$17(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 4

    .line 144
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 145
    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getUnit()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    move-result-object v1

    sget-object v2, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x3

    .line 146
    const-string v3, "ly"

    if-ne v1, v2, :cond_1

    .line 147
    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getPeriod()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getPeriod()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "every "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getPeriod()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    return-object p0

    .line 154
    :cond_3
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method private final periodsPerUnit(Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;)Ljava/math/BigDecimal;
    .locals 13

    .line 683
    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x7

    const-string v1, "ZERO"

    const/16 v2, 0x16d

    const/4 v3, -0x1

    const/4 v4, 0x0

    const-string v5, "divide(...)"

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/16 v9, 0xc

    const/4 v10, 0x6

    const/4 v11, 0x1

    if-eq p1, v11, :cond_15

    const/16 v12, 0x34

    if-eq p1, v8, :cond_e

    if-eq p1, v7, :cond_7

    if-ne p1, v6, :cond_6

    .line 735
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getTrialSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getUnit()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    move-result-object v4

    :cond_0
    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

    move-result v0

    aget v3, p1, v0

    :goto_0
    if-eq v3, v11, :cond_5

    if-eq v3, v8, :cond_4

    if-eq v3, v7, :cond_3

    if-eq v3, v6, :cond_2

    .line 758
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    goto :goto_1

    .line 757
    :cond_2
    sget-object p1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    goto :goto_1

    .line 751
    :cond_3
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, v11}, Ljava/math/BigDecimal;-><init>(I)V

    .line 752
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v9}, Ljava/math/BigDecimal;-><init>(I)V

    .line 754
    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 751
    invoke-virtual {p1, v0, v10, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    goto :goto_1

    .line 744
    :cond_4
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, v11}, Ljava/math/BigDecimal;-><init>(I)V

    .line 745
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v12}, Ljava/math/BigDecimal;-><init>(I)V

    .line 747
    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 744
    invoke-virtual {p1, v0, v10, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    goto :goto_1

    .line 737
    :cond_5
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, v11}, Ljava/math/BigDecimal;-><init>(I)V

    .line 738
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(I)V

    .line 740
    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 737
    invoke-virtual {p1, v0, v10, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 734
    :goto_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1

    .line 683
    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 713
    :cond_7
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getTrialSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getUnit()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    move-result-object v4

    :cond_8
    if-nez v4, :cond_9

    goto :goto_2

    :cond_9
    sget-object p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

    move-result v0

    aget v3, p1, v0

    :goto_2
    if-eq v3, v11, :cond_d

    if-eq v3, v8, :cond_c

    if-eq v3, v7, :cond_b

    if-eq v3, v6, :cond_a

    .line 730
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 729
    :cond_a
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, v9}, Ljava/math/BigDecimal;-><init>(I)V

    return-object p1

    .line 728
    :cond_b
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, v11}, Ljava/math/BigDecimal;-><init>(I)V

    return-object p1

    .line 722
    :cond_c
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, v9}, Ljava/math/BigDecimal;-><init>(I)V

    .line 723
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v12}, Ljava/math/BigDecimal;-><init>(I)V

    .line 725
    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 722
    invoke-virtual {p1, v0, v10, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 715
    :cond_d
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, v9}, Ljava/math/BigDecimal;-><init>(I)V

    .line 716
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(I)V

    .line 718
    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 715
    invoke-virtual {p1, v0, v10, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 696
    :cond_e
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getTrialSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getUnit()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    move-result-object v4

    :cond_f
    if-nez v4, :cond_10

    goto :goto_3

    :cond_10
    sget-object p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

    move-result v2

    aget v3, p1, v2

    :goto_3
    if-eq v3, v11, :cond_14

    if-eq v3, v8, :cond_13

    if-eq v3, v7, :cond_12

    if-eq v3, v6, :cond_11

    .line 708
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 707
    :cond_11
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, v12}, Ljava/math/BigDecimal;-><init>(I)V

    return-object p1

    .line 706
    :cond_12
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, v12}, Ljava/math/BigDecimal;-><init>(I)V

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v9}, Ljava/math/BigDecimal;-><init>(I)V

    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {p1, v0, v10, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 705
    :cond_13
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, v11}, Ljava/math/BigDecimal;-><init>(I)V

    return-object p1

    .line 699
    :cond_14
    sget-object p1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 700
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(I)V

    .line 702
    sget-object v0, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 699
    invoke-virtual {p1, v1, v10, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 685
    :cond_15
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getTrialSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getUnit()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    move-result-object v4

    :cond_16
    if-nez v4, :cond_17

    goto :goto_4

    :cond_17
    sget-object p1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

    move-result v3

    aget v3, p1, v3

    :goto_4
    if-eq v3, v11, :cond_1b

    if-eq v3, v8, :cond_1a

    if-eq v3, v7, :cond_19

    if-eq v3, v6, :cond_18

    .line 691
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 690
    :cond_18
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    return-object p1

    .line 689
    :cond_19
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v9}, Ljava/math/BigDecimal;-><init>(I)V

    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {p1, v0, v10, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 688
    :cond_1a
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, v0}, Ljava/math/BigDecimal;-><init>(I)V

    return-object p1

    .line 686
    :cond_1b
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, v11}, Ljava/math/BigDecimal;-><init>(I)V

    return-object p1
.end method

.method private static final priceFormatter_delegate$lambda$1(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/text/NumberFormat;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    iget-object p0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->priceFormatterProvider:Lcom/superwall/sdk/store/abstractions/product/PriceFormatterProvider;

    invoke-virtual {p0, v0}, Lcom/superwall/sdk/store/abstractions/product/PriceFormatterProvider;->priceFormatter(Ljava/lang/String;)Ljava/text/NumberFormat;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final pricePerUnit(Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;Lcom/android/billingclient/api/ProductDetails$PricingPhase;)Ljava/math/BigDecimal;
    .locals 4

    .line 641
    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 642
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    const-string p2, "ZERO"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 646
    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    .line 647
    new-instance v1, Ljava/math/BigDecimal;

    const v2, 0xf4240

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    const/4 v2, 0x6

    .line 649
    sget-object v3, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 646
    invoke-virtual {v0, v1, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 651
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getBillingCycleCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 654
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getSelectedOfferPricingPhase()Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getBillingPeriod()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 660
    :try_start_0
    sget-object v3, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->Companion:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Companion;

    invoke-virtual {v3, v1}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Companion;->from(Ljava/lang/String;)Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    :catchall_0
    :cond_2
    invoke-direct {p0, p1}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->periodsPerUnit(Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 666
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getBillingCycleCount()I

    move-result p2

    invoke-direct {v1, p2}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 667
    new-instance p2, Ljava/math/BigDecimal;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p2, v1}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 670
    sget-object p2, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p2

    if-gez p2, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    const/4 p2, 0x2

    .line 675
    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v0, p1, p2, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 673
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_2
    return-object v0
.end method

.method private static final price_delegate$lambda$10(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/math/BigDecimal;
    .locals 3

    .line 102
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getSelectedOffer()Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getBasePriceForSelectedOffer()Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    .line 105
    :cond_0
    iget-object p0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->underlyingProductDetails:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 106
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    .line 107
    new-instance p0, Ljava/math/BigDecimal;

    const v1, 0xf4240

    invoke-direct {p0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    const/4 v1, 0x2

    .line 109
    sget-object v2, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 106
    invoke-virtual {v0, p0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    .line 111
    :cond_2
    :goto_0
    sget-object p0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object p0
.end method

.method private static final productIdentifier_delegate$lambda$8(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->underlyingProductDetails:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final regionCode_delegate$lambda$94()Ljava/lang/String;
    .locals 1

    .line 600
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final selectedOfferPricingPhase_delegate$lambda$7(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Lcom/android/billingclient/api/ProductDetails$PricingPhase;
    .locals 8

    .line 78
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getSelectedOffer()Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails;

    move-result-object p0

    .line 79
    instance-of v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 81
    check-cast p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;->getUnderlying()Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object v0

    const-string v2, "getPricingPhaseList(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 952
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    .line 82
    invoke-virtual {v6}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-nez v6, :cond_0

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    check-cast v3, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    if-nez v3, :cond_4

    .line 83
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;->getUnderlying()Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 84
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->dropLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 954
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    .line 85
    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    move-object v1, v0

    .line 955
    :cond_3
    check-cast v1, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    return-object v1

    :cond_4
    return-object v3

    .line 87
    :cond_5
    instance-of v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$OneTime;

    if-eqz v0, :cond_6

    return-object v1

    :cond_6
    if-nez p0, :cond_7

    return-object v1

    .line 78
    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private static final selectedOffer_delegate$lambda$3(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails;
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getSelectedOfferDetails()Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails;

    move-result-object p0

    return-object p0
.end method

.method private static final subscriptionPeriod_delegate$lambda$95(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;
    .locals 2

    .line 604
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getSelectedOffer()Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails;

    move-result-object p0

    .line 605
    instance-of v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 607
    check-cast p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;->getUnderlying()Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object p0

    const-string v0, "getPricingPhaseList(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    .line 609
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getBillingPeriod()Ljava/lang/String;

    move-result-object p0

    .line 607
    const-string v0, "getBillingPeriod(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 611
    :try_start_0
    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->Companion:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Companion;

    invoke-virtual {v0, p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Companion;->from(Ljava/lang/String;)Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v1

    .line 616
    :cond_0
    instance-of v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$OneTime;

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    if-nez p0, :cond_2

    return-object v1

    .line 604
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private static final trialPeriodDaysString_delegate$lambda$79(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 0

    .line 510
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getTrialPeriodDays()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final trialPeriodDays_delegate$lambda$78(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)I
    .locals 2

    .line 497
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getTrialSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 498
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result v0

    .line 500
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getUnit()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    move-result-object p0

    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    mul-int/lit16 v0, v0, 0x16d

    return v0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    mul-int/lit8 v0, v0, 0x1e

    return v0

    :cond_2
    mul-int/lit8 v0, v0, 0x7

    :cond_3
    return v0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private static final trialPeriodEndDateString_delegate$lambda$76(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 1

    .line 490
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getTrialPeriodEndDate()Ljava/util/Date;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 491
    sget-object v0, Lcom/superwall/sdk/utilities/DateUtils;->INSTANCE:Lcom/superwall/sdk/utilities/DateUtils;

    invoke-virtual {v0}, Lcom/superwall/sdk/utilities/DateUtils;->getMMM_dd_yyyy()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/superwall/sdk/utilities/DateUtilsKt;->localizedDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    .line 492
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    .line 493
    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private static final trialPeriodEndDate_delegate$lambda$74(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/util/Date;
    .locals 5

    .line 477
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getTrialSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 478
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 479
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getUnit()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    move-result-object v1

    sget-object v2, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 483
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    invoke-virtual {v0, v2, p0}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 479
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 482
    :cond_1
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    invoke-virtual {v0, v4, p0}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 481
    :cond_2
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    invoke-virtual {v0, v3, p0}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    .line 480
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->add(II)V

    .line 485
    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final trialPeriodMonthsString_delegate$lambda$84(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 0

    .line 542
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getTrialPeriodMonths()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final trialPeriodMonths_delegate$lambda$83(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)I
    .locals 3

    .line 530
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getTrialSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 531
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result v0

    .line 532
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getUnit()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    move-result-object p0

    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    if-ne p0, v2, :cond_0

    mul-int/lit8 v0, v0, 0xc

    return v0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    return v0

    .line 534
    :cond_2
    div-int/2addr v0, v2

    return v0

    .line 533
    :cond_3
    div-int/lit8 v0, v0, 0x1e

    return v0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private static final trialPeriodPrice_delegate$lambda$39(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/math/BigDecimal;
    .locals 7

    .line 310
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getSelectedOffer()Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails;

    move-result-object p0

    .line 311
    instance-of v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;

    if-eqz v0, :cond_8

    .line 313
    check-cast p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;->getUnderlying()Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object p0

    const-string v0, "getPricingPhaseList(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 314
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->dropLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    .line 315
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object p0

    .line 318
    :cond_0
    check-cast p0, Ljava/lang/Iterable;

    .line 956
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    .line 318
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-nez v5, :cond_1

    goto :goto_0

    :cond_2
    move-object v1, v4

    :goto_0
    check-cast v1, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    if-eqz v1, :cond_3

    .line 319
    sget-object p0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object p0

    .line 958
    :cond_3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    .line 322
    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v5

    cmp-long v1, v5, v2

    if-lez v1, :cond_4

    move-object v4, v0

    :cond_5
    check-cast v4, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    if-eqz v4, :cond_7

    .line 324
    new-instance p0, Ljava/math/BigDecimal;

    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;-><init>(J)V

    new-instance v0, Ljava/math/BigDecimal;

    const v1, 0xf4240

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    const/4 v1, 0x2

    sget-object v2, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {p0, v0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    return-object p0

    .line 325
    :cond_7
    :goto_1
    sget-object p0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object p0

    .line 327
    :cond_8
    instance-of v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$OneTime;

    if-eqz v0, :cond_9

    sget-object p0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object p0

    :cond_9
    if-nez p0, :cond_a

    .line 328
    sget-object p0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object p0

    .line 310
    :cond_a
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private static final trialPeriodText_delegate$lambda$88(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 3

    .line 562
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getTrialSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 563
    :cond_0
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result v0

    .line 565
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getUnit()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    move-result-object p0

    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    const-string v2, "-day"

    if-eq p0, v1, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    mul-int/lit16 v0, v0, 0x16d

    .line 569
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 565
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    mul-int/lit8 v0, v0, 0x1e

    .line 567
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    mul-int/lit8 v0, v0, 0x7

    .line 568
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 566
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final trialPeriodWeeksString_delegate$lambda$81(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 0

    .line 526
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getTrialPeriodWeeks()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final trialPeriodWeeks_delegate$lambda$80(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)I
    .locals 3

    .line 514
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getTrialSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 515
    :cond_0
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result v0

    .line 517
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getUnit()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    move-result-object p0

    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-eq p0, v1, :cond_2

    if-ne p0, v2, :cond_1

    mul-int/lit8 v0, v0, 0x34

    return v0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    mul-int/2addr v0, v2

    :cond_3
    return v0

    .line 518
    :cond_4
    div-int/lit8 v0, v0, 0x7

    return v0
.end method

.method private static final trialPeriodYearsString_delegate$lambda$87(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 0

    .line 558
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getTrialPeriodYears()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final trialPeriodYears_delegate$lambda$86(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)I
    .locals 2

    .line 546
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getTrialSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 547
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result v0

    .line 548
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getUnit()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    move-result-object p0

    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 551
    :cond_1
    div-int/lit8 v0, v0, 0xc

    return v0

    .line 550
    :cond_2
    div-int/lit8 v0, v0, 0x34

    return v0

    .line 549
    :cond_3
    div-int/lit16 v0, v0, 0x16d

    return v0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private static final trialSubscriptionPeriod_delegate$lambda$98(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;
    .locals 2

    .line 765
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->underlyingProductDetails:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 769
    :cond_0
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getSelectedOfferPricingPhase()Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getBillingPeriod()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_2

    .line 774
    :try_start_0
    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->Companion:Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Companion;

    invoke-virtual {v0, p0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Companion;->from(Ljava/lang/String;)Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_2
    return-object v1
.end method

.method private static final weeklyPrice_delegate$lambda$31(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 3

    .line 241
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getSelectedOffer()Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails;

    move-result-object v0

    instance-of v0, v0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$OneTime;

    const-string v1, "n/a"

    if-eqz v0, :cond_0

    return-object v1

    .line 245
    :cond_0
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getBasePriceForSelectedOffer()Ljava/math/BigDecimal;

    move-result-object v0

    .line 247
    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 248
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getPriceFormatter()Ljava/text/NumberFormat;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    const-string p0, "$0.00"

    return-object p0

    .line 250
    :cond_3
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object v2

    if-nez v2, :cond_4

    return-object v1

    .line 251
    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->pricePerWeek(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 252
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getPriceFormatter()Ljava/text/NumberFormat;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    return-object p0

    :cond_6
    :goto_1
    return-object v1
.end method

.method private static final yearlyPrice_delegate$lambda$33(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)Ljava/lang/String;
    .locals 3

    .line 276
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getSelectedOffer()Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails;

    move-result-object v0

    instance-of v0, v0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$OneTime;

    const-string v1, "n/a"

    if-eqz v0, :cond_0

    return-object v1

    .line 280
    :cond_0
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getBasePriceForSelectedOffer()Ljava/math/BigDecimal;

    move-result-object v0

    .line 282
    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 283
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getPriceFormatter()Ljava/text/NumberFormat;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    const-string p0, "$0.00"

    return-object p0

    .line 286
    :cond_3
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object v2

    if-nez v2, :cond_4

    return-object v1

    .line 287
    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->pricePerYear(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 289
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getPriceFormatter()Ljava/text/NumberFormat;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    return-object p0

    :cond_6
    :goto_1
    return-object v1
.end method


# virtual methods
.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 18
    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/product/StoreProductType$DefaultImpls;->getAttributes(Lcom/superwall/sdk/store/abstractions/product/StoreProductType;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getBasePlanId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->basePlanType:Lcom/superwall/sdk/store/abstractions/product/BasePlanType;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/BasePlanType;->getSpecificId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBasePlanType()Lcom/superwall/sdk/store/abstractions/product/BasePlanType;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->basePlanType:Lcom/superwall/sdk/store/abstractions/product/BasePlanType;

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->currencyCode$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencySymbol()Ljava/lang/String;
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->currencySymbol$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDailyPrice()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->dailyPrice$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFullIdentifier()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->fullIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getHasFreeTrial()Z
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->hasFreeTrial$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->languageCode$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->locale$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedPrice()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->localizedPrice$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedSubscriptionPeriod()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->localizedSubscriptionPeriod$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedTrialPeriodPrice()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->localizedTrialPeriodPrice$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMonthlyPrice()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->monthlyPrice$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getOfferId$superwall_release()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->offerId$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPeriod()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->period$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPeriodDays()I
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->periodDays$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getPeriodDaysString()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->periodDaysString$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPeriodMonths()I
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->periodMonths$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getPeriodMonthsString()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->periodMonthsString$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPeriodWeeks()I
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->periodWeeks$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getPeriodWeeksString()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->periodWeeksString$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPeriodYears()I
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->periodYears$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getPeriodYearsString()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->periodYearsString$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPeriodly()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->periodly$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/math/BigDecimal;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->price$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getProductIdentifier()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->productIdentifier$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getProductType()Ljava/lang/String;
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->underlyingProductDetails:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getProductType(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getRegionCode()Ljava/lang/String;
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->regionCode$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectedOffer()Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->selectedOffer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails;

    return-object v0
.end method

.method public getSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->subscriptionPeriod$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    return-object v0
.end method

.method public getTrialPeriodDays()I
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodDays$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getTrialPeriodDaysString()Ljava/lang/String;
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodDaysString$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTrialPeriodEndDate()Ljava/util/Date;
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodEndDate$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getTrialPeriodEndDateString()Ljava/lang/String;
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodEndDateString$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTrialPeriodMonths()I
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodMonths$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getTrialPeriodMonthsString()Ljava/lang/String;
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodMonthsString$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTrialPeriodPrice()Ljava/math/BigDecimal;
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodPrice$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getTrialPeriodText()Ljava/lang/String;
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodText$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTrialPeriodWeeks()I
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodWeeks$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getTrialPeriodWeeksString()Ljava/lang/String;
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodWeeksString$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTrialPeriodYears()I
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodYears$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getTrialPeriodYearsString()Ljava/lang/String;
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->trialPeriodYearsString$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getUnderlyingProductDetails()Lcom/android/billingclient/api/ProductDetails;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->underlyingProductDetails:Lcom/android/billingclient/api/ProductDetails;

    return-object v0
.end method

.method public getWeeklyPrice()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->weeklyPrice$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getYearlyPrice()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->yearlyPrice$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final isSubscription$superwall_release()Z
    .locals 1

    .line 780
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->isSubscription$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public trialPeriodPricePerUnit(Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;)Ljava/lang/String;
    .locals 6

    const-string v0, "unit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 622
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getSelectedOfferPricingPhase()Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    move-result-object v0

    const-string v1, "$0.00"

    const-wide/16 v2, 0x0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getPriceFormatter()Ljava/text/NumberFormat;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    return-object v1

    .line 624
    :cond_2
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_5

    .line 625
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getPriceFormatter()Ljava/text/NumberFormat;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    return-object p1

    :cond_4
    :goto_1
    return-object v1

    .line 629
    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->pricePerUnit(Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;Lcom/android/billingclient/api/ProductDetails$PricingPhase;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 634
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getPriceFormatter()Ljava/text/NumberFormat;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    return-object p1

    :cond_7
    :goto_2
    return-object v1
.end method
