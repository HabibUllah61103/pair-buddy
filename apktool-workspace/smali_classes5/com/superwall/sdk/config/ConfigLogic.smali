.class public final Lcom/superwall/sdk/config/ConfigLogic;
.super Ljava/lang/Object;
.source "ConfigLogic.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/config/ConfigLogic$AssignmentOutcome;,
        Lcom/superwall/sdk/config/ConfigLogic$TriggerRuleError;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConfigLogic.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfigLogic.kt\ncom/superwall/sdk/config/ConfigLogic\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,330:1\n1#2:331\n1557#3:332\n1628#3,3:333\n827#3:336\n855#3,2:337\n295#3:339\n1755#3,3:340\n296#3:343\n1368#3:344\n1454#3,2:345\n774#3:347\n865#3,2:348\n1456#3,3:350\n295#3,2:353\n1863#3:355\n1557#3:356\n1628#3,3:357\n774#3:360\n865#3,2:361\n295#3,2:363\n1557#3:365\n1628#3,3:366\n774#3:369\n865#3,2:370\n774#3:372\n865#3,2:373\n1557#3:375\n1628#3,3:376\n1864#3:379\n1863#3,2:380\n1863#3,2:382\n1863#3,2:384\n1368#3:386\n1454#3,2:387\n1557#3:389\n1628#3,3:390\n1456#3,3:393\n1202#3,2:396\n1230#3,4:398\n1187#3,2:402\n1261#3,4:404\n1187#3,2:408\n1261#3,4:410\n*S KotlinDebug\n*F\n+ 1 ConfigLogic.kt\ncom/superwall/sdk/config/ConfigLogic\n*L\n120#1:332\n120#1:333,3\n178#1:336\n178#1:337,2\n191#1:339\n192#1:340,3\n191#1:343\n197#1:344\n197#1:345,2\n198#1:347\n198#1:348,2\n197#1:350,3\n224#1:353,2\n248#1:355\n249#1:356\n249#1:357,3\n251#1:360\n251#1:361,2\n253#1:363,2\n259#1:365\n259#1:366,3\n259#1:369\n259#1:370,2\n262#1:372\n262#1:373,2\n264#1:375\n264#1:376,3\n248#1:379\n270#1:380,2\n276#1:382,2\n283#1:384,2\n300#1:386\n300#1:387,2\n300#1:389\n300#1:390,3\n300#1:393,3\n316#1:396,2\n316#1:398,4\n321#1:402,2\n321#1:404,4\n325#1:408,2\n325#1:410,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u000267B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J*\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0014\u0008\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\nJ \u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u00070\u000e2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u000eJ,\u0010\u0012\u001a\u00020\u00132\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u000e2\u0016\u0010\u0015\u001a\u0012\u0012\u0008\u0012\u00060\u0017j\u0002`\u0018\u0012\u0004\u0012\u00020\u00050\u0016J>\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u001b2\u0016\u0010\u001c\u001a\u0012\u0012\u0008\u0012\u00060\u0017j\u0002`\u0018\u0012\u0004\u0012\u00020\u00050\u00162\u0016\u0010\u0015\u001a\u0012\u0012\u0008\u0012\u00060\u0017j\u0002`\u0018\u0012\u0004\u0012\u00020\u00050\u0016J\"\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u000e2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u000e2\u0006\u0010\u001e\u001a\u00020\u001fJR\u0010 \u001a\u00020\u00132\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\"0\u00072\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u000e2\u0016\u0010\u0015\u001a\u0012\u0012\u0008\u0012\u00060\u0017j\u0002`\u0018\u0012\u0004\u0012\u00020\u00050\u00162\u0016\u0010\u001c\u001a\u0012\u0012\u0008\u0012\u00060\u0017j\u0002`\u0018\u0012\u0004\u0012\u00020\u00050\u0016J$\u0010#\u001a\u0004\u0018\u00010$2\u0008\u0010%\u001a\u0004\u0018\u00010\u00172\u0008\u0010&\u001a\u0004\u0018\u00010\'2\u0006\u0010(\u001a\u00020\u0017JR\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u000e2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u000e2\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00050\u00162\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00050\u00162\u0006\u0010*\u001a\u00020+H\u0086@\u00a2\u0006\u0002\u0010,JJ\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u000e2\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u000e2\u0016\u0010\u0015\u001a\u0012\u0012\u0008\u0012\u00060\u0017j\u0002`\u0018\u0012\u0004\u0012\u00020\u00050\u00162\u0016\u0010\u001c\u001a\u0012\u0012\u0008\u0012\u00060\u0017j\u0002`\u0018\u0012\u0004\u0012\u00020\u00050\u0016J \u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00110\u00162\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u000eJ&\u00101\u001a\u0014\u0012\u0004\u0012\u00020\u0017\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002020\u000e0\u00162\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u0002030\u0007J&\u00104\u001a\u0014\u0012\u0004\u0012\u00020\u0017\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002020\u000e0\u00162\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u0002050\u0007\u00a8\u00068"
    }
    d2 = {
        "Lcom/superwall/sdk/config/ConfigLogic;",
        "",
        "<init>",
        "()V",
        "chooseVariant",
        "Lcom/superwall/sdk/models/triggers/Experiment$Variant;",
        "variants",
        "",
        "Lcom/superwall/sdk/models/triggers/VariantOption;",
        "randomiser",
        "Lkotlin/Function1;",
        "Lkotlin/ranges/IntRange;",
        "",
        "getRulesPerCampaign",
        "",
        "Lcom/superwall/sdk/models/triggers/TriggerRule;",
        "triggers",
        "Lcom/superwall/sdk/models/triggers/Trigger;",
        "chooseAssignments",
        "Lcom/superwall/sdk/config/ConfigLogic$AssignmentOutcome;",
        "fromTriggers",
        "confirmedAssignments",
        "",
        "",
        "Lcom/superwall/sdk/models/triggers/ExperimentID;",
        "move",
        "newAssignment",
        "Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;",
        "unconfirmedAssignments",
        "filterTriggers",
        "preloadingDisabled",
        "Lcom/superwall/sdk/models/config/PreloadingDisabled;",
        "transferAssignmentsFromServerToDisk",
        "assignments",
        "Lcom/superwall/sdk/models/assignment/Assignment;",
        "getStaticPaywall",
        "Lcom/superwall/sdk/models/paywall/Paywall;",
        "withId",
        "config",
        "Lcom/superwall/sdk/models/config/Config;",
        "deviceLocale",
        "getAllActiveTreatmentPaywallIds",
        "expressionEvaluator",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;",
        "(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getActiveTreatmentPaywallIds",
        "forTriggers",
        "getTriggersByEventName",
        "from",
        "extractEntitlementsByProductId",
        "Lcom/superwall/sdk/models/entitlements/Entitlement;",
        "Lcom/superwall/sdk/models/product/ProductItem;",
        "extractEntitlementsByProductIdFromCrossplatform",
        "Lcom/superwall/sdk/models/product/CrossplatformProduct;",
        "TriggerRuleError",
        "AssignmentOutcome",
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


# static fields
.field public static final INSTANCE:Lcom/superwall/sdk/config/ConfigLogic;


# direct methods
.method public static synthetic $r8$lambda$0Ho6XoXvsAeXSvhV91EVUAGYcV0(Lkotlin/ranges/IntRange;)I
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/config/ConfigLogic;->chooseVariant$lambda$0(Lkotlin/ranges/IntRange;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/superwall/sdk/config/ConfigLogic;

    invoke-direct {v0}, Lcom/superwall/sdk/config/ConfigLogic;-><init>()V

    sput-object v0, Lcom/superwall/sdk/config/ConfigLogic;->INSTANCE:Lcom/superwall/sdk/config/ConfigLogic;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic chooseVariant$default(Lcom/superwall/sdk/config/ConfigLogic;Ljava/util/List;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/superwall/sdk/models/triggers/Experiment$Variant;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superwall/sdk/config/ConfigLogic$TriggerRuleError;
        }
    .end annotation

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 32
    new-instance p2, Lcom/superwall/sdk/config/ConfigLogic$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/superwall/sdk/config/ConfigLogic$$ExternalSyntheticLambda0;-><init>()V

    .line 29
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/config/ConfigLogic;->chooseVariant(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lcom/superwall/sdk/models/triggers/Experiment$Variant;

    move-result-object p0

    return-object p0
.end method

.method private static final chooseVariant$lambda$0(Lkotlin/ranges/IntRange;)I
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    check-cast v0, Lkotlin/random/Random;

    invoke-static {p0, v0}, Lkotlin/ranges/RangesKt;->random(Lkotlin/ranges/IntRange;Lkotlin/random/Random;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final chooseAssignments(Ljava/util/Set;Ljava/util/Map;)Lcom/superwall/sdk/config/ConfigLogic$AssignmentOutcome;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/triggers/Trigger;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/triggers/Experiment$Variant;",
            ">;)",
            "Lcom/superwall/sdk/config/ConfigLogic$AssignmentOutcome;"
        }
    .end annotation

    const-string v0, "fromTriggers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "confirmedAssignments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-static {p2}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 112
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 114
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/config/ConfigLogic;->getRulesPerCampaign(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    .line 116
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 117
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/superwall/sdk/models/triggers/TriggerRule;

    .line 119
    invoke-virtual {v2}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getExperiment()Lcom/superwall/sdk/models/triggers/RawExperiment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/models/triggers/RawExperiment;->getVariants()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 332
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 333
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 334
    check-cast v5, Lcom/superwall/sdk/models/triggers/VariantOption;

    .line 120
    invoke-virtual {v5}, Lcom/superwall/sdk/models/triggers/VariantOption;->getId()Ljava/lang/String;

    move-result-object v5

    .line 334
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 335
    :cond_2
    check-cast v4, Ljava/util/List;

    .line 332
    check-cast v4, Ljava/lang/Iterable;

    .line 121
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    .line 123
    invoke-virtual {v2}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getExperiment()Lcom/superwall/sdk/models/triggers/RawExperiment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/superwall/sdk/models/triggers/RawExperiment;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/superwall/sdk/models/triggers/Experiment$Variant;

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    .line 125
    invoke-virtual {v4}, Lcom/superwall/sdk/models/triggers/Experiment$Variant;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 128
    :try_start_0
    invoke-virtual {v2}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getExperiment()Lcom/superwall/sdk/models/triggers/RawExperiment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/models/triggers/RawExperiment;->getVariants()Ljava/util/List;

    move-result-object v3

    invoke-static {p0, v3, v6, v5, v6}, Lcom/superwall/sdk/config/ConfigLogic;->chooseVariant$default(Lcom/superwall/sdk/config/ConfigLogic;Ljava/util/List;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/superwall/sdk/models/triggers/Experiment$Variant;

    move-result-object v3
    :try_end_0
    .catch Lcom/superwall/sdk/config/ConfigLogic$TriggerRuleError; {:try_start_0 .. :try_end_0} :catch_1

    .line 133
    invoke-virtual {v2}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getExperiment()Lcom/superwall/sdk/models/triggers/RawExperiment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/superwall/sdk/models/triggers/RawExperiment;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-virtual {v2}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getExperiment()Lcom/superwall/sdk/models/triggers/RawExperiment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/models/triggers/RawExperiment;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 130
    :catch_1
    invoke-virtual {v2}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getExperiment()Lcom/superwall/sdk/models/triggers/RawExperiment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/models/triggers/RawExperiment;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 139
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getExperiment()Lcom/superwall/sdk/models/triggers/RawExperiment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/models/triggers/RawExperiment;->getVariants()Ljava/util/List;

    move-result-object v3

    invoke-static {p0, v3, v6, v5, v6}, Lcom/superwall/sdk/config/ConfigLogic;->chooseVariant$default(Lcom/superwall/sdk/config/ConfigLogic;Ljava/util/List;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/superwall/sdk/models/triggers/Experiment$Variant;

    move-result-object v3
    :try_end_1
    .catch Lcom/superwall/sdk/config/ConfigLogic$TriggerRuleError; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    invoke-virtual {v2}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getExperiment()Lcom/superwall/sdk/models/triggers/RawExperiment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/models/triggers/RawExperiment;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 148
    :cond_4
    new-instance p1, Lcom/superwall/sdk/config/ConfigLogic$AssignmentOutcome;

    invoke-direct {p1, p2, v0}, Lcom/superwall/sdk/config/ConfigLogic$AssignmentOutcome;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-object p1
.end method

.method public final chooseVariant(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lcom/superwall/sdk/models/triggers/Experiment$Variant;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/triggers/VariantOption;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/ranges/IntRange;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/superwall/sdk/models/triggers/Experiment$Variant;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superwall/sdk/config/ConfigLogic$TriggerRuleError;
        }
    .end annotation

    const-string v0, "variants"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "randomiser"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 38
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 39
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/models/triggers/VariantOption;

    .line 40
    new-instance p2, Lcom/superwall/sdk/models/triggers/Experiment$Variant;

    .line 41
    invoke-virtual {p1}, Lcom/superwall/sdk/models/triggers/VariantOption;->getId()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Lcom/superwall/sdk/models/triggers/VariantOption;->getType()Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;

    move-result-object v1

    .line 43
    invoke-virtual {p1}, Lcom/superwall/sdk/models/triggers/VariantOption;->getPaywallId()Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-direct {p2, v0, v1, p1}, Lcom/superwall/sdk/models/triggers/Experiment$Variant;-><init>(Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;Ljava/lang/String;)V

    return-object p2

    .line 47
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/superwall/sdk/models/triggers/VariantOption;

    invoke-virtual {v3}, Lcom/superwall/sdk/models/triggers/VariantOption;->getPercentage()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 50
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 51
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/models/triggers/VariantOption;

    .line 52
    new-instance p2, Lcom/superwall/sdk/models/triggers/Experiment$Variant;

    .line 53
    invoke-virtual {p1}, Lcom/superwall/sdk/models/triggers/VariantOption;->getId()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Lcom/superwall/sdk/models/triggers/VariantOption;->getType()Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;

    move-result-object v1

    .line 55
    invoke-virtual {p1}, Lcom/superwall/sdk/models/triggers/VariantOption;->getPaywallId()Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-direct {p2, v0, v1, p1}, Lcom/superwall/sdk/models/triggers/Experiment$Variant;-><init>(Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;Ljava/lang/String;)V

    return-object p2

    .line 60
    :cond_2
    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 64
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/models/triggers/VariantOption;

    .line 65
    invoke-virtual {v0}, Lcom/superwall/sdk/models/triggers/VariantOption;->getPercentage()I

    move-result v2

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_3

    .line 68
    new-instance p1, Lcom/superwall/sdk/models/triggers/Experiment$Variant;

    .line 69
    invoke-virtual {v0}, Lcom/superwall/sdk/models/triggers/VariantOption;->getId()Ljava/lang/String;

    move-result-object p2

    .line 70
    invoke-virtual {v0}, Lcom/superwall/sdk/models/triggers/VariantOption;->getType()Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;

    move-result-object v1

    .line 71
    invoke-virtual {v0}, Lcom/superwall/sdk/models/triggers/VariantOption;->getPaywallId()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-direct {p1, p2, v1, v0}, Lcom/superwall/sdk/models/triggers/Experiment$Variant;-><init>(Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;Ljava/lang/String;)V

    return-object p1

    .line 76
    :cond_4
    sget-object p1, Lcom/superwall/sdk/config/ConfigLogic$TriggerRuleError$InvalidState;->INSTANCE:Lcom/superwall/sdk/config/ConfigLogic$TriggerRuleError$InvalidState;

    throw p1

    .line 35
    :cond_5
    sget-object p1, Lcom/superwall/sdk/config/ConfigLogic$TriggerRuleError$NoVariantsFound;->INSTANCE:Lcom/superwall/sdk/config/ConfigLogic$TriggerRuleError$NoVariantsFound;

    throw p1
.end method

.method public final extractEntitlementsByProductId(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductItem;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            ">;>;"
        }
    .end annotation

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    check-cast p1, Ljava/lang/Iterable;

    const/16 v0, 0xa

    .line 402
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 403
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    .line 404
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 405
    check-cast v0, Lcom/superwall/sdk/models/product/ProductItem;

    .line 321
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/ProductItem;->getFullProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/ProductItem;->getEntitlements()Ljava/util/Set;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final extractEntitlementsByProductIdFromCrossplatform(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/CrossplatformProduct;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            ">;>;"
        }
    .end annotation

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    check-cast p1, Ljava/lang/Iterable;

    const/16 v0, 0xa

    .line 408
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 409
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    .line 410
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 411
    check-cast v0, Lcom/superwall/sdk/models/product/CrossplatformProduct;

    .line 326
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/CrossplatformProduct;->getFullProductId()Ljava/lang/String;

    move-result-object v2

    .line 327
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/CrossplatformProduct;->getEntitlements()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 326
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final filterTriggers(Ljava/util/Set;Lcom/superwall/sdk/models/config/PreloadingDisabled;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/triggers/Trigger;",
            ">;",
            "Lcom/superwall/sdk/models/config/PreloadingDisabled;",
            ")",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/triggers/Trigger;",
            ">;"
        }
    .end annotation

    const-string v0, "triggers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preloadingDisabled"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Lcom/superwall/sdk/models/config/PreloadingDisabled;->getAll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 178
    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 337
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/superwall/sdk/models/triggers/Trigger;

    .line 178
    invoke-virtual {p2}, Lcom/superwall/sdk/models/config/PreloadingDisabled;->getTriggers()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2}, Lcom/superwall/sdk/models/triggers/Trigger;->getEventName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 337
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 338
    :cond_2
    check-cast v0, Ljava/util/List;

    .line 336
    check-cast v0, Ljava/lang/Iterable;

    .line 178
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final getActiveTreatmentPaywallIds(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/triggers/Trigger;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/triggers/Experiment$Variant;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/triggers/Experiment$Variant;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "forTriggers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "confirmedAssignments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unconfirmedAssignments"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    invoke-static {p2, p3}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 299
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/config/ConfigLogic;->getRulesPerCampaign(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    .line 300
    check-cast p1, Ljava/lang/Iterable;

    .line 386
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    check-cast p3, Ljava/util/Collection;

    .line 387
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 388
    check-cast v0, Ljava/util/List;

    .line 300
    check-cast v0, Ljava/lang/Iterable;

    .line 389
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 390
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 391
    check-cast v2, Lcom/superwall/sdk/models/triggers/TriggerRule;

    .line 300
    invoke-virtual {v2}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getExperiment()Lcom/superwall/sdk/models/triggers/RawExperiment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/models/triggers/RawExperiment;->getId()Ljava/lang/String;

    move-result-object v2

    .line 391
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 392
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 389
    check-cast v1, Ljava/lang/Iterable;

    .line 393
    invoke-static {p3, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 395
    :cond_1
    check-cast p3, Ljava/util/List;

    .line 302
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p1, Ljava/util/Set;

    .line 303
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 304
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/models/triggers/Experiment$Variant;

    if-nez v0, :cond_3

    goto :goto_2

    .line 305
    :cond_3
    invoke-virtual {v0}, Lcom/superwall/sdk/models/triggers/Experiment$Variant;->getType()Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;

    move-result-object v1

    sget-object v2, Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;->TREATMENT:Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;

    if-ne v1, v2, :cond_2

    .line 306
    invoke-virtual {v0}, Lcom/superwall/sdk/models/triggers/Experiment$Variant;->getPaywallId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 307
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object p1
.end method

.method public final getAllActiveTreatmentPaywallIds(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/triggers/Trigger;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/triggers/Experiment$Variant;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/triggers/Experiment$Variant;",
            ">;",
            "Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p5

    instance-of v1, v0, Lcom/superwall/sdk/config/ConfigLogic$getAllActiveTreatmentPaywallIds$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/superwall/sdk/config/ConfigLogic$getAllActiveTreatmentPaywallIds$1;

    iget v2, v1, Lcom/superwall/sdk/config/ConfigLogic$getAllActiveTreatmentPaywallIds$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lcom/superwall/sdk/config/ConfigLogic$getAllActiveTreatmentPaywallIds$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/superwall/sdk/config/ConfigLogic$getAllActiveTreatmentPaywallIds$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/superwall/sdk/config/ConfigLogic$getAllActiveTreatmentPaywallIds$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/superwall/sdk/config/ConfigLogic$getAllActiveTreatmentPaywallIds$1;-><init>(Lcom/superwall/sdk/config/ConfigLogic;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/superwall/sdk/config/ConfigLogic$getAllActiveTreatmentPaywallIds$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 231
    iget v4, v1, Lcom/superwall/sdk/config/ConfigLogic$getAllActiveTreatmentPaywallIds$1;->label:I

    const/4 v5, 0x1

    const/16 v7, 0xa

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v4, v1, Lcom/superwall/sdk/config/ConfigLogic$getAllActiveTreatmentPaywallIds$1;->L$10:Ljava/lang/Object;

    iget-object v8, v1, Lcom/superwall/sdk/config/ConfigLogic$getAllActiveTreatmentPaywallIds$1;->L$9:Ljava/lang/Object;

    check-cast v8, Ljava/util/Iterator;

    iget-object v9, v1, Lcom/superwall/sdk/config/ConfigLogic$getAllActiveTreatmentPaywallIds$1;->L$8:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v10, v1, Lcom/superwall/sdk/config/ConfigLogic$getAllActiveTreatmentPaywallIds$1;->L$7:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v11, v1, Lcom/superwall/sdk/config/ConfigLogic$getAllActiveTreatmentPaywallIds$1;->L$6:Ljava/lang/Object;

    check-cast v11, Ljava/util/Iterator;

    iget-object v12, v1, Lcom/superwall/sdk/config/ConfigLogic$getAllActiveTreatmentPaywallIds$1;->L$5:Ljava/lang/Object;

    check-cast v12, Ljava/util/Set;

    iget-object v13, v1, Lcom/superwall/sdk/config/ConfigLogic$getAllActiveTreatmentPaywallIds$1;->L$4:Ljava/lang/Object;

    check-cast v13, Ljava/util/Set;

    iget-object v14, v1, Lcom/superwall/sdk/config/ConfigLogic$getAllActiveTreatmentPaywallIds$1;->L$3:Ljava/lang/Object;

    check-cast v14, Ljava/util/Set;

    iget-object v15, v1, Lcom/superwall/sdk/config/ConfigLogic$getAllActiveTreatmentPaywallIds$1;->L$2:Ljava/lang/Object;

    check-cast v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v1, Lcom/superwall/sdk/config/ConfigLogic$getAllActiveTreatmentPaywallIds$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;

    iget-object v5, v1, Lcom/superwall/sdk/config/ConfigLogic$getAllActiveTreatmentPaywallIds$1;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 237
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-static/range {p2 .. p2}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 240
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    .line 241
    invoke-virtual/range {p0 .. p1}, Lcom/superwall/sdk/config/ConfigLogic;->getRulesPerCampaign(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    .line 244
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v6, Ljava/util/Set;

    .line 245
    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v8, Ljava/util/Set;

    .line 248
    check-cast v5, Ljava/lang/Iterable;

    .line 355
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v9, v6

    move-object v10, v8

    move-object v6, v4

    move-object v8, v5

    move-object v4, v0

    move-object v5, v1

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 249
    move-object v12, v11

    check-cast v12, Ljava/lang/Iterable;

    .line 356
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v12, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v13, Ljava/util/Collection;

    .line 357
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 358
    check-cast v15, Lcom/superwall/sdk/models/triggers/TriggerRule;

    .line 249
    invoke-virtual {v15}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getExperiment()Lcom/superwall/sdk/models/triggers/RawExperiment;

    move-result-object v15

    invoke-virtual {v15}, Lcom/superwall/sdk/models/triggers/RawExperiment;->getId()Ljava/lang/String;

    move-result-object v15

    .line 358
    invoke-interface {v13, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 359
    :cond_3
    check-cast v13, Ljava/util/List;

    .line 356
    check-cast v13, Ljava/util/Collection;

    .line 249
    invoke-interface {v9, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 360
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    check-cast v13, Ljava/util/Collection;

    .line 361
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Lcom/superwall/sdk/models/triggers/TriggerRule;

    .line 251
    invoke-virtual {v15}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getPreload()Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;

    move-result-object v15

    invoke-virtual {v15}, Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;->getBehavior()Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;

    move-result-object v15

    sget-object v7, Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;->IF_TRUE:Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;

    if-ne v15, v7, :cond_4

    .line 361
    invoke-interface {v13, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    const/16 v7, 0xa

    goto :goto_3

    .line 362
    :cond_5
    check-cast v13, Ljava/util/List;

    .line 253
    move-object v7, v13

    check-cast v7, Ljava/lang/Iterable;

    .line 363
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v12, v13

    move-object v13, v9

    move-object v9, v12

    move-object v15, v4

    move-object v14, v6

    move-object v12, v10

    move-object v10, v11

    move-object v6, v1

    move-object v1, v5

    move-object v11, v8

    move-object v5, v0

    move-object v8, v7

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/superwall/sdk/models/triggers/TriggerRule;

    .line 254
    iput-object v5, v1, Lcom/superwall/sdk/config/ConfigLogic$getAllActiveTreatmentPaywallIds$1;->L$0:Ljava/lang/Object;

    iput-object v6, v1, Lcom/superwall/sdk/config/ConfigLogic$getAllActiveTreatmentPaywallIds$1;->L$1:Ljava/lang/Object;

    iput-object v15, v1, Lcom/superwall/sdk/config/ConfigLogic$getAllActiveTreatmentPaywallIds$1;->L$2:Ljava/lang/Object;

    iput-object v14, v1, Lcom/superwall/sdk/config/ConfigLogic$getAllActiveTreatmentPaywallIds$1;->L$3:Ljava/lang/Object;

    iput-object v13, v1, Lcom/superwall/sdk/config/ConfigLogic$getAllActiveTreatmentPaywallIds$1;->L$4:Ljava/lang/Object;

    iput-object v12, v1, Lcom/superwall/sdk/config/ConfigLogic$getAllActiveTreatmentPaywallIds$1;->L$5:Ljava/lang/Object;

    iput-object v11, v1, Lcom/superwall/sdk/config/ConfigLogic$getAllActiveTreatmentPaywallIds$1;->L$6:Ljava/lang/Object;

    iput-object v10, v1, Lcom/superwall/sdk/config/ConfigLogic$getAllActiveTreatmentPaywallIds$1;->L$7:Ljava/lang/Object;

    iput-object v9, v1, Lcom/superwall/sdk/config/ConfigLogic$getAllActiveTreatmentPaywallIds$1;->L$8:Ljava/lang/Object;

    iput-object v8, v1, Lcom/superwall/sdk/config/ConfigLogic$getAllActiveTreatmentPaywallIds$1;->L$9:Ljava/lang/Object;

    iput-object v4, v1, Lcom/superwall/sdk/config/ConfigLogic$getAllActiveTreatmentPaywallIds$1;->L$10:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v1, Lcom/superwall/sdk/config/ConfigLogic$getAllActiveTreatmentPaywallIds$1;->label:I

    const/4 v7, 0x0

    invoke-interface {v6, v0, v7, v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;->evaluateExpression(Lcom/superwall/sdk/models/triggers/TriggerRule;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_7

    return-object v3

    .line 257
    :cond_7
    :goto_4
    instance-of v0, v0, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Match;

    if-eqz v0, :cond_6

    :goto_5
    move-object v0, v5

    move-object v8, v11

    move-object v5, v1

    move-object v1, v6

    move-object v11, v10

    move-object v10, v12

    move-object v6, v14

    goto :goto_6

    :cond_8
    const/4 v7, 0x0

    move-object v4, v7

    goto :goto_5

    .line 253
    :goto_6
    check-cast v4, Lcom/superwall/sdk/models/triggers/TriggerRule;

    .line 259
    check-cast v9, Ljava/lang/Iterable;

    .line 365
    new-instance v12, Ljava/util/ArrayList;

    const/16 v14, 0xa

    invoke-static {v9, v14}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v12, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v12, Ljava/util/Collection;

    .line 366
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 367
    check-cast v9, Lcom/superwall/sdk/models/triggers/TriggerRule;

    .line 259
    invoke-virtual {v9}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getExperiment()Lcom/superwall/sdk/models/triggers/RawExperiment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/superwall/sdk/models/triggers/RawExperiment;->getId()Ljava/lang/String;

    move-result-object v9

    .line 367
    invoke-interface {v12, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 368
    :cond_9
    check-cast v12, Ljava/util/List;

    .line 365
    check-cast v12, Ljava/lang/Iterable;

    .line 369
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .line 370
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v14, v12

    check-cast v14, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 260
    invoke-virtual {v4}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getExperiment()Lcom/superwall/sdk/models/triggers/RawExperiment;

    move-result-object v16

    if-eqz v16, :cond_a

    invoke-virtual/range {v16 .. v16}, Lcom/superwall/sdk/models/triggers/RawExperiment;->getId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 p1, v0

    move-object/from16 v0, v16

    goto :goto_9

    :cond_a
    move-object/from16 p1, v0

    const/4 v0, 0x0

    :goto_9
    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 370
    invoke-interface {v7, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_b
    move-object/from16 v0, p1

    goto :goto_8

    :cond_c
    move-object/from16 p1, v0

    .line 371
    check-cast v7, Ljava/util/List;

    .line 262
    check-cast v11, Ljava/lang/Iterable;

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 373
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lcom/superwall/sdk/models/triggers/TriggerRule;

    .line 263
    invoke-virtual {v11}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getPreload()Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;

    move-result-object v11

    invoke-virtual {v11}, Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;->getBehavior()Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;

    move-result-object v11

    sget-object v12, Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;->NEVER:Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;

    if-ne v11, v12, :cond_d

    .line 373
    invoke-interface {v0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 374
    :cond_e
    check-cast v0, Ljava/util/List;

    .line 372
    check-cast v0, Ljava/lang/Iterable;

    .line 375
    new-instance v4, Ljava/util/ArrayList;

    const/16 v14, 0xa

    invoke-static {v0, v14}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 376
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 377
    check-cast v9, Lcom/superwall/sdk/models/triggers/TriggerRule;

    .line 264
    invoke-virtual {v9}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getExperiment()Lcom/superwall/sdk/models/triggers/RawExperiment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/superwall/sdk/models/triggers/RawExperiment;->getId()Ljava/lang/String;

    move-result-object v9

    .line 377
    invoke-interface {v4, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 378
    :cond_f
    check-cast v4, Ljava/util/List;

    .line 265
    check-cast v7, Ljava/util/Collection;

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v7, v4}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v10, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p1

    move-object v9, v13

    move v7, v14

    move-object v4, v15

    goto/16 :goto_1

    .line 269
    :cond_10
    check-cast v6, Ljava/lang/Iterable;

    check-cast v9, Ljava/lang/Iterable;

    invoke-static {v6, v9}, Lkotlin/collections/CollectionsKt;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 270
    check-cast v1, Ljava/lang/Iterable;

    .line 380
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 271
    iget-object v5, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 275
    :cond_11
    iget-object v1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 276
    check-cast v10, Ljava/lang/Iterable;

    .line 382
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 277
    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 279
    :cond_12
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 282
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v1, Ljava/util/Set;

    .line 283
    check-cast v0, Ljava/lang/Iterable;

    .line 384
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/superwall/sdk/models/triggers/Experiment$Variant;

    .line 284
    invoke-virtual {v3}, Lcom/superwall/sdk/models/triggers/Experiment$Variant;->getType()Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;

    move-result-object v4

    sget-object v5, Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;->TREATMENT:Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;

    if-ne v4, v5, :cond_13

    invoke-virtual {v3}, Lcom/superwall/sdk/models/triggers/Experiment$Variant;->getPaywallId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 285
    invoke-virtual {v3}, Lcom/superwall/sdk/models/triggers/Experiment$Variant;->getPaywallId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_14
    return-object v1
.end method

.method public final getRulesPerCampaign(Ljava/util/Set;)Ljava/util/Set;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/triggers/Trigger;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/triggers/TriggerRule;",
            ">;>;"
        }
    .end annotation

    const-string v0, "triggers"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    .line 81
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v2, Ljava/util/Set;

    .line 82
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/superwall/sdk/models/triggers/Trigger;

    .line 83
    invoke-virtual {v3}, Lcom/superwall/sdk/models/triggers/Trigger;->getRules()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/superwall/sdk/models/triggers/TriggerRule;

    if-nez v4, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v4}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getExperiment()Lcom/superwall/sdk/models/triggers/RawExperiment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/superwall/sdk/models/triggers/RawExperiment;->getGroupId()Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 90
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {v3}, Lcom/superwall/sdk/models/triggers/Trigger;->getRules()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_2
    sget-object v4, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 94
    sget-object v5, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 95
    sget-object v6, Lcom/superwall/sdk/logger/LogScope;->configManager:Lcom/superwall/sdk/logger/LogScope;

    const/16 v10, 0x18

    const/4 v11, 0x0

    .line 93
    const-string v7, "!!! groupedTriggerRules"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v11}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 98
    sget-object v12, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 99
    sget-object v13, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 100
    sget-object v14, Lcom/superwall/sdk/logger/LogScope;->configManager:Lcom/superwall/sdk/logger/LogScope;

    .line 101
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x18

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 98
    invoke-static/range {v12 .. v19}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-object v2
.end method

.method public final getStaticPaywall(Ljava/lang/String;Lcom/superwall/sdk/models/config/Config;Ljava/lang/String;)Lcom/superwall/sdk/models/paywall/Paywall;
    .locals 8

    const-string v0, "deviceLocale"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto :goto_1

    .line 219
    :cond_0
    invoke-virtual {p2}, Lcom/superwall/sdk/models/config/Config;->getLocales()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 222
    :cond_1
    move-object v2, p3

    check-cast v2, Ljava/lang/CharSequence;

    const/4 p3, 0x1

    new-array v3, p3, [Ljava/lang/String;

    const/4 p3, 0x0

    const-string v1, "_"

    aput-object v1, v3, p3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-nez p3, :cond_2

    return-object v0

    .line 223
    :cond_2
    const-string v1, "en"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p2}, Lcom/superwall/sdk/models/config/Config;->getLocales()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    return-object v0

    .line 224
    :cond_4
    :goto_0
    invoke-virtual {p2}, Lcom/superwall/sdk/models/config/Config;->getPaywalls()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 353
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lcom/superwall/sdk/models/paywall/Paywall;

    .line 224
    invoke-virtual {v1}, Lcom/superwall/sdk/models/paywall/Paywall;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v0, p3

    .line 354
    :cond_6
    check-cast v0, Lcom/superwall/sdk/models/paywall/Paywall;

    :cond_7
    :goto_1
    return-object v0
.end method

.method public final getTriggersByEventName(Ljava/util/Set;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/triggers/Trigger;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/triggers/Trigger;",
            ">;"
        }
    .end annotation

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    check-cast p1, Ljava/lang/Iterable;

    const/16 v0, 0xa

    .line 396
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 397
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    .line 398
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 399
    move-object v2, v0

    check-cast v2, Lcom/superwall/sdk/models/triggers/Trigger;

    .line 316
    invoke-virtual {v2}, Lcom/superwall/sdk/models/triggers/Trigger;->getEventName()Ljava/lang/String;

    move-result-object v2

    .line 399
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final move(Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;Ljava/util/Map;Ljava/util/Map;)Lcom/superwall/sdk/config/ConfigLogic$AssignmentOutcome;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/triggers/Experiment$Variant;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/triggers/Experiment$Variant;",
            ">;)",
            "Lcom/superwall/sdk/config/ConfigLogic$AssignmentOutcome;"
        }
    .end annotation

    const-string v0, "newAssignment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unconfirmedAssignments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "confirmedAssignments"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-static {p3}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    .line 160
    invoke-virtual {p1}, Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;->getExperimentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;->getVariant()Lcom/superwall/sdk/models/triggers/Experiment$Variant;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {p2}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 163
    invoke-virtual {p1}, Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;->getExperimentId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance p1, Lcom/superwall/sdk/config/ConfigLogic$AssignmentOutcome;

    invoke-direct {p1, p3, p2}, Lcom/superwall/sdk/config/ConfigLogic$AssignmentOutcome;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-object p1
.end method

.method public final transferAssignmentsFromServerToDisk(Ljava/util/List;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;)Lcom/superwall/sdk/config/ConfigLogic$AssignmentOutcome;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/assignment/Assignment;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/triggers/Trigger;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/triggers/Experiment$Variant;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/triggers/Experiment$Variant;",
            ">;)",
            "Lcom/superwall/sdk/config/ConfigLogic$AssignmentOutcome;"
        }
    .end annotation

    const-string v0, "assignments"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "triggers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "confirmedAssignments"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unconfirmedAssignments"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-static {p3}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    .line 188
    invoke-static {p4}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p4

    .line 189
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/models/assignment/Assignment;

    .line 191
    move-object v1, p2

    check-cast v1, Ljava/lang/Iterable;

    .line 339
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/superwall/sdk/models/triggers/Trigger;

    .line 192
    invoke-virtual {v3}, Lcom/superwall/sdk/models/triggers/Trigger;->getRules()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 340
    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 341
    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/superwall/sdk/models/triggers/TriggerRule;

    .line 192
    invoke-virtual {v4}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getExperiment()Lcom/superwall/sdk/models/triggers/RawExperiment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/superwall/sdk/models/triggers/RawExperiment;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/superwall/sdk/models/assignment/Assignment;->getExperimentId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 191
    :goto_2
    check-cast v2, Lcom/superwall/sdk/models/triggers/Trigger;

    if-nez v2, :cond_4

    goto :goto_0

    .line 196
    :cond_4
    invoke-virtual {v2}, Lcom/superwall/sdk/models/triggers/Trigger;->getRules()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 344
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 345
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 346
    check-cast v3, Lcom/superwall/sdk/models/triggers/TriggerRule;

    .line 198
    invoke-virtual {v3}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getExperiment()Lcom/superwall/sdk/models/triggers/RawExperiment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/models/triggers/RawExperiment;->getVariants()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 347
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .line 348
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/superwall/sdk/models/triggers/VariantOption;

    .line 198
    invoke-virtual {v6}, Lcom/superwall/sdk/models/triggers/VariantOption;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/superwall/sdk/models/assignment/Assignment;->getVariantId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 348
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 349
    :cond_6
    check-cast v4, Ljava/util/List;

    .line 347
    check-cast v4, Ljava/lang/Iterable;

    .line 350
    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_3

    .line 352
    :cond_7
    check-cast v2, Ljava/util/List;

    .line 199
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/superwall/sdk/models/triggers/VariantOption;

    if-nez v1, :cond_8

    goto/16 :goto_0

    .line 201
    :cond_8
    invoke-virtual {v0}, Lcom/superwall/sdk/models/assignment/Assignment;->getExperimentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/superwall/sdk/models/triggers/VariantOption;->toVariant()Lcom/superwall/sdk/models/triggers/Experiment$Variant;

    move-result-object v1

    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-virtual {v0}, Lcom/superwall/sdk/models/assignment/Assignment;->getExperimentId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 205
    :cond_9
    new-instance p1, Lcom/superwall/sdk/config/ConfigLogic$AssignmentOutcome;

    invoke-direct {p1, p3, p4}, Lcom/superwall/sdk/config/ConfigLogic$AssignmentOutcome;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-object p1
.end method
