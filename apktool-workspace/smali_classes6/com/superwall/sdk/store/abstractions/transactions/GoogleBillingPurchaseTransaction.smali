.class public final Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;
.super Ljava/lang/Object;
.source "GoogleBillingPurchaseTransaction.kt"

# interfaces
.implements Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction$$serializer;,
        Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008@\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 m2\u00020\u0001:\u0002lmB\u00ad\u0001\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0015\u001a\u00020\u0007\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0019\u0010\u001aB\u0011\u0008\u0016\u0012\u0006\u0010\u001b\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0019\u0010\u001cB\u00bb\u0001\u0008\u0010\u0012\u0006\u0010\u001d\u001a\u00020\u001e\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010 \u00a2\u0006\u0004\u0008\u0019\u0010!J\u000b\u0010L\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010M\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010N\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010O\u001a\u00020\tH\u00c6\u0003J\u000b\u0010P\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010Q\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010R\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010S\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010T\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u0010\u0010U\u001a\u0004\u0018\u00010\u0010H\u00c6\u0003\u00a2\u0006\u0002\u0010;J\u000b\u0010V\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010W\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010Z\u001a\u00020\u0007H\u00c6\u0003J\t\u0010[\u001a\u00020\u0017H\u00c6\u0003J\u000b\u0010\\\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u00d4\u0001\u0010]\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001\u00a2\u0006\u0002\u0010^J\u0013\u0010_\u001a\u00020\u00102\u0008\u0010`\u001a\u0004\u0018\u00010aH\u00d6\u0003J\t\u0010b\u001a\u00020\u001eH\u00d6\u0001J\t\u0010c\u001a\u00020\u0007H\u00d6\u0001J%\u0010d\u001a\u00020e2\u0006\u0010f\u001a\u00020\u00002\u0006\u0010g\u001a\u00020h2\u0006\u0010i\u001a\u00020jH\u0001\u00a2\u0006\u0002\u0008kR&\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\u001cR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\'\u0010#\u001a\u0004\u0008(\u0010)R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008*\u0010#\u001a\u0004\u0008+\u0010,R\u001c\u0010\u0008\u001a\u00020\t8\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008-\u0010#\u001a\u0004\u0008.\u0010/R\u001e\u0010\n\u001a\u0004\u0018\u00010\u00078\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u00080\u0010#\u001a\u0004\u00081\u0010,R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u00082\u0010#\u001a\u0004\u00083\u0010)R\u001e\u0010\u000c\u001a\u0004\u0018\u00010\u00078\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u00084\u0010#\u001a\u0004\u00085\u0010,R\u001e\u0010\r\u001a\u0004\u0018\u00010\u00078\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u00086\u0010#\u001a\u0004\u00087\u0010,R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u00078\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u00088\u0010#\u001a\u0004\u00089\u0010,R \u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0016X\u0097\u0004\u00a2\u0006\u0010\n\u0002\u0010<\u0012\u0004\u0008:\u0010#\u001a\u0004\u0008\u000f\u0010;R\u001e\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008=\u0010#\u001a\u0004\u0008>\u0010)R\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u00078\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008?\u0010#\u001a\u0004\u0008@\u0010,R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u00058\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008A\u0010#\u001a\u0004\u0008B\u0010)R\u001e\u0010\u0014\u001a\u0004\u0018\u00010\u00078\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008C\u0010#\u001a\u0004\u0008D\u0010,R\u001c\u0010\u0015\u001a\u00020\u00078\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008E\u0010#\u001a\u0004\u0008F\u0010,R\u001a\u0010\u0016\u001a\u00020\u0017X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010H\"\u0004\u0008I\u0010JR\u0016\u0010\u0018\u001a\u0004\u0018\u00010\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008K\u0010,\u00a8\u0006n"
    }
    d2 = {
        "Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;",
        "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;",
        "underlyingSK2Transaction",
        "Lcom/android/billingclient/api/Purchase;",
        "transactionDate",
        "Ljava/util/Date;",
        "originalTransactionIdentifier",
        "",
        "state",
        "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;",
        "storeTransactionId",
        "originalTransactionDate",
        "webOrderLineItemID",
        "appBundleId",
        "subscriptionGroupId",
        "isUpgraded",
        "",
        "expirationDate",
        "offerId",
        "revocationDate",
        "appAccountToken",
        "purchaseToken",
        "payment",
        "Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;",
        "signature",
        "<init>",
        "(Lcom/android/billingclient/api/Purchase;Ljava/util/Date;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;Ljava/lang/String;)V",
        "transaction",
        "(Lcom/android/billingclient/api/Purchase;)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/util/Date;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getUnderlyingSK2Transaction$annotations",
        "()V",
        "getUnderlyingSK2Transaction",
        "()Lcom/android/billingclient/api/Purchase;",
        "setUnderlyingSK2Transaction",
        "getTransactionDate$annotations",
        "getTransactionDate",
        "()Ljava/util/Date;",
        "getOriginalTransactionIdentifier$annotations",
        "getOriginalTransactionIdentifier",
        "()Ljava/lang/String;",
        "getState$annotations",
        "getState",
        "()Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;",
        "getStoreTransactionId$annotations",
        "getStoreTransactionId",
        "getOriginalTransactionDate$annotations",
        "getOriginalTransactionDate",
        "getWebOrderLineItemID$annotations",
        "getWebOrderLineItemID",
        "getAppBundleId$annotations",
        "getAppBundleId",
        "getSubscriptionGroupId$annotations",
        "getSubscriptionGroupId",
        "isUpgraded$annotations",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getExpirationDate$annotations",
        "getExpirationDate",
        "getOfferId$annotations",
        "getOfferId",
        "getRevocationDate$annotations",
        "getRevocationDate",
        "getAppAccountToken$annotations",
        "getAppAccountToken",
        "getPurchaseToken$annotations",
        "getPurchaseToken",
        "getPayment",
        "()Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;",
        "setPayment",
        "(Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;)V",
        "getSignature",
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
        "(Lcom/android/billingclient/api/Purchase;Ljava/util/Date;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;Ljava/lang/String;)Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;",
        "equals",
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
        "$serializer",
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

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction$Companion;


# instance fields
.field private final appAccountToken:Ljava/lang/String;

.field private final appBundleId:Ljava/lang/String;

.field private final expirationDate:Ljava/util/Date;

.field private final isUpgraded:Ljava/lang/Boolean;

.field private final offerId:Ljava/lang/String;

.field private final originalTransactionDate:Ljava/util/Date;

.field private final originalTransactionIdentifier:Ljava/lang/String;

.field private payment:Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;

.field private final purchaseToken:Ljava/lang/String;

.field private final revocationDate:Ljava/util/Date;

.field private final signature:Ljava/lang/String;

.field private final state:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;

.field private final storeTransactionId:Ljava/lang/String;

.field private final subscriptionGroupId:Ljava/lang/String;

.field private final transactionDate:Ljava/util/Date;

.field private underlyingSK2Transaction:Lcom/android/billingclient/api/Purchase;

.field private final webOrderLineItemID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->Companion:Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/Date;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    const v0, 0xffff

    and-int v1, p1, v0

    if-eq v0, v1, :cond_0

    .line 10
    sget-object v1, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction$$serializer;->INSTANCE:Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction$$serializer;

    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->underlyingSK2Transaction:Lcom/android/billingclient/api/Purchase;

    iput-object p2, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->transactionDate:Ljava/util/Date;

    iput-object p3, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->originalTransactionIdentifier:Ljava/lang/String;

    iput-object p4, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->state:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;

    iput-object p5, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->storeTransactionId:Ljava/lang/String;

    iput-object p6, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->originalTransactionDate:Ljava/util/Date;

    iput-object p7, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->webOrderLineItemID:Ljava/lang/String;

    iput-object p8, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->appBundleId:Ljava/lang/String;

    iput-object p9, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->subscriptionGroupId:Ljava/lang/String;

    iput-object p10, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->isUpgraded:Ljava/lang/Boolean;

    iput-object p11, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->expirationDate:Ljava/util/Date;

    iput-object p12, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->offerId:Ljava/lang/String;

    iput-object p13, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->revocationDate:Ljava/util/Date;

    move-object/from16 p1, p14

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->appAccountToken:Ljava/lang/String;

    move-object/from16 p1, p15

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->purchaseToken:Ljava/lang/String;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->payment:Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->signature:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/billingclient/api/Purchase;)V
    .locals 18

    move-object/from16 v1, p1

    const-string v0, "transaction"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 53
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v3

    .line 54
    sget-object v0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Purchased;->INSTANCE:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Purchased;

    .line 55
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v5

    .line 56
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseTime()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 65
    new-instance v4, Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;

    invoke-direct {v4, v1}, Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;-><init>(Lcom/android/billingclient/api/Purchase;)V

    .line 66
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v15

    const-string v7, "getPurchaseToken(...)"

    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v17

    .line 54
    check-cast v0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v16, v4

    move-object v4, v0

    move-object/from16 v0, p0

    .line 50
    invoke-direct/range {v0 .. v17}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;-><init>(Lcom/android/billingclient/api/Purchase;Ljava/util/Date;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/billingclient/api/Purchase;Ljava/util/Date;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;Ljava/lang/String;)V
    .locals 3

    move-object/from16 v0, p15

    move-object/from16 v1, p16

    const-string v2, "state"

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "purchaseToken"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "payment"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->underlyingSK2Transaction:Lcom/android/billingclient/api/Purchase;

    .line 15
    iput-object p2, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->transactionDate:Ljava/util/Date;

    .line 18
    iput-object p3, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->originalTransactionIdentifier:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->state:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;

    .line 22
    iput-object p5, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->storeTransactionId:Ljava/lang/String;

    .line 24
    iput-object p6, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->originalTransactionDate:Ljava/util/Date;

    .line 27
    iput-object p7, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->webOrderLineItemID:Ljava/lang/String;

    .line 29
    iput-object p8, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->appBundleId:Ljava/lang/String;

    .line 31
    iput-object p9, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->subscriptionGroupId:Ljava/lang/String;

    .line 33
    iput-object p10, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->isUpgraded:Ljava/lang/Boolean;

    .line 35
    iput-object p11, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->expirationDate:Ljava/util/Date;

    .line 38
    iput-object p12, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->offerId:Ljava/lang/String;

    move-object/from16 p1, p13

    .line 40
    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->revocationDate:Ljava/util/Date;

    move-object/from16 p1, p14

    .line 43
    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->appAccountToken:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->purchaseToken:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->payment:Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;

    move-object/from16 p1, p17

    .line 48
    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->signature:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/billingclient/api/Purchase;Ljava/util/Date;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 19

    and-int/lit8 v0, p18, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    .line 11
    invoke-direct/range {v1 .. v18}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;-><init>(Lcom/android/billingclient/api/Purchase;Ljava/util/Date;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;Lcom/android/billingclient/api/Purchase;Ljava/util/Date;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;Ljava/lang/String;ILjava/lang/Object;)Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p18

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->underlyingSK2Transaction:Lcom/android/billingclient/api/Purchase;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->transactionDate:Ljava/util/Date;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->originalTransactionIdentifier:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->state:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->storeTransactionId:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->originalTransactionDate:Ljava/util/Date;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->webOrderLineItemID:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->appBundleId:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->subscriptionGroupId:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->isUpgraded:Ljava/lang/Boolean;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->expirationDate:Ljava/util/Date;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->offerId:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->revocationDate:Ljava/util/Date;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->appAccountToken:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->purchaseToken:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    iget-object v1, v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->payment:Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p18, v16

    if-eqz v16, :cond_10

    move-object/from16 p2, v1

    iget-object v1, v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->signature:Ljava/lang/String;

    move-object/from16 p17, p2

    move-object/from16 p18, v1

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

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

    goto :goto_10

    :cond_10
    move-object/from16 p18, p17

    move-object/from16 p17, v1

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    :goto_10
    invoke-virtual/range {p1 .. p18}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->copy(Lcom/android/billingclient/api/Purchase;Ljava/util/Date;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;Ljava/lang/String;)Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getAppAccountToken$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "app_account_token"
    .end annotation

    return-void
.end method

.method public static synthetic getAppBundleId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "app_bundle_id"
    .end annotation

    return-void
.end method

.method public static synthetic getExpirationDate$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "expiration_date"
    .end annotation

    .annotation runtime Lkotlinx/serialization/Serializable;
        with = Lcom/superwall/sdk/models/serialization/DateSerializer;
    .end annotation

    return-void
.end method

.method public static synthetic getOfferId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "offer_id"
    .end annotation

    return-void
.end method

.method public static synthetic getOriginalTransactionDate$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "original_transaction_date"
    .end annotation

    .annotation runtime Lkotlinx/serialization/Serializable;
        with = Lcom/superwall/sdk/models/serialization/DateSerializer;
    .end annotation

    return-void
.end method

.method public static synthetic getOriginalTransactionIdentifier$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "original_transaction_identifier"
    .end annotation

    return-void
.end method

.method public static synthetic getPurchaseToken$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "purchase_token"
    .end annotation

    return-void
.end method

.method public static synthetic getRevocationDate$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "revocation_date"
    .end annotation

    .annotation runtime Lkotlinx/serialization/Serializable;
        with = Lcom/superwall/sdk/models/serialization/DateSerializer;
    .end annotation

    return-void
.end method

.method public static synthetic getState$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "state"
    .end annotation

    return-void
.end method

.method public static synthetic getStoreTransactionId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "store_transaction_id"
    .end annotation

    return-void
.end method

.method public static synthetic getSubscriptionGroupId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "subscription_group_id"
    .end annotation

    return-void
.end method

.method public static synthetic getTransactionDate$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "transaction_date"
    .end annotation

    .annotation runtime Lkotlinx/serialization/Serializable;
        with = Lcom/superwall/sdk/models/serialization/DateSerializer;
    .end annotation

    return-void
.end method

.method public static synthetic getUnderlyingSK2Transaction$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Transient;
    .end annotation

    return-void
.end method

.method public static synthetic getWebOrderLineItemID$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "web_order_line_item_id"
    .end annotation

    return-void
.end method

.method public static synthetic isUpgraded$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "is_upgraded"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 10
    sget-object v0, Lcom/superwall/sdk/models/serialization/DateSerializer;->INSTANCE:Lcom/superwall/sdk/models/serialization/DateSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->getTransactionDate()Ljava/util/Date;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->getOriginalTransactionIdentifier()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionStateSerializer;->INSTANCE:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionStateSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->getState()Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->getStoreTransactionId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lcom/superwall/sdk/models/serialization/DateSerializer;->INSTANCE:Lcom/superwall/sdk/models/serialization/DateSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->getOriginalTransactionDate()Ljava/util/Date;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->getWebOrderLineItemID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->getAppBundleId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->getSubscriptionGroupId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->isUpgraded()Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x8

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lcom/superwall/sdk/models/serialization/DateSerializer;->INSTANCE:Lcom/superwall/sdk/models/serialization/DateSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->getExpirationDate()Ljava/util/Date;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->getOfferId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lcom/superwall/sdk/models/serialization/DateSerializer;->INSTANCE:Lcom/superwall/sdk/models/serialization/DateSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->getRevocationDate()Ljava/util/Date;

    move-result-object v1

    const/16 v2, 0xb

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->getAppAccountToken()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    sget-object v0, Lcom/superwall/sdk/store/abstractions/transactions/StorePayment$$serializer;->INSTANCE:Lcom/superwall/sdk/store/abstractions/transactions/StorePayment$$serializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->getPayment()Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;

    move-result-object v1

    const/16 v2, 0xe

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->getSignature()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0xf

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final component1()Lcom/android/billingclient/api/Purchase;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->underlyingSK2Transaction:Lcom/android/billingclient/api/Purchase;

    return-object v0
.end method

.method public final component10()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->isUpgraded:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component11()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->expirationDate:Ljava/util/Date;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->offerId:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->revocationDate:Ljava/util/Date;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->appAccountToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->purchaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->payment:Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;

    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->transactionDate:Ljava/util/Date;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->originalTransactionIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->state:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->storeTransactionId:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->originalTransactionDate:Ljava/util/Date;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->webOrderLineItemID:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->appBundleId:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->subscriptionGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/android/billingclient/api/Purchase;Ljava/util/Date;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;Ljava/lang/String;)Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;
    .locals 19

    const-string v0, "state"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaseToken"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payment"

    move-object/from16 v2, p16

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v18, p17

    move-object/from16 v17, v2

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v18}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;-><init>(Lcom/android/billingclient/api/Purchase;Ljava/util/Date;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;Ljava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;

    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->underlyingSK2Transaction:Lcom/android/billingclient/api/Purchase;

    iget-object v3, p1, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->underlyingSK2Transaction:Lcom/android/billingclient/api/Purchase;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->transactionDate:Ljava/util/Date;

    iget-object v3, p1, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->transactionDate:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->originalTransactionIdentifier:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->originalTransactionIdentifier:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->state:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;

    iget-object v3, p1, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->state:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->storeTransactionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->storeTransactionId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->originalTransactionDate:Ljava/util/Date;

    iget-object v3, p1, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->originalTransactionDate:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->webOrderLineItemID:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->webOrderLineItemID:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->appBundleId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->appBundleId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->subscriptionGroupId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->subscriptionGroupId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->isUpgraded:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->isUpgraded:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->expirationDate:Ljava/util/Date;

    iget-object v3, p1, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->expirationDate:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->offerId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->offerId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->revocationDate:Ljava/util/Date;

    iget-object v3, p1, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->revocationDate:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->appAccountToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->appAccountToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->purchaseToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->purchaseToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->payment:Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;

    iget-object v3, p1, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->payment:Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->signature:Ljava/lang/String;

    iget-object p1, p1, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->signature:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v2

    :cond_12
    return v0
.end method

.method public getAppAccountToken()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->appAccountToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAppBundleId()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->appBundleId:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationDate()Ljava/util/Date;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->expirationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getOfferId()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->offerId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalTransactionDate()Ljava/util/Date;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->originalTransactionDate:Ljava/util/Date;

    return-object v0
.end method

.method public getOriginalTransactionIdentifier()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->originalTransactionIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getPayment()Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->payment:Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;

    return-object v0
.end method

.method public getPurchaseToken()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->purchaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRevocationDate()Ljava/util/Date;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->revocationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->state:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;

    return-object v0
.end method

.method public getStoreTransactionId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->storeTransactionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionGroupId()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->subscriptionGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionDate()Ljava/util/Date;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->transactionDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getUnderlyingSK2Transaction()Lcom/android/billingclient/api/Purchase;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->underlyingSK2Transaction:Lcom/android/billingclient/api/Purchase;

    return-object v0
.end method

.method public getWebOrderLineItemID()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->webOrderLineItemID:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->underlyingSK2Transaction:Lcom/android/billingclient/api/Purchase;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->transactionDate:Ljava/util/Date;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->originalTransactionIdentifier:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->state:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;

    invoke-virtual {v2}, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->storeTransactionId:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->originalTransactionDate:Ljava/util/Date;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->webOrderLineItemID:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->appBundleId:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->subscriptionGroupId:Ljava/lang/String;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->isUpgraded:Ljava/lang/Boolean;

    if-nez v2, :cond_8

    move v2, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->expirationDate:Ljava/util/Date;

    if-nez v2, :cond_9

    move v2, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->offerId:Ljava/lang/String;

    if-nez v2, :cond_a

    move v2, v1

    goto :goto_a

    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->revocationDate:Ljava/util/Date;

    if-nez v2, :cond_b

    move v2, v1

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->appAccountToken:Ljava/lang/String;

    if-nez v2, :cond_c

    move v2, v1

    goto :goto_c

    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->purchaseToken:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->payment:Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;

    invoke-virtual {v2}, Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->signature:Ljava/lang/String;

    if-nez v2, :cond_d

    goto :goto_d

    :cond_d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_d
    add-int/2addr v0, v1

    return v0
.end method

.method public isUpgraded()Ljava/lang/Boolean;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->isUpgraded:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setPayment(Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->payment:Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;

    return-void
.end method

.method public final setUnderlyingSK2Transaction(Lcom/android/billingclient/api/Purchase;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->underlyingSK2Transaction:Lcom/android/billingclient/api/Purchase;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->underlyingSK2Transaction:Lcom/android/billingclient/api/Purchase;

    iget-object v2, v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->transactionDate:Ljava/util/Date;

    iget-object v3, v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->originalTransactionIdentifier:Ljava/lang/String;

    iget-object v4, v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->state:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;

    iget-object v5, v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->storeTransactionId:Ljava/lang/String;

    iget-object v6, v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->originalTransactionDate:Ljava/util/Date;

    iget-object v7, v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->webOrderLineItemID:Ljava/lang/String;

    iget-object v8, v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->appBundleId:Ljava/lang/String;

    iget-object v9, v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->subscriptionGroupId:Ljava/lang/String;

    iget-object v10, v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->isUpgraded:Ljava/lang/Boolean;

    iget-object v11, v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->expirationDate:Ljava/util/Date;

    iget-object v12, v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->offerId:Ljava/lang/String;

    iget-object v13, v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->revocationDate:Ljava/util/Date;

    iget-object v14, v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->appAccountToken:Ljava/lang/String;

    iget-object v15, v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->purchaseToken:Ljava/lang/String;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->payment:Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;

    move-object/from16 v17, v15

    iget-object v15, v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->signature:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v18, v15

    const-string v15, "GoogleBillingPurchaseTransaction(underlyingSK2Transaction="

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transactionDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", originalTransactionIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", storeTransactionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", originalTransactionDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", webOrderLineItemID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appBundleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subscriptionGroupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isUpgraded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expirationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", revocationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appAccountToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", purchaseToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
