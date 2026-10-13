.class public final Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$GreaterThanEq;
.super Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp;
.source "CELRelationOp.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GreaterThanEq"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$GreaterThanEq;",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp;",
        "<init>",
        "()V",
        "toExprString",
        "",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
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
    value = "GreaterThanEq"
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

.field public static final INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$GreaterThanEq;


# direct methods
.method public static synthetic $r8$lambda$siVcw_LS82-bPMF5vSGBmfgGJjo()Lkotlinx/serialization/KSerializer;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$GreaterThanEq;->_init_$_anonymous_()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$GreaterThanEq;

    invoke-direct {v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$GreaterThanEq;-><init>()V

    sput-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$GreaterThanEq;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$GreaterThanEq;

    .line 37
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$GreaterThanEq$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$GreaterThanEq$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$GreaterThanEq;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private static final synthetic _init_$_anonymous_()Lkotlinx/serialization/KSerializer;
    .locals 4

    .line 37
    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$GreaterThanEq;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$GreaterThanEq;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/annotation/Annotation;

    const-string v3, "GreaterThanEq"

    invoke-direct {v0, v3, v1, v2}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method private final synthetic get$cachedSerializer()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 37
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$GreaterThanEq;->$cachedSerializer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$GreaterThanEq;",
            ">;"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$GreaterThanEq;->get$cachedSerializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method public toExprString()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, ">="

    return-object v0
.end method
