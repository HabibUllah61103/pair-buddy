.class public interface abstract Lcom/superwall/sdk/network/SuperwallAPI;
.super Ljava/lang/Object;
.source "SuperwallAPI.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/network/SuperwallAPI$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b4\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u00a6@\u00a2\u0006\u0002\u0010\u0008J8\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00050\u00032\u001c\u0010\u000b\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\r\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000cH\u00a6@\u00a2\u0006\u0002\u0010\u000eJ\"\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0006\u0010\u0010\u001a\u00020\u0011H\u00a6@\u00a2\u0006\u0002\u0010\u0012J2\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00050\u00032\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u00a6@\u00a2\u0006\u0002\u0010\u0019J*\u0010\u001a\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u001b\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001dH\u00a6@\u00a2\u0006\u0002\u0010\u001eJ4\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u00050\u00032\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u00a6@\u00a2\u0006\u0004\u0008\'\u0010(J \u0010)\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020*0\u001b\u0012\u0004\u0012\u00020\u00050\u0003H\u00a6@\u00a2\u0006\u0002\u0010+J,\u0010,\u001a\u000e\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020\u00050\u00032\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u000201H\u00a6@\u00a2\u0006\u0004\u00082\u00103J\"\u00104\u001a\u000e\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020\u00050\u00032\u0006\u00100\u001a\u000201H\u00a6@\u00a2\u0006\u0002\u00105Jr\u00106\u001a\u000e\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u00020\u00050\u00032\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u0002090\u001b2\u0008\u0010.\u001a\u0004\u0018\u00010/2\u0008\u0010:\u001a\u0004\u0018\u00010\u00162\u0006\u0010;\u001a\u0002012\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020=0\u001b2\u0006\u0010>\u001a\u00020\u00162\u0014\u0010?\u001a\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020A\u0018\u00010@H\u00a6@\u00a2\u0006\u0004\u0008B\u0010C\u00a8\u0006D"
    }
    d2 = {
        "Lcom/superwall/sdk/network/SuperwallAPI;",
        "",
        "sendEvents",
        "Lcom/superwall/sdk/misc/Either;",
        "",
        "Lcom/superwall/sdk/network/NetworkError;",
        "events",
        "Lcom/superwall/sdk/models/events/EventsRequest;",
        "(Lcom/superwall/sdk/models/events/EventsRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getConfig",
        "Lcom/superwall/sdk/models/config/Config;",
        "isRetryingCallback",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "confirmAssignments",
        "confirmableAssignments",
        "Lcom/superwall/sdk/models/assignment/AssignmentPostback;",
        "(Lcom/superwall/sdk/models/assignment/AssignmentPostback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPaywall",
        "Lcom/superwall/sdk/models/paywall/Paywall;",
        "identifier",
        "",
        "event",
        "Lcom/superwall/sdk/models/events/EventData;",
        "(Ljava/lang/String;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPaywalls",
        "",
        "isForDebugging",
        "",
        "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getEnrichment",
        "Lcom/superwall/sdk/models/enrichment/Enrichment;",
        "enrichmentRequest",
        "Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;",
        "maxRetry",
        "",
        "timeout",
        "Lkotlin/time/Duration;",
        "getEnrichment-exY8QGI",
        "(Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getAssignments",
        "Lcom/superwall/sdk/models/assignment/Assignment;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "webEntitlementsByUserId",
        "Lcom/superwall/sdk/models/entitlements/WebEntitlements;",
        "userId",
        "Lcom/superwall/sdk/models/internal/UserId;",
        "deviceId",
        "Lcom/superwall/sdk/models/internal/DeviceVendorId;",
        "webEntitlementsByUserId-5PBZuVg",
        "(Ljava/lang/String;Lcom/superwall/sdk/models/internal/DeviceVendorId;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "webEntitlementsByDeviceID",
        "(Lcom/superwall/sdk/models/internal/DeviceVendorId;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "redeemToken",
        "Lcom/superwall/sdk/models/internal/WebRedemptionResponse;",
        "token",
        "Lcom/superwall/sdk/models/entitlements/Redeemable;",
        "aliasId",
        "vendorId",
        "receipts",
        "Lcom/superwall/sdk/models/entitlements/TransactionReceipt;",
        "externalAccountId",
        "attributionProps",
        "",
        "Lkotlinx/serialization/json/JsonElement;",
        "redeemToken-Jf2YlNw",
        "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/internal/DeviceVendorId;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# virtual methods
.method public abstract confirmAssignments(Lcom/superwall/sdk/models/assignment/AssignmentPostback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/assignment/AssignmentPostback;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lkotlin/Unit;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getAssignments(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "+",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/assignment/Assignment;",
            ">;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getConfig(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/models/config/Config;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getEnrichment-exY8QGI(Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;",
            "IJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/models/enrichment/Enrichment;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getPaywall(Ljava/lang/String;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/events/EventData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getPaywalls(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "+",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            ">;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract redeemToken-Jf2YlNw(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/internal/DeviceVendorId;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/entitlements/Redeemable;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/internal/DeviceVendorId;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/entitlements/TransactionReceipt;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lkotlinx/serialization/json/JsonElement;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/models/internal/WebRedemptionResponse;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract sendEvents(Lcom/superwall/sdk/models/events/EventsRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/events/EventsRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lkotlin/Unit;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract webEntitlementsByDeviceID(Lcom/superwall/sdk/models/internal/DeviceVendorId;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/internal/DeviceVendorId;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/models/entitlements/WebEntitlements;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract webEntitlementsByUserId-5PBZuVg(Ljava/lang/String;Lcom/superwall/sdk/models/internal/DeviceVendorId;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/internal/DeviceVendorId;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/models/entitlements/WebEntitlements;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
