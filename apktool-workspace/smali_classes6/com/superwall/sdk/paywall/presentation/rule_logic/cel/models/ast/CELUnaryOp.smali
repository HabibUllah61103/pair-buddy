.class public abstract Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp;
.super Ljava/lang/Object;
.source "CELRelationOp.kt"

# interfaces
.implements Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/ToExprString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$Companion;,
        Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$DoubleMinus;,
        Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$DoubleNot;,
        Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$Minus;,
        Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$Not;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00081\u0018\u0000 \u00142\u00020\u0001:\u0005\u0010\u0011\u0012\u0013\u0014B\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u001b\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0008J \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007\u0082\u0001\u0004\u0015\u0016\u0017\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp;",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/ToExprString;",
        "<init>",
        "()V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "Not",
        "DoubleNot",
        "Minus",
        "DoubleMinus",
        "Companion",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$DoubleMinus;",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$DoubleNot;",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$Minus;",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$Not;",
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

.annotation runtime Lkotlinx/serialization/Polymorphic;
.end annotation

.annotation runtime Lkotlinx/serialization/SerialName;
    value = "CELUnaryOp"
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

.field public static final Companion:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$Companion;


# direct methods
.method public static synthetic $r8$lambda$UX2VIqsArKzRMUTiX355FUF4YVA()Lkotlinx/serialization/KSerializer;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp;->_init_$_anonymous_()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp;->Companion:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$Companion;

    .line 97
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp;-><init>()V

    return-void
.end method

.method private static final synthetic _init_$_anonymous_()Lkotlinx/serialization/KSerializer;
    .locals 12

    .line 97
    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v1, 0x4

    new-array v3, v1, [Lkotlin/reflect/KClass;

    const-class v4, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$DoubleMinus;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$DoubleNot;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$Minus;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-class v4, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$Not;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    new-array v4, v1, [Lkotlinx/serialization/KSerializer;

    new-instance v1, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v9, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$DoubleMinus;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$DoubleMinus;

    new-array v10, v5, [Ljava/lang/annotation/Annotation;

    const-string v11, "DoubleMinus"

    invoke-direct {v1, v11, v9, v10}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    aput-object v1, v4, v5

    new-instance v1, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v9, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$DoubleNot;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$DoubleNot;

    new-array v10, v5, [Ljava/lang/annotation/Annotation;

    const-string v11, "DoubleNot"

    invoke-direct {v1, v11, v9, v10}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    aput-object v1, v4, v6

    new-instance v1, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v6, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$Minus;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$Minus;

    new-array v9, v5, [Ljava/lang/annotation/Annotation;

    const-string v10, "Minus"

    invoke-direct {v1, v10, v6, v9}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    aput-object v1, v4, v7

    new-instance v1, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v6, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$Not;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$Not;

    new-array v7, v5, [Ljava/lang/annotation/Annotation;

    const-string v9, "Not"

    invoke-direct {v1, v9, v6, v7}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    aput-object v1, v4, v8

    new-array v5, v5, [Ljava/lang/annotation/Annotation;

    const-string v1, "CELUnaryOp"

    invoke-direct/range {v0 .. v5}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 97
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic write$Self(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method
