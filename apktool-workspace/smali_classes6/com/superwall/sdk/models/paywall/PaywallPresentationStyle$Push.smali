.class public final Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Push;
.super Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;
.source "PaywallPresentationStyle.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Push"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c7\n\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00d6\u0003J\t\u0010\u0008\u001a\u00020\tH\u00d6\u0001J\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u000bJ\t\u0010\u000c\u001a\u00020\rH\u00d6\u0001\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Push;",
        "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;",
        "<init>",
        "()V",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
        "toString",
        "",
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

.annotation runtime Lkotlinx/serialization/SerialName;
    value = "PUSH"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final synthetic $cachedSerializer$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Push;


# direct methods
.method public static synthetic $r8$lambda$A65gUnvmDfjhw8HmHPkwkR7Z75w()Lkotlinx/serialization/KSerializer;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Push;->_init_$_anonymous_()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Push;

    invoke-direct {v0}, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Push;-><init>()V

    sput-object v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Push;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Push;

    .line 26
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Push$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Push$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Push;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 28
    const-string v0, "PUSH"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private static final synthetic _init_$_anonymous_()Lkotlinx/serialization/KSerializer;
    .locals 4

    .line 26
    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Push;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Push;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/annotation/Annotation;

    const-string v3, "PUSH"

    invoke-direct {v0, v3, v1, v2}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method private final synthetic get$cachedSerializer()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 26
    sget-object v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Push;->$cachedSerializer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Push;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Push;

    return v0
.end method

.method public hashCode()I
    .locals 1

    const v0, -0xc316533    # -3.273782E31f

    return v0
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Push;",
            ">;"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Push;->get$cachedSerializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Push"

    return-object v0
.end method
