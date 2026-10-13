.class public final Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluatorKt;
.super Ljava/lang/Object;
.source "ASTEvaluator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nASTEvaluator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ASTEvaluator.kt\ncom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluatorKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,100:1\n1557#2:101\n1628#2,3:102\n*S KotlinDebug\n*F\n+ 1 ASTEvaluator.kt\ncom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluatorKt\n*L\n76#1:101\n76#1:102,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u001a,\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u001e\u0010\u0002\u001a\u001a\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0004\u0012\u00020\u00060\u0003H\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "rewriteASTWith",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;",
        "ctx",
        "Lkotlin/Function2;",
        "",
        "",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;",
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
.method public static synthetic $r8$lambda$evIllQPmiLk7lIna6LTi6Y12F_4(Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;)Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluatorKt;->rewriteASTWith$lambda$1(Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;)Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final rewriteASTWith(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;Lkotlin/jvm/functions/Function2;)Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;",
            ">;+",
            "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;",
            ">;)",
            "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluatorKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluatorKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p0, v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;->mapAll(Lkotlin/jvm/functions/Function1;)Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;

    move-result-object p0

    return-object p0
.end method

.method private static final rewriteASTWith$lambda$1(Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;)Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    instance-of v0, p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$FunctionCall;

    const-string v1, "platform"

    if-eqz v0, :cond_1

    .line 67
    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$FunctionCall;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$FunctionCall;->getFunction()Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;

    move-result-object v2

    .line 70
    instance-of v3, v2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Ident;

    if-eqz v3, :cond_3

    .line 71
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$FunctionCall;->getReceiver()Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;

    move-result-object v3

    instance-of v3, v3, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Ident;

    if-eqz v3, :cond_3

    .line 72
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$FunctionCall;->getReceiver()Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;

    move-result-object v3

    check-cast v3, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Ident;

    invoke-virtual {v3}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Ident;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 74
    check-cast v2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Ident;

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Ident;->getName()Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$FunctionCall;->getArguments()Ljava/util/List;

    move-result-object v0

    .line 76
    check-cast v0, Ljava/lang/Iterable;

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 102
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 103
    check-cast v2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;

    .line 76
    invoke-static {v2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/MappingKt;->toPassableValue(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;)Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;

    move-result-object v2

    .line 103
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 76
    invoke-interface {p0, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;

    .line 77
    invoke-static {p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/MappingKt;->toCELExpression(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;)Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;

    move-result-object p0

    return-object p0

    .line 84
    :cond_1
    instance-of v0, p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Member;

    if-eqz v0, :cond_3

    .line 85
    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Member;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Member;->getExpr()Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;

    move-result-object v2

    instance-of v2, v2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Ident;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Member;->getExpr()Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;

    move-result-object v2

    check-cast v2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Ident;

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Ident;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 86
    :goto_1
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Member;->getMember()Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELMember;

    move-result-object v2

    instance-of v2, v2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELMember$Attribute;

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 90
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Member;->getMember()Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELMember;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.CELMember.Attribute"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELMember$Attribute;

    .line 91
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELMember$Attribute;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;

    .line 92
    invoke-static {p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/MappingKt;->toCELExpression(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;)Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;

    move-result-object p0

    return-object p0

    :cond_3
    return-object p1
.end method
