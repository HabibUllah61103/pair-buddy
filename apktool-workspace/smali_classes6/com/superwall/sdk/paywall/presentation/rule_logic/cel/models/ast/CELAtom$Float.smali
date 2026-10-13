.class public final Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float;
.super Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;
.source "CELRelationOp.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Float"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float$$serializer;,
        Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 \"2\u00020\u0001:\u0002!\"B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B#\u0008\u0010\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u0004\u0010\nJ\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0007H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0010H\u00d6\u0001J%\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0001\u00a2\u0006\u0002\u0008 R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006#"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float;",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;",
        "value",
        "",
        "<init>",
        "(D)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(IDLkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getValue$annotations",
        "()V",
        "getValue",
        "()D",
        "toExprString",
        "",
        "component1",
        "copy",
        "equals",
        "",
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

.annotation runtime Lkotlinx/serialization/SerialName;
    value = "Float"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float$Companion;


# instance fields
.field private final value:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float;->Companion:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float$Companion;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    const/4 v0, 0x0

    .line 386
    invoke-direct {p0, v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 385
    iput-wide p1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float;->value:D

    return-void
.end method

.method public synthetic constructor <init>(IDLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    .line 382
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float$$serializer;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float$$serializer;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0, p1, p4}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;-><init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V

    iput-wide p2, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float;->value:D

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float;DILjava/lang/Object;)Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    iget-wide p1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float;->value:D

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float;->copy(D)Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getValue$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "value"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 382
    move-object v0, p0

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;

    invoke-static {v0, p1, p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;->write$Self(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float;->value:D

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeDoubleElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    return-void
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float;->value:D

    return-wide v0
.end method

.method public final copy(D)Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float;
    .locals 1

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float;

    invoke-direct {v0, p1, p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float;-><init>(D)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float;

    iget-wide v3, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float;->value:D

    iget-wide v5, p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float;->value:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getValue()D
    .locals 2

    .line 385
    iget-wide v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float;->value:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    return v0
.end method

.method public toExprString()Ljava/lang/String;
    .locals 2

    .line 387
    iget-wide v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float;->value:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float;->value:D

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Float(value="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
