.class public abstract Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;
.super Ljava/lang/Object;
.source "PaywallCloseReason.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$Companion;,
        Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$ForNextPaywall;,
        Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$ManualClose;,
        Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$None;,
        Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$SystemLogic;,
        Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$WebViewFailedToLoad;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u0000 \u00192\u00020\u0001:\u0006\u0014\u0015\u0016\u0017\u0018\u0019B\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u001b\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0008J \u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0007R\u0011\u0010\t\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u0082\u0001\u0005\u001a\u001b\u001c\u001d\u001e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;",
        "",
        "<init>",
        "()V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "stateShouldComplete",
        "",
        "getStateShouldComplete",
        "()Z",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "SystemLogic",
        "ForNextPaywall",
        "WebViewFailedToLoad",
        "ManualClose",
        "None",
        "Companion",
        "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$ForNextPaywall;",
        "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$ManualClose;",
        "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$None;",
        "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$SystemLogic;",
        "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$WebViewFailedToLoad;",
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
.field private static final $cachedSerializer$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$Companion;


# direct methods
.method public static synthetic $r8$lambda$nnwSPMleKG3FUWmcs2VSMB1V2EQ()Lkotlinx/serialization/KSerializer;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;->_init_$_anonymous_()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;->Companion:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$Companion;

    .line 3
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;-><init>()V

    return-void
.end method

.method private static final synthetic _init_$_anonymous_()Lkotlinx/serialization/KSerializer;
    .locals 6

    .line 3
    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v1, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v1, 0x0

    new-array v3, v1, [Lkotlin/reflect/KClass;

    new-array v4, v1, [Lkotlinx/serialization/KSerializer;

    new-array v5, v1, [Ljava/lang/annotation/Annotation;

    const-string v1, "com.superwall.sdk.paywall.presentation.PaywallCloseReason"

    invoke-direct/range {v0 .. v5}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 3
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic write$Self(Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getStateShouldComplete()Z
    .locals 1

    .line 30
    instance-of v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$ForNextPaywall;

    if-nez v0, :cond_1

    sget-object v0, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$None;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$None;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
