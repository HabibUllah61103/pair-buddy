.class public final Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/MappingKt;
.super Ljava/lang/Object;
.source "mapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nmapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 mapping.kt\ncom/superwall/sdk/paywall/presentation/rule_logic/cel/models/MappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,63:1\n1557#2:64\n1628#2,3:65\n1557#2:68\n1628#2,3:69\n1557#2:72\n1628#2,3:73\n126#3:76\n153#3,3:77\n*S KotlinDebug\n*F\n+ 1 mapping.kt\ncom/superwall/sdk/paywall/presentation/rule_logic/cel/models/MappingKt\n*L\n20#1:64\n20#1:65,3\n24#1:68\n24#1:69,3\n50#1:72\n50#1:73,3\n54#1:76\n54#1:77,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\u000c\u0010\u0003\u001a\u00020\u0002*\u00020\u0001H\u0000\u00a8\u0006\u0004"
    }
    d2 = {
        "toPassableValue",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;",
        "toCELExpression",
        "superwall_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toCELExpression(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;)Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    instance-of v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$IntValue;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Atom;

    new-instance v1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Int;

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$IntValue;

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$IntValue;->getValue()I

    move-result p0

    int-to-long v2, p0

    invoke-direct {v1, v2, v3}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Int;-><init>(J)V

    check-cast v1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Atom;-><init>(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;)V

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;

    return-object v0

    .line 43
    :cond_0
    instance-of v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$UIntValue;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Atom;

    new-instance v1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$UInt;

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$UIntValue;

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$UIntValue;->getValue-s-VKNKU()J

    move-result-wide v2

    const/4 p0, 0x0

    invoke-direct {v1, v2, v3, p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$UInt;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Atom;-><init>(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;)V

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;

    return-object v0

    .line 44
    :cond_1
    instance-of v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$FloatValue;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Atom;

    new-instance v1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float;

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$FloatValue;

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$FloatValue;->getValue()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float;-><init>(D)V

    check-cast v1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Atom;-><init>(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;)V

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;

    return-object v0

    .line 45
    :cond_2
    instance-of v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$StringValue;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Atom;

    new-instance v1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$String;

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$StringValue;

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$StringValue;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$String;-><init>(Ljava/lang/String;)V

    check-cast v1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Atom;-><init>(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;)V

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;

    return-object v0

    .line 46
    :cond_3
    instance-of v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$BytesValue;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Atom;

    new-instance v1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Bytes;

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$BytesValue;

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$BytesValue;->getValue()[B

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Bytes;-><init>([B)V

    check-cast v1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Atom;-><init>(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;)V

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;

    return-object v0

    .line 47
    :cond_4
    instance-of v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$BoolValue;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Atom;

    new-instance v1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Bool;

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$BoolValue;

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$BoolValue;->getValue()Z

    move-result p0

    invoke-direct {v1, p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Bool;-><init>(Z)V

    check-cast v1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Atom;-><init>(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;)V

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;

    return-object v0

    .line 48
    :cond_5
    instance-of v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$TimestampValue;

    if-eqz v0, :cond_6

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Atom;

    new-instance v1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Int;

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$TimestampValue;

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$TimestampValue;->getValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Int;-><init>(J)V

    check-cast v1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Atom;-><init>(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;)V

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;

    return-object v0

    .line 49
    :cond_6
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$NullValue;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$NullValue;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Atom;

    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Null;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Null;

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;

    invoke-direct {p0, v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Atom;-><init>(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;)V

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;

    return-object p0

    .line 50
    :cond_7
    instance-of v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$ListValue;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$ListValue;

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$ListValue;->getValue()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 73
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 74
    check-cast v1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;

    .line 50
    invoke-static {v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/MappingKt;->toCELExpression(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;)Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;

    move-result-object v1

    .line 74
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    :cond_8
    check-cast v0, Ljava/util/List;

    .line 50
    new-instance p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$List;

    invoke-direct {p0, v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$List;-><init>(Ljava/util/List;)V

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;

    return-object p0

    .line 51
    :cond_9
    instance-of v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;

    if-eqz v0, :cond_b

    .line 53
    check-cast p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;->getValue()Ljava/util/Map;

    move-result-object p0

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 77
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 54
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;

    .line 55
    new-instance v3, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Atom;

    new-instance v4, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$String;

    invoke-direct {v4, v2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$String;-><init>(Ljava/lang/String;)V

    check-cast v4, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;

    invoke-direct {v3, v4}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Atom;-><init>(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;)V

    invoke-static {v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/MappingKt;->toCELExpression(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;)Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 78
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 79
    :cond_a
    check-cast v0, Ljava/util/List;

    .line 76
    check-cast v0, Ljava/lang/Iterable;

    .line 56
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    .line 52
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Map;

    invoke-direct {v0, p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Map;-><init>(Ljava/util/List;)V

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;

    return-object v0

    .line 59
    :cond_b
    instance-of p0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$FunctionValue;

    if-eqz p0, :cond_c

    .line 60
    new-instance p0, Lkotlin/NotImplementedError;

    const-string v0, "An operation is not implemented: Not yet implemented"

    invoke-direct {p0, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 41
    :cond_c
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final toPassableValue(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;)Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    instance-of v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Atom;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 9
    check-cast p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Atom;

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Atom;->getValue()Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;

    move-result-object p0

    .line 10
    instance-of v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Int;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$IntValue;

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Int;

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Int;->getValue()J

    move-result-wide v1

    long-to-int p0, v1

    invoke-direct {v0, p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$IntValue;-><init>(I)V

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;

    return-object v0

    .line 11
    :cond_0
    instance-of v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$UInt;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$UIntValue;

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$UInt;

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$UInt;->getValue-s-VKNKU()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$UIntValue;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;

    return-object v0

    .line 12
    :cond_1
    instance-of v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$FloatValue;

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float;

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Float;->getValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$FloatValue;-><init>(D)V

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;

    return-object v0

    .line 13
    :cond_2
    instance-of v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$String;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$StringValue;

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$String;

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$String;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$StringValue;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;

    return-object v0

    .line 14
    :cond_3
    instance-of v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Bytes;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$BytesValue;

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Bytes;

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Bytes;->getValue()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$BytesValue;-><init>([B)V

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;

    return-object v0

    .line 15
    :cond_4
    instance-of v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Bool;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$BoolValue;

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Bool;

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Bool;->getValue()Z

    move-result p0

    invoke-direct {v0, p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$BoolValue;-><init>(Z)V

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;

    return-object v0

    .line 16
    :cond_5
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Null;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Null;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$NullValue;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$NullValue;

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;

    return-object p0

    .line 9
    :cond_6
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 20
    :cond_7
    instance-of v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$List;

    const/16 v2, 0xa

    if-eqz v0, :cond_9

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$List;

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$List;->getElements()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 65
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 66
    check-cast v1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;

    .line 20
    invoke-static {v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/MappingKt;->toPassableValue(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;)Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;

    move-result-object v1

    .line 66
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_8
    check-cast v0, Ljava/util/List;

    .line 20
    new-instance p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$ListValue;

    invoke-direct {p0, v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$ListValue;-><init>(Ljava/util/List;)V

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;

    return-object p0

    .line 21
    :cond_9
    instance-of v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Map;

    if-eqz v0, :cond_f

    .line 23
    check-cast p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Map;

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Map;->getEntries()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 69
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 70
    check-cast v2, Lkotlin/Pair;

    .line 24
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;

    .line 26
    instance-of v4, v3, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Atom;

    if-eqz v4, :cond_a

    move-object v4, v3

    check-cast v4, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Atom;

    goto :goto_2

    :cond_a
    move-object v4, v1

    :goto_2
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Atom;->getValue()Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 28
    instance-of v5, v4, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$String;

    if-eqz v5, :cond_b

    check-cast v4, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$String;

    invoke-virtual {v4}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$String;->getValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 29
    :cond_b
    invoke-virtual {v4}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    if-nez v4, :cond_d

    .line 31
    :cond_c
    invoke-virtual {v3}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;->toString()Ljava/lang/String;

    move-result-object v4

    .line 32
    :cond_d
    invoke-static {v2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/MappingKt;->toPassableValue(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;)Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;

    move-result-object v2

    .line 33
    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 70
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 71
    :cond_e
    check-cast v0, Ljava/util/List;

    .line 68
    check-cast v0, Ljava/lang/Iterable;

    .line 34
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p0

    .line 22
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;

    invoke-direct {v0, p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;-><init>(Ljava/util/Map;)V

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;

    return-object v0

    .line 37
    :cond_f
    new-instance p0, Lkotlin/NotImplementedError;

    const-string v0, "An operation is not implemented: Not yet implemented"

    invoke-direct {p0, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p0
.end method
