.class public final Lcom/superwall/sdk/models/triggers/TriggerRule;
.super Ljava/lang/Object;
.source "TriggerRule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/triggers/TriggerRule$$serializer;,
        Lcom/superwall/sdk/models/triggers/TriggerRule$Companion;,
        Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;,
        Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreloadSerializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u0000 Q2\u00020\u0001:\u0004OPQRBm\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0006\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0011\u0010\u0012B\u0081\u0001\u0008\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0006\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0017J\t\u00108\u001a\u00020\u0003H\u00c6\u0003J\t\u00109\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u00c6\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u000f\u0010?\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0006H\u00c6\u0003J\t\u0010@\u001a\u00020\u0010H\u00c6\u0003Jw\u0010A\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00062\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010H\u00c6\u0001J\u0013\u0010B\u001a\u00020C2\u0008\u0010D\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010E\u001a\u00020\u0014H\u00d6\u0001J\t\u0010F\u001a\u00020\u0003H\u00d6\u0001J%\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020\u00002\u0006\u0010J\u001a\u00020K2\u0006\u0010L\u001a\u00020MH\u0001\u00a2\u0006\u0002\u0008NR$\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR$\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001e\u0010\u0019\u001a\u0004\u0008\u001f\u0010\u001b\"\u0004\u0008 \u0010\u001dR*\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008!\u0010\u0019\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u001e\u0010\u0008\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008&\u0010\u0019\u001a\u0004\u0008\'\u0010\u001bR\u001e\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008(\u0010\u0019\u001a\u0004\u0008)\u0010\u001bR\u001e\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008*\u0010\u0019\u001a\u0004\u0008+\u0010\u001bR\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008,\u0010\u0019\u001a\u0004\u0008-\u0010.R\"\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008/\u0010\u0019\u001a\u0004\u00080\u0010#R\u001c\u0010\u000f\u001a\u00020\u00108\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u00081\u0010\u0019\u001a\u0004\u00082\u00103R\u0011\u00104\u001a\u0002058F\u00a2\u0006\u0006\u001a\u0004\u00086\u00107\u00a8\u0006S"
    }
    d2 = {
        "Lcom/superwall/sdk/models/triggers/TriggerRule;",
        "",
        "experimentId",
        "",
        "experimentGroupId",
        "variants",
        "",
        "Lcom/superwall/sdk/models/triggers/VariantOption;",
        "expression",
        "expressionJs",
        "expressionCEL",
        "occurrence",
        "Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;",
        "computedPropertyRequests",
        "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;",
        "preload",
        "Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Ljava/util/List;Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Ljava/util/List;Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getExperimentId$annotations",
        "()V",
        "getExperimentId",
        "()Ljava/lang/String;",
        "setExperimentId",
        "(Ljava/lang/String;)V",
        "getExperimentGroupId$annotations",
        "getExperimentGroupId",
        "setExperimentGroupId",
        "getVariants$annotations",
        "getVariants",
        "()Ljava/util/List;",
        "setVariants",
        "(Ljava/util/List;)V",
        "getExpression$annotations",
        "getExpression",
        "getExpressionJs$annotations",
        "getExpressionJs",
        "getExpressionCEL$annotations",
        "getExpressionCEL",
        "getOccurrence$annotations",
        "getOccurrence",
        "()Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;",
        "getComputedPropertyRequests$annotations",
        "getComputedPropertyRequests",
        "getPreload$annotations",
        "getPreload",
        "()Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;",
        "experiment",
        "Lcom/superwall/sdk/models/triggers/RawExperiment;",
        "getExperiment",
        "()Lcom/superwall/sdk/models/triggers/RawExperiment;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "",
        "other",
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
        "TriggerPreload",
        "TriggerPreloadSerializer",
        "Companion",
        "$serializer",
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
.field private static final $childSerializers:[Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/superwall/sdk/models/triggers/TriggerRule$Companion;


# instance fields
.field private final computedPropertyRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;",
            ">;"
        }
    .end annotation
.end field

.field private experimentGroupId:Ljava/lang/String;

.field private experimentId:Ljava/lang/String;

.field private final expression:Ljava/lang/String;

.field private final expressionCEL:Ljava/lang/String;

.field private final expressionJs:Ljava/lang/String;

.field private final occurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

.field private final preload:Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;

.field private variants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/triggers/VariantOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/superwall/sdk/models/triggers/TriggerRule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/triggers/TriggerRule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/triggers/TriggerRule;->Companion:Lcom/superwall/sdk/models/triggers/TriggerRule$Companion;

    const/16 v0, 0x9

    .line 158
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lcom/superwall/sdk/models/triggers/VariantOption$$serializer;->INSTANCE:Lcom/superwall/sdk/models/triggers/VariantOption$$serializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$$serializer;->INSTANCE:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$$serializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/4 v3, 0x7

    aput-object v2, v0, v3

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/superwall/sdk/models/triggers/TriggerRule;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Ljava/util/List;Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit16 p11, p1, 0x107

    const/16 v0, 0x107

    if-eq v0, p11, :cond_0

    .line 79
    sget-object p11, Lcom/superwall/sdk/models/triggers/TriggerRule$$serializer;->INSTANCE:Lcom/superwall/sdk/models/triggers/TriggerRule$$serializer;

    invoke-virtual {p11}, Lcom/superwall/sdk/models/triggers/TriggerRule$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p11

    invoke-static {p1, v0, p11}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->experimentId:Ljava/lang/String;

    iput-object p3, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->experimentGroupId:Ljava/lang/String;

    iput-object p4, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->variants:Ljava/util/List;

    and-int/lit8 p2, p1, 0x8

    const/4 p3, 0x0

    if-nez p2, :cond_1

    iput-object p3, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->expression:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p5, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->expression:Ljava/lang/String;

    :goto_0
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_2

    iput-object p3, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->expressionJs:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object p6, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->expressionJs:Ljava/lang/String;

    :goto_1
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_3

    iput-object p3, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->expressionCEL:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iput-object p7, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->expressionCEL:Ljava/lang/String;

    :goto_2
    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_4

    iput-object p3, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->occurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    goto :goto_3

    :cond_4
    iput-object p8, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->occurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    :goto_3
    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_5

    .line 96
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 79
    iput-object p1, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->computedPropertyRequests:Ljava/util/List;

    goto :goto_4

    :cond_5
    iput-object p9, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->computedPropertyRequests:Ljava/util/List;

    :goto_4
    iput-object p10, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->preload:Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Ljava/util/List;Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/triggers/VariantOption;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;",
            ">;",
            "Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;",
            ")V"
        }
    .end annotation

    const-string v0, "experimentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "experimentGroupId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "variants"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "computedPropertyRequests"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preload"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->experimentId:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->experimentGroupId:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->variants:Ljava/util/List;

    .line 87
    iput-object p4, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->expression:Ljava/lang/String;

    .line 89
    iput-object p5, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->expressionJs:Ljava/lang/String;

    .line 91
    iput-object p6, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->expressionCEL:Ljava/lang/String;

    .line 93
    iput-object p7, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->occurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    .line 95
    iput-object p8, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->computedPropertyRequests:Ljava/util/List;

    .line 97
    iput-object p9, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->preload:Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Ljava/util/List;Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p11, p10, 0x8

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    move-object p4, v0

    :cond_0
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_1

    move-object p5, v0

    :cond_1
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_2

    move-object p6, v0

    :cond_2
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_3

    move-object p7, v0

    :cond_3
    and-int/lit16 p10, p10, 0x80

    if-eqz p10, :cond_4

    .line 96
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p8

    :cond_4
    move-object p10, p9

    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 80
    invoke-direct/range {p1 .. p10}, Lcom/superwall/sdk/models/triggers/TriggerRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Ljava/util/List;Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 79
    sget-object v0, Lcom/superwall/sdk/models/triggers/TriggerRule;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/models/triggers/TriggerRule;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Ljava/util/List;Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;ILjava/lang/Object;)Lcom/superwall/sdk/models/triggers/TriggerRule;
    .locals 0

    and-int/lit8 p11, p10, 0x1

    if-eqz p11, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->experimentId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->experimentGroupId:Ljava/lang/String;

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    iget-object p3, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->variants:Ljava/util/List;

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    iget-object p4, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->expression:Ljava/lang/String;

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    iget-object p5, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->expressionJs:Ljava/lang/String;

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    iget-object p6, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->expressionCEL:Ljava/lang/String;

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    iget-object p7, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->occurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    iget-object p8, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->computedPropertyRequests:Ljava/util/List;

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    iget-object p9, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->preload:Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;

    :cond_8
    move-object p10, p8

    move-object p11, p9

    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p11}, Lcom/superwall/sdk/models/triggers/TriggerRule;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Ljava/util/List;Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;)Lcom/superwall/sdk/models/triggers/TriggerRule;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getComputedPropertyRequests$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "computed_properties"
    .end annotation

    return-void
.end method

.method public static synthetic getExperimentGroupId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "experiment_group_id"
    .end annotation

    return-void
.end method

.method public static synthetic getExperimentId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "experiment_id"
    .end annotation

    return-void
.end method

.method public static synthetic getExpression$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "expression"
    .end annotation

    return-void
.end method

.method public static synthetic getExpressionCEL$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "expression_cel"
    .end annotation

    return-void
.end method

.method public static synthetic getExpressionJs$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "expression_js"
    .end annotation

    return-void
.end method

.method public static synthetic getOccurrence$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "occurrence"
    .end annotation

    return-void
.end method

.method public static synthetic getPreload$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "preload"
    .end annotation

    return-void
.end method

.method public static synthetic getVariants$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "variants"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/models/triggers/TriggerRule;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 79
    sget-object v0, Lcom/superwall/sdk/models/triggers/TriggerRule;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->experimentId:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->experimentGroupId:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x2

    aget-object v2, v0, v1

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->variants:Ljava/util/List;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x3

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->expression:Ljava/lang/String;

    if-eqz v2, :cond_1

    :goto_0
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->expression:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x4

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->expressionJs:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_1
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->expressionJs:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    const/4 v1, 0x5

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->expressionCEL:Ljava/lang/String;

    if-eqz v2, :cond_5

    :goto_2
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->expressionCEL:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    const/4 v1, 0x6

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->occurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    if-eqz v2, :cond_7

    :goto_3
    sget-object v2, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$$serializer;->INSTANCE:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$$serializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->occurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_7
    const/4 v1, 0x7

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->computedPropertyRequests:Ljava/util/List;

    .line 96
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 79
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :goto_4
    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->computedPropertyRequests:Ljava/util/List;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_9
    sget-object v0, Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreloadSerializer;->INSTANCE:Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreloadSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->preload:Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;

    const/16 v1, 0x8

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->experimentId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->experimentGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/triggers/VariantOption;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->variants:Ljava/util/List;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->expression:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->expressionJs:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->expressionCEL:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->occurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    return-object v0
.end method

.method public final component8()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->computedPropertyRequests:Ljava/util/List;

    return-object v0
.end method

.method public final component9()Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->preload:Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Ljava/util/List;Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;)Lcom/superwall/sdk/models/triggers/TriggerRule;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/triggers/VariantOption;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;",
            ">;",
            "Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;",
            ")",
            "Lcom/superwall/sdk/models/triggers/TriggerRule;"
        }
    .end annotation

    const-string v0, "experimentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "experimentGroupId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "variants"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "computedPropertyRequests"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preload"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/superwall/sdk/models/triggers/TriggerRule;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v10}, Lcom/superwall/sdk/models/triggers/TriggerRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Ljava/util/List;Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/models/triggers/TriggerRule;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/models/triggers/TriggerRule;

    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->experimentId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/triggers/TriggerRule;->experimentId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->experimentGroupId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/triggers/TriggerRule;->experimentGroupId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->variants:Ljava/util/List;

    iget-object v3, p1, Lcom/superwall/sdk/models/triggers/TriggerRule;->variants:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->expression:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/triggers/TriggerRule;->expression:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->expressionJs:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/triggers/TriggerRule;->expressionJs:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->expressionCEL:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/triggers/TriggerRule;->expressionCEL:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->occurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    iget-object v3, p1, Lcom/superwall/sdk/models/triggers/TriggerRule;->occurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->computedPropertyRequests:Ljava/util/List;

    iget-object v3, p1, Lcom/superwall/sdk/models/triggers/TriggerRule;->computedPropertyRequests:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->preload:Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;

    iget-object p1, p1, Lcom/superwall/sdk/models/triggers/TriggerRule;->preload:Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getComputedPropertyRequests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->computedPropertyRequests:Ljava/util/List;

    return-object v0
.end method

.method public final getExperiment()Lcom/superwall/sdk/models/triggers/RawExperiment;
    .locals 4

    .line 151
    new-instance v0, Lcom/superwall/sdk/models/triggers/RawExperiment;

    .line 152
    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->experimentId:Ljava/lang/String;

    .line 153
    iget-object v2, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->experimentGroupId:Ljava/lang/String;

    .line 154
    iget-object v3, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->variants:Ljava/util/List;

    .line 151
    invoke-direct {v0, v1, v2, v3}, Lcom/superwall/sdk/models/triggers/RawExperiment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public final getExperimentGroupId()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->experimentGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public final getExperimentId()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->experimentId:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpression()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->expression:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpressionCEL()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->expressionCEL:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpressionJs()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->expressionJs:Ljava/lang/String;

    return-object v0
.end method

.method public final getOccurrence()Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->occurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    return-object v0
.end method

.method public final getPreload()Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->preload:Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;

    return-object v0
.end method

.method public final getVariants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/triggers/VariantOption;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->variants:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->experimentId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->experimentGroupId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->variants:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->expression:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->expressionJs:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->expressionCEL:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->occurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->computedPropertyRequests:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->preload:Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setExperimentGroupId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iput-object p1, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->experimentGroupId:Ljava/lang/String;

    return-void
.end method

.method public final setExperimentId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->experimentId:Ljava/lang/String;

    return-void
.end method

.method public final setVariants(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/triggers/VariantOption;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->variants:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->experimentId:Ljava/lang/String;

    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->experimentGroupId:Ljava/lang/String;

    iget-object v2, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->variants:Ljava/util/List;

    iget-object v3, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->expression:Ljava/lang/String;

    iget-object v4, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->expressionJs:Ljava/lang/String;

    iget-object v5, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->expressionCEL:Ljava/lang/String;

    iget-object v6, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->occurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    iget-object v7, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->computedPropertyRequests:Ljava/util/List;

    iget-object v8, p0, Lcom/superwall/sdk/models/triggers/TriggerRule;->preload:Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "TriggerRule(experimentId="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", experimentGroupId="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", variants="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expression="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expressionJs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expressionCEL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", occurrence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", computedPropertyRequests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", preload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
