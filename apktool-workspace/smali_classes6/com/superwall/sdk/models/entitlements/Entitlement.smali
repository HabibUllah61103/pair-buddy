.class public final Lcom/superwall/sdk/models/entitlements/Entitlement;
.super Ljava/lang/Object;
.source "Entitlement.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/entitlements/Entitlement$$serializer;,
        Lcom/superwall/sdk/models/entitlements/Entitlement$Companion;,
        Lcom/superwall/sdk/models/entitlements/Entitlement$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEntitlement.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Entitlement.kt\ncom/superwall/sdk/models/entitlements/Entitlement\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,206:1\n1#2:207\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\"\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008=\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 d2\u00020\u0001:\u0003cdeB\u009f\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018B\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0017\u0010\u0019B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0017\u0010\u001aB\u00a1\u0001\u0008\u0010\u0012\u0006\u0010\u001b\u001a\u00020\u001c\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001e\u00a2\u0006\u0004\u0008\u0017\u0010\u001fJ\u000e\u0010G\u001a\u00020\u00072\u0006\u0010H\u001a\u00020\u0000J\t\u0010I\u001a\u00020\u0003H\u00c6\u0003J\t\u0010J\u001a\u00020\u0005H\u00c6\u0003J\t\u0010K\u001a\u00020\u0007H\u00c6\u0003J\u000f\u0010L\u001a\u0008\u0012\u0004\u0012\u00020\u00030\tH\u00c6\u0003J\u000b\u0010M\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010N\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u000b\u0010O\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u000b\u0010P\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u0010\u0010Q\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u00106J\u0010\u0010R\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u00106J\u000b\u0010S\u001a\u0004\u0018\u00010\u0012H\u00c6\u0003J\u000b\u0010T\u001a\u0004\u0018\u00010\u0014H\u00c6\u0003J\u000b\u0010U\u001a\u0004\u0018\u00010\u0016H\u00c6\u0003J\u00a8\u0001\u0010V\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u00c6\u0001\u00a2\u0006\u0002\u0010WJ\u0013\u0010X\u001a\u00020\u00072\u0008\u0010H\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010Y\u001a\u00020\u001cH\u00d6\u0001J\t\u0010Z\u001a\u00020\u0003H\u00d6\u0001J%\u0010[\u001a\u00020\\2\u0006\u0010]\u001a\u00020\u00002\u0006\u0010^\u001a\u00020_2\u0006\u0010`\u001a\u00020aH\u0001\u00a2\u0006\u0002\u0008bR\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008$\u0010!\u001a\u0004\u0008%\u0010&R\u001c\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\'\u0010!\u001a\u0004\u0008\u0006\u0010(R\"\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\t8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008)\u0010!\u001a\u0004\u0008*\u0010+R\u001e\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008,\u0010!\u001a\u0004\u0008-\u0010#R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008.\u0010!\u001a\u0004\u0008/\u00100R\u001e\u0010\r\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u00081\u0010!\u001a\u0004\u00082\u00100R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u00083\u0010!\u001a\u0004\u00084\u00100R \u0010\u000f\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u00107\u0012\u0004\u00085\u0010!\u001a\u0004\u0008\u000f\u00106R \u0010\u0010\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u00107\u0012\u0004\u00088\u0010!\u001a\u0004\u00089\u00106R\u001e\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008:\u0010!\u001a\u0004\u0008;\u0010<R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008=\u0010!\u001a\u0004\u0008>\u0010?R\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008@\u0010!\u001a\u0004\u0008A\u0010BR\u0013\u0010C\u001a\u0004\u0018\u00010\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008C\u00106R\u0013\u0010D\u001a\u0004\u0018\u00010\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008E\u00100R\u0013\u0010F\u001a\u0004\u0018\u00010\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008F\u00106\u00a8\u0006f"
    }
    d2 = {
        "Lcom/superwall/sdk/models/entitlements/Entitlement;",
        "",
        "id",
        "",
        "type",
        "Lcom/superwall/sdk/models/entitlements/Entitlement$Type;",
        "isActive",
        "",
        "productIds",
        "",
        "latestProductId",
        "startsAt",
        "Ljava/util/Date;",
        "renewedAt",
        "expiresAt",
        "isLifetime",
        "willRenew",
        "state",
        "Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;",
        "offerType",
        "Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;",
        "store",
        "Lcom/superwall/sdk/models/product/Store;",
        "<init>",
        "(Ljava/lang/String;Lcom/superwall/sdk/models/entitlements/Entitlement$Type;ZLjava/util/Set;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;Lcom/superwall/sdk/models/product/Store;)V",
        "(Ljava/lang/String;)V",
        "(Ljava/lang/String;Lcom/superwall/sdk/models/entitlements/Entitlement$Type;)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Lcom/superwall/sdk/models/entitlements/Entitlement$Type;ZLjava/util/Set;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;Lcom/superwall/sdk/models/product/Store;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getId$annotations",
        "()V",
        "getId",
        "()Ljava/lang/String;",
        "getType$annotations",
        "getType",
        "()Lcom/superwall/sdk/models/entitlements/Entitlement$Type;",
        "isActive$annotations",
        "()Z",
        "getProductIds$annotations",
        "getProductIds",
        "()Ljava/util/Set;",
        "getLatestProductId$annotations",
        "getLatestProductId",
        "getStartsAt$annotations",
        "getStartsAt",
        "()Ljava/util/Date;",
        "getRenewedAt$annotations",
        "getRenewedAt",
        "getExpiresAt$annotations",
        "getExpiresAt",
        "isLifetime$annotations",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getWillRenew$annotations",
        "getWillRenew",
        "getState$annotations",
        "getState",
        "()Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;",
        "getOfferType$annotations",
        "getOfferType",
        "()Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;",
        "getStore$annotations",
        "getStore",
        "()Lcom/superwall/sdk/models/product/Store;",
        "isRevoked",
        "renewsAt",
        "getRenewsAt",
        "isInGracePeriod",
        "isDistinct",
        "other",
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
        "copy",
        "(Ljava/lang/String;Lcom/superwall/sdk/models/entitlements/Entitlement$Type;ZLjava/util/Set;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;Lcom/superwall/sdk/models/product/Store;)Lcom/superwall/sdk/models/entitlements/Entitlement;",
        "equals",
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
        "Type",
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

.field public static final Companion:Lcom/superwall/sdk/models/entitlements/Entitlement$Companion;


# instance fields
.field private final expiresAt:Ljava/util/Date;

.field private final id:Ljava/lang/String;

.field private final isActive:Z

.field private final isLifetime:Ljava/lang/Boolean;

.field private final latestProductId:Ljava/lang/String;

.field private final offerType:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

.field private final productIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final renewedAt:Ljava/util/Date;

.field private final startsAt:Ljava/util/Date;

.field private final state:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

.field private final store:Lcom/superwall/sdk/models/product/Store;

.field private final type:Lcom/superwall/sdk/models/entitlements/Entitlement$Type;

.field private final willRenew:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/superwall/sdk/models/entitlements/Entitlement$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/entitlements/Entitlement$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/entitlements/Entitlement;->Companion:Lcom/superwall/sdk/models/entitlements/Entitlement$Companion;

    const/16 v0, 0xd

    .line 195
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v2, Lcom/superwall/sdk/models/entitlements/Entitlement$Type;->Companion:Lcom/superwall/sdk/models/entitlements/Entitlement$Type$Companion;

    invoke-virtual {v2}, Lcom/superwall/sdk/models/entitlements/Entitlement$Type$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v2, Lkotlinx/serialization/internal/LinkedHashSetSerializer;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/LinkedHashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->Companion:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;->Companion:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/superwall/sdk/models/product/Store;->Companion:Lcom/superwall/sdk/models/product/Store$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/Store$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Lcom/superwall/sdk/models/entitlements/Entitlement;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/superwall/sdk/models/entitlements/Entitlement$Type;ZLjava/util/Set;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;Lcom/superwall/sdk/models/product/Store;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    .line 19
    sget-object v0, Lcom/superwall/sdk/models/entitlements/Entitlement$$serializer;->INSTANCE:Lcom/superwall/sdk/models/entitlements/Entitlement$$serializer;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/entitlements/Entitlement$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->id:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    .line 32
    sget-object p2, Lcom/superwall/sdk/models/entitlements/Entitlement$Type;->SERVICE_LEVEL:Lcom/superwall/sdk/models/entitlements/Entitlement$Type;

    .line 19
    iput-object p2, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->type:Lcom/superwall/sdk/models/entitlements/Entitlement$Type;

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->type:Lcom/superwall/sdk/models/entitlements/Entitlement$Type;

    :goto_0
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->isActive:Z

    goto :goto_1

    :cond_2
    iput-boolean p4, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->isActive:Z

    :goto_1
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    .line 44
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p2

    .line 19
    iput-object p2, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->productIds:Ljava/util/Set;

    goto :goto_2

    :cond_3
    iput-object p5, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->productIds:Ljava/util/Set;

    :goto_2
    and-int/lit8 p2, p1, 0x10

    const/4 p3, 0x0

    if-nez p2, :cond_4

    iput-object p3, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->latestProductId:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iput-object p6, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->latestProductId:Ljava/lang/String;

    :goto_3
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_5

    iput-object p3, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->startsAt:Ljava/util/Date;

    goto :goto_4

    :cond_5
    iput-object p7, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->startsAt:Ljava/util/Date;

    :goto_4
    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_6

    iput-object p3, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->renewedAt:Ljava/util/Date;

    goto :goto_5

    :cond_6
    iput-object p8, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->renewedAt:Ljava/util/Date;

    :goto_5
    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_7

    iput-object p3, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->expiresAt:Ljava/util/Date;

    goto :goto_6

    :cond_7
    iput-object p9, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->expiresAt:Ljava/util/Date;

    :goto_6
    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_8

    iput-object p3, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->isLifetime:Ljava/lang/Boolean;

    goto :goto_7

    :cond_8
    iput-object p10, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->isLifetime:Ljava/lang/Boolean;

    :goto_7
    and-int/lit16 p2, p1, 0x200

    if-nez p2, :cond_9

    iput-object p3, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->willRenew:Ljava/lang/Boolean;

    goto :goto_8

    :cond_9
    iput-object p11, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->willRenew:Ljava/lang/Boolean;

    :goto_8
    and-int/lit16 p2, p1, 0x400

    if-nez p2, :cond_a

    iput-object p3, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->state:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    goto :goto_9

    :cond_a
    iput-object p12, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->state:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    :goto_9
    and-int/lit16 p2, p1, 0x800

    if-nez p2, :cond_b

    iput-object p3, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->offerType:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    goto :goto_a

    :cond_b
    iput-object p13, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->offerType:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    :goto_a
    and-int/lit16 p1, p1, 0x1000

    if-nez p1, :cond_c

    iput-object p3, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->store:Lcom/superwall/sdk/models/product/Store;

    return-void

    :cond_c
    move-object/from16 p1, p14

    iput-object p1, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->store:Lcom/superwall/sdk/models/product/Store;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 17

    const-string v0, "id"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    sget-object v3, Lcom/superwall/sdk/models/entitlements/Entitlement$Type;->SERVICE_LEVEL:Lcom/superwall/sdk/models/entitlements/Entitlement$Type;

    const/16 v15, 0x1ff8

    const/16 v16, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v16}, Lcom/superwall/sdk/models/entitlements/Entitlement;-><init>(Ljava/lang/String;Lcom/superwall/sdk/models/entitlements/Entitlement$Type;ZLjava/util/Set;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;Lcom/superwall/sdk/models/product/Store;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/superwall/sdk/models/entitlements/Entitlement$Type;)V
    .locals 17

    const-string v0, "id"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v15, 0x1ff8

    const/16 v16, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    .line 193
    invoke-direct/range {v1 .. v16}, Lcom/superwall/sdk/models/entitlements/Entitlement;-><init>(Ljava/lang/String;Lcom/superwall/sdk/models/entitlements/Entitlement$Type;ZLjava/util/Set;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;Lcom/superwall/sdk/models/product/Store;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/superwall/sdk/models/entitlements/Entitlement$Type;ZLjava/util/Set;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;Lcom/superwall/sdk/models/product/Store;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/entitlements/Entitlement$Type;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;",
            "Lcom/superwall/sdk/models/product/Store;",
            ")V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productIds"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->id:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->type:Lcom/superwall/sdk/models/entitlements/Entitlement$Type;

    .line 38
    iput-boolean p3, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->isActive:Z

    .line 43
    iput-object p4, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->productIds:Ljava/util/Set;

    .line 52
    iput-object p5, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->latestProductId:Ljava/lang/String;

    .line 59
    iput-object p6, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->startsAt:Ljava/util/Date;

    .line 71
    iput-object p7, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->renewedAt:Ljava/util/Date;

    .line 81
    iput-object p8, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->expiresAt:Ljava/util/Date;

    .line 90
    iput-object p9, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->isLifetime:Ljava/lang/Boolean;

    .line 97
    iput-object p10, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->willRenew:Ljava/lang/Boolean;

    .line 105
    iput-object p11, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->state:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    .line 115
    iput-object p12, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->offerType:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    .line 122
    iput-object p13, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->store:Lcom/superwall/sdk/models/product/Store;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/superwall/sdk/models/entitlements/Entitlement$Type;ZLjava/util/Set;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;Lcom/superwall/sdk/models/product/Store;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 32
    sget-object v1, Lcom/superwall/sdk/models/entitlements/Entitlement$Type;->SERVICE_LEVEL:Lcom/superwall/sdk/models/entitlements/Entitlement$Type;

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    move/from16 v2, p3

    :goto_1
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_2

    .line 44
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object/from16 v3, p4

    :goto_2
    and-int/lit8 v4, v0, 0x10

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    move-object v4, v5

    goto :goto_3

    :cond_3
    move-object/from16 v4, p5

    :goto_3
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_4

    move-object v6, v5

    goto :goto_4

    :cond_4
    move-object/from16 v6, p6

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_5

    move-object v7, v5

    goto :goto_5

    :cond_5
    move-object/from16 v7, p7

    :goto_5
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_6

    move-object v8, v5

    goto :goto_6

    :cond_6
    move-object/from16 v8, p8

    :goto_6
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_7

    move-object v9, v5

    goto :goto_7

    :cond_7
    move-object/from16 v9, p9

    :goto_7
    and-int/lit16 v10, v0, 0x200

    if-eqz v10, :cond_8

    move-object v10, v5

    goto :goto_8

    :cond_8
    move-object/from16 v10, p10

    :goto_8
    and-int/lit16 v11, v0, 0x400

    if-eqz v11, :cond_9

    move-object v11, v5

    goto :goto_9

    :cond_9
    move-object/from16 v11, p11

    :goto_9
    and-int/lit16 v12, v0, 0x800

    if-eqz v12, :cond_a

    move-object v12, v5

    goto :goto_a

    :cond_a
    move-object/from16 v12, p12

    :goto_a
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_b

    move-object/from16 p15, v5

    goto :goto_b

    :cond_b
    move-object/from16 p15, p13

    :goto_b
    move-object p2, p0

    move-object/from16 p3, p1

    move-object/from16 p4, v1

    move/from16 p5, v2

    move-object/from16 p6, v3

    move-object/from16 p7, v4

    move-object/from16 p8, v6

    move-object/from16 p9, v7

    move-object/from16 p10, v8

    move-object/from16 p11, v9

    move-object/from16 p12, v10

    move-object/from16 p13, v11

    move-object/from16 p14, v12

    .line 22
    invoke-direct/range {p2 .. p15}, Lcom/superwall/sdk/models/entitlements/Entitlement;-><init>(Ljava/lang/String;Lcom/superwall/sdk/models/entitlements/Entitlement$Type;ZLjava/util/Set;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;Lcom/superwall/sdk/models/product/Store;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 19
    sget-object v0, Lcom/superwall/sdk/models/entitlements/Entitlement;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/models/entitlements/Entitlement;Ljava/lang/String;Lcom/superwall/sdk/models/entitlements/Entitlement$Type;ZLjava/util/Set;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;Lcom/superwall/sdk/models/product/Store;ILjava/lang/Object;)Lcom/superwall/sdk/models/entitlements/Entitlement;
    .locals 12

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->type:Lcom/superwall/sdk/models/entitlements/Entitlement$Type;

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->isActive:Z

    goto :goto_1

    :cond_2
    move v2, p3

    :goto_1
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->productIds:Ljava/util/Set;

    goto :goto_2

    :cond_3
    move-object/from16 v3, p4

    :goto_2
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->latestProductId:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object/from16 v4, p5

    :goto_3
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->startsAt:Ljava/util/Date;

    goto :goto_4

    :cond_5
    move-object/from16 v5, p6

    :goto_4
    and-int/lit8 v6, v0, 0x40

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->renewedAt:Ljava/util/Date;

    goto :goto_5

    :cond_6
    move-object/from16 v6, p7

    :goto_5
    and-int/lit16 v7, v0, 0x80

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->expiresAt:Ljava/util/Date;

    goto :goto_6

    :cond_7
    move-object/from16 v7, p8

    :goto_6
    and-int/lit16 v8, v0, 0x100

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->isLifetime:Ljava/lang/Boolean;

    goto :goto_7

    :cond_8
    move-object/from16 v8, p9

    :goto_7
    and-int/lit16 v9, v0, 0x200

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->willRenew:Ljava/lang/Boolean;

    goto :goto_8

    :cond_9
    move-object/from16 v9, p10

    :goto_8
    and-int/lit16 v10, v0, 0x400

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->state:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    goto :goto_9

    :cond_a
    move-object/from16 v10, p11

    :goto_9
    and-int/lit16 v11, v0, 0x800

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->offerType:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    goto :goto_a

    :cond_b
    move-object/from16 v11, p12

    :goto_a
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->store:Lcom/superwall/sdk/models/product/Store;

    move-object/from16 p15, v0

    goto :goto_b

    :cond_c
    move-object/from16 p15, p13

    :goto_b
    move-object p2, p0

    move-object p3, p1

    move-object/from16 p4, v1

    move/from16 p5, v2

    move-object/from16 p6, v3

    move-object/from16 p7, v4

    move-object/from16 p8, v5

    move-object/from16 p9, v6

    move-object/from16 p10, v7

    move-object/from16 p11, v8

    move-object/from16 p12, v9

    move-object/from16 p13, v10

    move-object/from16 p14, v11

    invoke-virtual/range {p2 .. p15}, Lcom/superwall/sdk/models/entitlements/Entitlement;->copy(Ljava/lang/String;Lcom/superwall/sdk/models/entitlements/Entitlement$Type;ZLjava/util/Set;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;Lcom/superwall/sdk/models/product/Store;)Lcom/superwall/sdk/models/entitlements/Entitlement;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getExpiresAt$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "expiresAt"
    .end annotation

    .annotation runtime Lkotlinx/serialization/Serializable;
        with = Lcom/superwall/sdk/models/serialization/DateSerializer;
    .end annotation

    return-void
.end method

.method public static synthetic getId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "identifier"
    .end annotation

    return-void
.end method

.method public static synthetic getLatestProductId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "latestProductId"
    .end annotation

    return-void
.end method

.method public static synthetic getOfferType$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "offerType"
    .end annotation

    return-void
.end method

.method public static synthetic getProductIds$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "productIds"
    .end annotation

    return-void
.end method

.method public static synthetic getRenewedAt$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "renewedAt"
    .end annotation

    .annotation runtime Lkotlinx/serialization/Serializable;
        with = Lcom/superwall/sdk/models/serialization/DateSerializer;
    .end annotation

    return-void
.end method

.method public static synthetic getStartsAt$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "startsAt"
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

.method public static synthetic getStore$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "store"
    .end annotation

    return-void
.end method

.method public static synthetic getType$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "type"
    .end annotation

    return-void
.end method

.method public static synthetic getWillRenew$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "willRenew"
    .end annotation

    return-void
.end method

.method public static synthetic isActive$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "isActive"
    .end annotation

    return-void
.end method

.method public static synthetic isLifetime$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "isLifetime"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/models/entitlements/Entitlement;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 19
    sget-object v0, Lcom/superwall/sdk/models/entitlements/Entitlement;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->id:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->type:Lcom/superwall/sdk/models/entitlements/Entitlement$Type;

    .line 32
    sget-object v3, Lcom/superwall/sdk/models/entitlements/Entitlement$Type;->SERVICE_LEVEL:Lcom/superwall/sdk/models/entitlements/Entitlement$Type;

    if-eq v2, v3, :cond_1

    .line 19
    :goto_0
    aget-object v2, v0, v1

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->type:Lcom/superwall/sdk/models/entitlements/Entitlement$Type;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x2

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v2, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->isActive:Z

    if-eqz v2, :cond_3

    :goto_1
    iget-boolean v2, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->isActive:Z

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_3
    const/4 v1, 0x3

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->productIds:Ljava/util/Set;

    .line 44
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v3

    .line 19
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :goto_2
    aget-object v2, v0, v1

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->productIds:Ljava/util/Set;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    const/4 v1, 0x4

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->latestProductId:Ljava/lang/String;

    if-eqz v2, :cond_7

    :goto_3
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->latestProductId:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_7
    const/4 v1, 0x5

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->startsAt:Ljava/util/Date;

    if-eqz v2, :cond_9

    :goto_4
    sget-object v2, Lcom/superwall/sdk/models/serialization/DateSerializer;->INSTANCE:Lcom/superwall/sdk/models/serialization/DateSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->startsAt:Ljava/util/Date;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_9
    const/4 v1, 0x6

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    iget-object v2, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->renewedAt:Ljava/util/Date;

    if-eqz v2, :cond_b

    :goto_5
    sget-object v2, Lcom/superwall/sdk/models/serialization/DateSerializer;->INSTANCE:Lcom/superwall/sdk/models/serialization/DateSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->renewedAt:Ljava/util/Date;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_b
    const/4 v1, 0x7

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_6

    :cond_c
    iget-object v2, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->expiresAt:Ljava/util/Date;

    if-eqz v2, :cond_d

    :goto_6
    sget-object v2, Lcom/superwall/sdk/models/serialization/DateSerializer;->INSTANCE:Lcom/superwall/sdk/models/serialization/DateSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->expiresAt:Ljava/util/Date;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_d
    const/16 v1, 0x8

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_7

    :cond_e
    iget-object v2, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->isLifetime:Ljava/lang/Boolean;

    if-eqz v2, :cond_f

    :goto_7
    sget-object v2, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->isLifetime:Ljava/lang/Boolean;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_f
    const/16 v1, 0x9

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_8

    :cond_10
    iget-object v2, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->willRenew:Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    :goto_8
    sget-object v2, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->willRenew:Ljava/lang/Boolean;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_11
    const/16 v1, 0xa

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_9

    :cond_12
    iget-object v2, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->state:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    if-eqz v2, :cond_13

    :goto_9
    aget-object v2, v0, v1

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->state:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_13
    const/16 v1, 0xb

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_a

    :cond_14
    iget-object v2, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->offerType:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    if-eqz v2, :cond_15

    :goto_a
    aget-object v2, v0, v1

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->offerType:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_15
    const/16 v1, 0xc

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_b

    :cond_16
    iget-object v2, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->store:Lcom/superwall/sdk/models/product/Store;

    if-eqz v2, :cond_17

    :goto_b
    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->store:Lcom/superwall/sdk/models/product/Store;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_17
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->willRenew:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component11()Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->state:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    return-object v0
.end method

.method public final component12()Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->offerType:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    return-object v0
.end method

.method public final component13()Lcom/superwall/sdk/models/product/Store;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->store:Lcom/superwall/sdk/models/product/Store;

    return-object v0
.end method

.method public final component2()Lcom/superwall/sdk/models/entitlements/Entitlement$Type;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->type:Lcom/superwall/sdk/models/entitlements/Entitlement$Type;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->isActive:Z

    return v0
.end method

.method public final component4()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->productIds:Ljava/util/Set;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->latestProductId:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->startsAt:Ljava/util/Date;

    return-object v0
.end method

.method public final component7()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->renewedAt:Ljava/util/Date;

    return-object v0
.end method

.method public final component8()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->expiresAt:Ljava/util/Date;

    return-object v0
.end method

.method public final component9()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->isLifetime:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/superwall/sdk/models/entitlements/Entitlement$Type;ZLjava/util/Set;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;Lcom/superwall/sdk/models/product/Store;)Lcom/superwall/sdk/models/entitlements/Entitlement;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/entitlements/Entitlement$Type;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;",
            "Lcom/superwall/sdk/models/product/Store;",
            ")",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;"
        }
    .end annotation

    const-string v0, "id"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productIds"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/superwall/sdk/models/entitlements/Entitlement;

    move/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v1 .. v14}, Lcom/superwall/sdk/models/entitlements/Entitlement;-><init>(Ljava/lang/String;Lcom/superwall/sdk/models/entitlements/Entitlement$Type;ZLjava/util/Set;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;Lcom/superwall/sdk/models/product/Store;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/models/entitlements/Entitlement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/models/entitlements/Entitlement;

    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/entitlements/Entitlement;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->type:Lcom/superwall/sdk/models/entitlements/Entitlement$Type;

    iget-object v3, p1, Lcom/superwall/sdk/models/entitlements/Entitlement;->type:Lcom/superwall/sdk/models/entitlements/Entitlement$Type;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->isActive:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/models/entitlements/Entitlement;->isActive:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->productIds:Ljava/util/Set;

    iget-object v3, p1, Lcom/superwall/sdk/models/entitlements/Entitlement;->productIds:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->latestProductId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/entitlements/Entitlement;->latestProductId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->startsAt:Ljava/util/Date;

    iget-object v3, p1, Lcom/superwall/sdk/models/entitlements/Entitlement;->startsAt:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->renewedAt:Ljava/util/Date;

    iget-object v3, p1, Lcom/superwall/sdk/models/entitlements/Entitlement;->renewedAt:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->expiresAt:Ljava/util/Date;

    iget-object v3, p1, Lcom/superwall/sdk/models/entitlements/Entitlement;->expiresAt:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->isLifetime:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/superwall/sdk/models/entitlements/Entitlement;->isLifetime:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->willRenew:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/superwall/sdk/models/entitlements/Entitlement;->willRenew:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->state:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    iget-object v3, p1, Lcom/superwall/sdk/models/entitlements/Entitlement;->state:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->offerType:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    iget-object v3, p1, Lcom/superwall/sdk/models/entitlements/Entitlement;->offerType:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->store:Lcom/superwall/sdk/models/product/Store;

    iget-object p1, p1, Lcom/superwall/sdk/models/entitlements/Entitlement;->store:Lcom/superwall/sdk/models/product/Store;

    if-eq v1, p1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public final getExpiresAt()Ljava/util/Date;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->expiresAt:Ljava/util/Date;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLatestProductId()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->latestProductId:Ljava/lang/String;

    return-object v0
.end method

.method public final getOfferType()Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->offerType:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    return-object v0
.end method

.method public final getProductIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->productIds:Ljava/util/Set;

    return-object v0
.end method

.method public final getRenewedAt()Ljava/util/Date;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->renewedAt:Ljava/util/Date;

    return-object v0
.end method

.method public final getRenewsAt()Ljava/util/Date;
    .locals 3

    .line 155
    iget-boolean v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->isActive:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->willRenew:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->expiresAt:Ljava/util/Date;

    return-object v0
.end method

.method public final getStartsAt()Ljava/util/Date;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->startsAt:Ljava/util/Date;

    return-object v0
.end method

.method public final getState()Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->state:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    return-object v0
.end method

.method public final getStore()Lcom/superwall/sdk/models/product/Store;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->store:Lcom/superwall/sdk/models/product/Store;

    return-object v0
.end method

.method public final getType()Lcom/superwall/sdk/models/entitlements/Entitlement$Type;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->type:Lcom/superwall/sdk/models/entitlements/Entitlement$Type;

    return-object v0
.end method

.method public final getWillRenew()Ljava/lang/Boolean;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->willRenew:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->type:Lcom/superwall/sdk/models/entitlements/Entitlement$Type;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/entitlements/Entitlement$Type;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->isActive:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->productIds:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->latestProductId:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->startsAt:Ljava/util/Date;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->renewedAt:Ljava/util/Date;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->expiresAt:Ljava/util/Date;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->isLifetime:Ljava/lang/Boolean;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->willRenew:Ljava/lang/Boolean;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->state:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->offerType:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->store:Lcom/superwall/sdk/models/product/Store;

    if-nez v1, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/Store;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    return v0
.end method

.method public final isActive()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->isActive:Z

    return v0
.end method

.method public final isDistinct(Lcom/superwall/sdk/models/entitlements/Entitlement;)Z
    .locals 2

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/superwall/sdk/models/entitlements/Entitlement;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->type:Lcom/superwall/sdk/models/entitlements/Entitlement$Type;

    iget-object v1, p1, Lcom/superwall/sdk/models/entitlements/Entitlement;->type:Lcom/superwall/sdk/models/entitlements/Entitlement$Type;

    if-ne v0, v1, :cond_1

    .line 179
    iget-boolean v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->isActive:Z

    iget-boolean v1, p1, Lcom/superwall/sdk/models/entitlements/Entitlement;->isActive:Z

    if-ne v0, v1, :cond_1

    .line 180
    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->startsAt:Ljava/util/Date;

    iget-object v1, p1, Lcom/superwall/sdk/models/entitlements/Entitlement;->startsAt:Ljava/util/Date;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->renewedAt:Ljava/util/Date;

    iget-object v1, p1, Lcom/superwall/sdk/models/entitlements/Entitlement;->renewedAt:Ljava/util/Date;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->expiresAt:Ljava/util/Date;

    iget-object v1, p1, Lcom/superwall/sdk/models/entitlements/Entitlement;->expiresAt:Ljava/util/Date;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->isLifetime:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/superwall/sdk/models/entitlements/Entitlement;->isLifetime:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->willRenew:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/superwall/sdk/models/entitlements/Entitlement;->willRenew:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->state:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    iget-object v1, p1, Lcom/superwall/sdk/models/entitlements/Entitlement;->state:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    if-ne v0, v1, :cond_1

    .line 186
    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->offerType:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    iget-object v1, p1, Lcom/superwall/sdk/models/entitlements/Entitlement;->offerType:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    if-ne v0, v1, :cond_1

    .line 187
    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->store:Lcom/superwall/sdk/models/product/Store;

    iget-object p1, p1, Lcom/superwall/sdk/models/entitlements/Entitlement;->store:Lcom/superwall/sdk/models/product/Store;

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final isInGracePeriod()Ljava/lang/Boolean;
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->state:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->GRACE_PERIOD:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isLifetime()Ljava/lang/Boolean;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->isLifetime:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isRevoked()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->type:Lcom/superwall/sdk/models/entitlements/Entitlement$Type;

    iget-boolean v2, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->isActive:Z

    iget-object v3, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->productIds:Ljava/util/Set;

    iget-object v4, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->latestProductId:Ljava/lang/String;

    iget-object v5, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->startsAt:Ljava/util/Date;

    iget-object v6, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->renewedAt:Ljava/util/Date;

    iget-object v7, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->expiresAt:Ljava/util/Date;

    iget-object v8, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->isLifetime:Ljava/lang/Boolean;

    iget-object v9, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->willRenew:Ljava/lang/Boolean;

    iget-object v10, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->state:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    iget-object v11, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->offerType:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    iget-object v12, p0, Lcom/superwall/sdk/models/entitlements/Entitlement;->store:Lcom/superwall/sdk/models/product/Store;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Entitlement(id="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, ", type="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", latestProductId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startsAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", renewedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expiresAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isLifetime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", willRenew="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offerType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", store="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
