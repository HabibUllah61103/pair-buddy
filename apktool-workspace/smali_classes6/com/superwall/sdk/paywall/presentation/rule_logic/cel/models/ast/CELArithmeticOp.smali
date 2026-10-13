.class public abstract Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp;
.super Ljava/lang/Object;
.source "CELRelationOp.kt"

# interfaces
.implements Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/ToExprString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp$Add;,
        Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp$Companion;,
        Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp$Divide;,
        Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp$Modulus;,
        Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp$Multiply;,
        Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp$Subtract;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00081\u0018\u0000 \u00152\u00020\u0001:\u0006\u0010\u0011\u0012\u0013\u0014\u0015B\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u001b\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0008J \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007\u0082\u0001\u0005\u0016\u0017\u0018\u0019\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp;",
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
        "Add",
        "Subtract",
        "Divide",
        "Multiply",
        "Modulus",
        "Companion",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp$Add;",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp$Divide;",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp$Modulus;",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp$Multiply;",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp$Subtract;",
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
    value = "CELArithmeticOp"
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

.field public static final Companion:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp$Companion;


# direct methods
.method public static synthetic $r8$lambda$1pU6PJCHVBvK2DGggo6ibyWHlKo()Lkotlinx/serialization/KSerializer;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp;->_init_$_anonymous_()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp;->Companion:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp$Companion;

    .line 62
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp;-><init>()V

    return-void
.end method

.method private static final synthetic _init_$_anonymous_()Lkotlinx/serialization/KSerializer;
    .locals 13

    .line 62
    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v1, 0x5

    new-array v3, v1, [Lkotlin/reflect/KClass;

    const-class v4, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp$Add;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp$Divide;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp$Modulus;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-class v4, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp$Multiply;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    const-class v4, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp$Subtract;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v9, 0x4

    aput-object v4, v3, v9

    new-array v4, v1, [Lkotlinx/serialization/KSerializer;

    new-instance v1, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v10, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp$Add;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp$Add;

    new-array v11, v5, [Ljava/lang/annotation/Annotation;

    const-string v12, "Add"

    invoke-direct {v1, v12, v10, v11}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    aput-object v1, v4, v5

    new-instance v1, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v10, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp$Divide;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp$Divide;

    new-array v11, v5, [Ljava/lang/annotation/Annotation;

    const-string v12, "Divide"

    invoke-direct {v1, v12, v10, v11}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    aput-object v1, v4, v6

    new-instance v1, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v6, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp$Modulus;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp$Modulus;

    new-array v10, v5, [Ljava/lang/annotation/Annotation;

    const-string v11, "Modulus"

    invoke-direct {v1, v11, v6, v10}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    aput-object v1, v4, v7

    new-instance v1, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v6, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp$Multiply;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp$Multiply;

    new-array v7, v5, [Ljava/lang/annotation/Annotation;

    const-string v10, "Multiply"

    invoke-direct {v1, v10, v6, v7}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    aput-object v1, v4, v8

    new-instance v1, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v6, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp$Subtract;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp$Subtract;

    new-array v7, v5, [Ljava/lang/annotation/Annotation;

    const-string v8, "Subtract"

    invoke-direct {v1, v8, v6, v7}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    aput-object v1, v4, v9

    new-array v5, v5, [Ljava/lang/annotation/Annotation;

    const-string v1, "CELArithmeticOp"

    invoke-direct/range {v0 .. v5}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 62
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic write$Self(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELArithmeticOp;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method
