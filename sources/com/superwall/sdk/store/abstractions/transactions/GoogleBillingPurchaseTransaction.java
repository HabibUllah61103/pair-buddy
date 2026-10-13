package com.superwall.sdk.store.abstractions.transactions;

import com.android.billingclient.api.Purchase;
import com.superwall.sdk.models.serialization.DateSerializer;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.Transient;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: GoogleBillingPurchaseTransaction.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b@\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 m2\u00020\u0001:\u0002lmB\u00ad\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0015\u001a\u00020\u0007\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0019\u0010\u001aB\u0011\b\u0016\u0012\u0006\u0010\u001b\u001a\u00020\u0003¢\u0006\u0004\b\u0019\u0010\u001cB»\u0001\b\u0010\u0012\u0006\u0010\u001d\u001a\u00020\u001e\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010 ¢\u0006\u0004\b\u0019\u0010!J\u000b\u0010L\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010M\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010N\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010O\u001a\u00020\tHÆ\u0003J\u000b\u0010P\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010Q\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010R\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010S\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010T\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010U\u001a\u0004\u0018\u00010\u0010HÆ\u0003¢\u0006\u0002\u0010;J\u000b\u0010V\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010W\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010Z\u001a\u00020\u0007HÆ\u0003J\t\u0010[\u001a\u00020\u0017HÆ\u0003J\u000b\u0010\\\u001a\u0004\u0018\u00010\u0007HÆ\u0003JÔ\u0001\u0010]\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\u0015\u001a\u00020\u00072\b\b\u0002\u0010\u0016\u001a\u00020\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010^J\u0013\u0010_\u001a\u00020\u00102\b\u0010`\u001a\u0004\u0018\u00010aHÖ\u0003J\t\u0010b\u001a\u00020\u001eHÖ\u0001J\t\u0010c\u001a\u00020\u0007HÖ\u0001J%\u0010d\u001a\u00020e2\u0006\u0010f\u001a\u00020\u00002\u0006\u0010g\u001a\u00020h2\u0006\u0010i\u001a\u00020jH\u0001¢\u0006\u0002\bkR&\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010\u001cR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b'\u0010#\u001a\u0004\b(\u0010)R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b*\u0010#\u001a\u0004\b+\u0010,R\u001c\u0010\b\u001a\u00020\t8\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b-\u0010#\u001a\u0004\b.\u0010/R\u001e\u0010\n\u001a\u0004\u0018\u00010\u00078\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b0\u0010#\u001a\u0004\b1\u0010,R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b2\u0010#\u001a\u0004\b3\u0010)R\u001e\u0010\f\u001a\u0004\u0018\u00010\u00078\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b4\u0010#\u001a\u0004\b5\u0010,R\u001e\u0010\r\u001a\u0004\u0018\u00010\u00078\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b6\u0010#\u001a\u0004\b7\u0010,R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u00078\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b8\u0010#\u001a\u0004\b9\u0010,R \u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0016X\u0097\u0004¢\u0006\u0010\n\u0002\u0010<\u0012\u0004\b:\u0010#\u001a\u0004\b\u000f\u0010;R\u001e\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b=\u0010#\u001a\u0004\b>\u0010)R\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u00078\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b?\u0010#\u001a\u0004\b@\u0010,R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u00058\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bA\u0010#\u001a\u0004\bB\u0010)R\u001e\u0010\u0014\u001a\u0004\u0018\u00010\u00078\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bC\u0010#\u001a\u0004\bD\u0010,R\u001c\u0010\u0015\u001a\u00020\u00078\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bE\u0010#\u001a\u0004\bF\u0010,R\u001a\u0010\u0016\u001a\u00020\u0017X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bG\u0010H\"\u0004\bI\u0010JR\u0016\u0010\u0018\u001a\u0004\u0018\u00010\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\bK\u0010,¨\u0006n"}, d2 = {"Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;", "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;", "underlyingSK2Transaction", "Lcom/android/billingclient/api/Purchase;", "transactionDate", "Ljava/util/Date;", "originalTransactionIdentifier", "", "state", "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;", "storeTransactionId", "originalTransactionDate", "webOrderLineItemID", "appBundleId", "subscriptionGroupId", "isUpgraded", "", "expirationDate", "offerId", "revocationDate", "appAccountToken", "purchaseToken", "payment", "Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;", "signature", "<init>", "(Lcom/android/billingclient/api/Purchase;Ljava/util/Date;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;Ljava/lang/String;)V", "transaction", "(Lcom/android/billingclient/api/Purchase;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/util/Date;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getUnderlyingSK2Transaction$annotations", "()V", "getUnderlyingSK2Transaction", "()Lcom/android/billingclient/api/Purchase;", "setUnderlyingSK2Transaction", "getTransactionDate$annotations", "getTransactionDate", "()Ljava/util/Date;", "getOriginalTransactionIdentifier$annotations", "getOriginalTransactionIdentifier", "()Ljava/lang/String;", "getState$annotations", "getState", "()Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;", "getStoreTransactionId$annotations", "getStoreTransactionId", "getOriginalTransactionDate$annotations", "getOriginalTransactionDate", "getWebOrderLineItemID$annotations", "getWebOrderLineItemID", "getAppBundleId$annotations", "getAppBundleId", "getSubscriptionGroupId$annotations", "getSubscriptionGroupId", "isUpgraded$annotations", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getExpirationDate$annotations", "getExpirationDate", "getOfferId$annotations", "getOfferId", "getRevocationDate$annotations", "getRevocationDate", "getAppAccountToken$annotations", "getAppAccountToken", "getPurchaseToken$annotations", "getPurchaseToken", "getPayment", "()Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;", "setPayment", "(Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;)V", "getSignature", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "copy", "(Lcom/android/billingclient/api/Purchase;Ljava/util/Date;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;Ljava/lang/String;)Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;", "equals", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class GoogleBillingPurchaseTransaction implements StoreTransactionType {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String appAccountToken;
    private final String appBundleId;
    private final Date expirationDate;
    private final Boolean isUpgraded;
    private final String offerId;
    private final Date originalTransactionDate;
    private final String originalTransactionIdentifier;
    private StorePayment payment;
    private final String purchaseToken;
    private final Date revocationDate;
    private final String signature;
    private final StoreTransactionState state;
    private final String storeTransactionId;
    private final String subscriptionGroupId;
    private final Date transactionDate;
    private Purchase underlyingSK2Transaction;
    private final String webOrderLineItemID;

    public static /* synthetic */ GoogleBillingPurchaseTransaction copy$default(GoogleBillingPurchaseTransaction googleBillingPurchaseTransaction, Purchase purchase, Date date, String str, StoreTransactionState storeTransactionState, String str2, Date date2, String str3, String str4, String str5, Boolean bool, Date date3, String str6, Date date4, String str7, String str8, StorePayment storePayment, String str9, int i, Object obj) {
        String str10;
        StorePayment storePayment2;
        Purchase purchase2 = (i & 1) != 0 ? googleBillingPurchaseTransaction.underlyingSK2Transaction : purchase;
        Date date5 = (i & 2) != 0 ? googleBillingPurchaseTransaction.transactionDate : date;
        String str11 = (i & 4) != 0 ? googleBillingPurchaseTransaction.originalTransactionIdentifier : str;
        StoreTransactionState storeTransactionState2 = (i & 8) != 0 ? googleBillingPurchaseTransaction.state : storeTransactionState;
        String str12 = (i & 16) != 0 ? googleBillingPurchaseTransaction.storeTransactionId : str2;
        Date date6 = (i & 32) != 0 ? googleBillingPurchaseTransaction.originalTransactionDate : date2;
        String str13 = (i & 64) != 0 ? googleBillingPurchaseTransaction.webOrderLineItemID : str3;
        String str14 = (i & 128) != 0 ? googleBillingPurchaseTransaction.appBundleId : str4;
        String str15 = (i & 256) != 0 ? googleBillingPurchaseTransaction.subscriptionGroupId : str5;
        Boolean bool2 = (i & 512) != 0 ? googleBillingPurchaseTransaction.isUpgraded : bool;
        Date date7 = (i & 1024) != 0 ? googleBillingPurchaseTransaction.expirationDate : date3;
        String str16 = (i & 2048) != 0 ? googleBillingPurchaseTransaction.offerId : str6;
        Date date8 = (i & 4096) != 0 ? googleBillingPurchaseTransaction.revocationDate : date4;
        String str17 = (i & 8192) != 0 ? googleBillingPurchaseTransaction.appAccountToken : str7;
        Purchase purchase3 = purchase2;
        String str18 = (i & 16384) != 0 ? googleBillingPurchaseTransaction.purchaseToken : str8;
        StorePayment storePayment3 = (i & 32768) != 0 ? googleBillingPurchaseTransaction.payment : storePayment;
        if ((i & 65536) != 0) {
            storePayment2 = storePayment3;
            str10 = googleBillingPurchaseTransaction.signature;
        } else {
            str10 = str9;
            storePayment2 = storePayment3;
        }
        return googleBillingPurchaseTransaction.copy(purchase3, date5, str11, storeTransactionState2, str12, date6, str13, str14, str15, bool2, date7, str16, date8, str17, str18, storePayment2, str10);
    }

    @SerialName("app_account_token")
    public static /* synthetic */ void getAppAccountToken$annotations() {
    }

    @SerialName("app_bundle_id")
    public static /* synthetic */ void getAppBundleId$annotations() {
    }

    @SerialName("expiration_date")
    @Serializable(with = DateSerializer.class)
    public static /* synthetic */ void getExpirationDate$annotations() {
    }

    @SerialName("offer_id")
    public static /* synthetic */ void getOfferId$annotations() {
    }

    @SerialName("original_transaction_date")
    @Serializable(with = DateSerializer.class)
    public static /* synthetic */ void getOriginalTransactionDate$annotations() {
    }

    @SerialName("original_transaction_identifier")
    public static /* synthetic */ void getOriginalTransactionIdentifier$annotations() {
    }

    @SerialName("purchase_token")
    public static /* synthetic */ void getPurchaseToken$annotations() {
    }

    @SerialName("revocation_date")
    @Serializable(with = DateSerializer.class)
    public static /* synthetic */ void getRevocationDate$annotations() {
    }

    @SerialName("state")
    public static /* synthetic */ void getState$annotations() {
    }

    @SerialName("store_transaction_id")
    public static /* synthetic */ void getStoreTransactionId$annotations() {
    }

    @SerialName("subscription_group_id")
    public static /* synthetic */ void getSubscriptionGroupId$annotations() {
    }

    @SerialName("transaction_date")
    @Serializable(with = DateSerializer.class)
    public static /* synthetic */ void getTransactionDate$annotations() {
    }

    @Transient
    public static /* synthetic */ void getUnderlyingSK2Transaction$annotations() {
    }

    @SerialName("web_order_line_item_id")
    public static /* synthetic */ void getWebOrderLineItemID$annotations() {
    }

    @SerialName("is_upgraded")
    public static /* synthetic */ void isUpgraded$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Purchase getUnderlyingSK2Transaction() {
        return this.underlyingSK2Transaction;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final Boolean getIsUpgraded() {
        return this.isUpgraded;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final Date getExpirationDate() {
        return this.expirationDate;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getOfferId() {
        return this.offerId;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final Date getRevocationDate() {
        return this.revocationDate;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getAppAccountToken() {
        return this.appAccountToken;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final String getPurchaseToken() {
        return this.purchaseToken;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final StorePayment getPayment() {
        return this.payment;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final String getSignature() {
        return this.signature;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Date getTransactionDate() {
        return this.transactionDate;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getOriginalTransactionIdentifier() {
        return this.originalTransactionIdentifier;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final StoreTransactionState getState() {
        return this.state;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getStoreTransactionId() {
        return this.storeTransactionId;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Date getOriginalTransactionDate() {
        return this.originalTransactionDate;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getWebOrderLineItemID() {
        return this.webOrderLineItemID;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getAppBundleId() {
        return this.appBundleId;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getSubscriptionGroupId() {
        return this.subscriptionGroupId;
    }

    public final GoogleBillingPurchaseTransaction copy(Purchase underlyingSK2Transaction, Date transactionDate, String originalTransactionIdentifier, StoreTransactionState state, String storeTransactionId, Date originalTransactionDate, String webOrderLineItemID, String appBundleId, String subscriptionGroupId, Boolean isUpgraded, Date expirationDate, String offerId, Date revocationDate, String appAccountToken, String purchaseToken, StorePayment payment, String signature) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
        Intrinsics.checkNotNullParameter(payment, "payment");
        return new GoogleBillingPurchaseTransaction(underlyingSK2Transaction, transactionDate, originalTransactionIdentifier, state, storeTransactionId, originalTransactionDate, webOrderLineItemID, appBundleId, subscriptionGroupId, isUpgraded, expirationDate, offerId, revocationDate, appAccountToken, purchaseToken, payment, signature);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GoogleBillingPurchaseTransaction)) {
            return false;
        }
        GoogleBillingPurchaseTransaction googleBillingPurchaseTransaction = (GoogleBillingPurchaseTransaction) other;
        return Intrinsics.areEqual(this.underlyingSK2Transaction, googleBillingPurchaseTransaction.underlyingSK2Transaction) && Intrinsics.areEqual(this.transactionDate, googleBillingPurchaseTransaction.transactionDate) && Intrinsics.areEqual(this.originalTransactionIdentifier, googleBillingPurchaseTransaction.originalTransactionIdentifier) && Intrinsics.areEqual(this.state, googleBillingPurchaseTransaction.state) && Intrinsics.areEqual(this.storeTransactionId, googleBillingPurchaseTransaction.storeTransactionId) && Intrinsics.areEqual(this.originalTransactionDate, googleBillingPurchaseTransaction.originalTransactionDate) && Intrinsics.areEqual(this.webOrderLineItemID, googleBillingPurchaseTransaction.webOrderLineItemID) && Intrinsics.areEqual(this.appBundleId, googleBillingPurchaseTransaction.appBundleId) && Intrinsics.areEqual(this.subscriptionGroupId, googleBillingPurchaseTransaction.subscriptionGroupId) && Intrinsics.areEqual(this.isUpgraded, googleBillingPurchaseTransaction.isUpgraded) && Intrinsics.areEqual(this.expirationDate, googleBillingPurchaseTransaction.expirationDate) && Intrinsics.areEqual(this.offerId, googleBillingPurchaseTransaction.offerId) && Intrinsics.areEqual(this.revocationDate, googleBillingPurchaseTransaction.revocationDate) && Intrinsics.areEqual(this.appAccountToken, googleBillingPurchaseTransaction.appAccountToken) && Intrinsics.areEqual(this.purchaseToken, googleBillingPurchaseTransaction.purchaseToken) && Intrinsics.areEqual(this.payment, googleBillingPurchaseTransaction.payment) && Intrinsics.areEqual(this.signature, googleBillingPurchaseTransaction.signature);
    }

    public int hashCode() {
        Purchase purchase = this.underlyingSK2Transaction;
        int iHashCode = (purchase == null ? 0 : purchase.hashCode()) * 31;
        Date date = this.transactionDate;
        int iHashCode2 = (iHashCode + (date == null ? 0 : date.hashCode())) * 31;
        String str = this.originalTransactionIdentifier;
        int iHashCode3 = (((iHashCode2 + (str == null ? 0 : str.hashCode())) * 31) + this.state.hashCode()) * 31;
        String str2 = this.storeTransactionId;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Date date2 = this.originalTransactionDate;
        int iHashCode5 = (iHashCode4 + (date2 == null ? 0 : date2.hashCode())) * 31;
        String str3 = this.webOrderLineItemID;
        int iHashCode6 = (iHashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.appBundleId;
        int iHashCode7 = (iHashCode6 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.subscriptionGroupId;
        int iHashCode8 = (iHashCode7 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Boolean bool = this.isUpgraded;
        int iHashCode9 = (iHashCode8 + (bool == null ? 0 : bool.hashCode())) * 31;
        Date date3 = this.expirationDate;
        int iHashCode10 = (iHashCode9 + (date3 == null ? 0 : date3.hashCode())) * 31;
        String str6 = this.offerId;
        int iHashCode11 = (iHashCode10 + (str6 == null ? 0 : str6.hashCode())) * 31;
        Date date4 = this.revocationDate;
        int iHashCode12 = (iHashCode11 + (date4 == null ? 0 : date4.hashCode())) * 31;
        String str7 = this.appAccountToken;
        int iHashCode13 = (((((iHashCode12 + (str7 == null ? 0 : str7.hashCode())) * 31) + this.purchaseToken.hashCode()) * 31) + this.payment.hashCode()) * 31;
        String str8 = this.signature;
        return iHashCode13 + (str8 != null ? str8.hashCode() : 0);
    }

    public String toString() {
        return "GoogleBillingPurchaseTransaction(underlyingSK2Transaction=" + this.underlyingSK2Transaction + ", transactionDate=" + this.transactionDate + ", originalTransactionIdentifier=" + this.originalTransactionIdentifier + ", state=" + this.state + ", storeTransactionId=" + this.storeTransactionId + ", originalTransactionDate=" + this.originalTransactionDate + ", webOrderLineItemID=" + this.webOrderLineItemID + ", appBundleId=" + this.appBundleId + ", subscriptionGroupId=" + this.subscriptionGroupId + ", isUpgraded=" + this.isUpgraded + ", expirationDate=" + this.expirationDate + ", offerId=" + this.offerId + ", revocationDate=" + this.revocationDate + ", appAccountToken=" + this.appAccountToken + ", purchaseToken=" + this.purchaseToken + ", payment=" + this.payment + ", signature=" + this.signature + ")";
    }

    /* JADX INFO: compiled from: GoogleBillingPurchaseTransaction.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<GoogleBillingPurchaseTransaction> serializer() {
            return GoogleBillingPurchaseTransaction$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ GoogleBillingPurchaseTransaction(int i, Date date, String str, StoreTransactionState storeTransactionState, String str2, Date date2, String str3, String str4, String str5, Boolean bool, Date date3, String str6, Date date4, String str7, String str8, StorePayment storePayment, String str9, SerializationConstructorMarker serializationConstructorMarker) {
        if (65535 != (i & 65535)) {
            PluginExceptionsKt.throwMissingFieldException(i, 65535, GoogleBillingPurchaseTransaction$$serializer.INSTANCE.getDescriptor());
        }
        this.underlyingSK2Transaction = null;
        this.transactionDate = date;
        this.originalTransactionIdentifier = str;
        this.state = storeTransactionState;
        this.storeTransactionId = str2;
        this.originalTransactionDate = date2;
        this.webOrderLineItemID = str3;
        this.appBundleId = str4;
        this.subscriptionGroupId = str5;
        this.isUpgraded = bool;
        this.expirationDate = date3;
        this.offerId = str6;
        this.revocationDate = date4;
        this.appAccountToken = str7;
        this.purchaseToken = str8;
        this.payment = storePayment;
        this.signature = str9;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(GoogleBillingPurchaseTransaction self, CompositeEncoder output, SerialDescriptor serialDesc) {
        output.encodeNullableSerializableElement(serialDesc, 0, DateSerializer.INSTANCE, self.getTransactionDate());
        output.encodeNullableSerializableElement(serialDesc, 1, StringSerializer.INSTANCE, self.getOriginalTransactionIdentifier());
        output.encodeSerializableElement(serialDesc, 2, StoreTransactionStateSerializer.INSTANCE, self.getState());
        output.encodeNullableSerializableElement(serialDesc, 3, StringSerializer.INSTANCE, self.getStoreTransactionId());
        output.encodeNullableSerializableElement(serialDesc, 4, DateSerializer.INSTANCE, self.getOriginalTransactionDate());
        output.encodeNullableSerializableElement(serialDesc, 5, StringSerializer.INSTANCE, self.getWebOrderLineItemID());
        output.encodeNullableSerializableElement(serialDesc, 6, StringSerializer.INSTANCE, self.getAppBundleId());
        output.encodeNullableSerializableElement(serialDesc, 7, StringSerializer.INSTANCE, self.getSubscriptionGroupId());
        output.encodeNullableSerializableElement(serialDesc, 8, BooleanSerializer.INSTANCE, self.isUpgraded());
        output.encodeNullableSerializableElement(serialDesc, 9, DateSerializer.INSTANCE, self.getExpirationDate());
        output.encodeNullableSerializableElement(serialDesc, 10, StringSerializer.INSTANCE, self.getOfferId());
        output.encodeNullableSerializableElement(serialDesc, 11, DateSerializer.INSTANCE, self.getRevocationDate());
        output.encodeNullableSerializableElement(serialDesc, 12, StringSerializer.INSTANCE, self.getAppAccountToken());
        output.encodeStringElement(serialDesc, 13, self.getPurchaseToken());
        output.encodeSerializableElement(serialDesc, 14, StorePayment$$serializer.INSTANCE, self.getPayment());
        output.encodeNullableSerializableElement(serialDesc, 15, StringSerializer.INSTANCE, self.getSignature());
    }

    public GoogleBillingPurchaseTransaction(Purchase purchase, Date date, String str, StoreTransactionState state, String str2, Date date2, String str3, String str4, String str5, Boolean bool, Date date3, String str6, Date date4, String str7, String purchaseToken, StorePayment payment, String str8) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
        Intrinsics.checkNotNullParameter(payment, "payment");
        this.underlyingSK2Transaction = purchase;
        this.transactionDate = date;
        this.originalTransactionIdentifier = str;
        this.state = state;
        this.storeTransactionId = str2;
        this.originalTransactionDate = date2;
        this.webOrderLineItemID = str3;
        this.appBundleId = str4;
        this.subscriptionGroupId = str5;
        this.isUpgraded = bool;
        this.expirationDate = date3;
        this.offerId = str6;
        this.revocationDate = date4;
        this.appAccountToken = str7;
        this.purchaseToken = purchaseToken;
        this.payment = payment;
        this.signature = str8;
    }

    public /* synthetic */ GoogleBillingPurchaseTransaction(Purchase purchase, Date date, String str, StoreTransactionState storeTransactionState, String str2, Date date2, String str3, String str4, String str5, Boolean bool, Date date3, String str6, Date date4, String str7, String str8, StorePayment storePayment, String str9, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : purchase, date, str, storeTransactionState, str2, date2, str3, str4, str5, bool, date3, str6, date4, str7, str8, storePayment, str9);
    }

    public final Purchase getUnderlyingSK2Transaction() {
        return this.underlyingSK2Transaction;
    }

    public final void setUnderlyingSK2Transaction(Purchase purchase) {
        this.underlyingSK2Transaction = purchase;
    }

    @Override // com.superwall.sdk.store.abstractions.transactions.StoreTransactionType
    public Date getTransactionDate() {
        return this.transactionDate;
    }

    @Override // com.superwall.sdk.store.abstractions.transactions.StoreTransactionType
    public String getOriginalTransactionIdentifier() {
        return this.originalTransactionIdentifier;
    }

    @Override // com.superwall.sdk.store.abstractions.transactions.StoreTransactionType
    public StoreTransactionState getState() {
        return this.state;
    }

    @Override // com.superwall.sdk.store.abstractions.transactions.StoreTransactionType
    public String getStoreTransactionId() {
        return this.storeTransactionId;
    }

    @Override // com.superwall.sdk.store.abstractions.transactions.StoreTransactionType
    public Date getOriginalTransactionDate() {
        return this.originalTransactionDate;
    }

    @Override // com.superwall.sdk.store.abstractions.transactions.StoreTransactionType
    public String getWebOrderLineItemID() {
        return this.webOrderLineItemID;
    }

    @Override // com.superwall.sdk.store.abstractions.transactions.StoreTransactionType
    public String getAppBundleId() {
        return this.appBundleId;
    }

    @Override // com.superwall.sdk.store.abstractions.transactions.StoreTransactionType
    public String getSubscriptionGroupId() {
        return this.subscriptionGroupId;
    }

    @Override // com.superwall.sdk.store.abstractions.transactions.StoreTransactionType
    public Boolean isUpgraded() {
        return this.isUpgraded;
    }

    @Override // com.superwall.sdk.store.abstractions.transactions.StoreTransactionType
    public Date getExpirationDate() {
        return this.expirationDate;
    }

    @Override // com.superwall.sdk.store.abstractions.transactions.StoreTransactionType
    public String getOfferId() {
        return this.offerId;
    }

    @Override // com.superwall.sdk.store.abstractions.transactions.StoreTransactionType
    public Date getRevocationDate() {
        return this.revocationDate;
    }

    @Override // com.superwall.sdk.store.abstractions.transactions.StoreTransactionType
    public String getAppAccountToken() {
        return this.appAccountToken;
    }

    @Override // com.superwall.sdk.store.abstractions.transactions.StoreTransactionType
    public String getPurchaseToken() {
        return this.purchaseToken;
    }

    @Override // com.superwall.sdk.store.abstractions.transactions.StoreTransactionType
    public StorePayment getPayment() {
        return this.payment;
    }

    public void setPayment(StorePayment storePayment) {
        Intrinsics.checkNotNullParameter(storePayment, "<set-?>");
        this.payment = storePayment;
    }

    @Override // com.superwall.sdk.store.abstractions.transactions.StoreTransactionType
    public String getSignature() {
        return this.signature;
    }

    public GoogleBillingPurchaseTransaction(Purchase transaction) {
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        Date date = new Date(transaction.getPurchaseTime());
        String orderId = transaction.getOrderId();
        StoreTransactionState.Purchased purchased = StoreTransactionState.Purchased.INSTANCE;
        String orderId2 = transaction.getOrderId();
        Date date2 = new Date(transaction.getPurchaseTime());
        StorePayment storePayment = new StorePayment(transaction);
        String purchaseToken = transaction.getPurchaseToken();
        Intrinsics.checkNotNullExpressionValue(purchaseToken, "getPurchaseToken(...)");
        this(transaction, date, orderId, purchased, orderId2, date2, null, null, null, null, null, null, null, null, purchaseToken, storePayment, transaction.getSignature());
    }
}
