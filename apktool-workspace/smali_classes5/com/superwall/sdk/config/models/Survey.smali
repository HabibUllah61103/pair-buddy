.class public final Lcom/superwall/sdk/config/models/Survey;
.super Ljava/lang/Object;
.source "Survey.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/config/models/Survey$$serializer;,
        Lcom/superwall/sdk/config/models/Survey$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 B2\u00020\u0001:\u0002ABBU\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012Bu\u0008\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0017J\u000e\u0010&\u001a\u00020\u000f2\u0006\u0010\'\u001a\u00020\u000fJ\u000e\u0010(\u001a\u00020\u000f2\u0006\u0010)\u001a\u00020*J\t\u0010+\u001a\u00020\u0003H\u00c6\u0003J\t\u0010,\u001a\u00020\u0003H\u00c6\u0003J\t\u0010-\u001a\u00020\u0003H\u00c6\u0003J\t\u0010.\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u00c6\u0003J\t\u00100\u001a\u00020\u000bH\u00c6\u0003J\t\u00101\u001a\u00020\rH\u00c6\u0003J\t\u00102\u001a\u00020\u000fH\u00c6\u0003J\t\u00103\u001a\u00020\u000fH\u00c6\u0003Ji\u00104\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000fH\u00c6\u0001J\u0013\u00105\u001a\u00020\u000f2\u0008\u00106\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00107\u001a\u00020\u0014H\u00d6\u0001J\t\u00108\u001a\u00020\u0003H\u00d6\u0001J%\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020\u00002\u0006\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020?H\u0001\u00a2\u0006\u0002\u0008@R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0019R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0019R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0019R\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0011\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010$\u00a8\u0006C"
    }
    d2 = {
        "Lcom/superwall/sdk/config/models/Survey;",
        "",
        "id",
        "",
        "assignmentKey",
        "title",
        "message",
        "options",
        "",
        "Lcom/superwall/sdk/config/models/SurveyOption;",
        "presentationCondition",
        "Lcom/superwall/sdk/config/models/SurveyShowCondition;",
        "presentationProbability",
        "",
        "includeOtherOption",
        "",
        "includeCloseOption",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/superwall/sdk/config/models/SurveyShowCondition;DZZ)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/superwall/sdk/config/models/SurveyShowCondition;DZZLkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getId",
        "()Ljava/lang/String;",
        "getAssignmentKey",
        "getTitle",
        "getMessage",
        "getOptions",
        "()Ljava/util/List;",
        "getPresentationCondition",
        "()Lcom/superwall/sdk/config/models/SurveyShowCondition;",
        "getPresentationProbability",
        "()D",
        "getIncludeOtherOption",
        "()Z",
        "getIncludeCloseOption",
        "shouldAssignHoldout",
        "isDebuggerLaunched",
        "hasSeenSurvey",
        "storage",
        "Lcom/superwall/sdk/storage/LocalStorage;",
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

.field public static final Companion:Lcom/superwall/sdk/config/models/Survey$Companion;


# instance fields
.field private final assignmentKey:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final includeCloseOption:Z

.field private final includeOtherOption:Z

.field private final message:Ljava/lang/String;

.field private final options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/config/models/SurveyOption;",
            ">;"
        }
    .end annotation
.end field

.field private final presentationCondition:Lcom/superwall/sdk/config/models/SurveyShowCondition;

.field private final presentationProbability:D

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/superwall/sdk/config/models/Survey$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/config/models/Survey$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/config/models/Survey;->Companion:Lcom/superwall/sdk/config/models/Survey$Companion;

    const/16 v0, 0x9

    .line 7
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lcom/superwall/sdk/config/models/SurveyOption$$serializer;->INSTANCE:Lcom/superwall/sdk/config/models/SurveyOption$$serializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/superwall/sdk/config/models/Survey;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/superwall/sdk/config/models/SurveyShowCondition;DZZLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit16 p12, p1, 0x1ff

    const/16 v0, 0x1ff

    if-eq v0, p12, :cond_0

    .line 7
    sget-object p12, Lcom/superwall/sdk/config/models/Survey$$serializer;->INSTANCE:Lcom/superwall/sdk/config/models/Survey$$serializer;

    invoke-virtual {p12}, Lcom/superwall/sdk/config/models/Survey$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p12

    invoke-static {p1, v0, p12}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/superwall/sdk/config/models/Survey;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/superwall/sdk/config/models/Survey;->assignmentKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/superwall/sdk/config/models/Survey;->title:Ljava/lang/String;

    iput-object p5, p0, Lcom/superwall/sdk/config/models/Survey;->message:Ljava/lang/String;

    iput-object p6, p0, Lcom/superwall/sdk/config/models/Survey;->options:Ljava/util/List;

    iput-object p7, p0, Lcom/superwall/sdk/config/models/Survey;->presentationCondition:Lcom/superwall/sdk/config/models/SurveyShowCondition;

    iput-wide p8, p0, Lcom/superwall/sdk/config/models/Survey;->presentationProbability:D

    iput-boolean p10, p0, Lcom/superwall/sdk/config/models/Survey;->includeOtherOption:Z

    iput-boolean p11, p0, Lcom/superwall/sdk/config/models/Survey;->includeCloseOption:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/superwall/sdk/config/models/SurveyShowCondition;DZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/config/models/SurveyOption;",
            ">;",
            "Lcom/superwall/sdk/config/models/SurveyShowCondition;",
            "DZZ)V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assignmentKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presentationCondition"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/superwall/sdk/config/models/Survey;->id:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/superwall/sdk/config/models/Survey;->assignmentKey:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/superwall/sdk/config/models/Survey;->title:Ljava/lang/String;

    .line 12
    iput-object p4, p0, Lcom/superwall/sdk/config/models/Survey;->message:Ljava/lang/String;

    .line 13
    iput-object p5, p0, Lcom/superwall/sdk/config/models/Survey;->options:Ljava/util/List;

    .line 14
    iput-object p6, p0, Lcom/superwall/sdk/config/models/Survey;->presentationCondition:Lcom/superwall/sdk/config/models/SurveyShowCondition;

    .line 15
    iput-wide p7, p0, Lcom/superwall/sdk/config/models/Survey;->presentationProbability:D

    .line 16
    iput-boolean p9, p0, Lcom/superwall/sdk/config/models/Survey;->includeOtherOption:Z

    .line 17
    iput-boolean p10, p0, Lcom/superwall/sdk/config/models/Survey;->includeCloseOption:Z

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 7
    sget-object v0, Lcom/superwall/sdk/config/models/Survey;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/config/models/Survey;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/superwall/sdk/config/models/SurveyShowCondition;DZZILjava/lang/Object;)Lcom/superwall/sdk/config/models/Survey;
    .locals 0

    and-int/lit8 p12, p11, 0x1

    if-eqz p12, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/config/models/Survey;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/config/models/Survey;->assignmentKey:Ljava/lang/String;

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    iget-object p3, p0, Lcom/superwall/sdk/config/models/Survey;->title:Ljava/lang/String;

    :cond_2
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_3

    iget-object p4, p0, Lcom/superwall/sdk/config/models/Survey;->message:Ljava/lang/String;

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    iget-object p5, p0, Lcom/superwall/sdk/config/models/Survey;->options:Ljava/util/List;

    :cond_4
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_5

    iget-object p6, p0, Lcom/superwall/sdk/config/models/Survey;->presentationCondition:Lcom/superwall/sdk/config/models/SurveyShowCondition;

    :cond_5
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_6

    iget-wide p7, p0, Lcom/superwall/sdk/config/models/Survey;->presentationProbability:D

    :cond_6
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_7

    iget-boolean p9, p0, Lcom/superwall/sdk/config/models/Survey;->includeOtherOption:Z

    :cond_7
    and-int/lit16 p11, p11, 0x100

    if-eqz p11, :cond_8

    iget-boolean p10, p0, Lcom/superwall/sdk/config/models/Survey;->includeCloseOption:Z

    :cond_8
    move p11, p9

    move p12, p10

    move-wide p9, p7

    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p12}, Lcom/superwall/sdk/config/models/Survey;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/superwall/sdk/config/models/SurveyShowCondition;DZZ)Lcom/superwall/sdk/config/models/Survey;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/config/models/Survey;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 7
    sget-object v0, Lcom/superwall/sdk/config/models/Survey;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/superwall/sdk/config/models/Survey;->id:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/superwall/sdk/config/models/Survey;->assignmentKey:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/superwall/sdk/config/models/Survey;->title:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/superwall/sdk/config/models/Survey;->message:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x4

    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/config/models/Survey;->options:Ljava/util/List;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lcom/superwall/sdk/config/models/SurveyShowConditionSerializer;->INSTANCE:Lcom/superwall/sdk/config/models/SurveyShowConditionSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/superwall/sdk/config/models/Survey;->presentationCondition:Lcom/superwall/sdk/config/models/SurveyShowCondition;

    const/4 v2, 0x5

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/superwall/sdk/config/models/Survey;->presentationProbability:D

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeDoubleElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/superwall/sdk/config/models/Survey;->includeOtherOption:Z

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x8

    iget-boolean p0, p0, Lcom/superwall/sdk/config/models/Survey;->includeCloseOption:Z

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/config/models/Survey;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/config/models/Survey;->assignmentKey:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/config/models/Survey;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/config/models/Survey;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/config/models/SurveyOption;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/config/models/Survey;->options:Ljava/util/List;

    return-object v0
.end method

.method public final component6()Lcom/superwall/sdk/config/models/SurveyShowCondition;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/config/models/Survey;->presentationCondition:Lcom/superwall/sdk/config/models/SurveyShowCondition;

    return-object v0
.end method

.method public final component7()D
    .locals 2

    iget-wide v0, p0, Lcom/superwall/sdk/config/models/Survey;->presentationProbability:D

    return-wide v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/config/models/Survey;->includeOtherOption:Z

    return v0
.end method

.method public final component9()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/config/models/Survey;->includeCloseOption:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/superwall/sdk/config/models/SurveyShowCondition;DZZ)Lcom/superwall/sdk/config/models/Survey;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/config/models/SurveyOption;",
            ">;",
            "Lcom/superwall/sdk/config/models/SurveyShowCondition;",
            "DZZ)",
            "Lcom/superwall/sdk/config/models/Survey;"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assignmentKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presentationCondition"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/superwall/sdk/config/models/Survey;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/superwall/sdk/config/models/Survey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/superwall/sdk/config/models/SurveyShowCondition;DZZ)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/config/models/Survey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/config/models/Survey;

    iget-object v1, p0, Lcom/superwall/sdk/config/models/Survey;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/config/models/Survey;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/config/models/Survey;->assignmentKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/config/models/Survey;->assignmentKey:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/superwall/sdk/config/models/Survey;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/config/models/Survey;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/superwall/sdk/config/models/Survey;->message:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/config/models/Survey;->message:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/superwall/sdk/config/models/Survey;->options:Ljava/util/List;

    iget-object v3, p1, Lcom/superwall/sdk/config/models/Survey;->options:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/superwall/sdk/config/models/Survey;->presentationCondition:Lcom/superwall/sdk/config/models/SurveyShowCondition;

    iget-object v3, p1, Lcom/superwall/sdk/config/models/Survey;->presentationCondition:Lcom/superwall/sdk/config/models/SurveyShowCondition;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/superwall/sdk/config/models/Survey;->presentationProbability:D

    iget-wide v5, p1, Lcom/superwall/sdk/config/models/Survey;->presentationProbability:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/superwall/sdk/config/models/Survey;->includeOtherOption:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/config/models/Survey;->includeOtherOption:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/superwall/sdk/config/models/Survey;->includeCloseOption:Z

    iget-boolean p1, p1, Lcom/superwall/sdk/config/models/Survey;->includeCloseOption:Z

    if-eq v1, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getAssignmentKey()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/superwall/sdk/config/models/Survey;->assignmentKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/superwall/sdk/config/models/Survey;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getIncludeCloseOption()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/superwall/sdk/config/models/Survey;->includeCloseOption:Z

    return v0
.end method

.method public final getIncludeOtherOption()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/superwall/sdk/config/models/Survey;->includeOtherOption:Z

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/superwall/sdk/config/models/Survey;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/config/models/SurveyOption;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/superwall/sdk/config/models/Survey;->options:Ljava/util/List;

    return-object v0
.end method

.method public final getPresentationCondition()Lcom/superwall/sdk/config/models/SurveyShowCondition;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/superwall/sdk/config/models/Survey;->presentationCondition:Lcom/superwall/sdk/config/models/SurveyShowCondition;

    return-object v0
.end method

.method public final getPresentationProbability()D
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/superwall/sdk/config/models/Survey;->presentationProbability:D

    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/superwall/sdk/config/models/Survey;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final hasSeenSurvey(Lcom/superwall/sdk/storage/LocalStorage;)Z
    .locals 1

    const-string v0, "storage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/superwall/sdk/storage/SurveyAssignmentKey;->INSTANCE:Lcom/superwall/sdk/storage/SurveyAssignmentKey;

    check-cast v0, Lcom/superwall/sdk/storage/Storable;

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/storage/LocalStorage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/config/models/Survey;->assignmentKey:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/superwall/sdk/config/models/Survey;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/config/models/Survey;->assignmentKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/config/models/Survey;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/config/models/Survey;->message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/config/models/Survey;->options:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/config/models/Survey;->presentationCondition:Lcom/superwall/sdk/config/models/SurveyShowCondition;

    invoke-virtual {v1}, Lcom/superwall/sdk/config/models/SurveyShowCondition;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/superwall/sdk/config/models/Survey;->presentationProbability:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/config/models/Survey;->includeOtherOption:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/config/models/Survey;->includeCloseOption:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final shouldAssignHoldout(Z)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 24
    :cond_0
    iget-wide v1, p0, Lcom/superwall/sdk/config/models/Survey;->presentationProbability:D

    const-wide/16 v3, 0x0

    cmpg-double p1, v1, v3

    const/4 v1, 0x1

    if-nez p1, :cond_1

    return v1

    .line 30
    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    .line 31
    iget-wide v4, p0, Lcom/superwall/sdk/config/models/Survey;->presentationProbability:D

    cmpl-double p1, v2, v4

    if-ltz p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Lcom/superwall/sdk/config/models/Survey;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/superwall/sdk/config/models/Survey;->assignmentKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/superwall/sdk/config/models/Survey;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/superwall/sdk/config/models/Survey;->message:Ljava/lang/String;

    iget-object v4, p0, Lcom/superwall/sdk/config/models/Survey;->options:Ljava/util/List;

    iget-object v5, p0, Lcom/superwall/sdk/config/models/Survey;->presentationCondition:Lcom/superwall/sdk/config/models/SurveyShowCondition;

    iget-wide v6, p0, Lcom/superwall/sdk/config/models/Survey;->presentationProbability:D

    iget-boolean v8, p0, Lcom/superwall/sdk/config/models/Survey;->includeOtherOption:Z

    iget-boolean v9, p0, Lcom/superwall/sdk/config/models/Survey;->includeCloseOption:Z

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Survey(id="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ", assignmentKey="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", presentationCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", presentationProbability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", includeOtherOption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", includeCloseOption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
