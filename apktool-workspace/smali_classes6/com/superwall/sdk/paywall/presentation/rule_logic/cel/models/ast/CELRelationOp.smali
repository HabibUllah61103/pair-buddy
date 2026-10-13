.class public abstract Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp;
.super Ljava/lang/Object;
.source "CELRelationOp.kt"

# interfaces
.implements Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/ToExprString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$Companion;,
        Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$Equals;,
        Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$GreaterThan;,
        Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$GreaterThanEq;,
        Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$In;,
        Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$LessThan;,
        Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$LessThanEq;,
        Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$NotEquals;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00081\u0018\u0000 \u00172\u00020\u0001:\u0008\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017B\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u001b\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0008J \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007\u0082\u0001\u0007\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp;",
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
        "LessThan",
        "LessThanEq",
        "GreaterThan",
        "GreaterThanEq",
        "Equals",
        "NotEquals",
        "In",
        "Companion",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$Equals;",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$GreaterThan;",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$GreaterThanEq;",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$In;",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$LessThan;",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$LessThanEq;",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$NotEquals;",
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
    value = "CELRelationOp"
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

.field public static final Companion:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$Companion;


# direct methods
.method public static synthetic $r8$lambda$NJ_db4gSoyE7gBrh6oitwJ3NWH8()Lkotlinx/serialization/KSerializer;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp;->_init_$_anonymous_()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp;->Companion:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$Companion;

    .line 15
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp;-><init>()V

    return-void
.end method

.method private static final synthetic _init_$_anonymous_()Lkotlinx/serialization/KSerializer;
    .locals 15

    .line 15
    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v1, 0x7

    new-array v3, v1, [Lkotlin/reflect/KClass;

    const-class v4, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$Equals;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$GreaterThan;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$GreaterThanEq;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-class v4, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$In;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    const-class v4, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$LessThan;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v9, 0x4

    aput-object v4, v3, v9

    const-class v4, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$LessThanEq;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v10, 0x5

    aput-object v4, v3, v10

    const-class v4, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$NotEquals;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v11, 0x6

    aput-object v4, v3, v11

    new-array v4, v1, [Lkotlinx/serialization/KSerializer;

    new-instance v1, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v12, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$Equals;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$Equals;

    new-array v13, v5, [Ljava/lang/annotation/Annotation;

    const-string v14, "Equals"

    invoke-direct {v1, v14, v12, v13}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    aput-object v1, v4, v5

    new-instance v1, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v12, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$GreaterThan;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$GreaterThan;

    new-array v13, v5, [Ljava/lang/annotation/Annotation;

    const-string v14, "GreaterThan"

    invoke-direct {v1, v14, v12, v13}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    aput-object v1, v4, v6

    new-instance v1, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v6, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$GreaterThanEq;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$GreaterThanEq;

    new-array v12, v5, [Ljava/lang/annotation/Annotation;

    const-string v13, "GreaterThanEq"

    invoke-direct {v1, v13, v6, v12}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    aput-object v1, v4, v7

    new-instance v1, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v6, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$In;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$In;

    new-array v7, v5, [Ljava/lang/annotation/Annotation;

    const-string v12, "In"

    invoke-direct {v1, v12, v6, v7}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    aput-object v1, v4, v8

    new-instance v1, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v6, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$LessThan;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$LessThan;

    new-array v7, v5, [Ljava/lang/annotation/Annotation;

    const-string v8, "LessThan"

    invoke-direct {v1, v8, v6, v7}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    aput-object v1, v4, v9

    new-instance v1, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v6, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$LessThanEq;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$LessThanEq;

    new-array v7, v5, [Ljava/lang/annotation/Annotation;

    const-string v8, "LessThanEq"

    invoke-direct {v1, v8, v6, v7}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    aput-object v1, v4, v10

    new-instance v1, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v6, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$NotEquals;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$NotEquals;

    new-array v7, v5, [Ljava/lang/annotation/Annotation;

    const-string v8, "NotEquals"

    invoke-direct {v1, v8, v6, v7}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    aput-object v1, v4, v11

    new-array v5, v5, [Ljava/lang/annotation/Annotation;

    const-string v1, "CELRelationOp"

    invoke-direct/range {v0 .. v5}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 15
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic write$Self(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method
