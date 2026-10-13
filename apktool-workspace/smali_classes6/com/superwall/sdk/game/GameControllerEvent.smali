.class public final Lcom/superwall/sdk/game/GameControllerEvent;
.super Ljava/lang/Object;
.source "GameControllerEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/game/GameControllerEvent$$serializer;,
        Lcom/superwall/sdk/game/GameControllerEvent$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008&\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 ?2\u00020\u0001:\u0002>?B9\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cBO\u0008\u0010\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u000b\u0010\u0011J\t\u0010+\u001a\u00020\u0003H\u00c6\u0003J\t\u0010,\u001a\u00020\u0003H\u00c6\u0003J\t\u0010-\u001a\u00020\u0006H\u00c6\u0003J\t\u0010.\u001a\u00020\u0006H\u00c6\u0003J\t\u0010/\u001a\u00020\u0006H\u00c6\u0003J\t\u00100\u001a\u00020\nH\u00c6\u0003JE\u00101\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u00c6\u0001J\u0013\u00102\u001a\u00020\n2\u0008\u00103\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00104\u001a\u00020\u000eH\u00d6\u0001J\t\u00105\u001a\u00020\u0003H\u00d6\u0001J%\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\u00002\u0006\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<H\u0001\u00a2\u0006\u0002\u0008=R$\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R$\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0018\u0010\u0013\u001a\u0004\u0008\u0019\u0010\u0015\"\u0004\u0008\u001a\u0010\u0017R$\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001b\u0010\u0013\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR$\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008 \u0010\u0013\u001a\u0004\u0008!\u0010\u001d\"\u0004\u0008\"\u0010\u001fR$\u0010\u0008\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008#\u0010\u0013\u001a\u0004\u0008$\u0010\u001d\"\u0004\u0008%\u0010\u001fR$\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008&\u0010\u0013\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*\u00a8\u0006@"
    }
    d2 = {
        "Lcom/superwall/sdk/game/GameControllerEvent;",
        "",
        "eventName",
        "",
        "controllerElement",
        "value",
        "",
        "x",
        "y",
        "directional",
        "",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;DDDZ)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Ljava/lang/String;DDDZLkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getEventName$annotations",
        "()V",
        "getEventName",
        "()Ljava/lang/String;",
        "setEventName",
        "(Ljava/lang/String;)V",
        "getControllerElement$annotations",
        "getControllerElement",
        "setControllerElement",
        "getValue$annotations",
        "getValue",
        "()D",
        "setValue",
        "(D)V",
        "getX$annotations",
        "getX",
        "setX",
        "getY$annotations",
        "getY",
        "setY",
        "getDirectional$annotations",
        "getDirectional",
        "()Z",
        "setDirectional",
        "(Z)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
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
.field public static final Companion:Lcom/superwall/sdk/game/GameControllerEvent$Companion;


# instance fields
.field private controllerElement:Ljava/lang/String;

.field private directional:Z

.field private eventName:Ljava/lang/String;

.field private value:D

.field private x:D

.field private y:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/game/GameControllerEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/game/GameControllerEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/game/GameControllerEvent;->Companion:Lcom/superwall/sdk/game/GameControllerEvent$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;DDDZLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p11, p1, 0x3e

    const/16 v0, 0x3e

    if-eq v0, p11, :cond_0

    .line 6
    sget-object p11, Lcom/superwall/sdk/game/GameControllerEvent$$serializer;->INSTANCE:Lcom/superwall/sdk/game/GameControllerEvent$$serializer;

    invoke-virtual {p11}, Lcom/superwall/sdk/game/GameControllerEvent$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p11

    invoke-static {p1, v0, p11}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_1

    .line 9
    const-string p1, "game_controller_input"

    .line 6
    iput-object p1, p0, Lcom/superwall/sdk/game/GameControllerEvent;->eventName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/superwall/sdk/game/GameControllerEvent;->eventName:Ljava/lang/String;

    :goto_0
    iput-object p3, p0, Lcom/superwall/sdk/game/GameControllerEvent;->controllerElement:Ljava/lang/String;

    iput-wide p4, p0, Lcom/superwall/sdk/game/GameControllerEvent;->value:D

    iput-wide p6, p0, Lcom/superwall/sdk/game/GameControllerEvent;->x:D

    iput-wide p8, p0, Lcom/superwall/sdk/game/GameControllerEvent;->y:D

    iput-boolean p10, p0, Lcom/superwall/sdk/game/GameControllerEvent;->directional:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DDDZ)V
    .locals 1

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controllerElement"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/superwall/sdk/game/GameControllerEvent;->eventName:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/superwall/sdk/game/GameControllerEvent;->controllerElement:Ljava/lang/String;

    .line 12
    iput-wide p3, p0, Lcom/superwall/sdk/game/GameControllerEvent;->value:D

    .line 14
    iput-wide p5, p0, Lcom/superwall/sdk/game/GameControllerEvent;->x:D

    .line 16
    iput-wide p7, p0, Lcom/superwall/sdk/game/GameControllerEvent;->y:D

    .line 18
    iput-boolean p9, p0, Lcom/superwall/sdk/game/GameControllerEvent;->directional:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;DDDZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p10, p10, 0x1

    if-eqz p10, :cond_0

    .line 9
    const-string p1, "game_controller_input"

    :cond_0
    move p11, p9

    move-wide p9, p7

    move-wide p7, p5

    move-wide p5, p3

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 7
    invoke-direct/range {p2 .. p11}, Lcom/superwall/sdk/game/GameControllerEvent;-><init>(Ljava/lang/String;Ljava/lang/String;DDDZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/game/GameControllerEvent;Ljava/lang/String;Ljava/lang/String;DDDZILjava/lang/Object;)Lcom/superwall/sdk/game/GameControllerEvent;
    .locals 0

    and-int/lit8 p11, p10, 0x1

    if-eqz p11, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/game/GameControllerEvent;->eventName:Ljava/lang/String;

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/game/GameControllerEvent;->controllerElement:Ljava/lang/String;

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    iget-wide p3, p0, Lcom/superwall/sdk/game/GameControllerEvent;->value:D

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    iget-wide p5, p0, Lcom/superwall/sdk/game/GameControllerEvent;->x:D

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    iget-wide p7, p0, Lcom/superwall/sdk/game/GameControllerEvent;->y:D

    :cond_4
    and-int/lit8 p10, p10, 0x20

    if-eqz p10, :cond_5

    iget-boolean p9, p0, Lcom/superwall/sdk/game/GameControllerEvent;->directional:Z

    :cond_5
    move p11, p9

    move-wide p9, p7

    move-wide p7, p5

    move-wide p5, p3

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p11}, Lcom/superwall/sdk/game/GameControllerEvent;->copy(Ljava/lang/String;Ljava/lang/String;DDDZ)Lcom/superwall/sdk/game/GameControllerEvent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getControllerElement$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "controller_element"
    .end annotation

    return-void
.end method

.method public static synthetic getDirectional$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "directional"
    .end annotation

    return-void
.end method

.method public static synthetic getEventName$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "event_name"
    .end annotation

    return-void
.end method

.method public static synthetic getValue$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "value"
    .end annotation

    return-void
.end method

.method public static synthetic getX$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "x"
    .end annotation

    return-void
.end method

.method public static synthetic getY$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "y"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/game/GameControllerEvent;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    .line 6
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/superwall/sdk/game/GameControllerEvent;->eventName:Ljava/lang/String;

    .line 9
    const-string v2, "game_controller_input"

    .line 6
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/superwall/sdk/game/GameControllerEvent;->eventName:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/superwall/sdk/game/GameControllerEvent;->controllerElement:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/superwall/sdk/game/GameControllerEvent;->value:D

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeDoubleElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/superwall/sdk/game/GameControllerEvent;->x:D

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeDoubleElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/superwall/sdk/game/GameControllerEvent;->y:D

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeDoubleElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    const/4 v0, 0x5

    iget-boolean p0, p0, Lcom/superwall/sdk/game/GameControllerEvent;->directional:Z

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/game/GameControllerEvent;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/game/GameControllerEvent;->controllerElement:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lcom/superwall/sdk/game/GameControllerEvent;->value:D

    return-wide v0
.end method

.method public final component4()D
    .locals 2

    iget-wide v0, p0, Lcom/superwall/sdk/game/GameControllerEvent;->x:D

    return-wide v0
.end method

.method public final component5()D
    .locals 2

    iget-wide v0, p0, Lcom/superwall/sdk/game/GameControllerEvent;->y:D

    return-wide v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/game/GameControllerEvent;->directional:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;DDDZ)Lcom/superwall/sdk/game/GameControllerEvent;
    .locals 11

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controllerElement"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/superwall/sdk/game/GameControllerEvent;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/superwall/sdk/game/GameControllerEvent;-><init>(Ljava/lang/String;Ljava/lang/String;DDDZ)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/game/GameControllerEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/game/GameControllerEvent;

    iget-object v1, p0, Lcom/superwall/sdk/game/GameControllerEvent;->eventName:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/game/GameControllerEvent;->eventName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/game/GameControllerEvent;->controllerElement:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/game/GameControllerEvent;->controllerElement:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/superwall/sdk/game/GameControllerEvent;->value:D

    iget-wide v5, p1, Lcom/superwall/sdk/game/GameControllerEvent;->value:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/superwall/sdk/game/GameControllerEvent;->x:D

    iget-wide v5, p1, Lcom/superwall/sdk/game/GameControllerEvent;->x:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/superwall/sdk/game/GameControllerEvent;->y:D

    iget-wide v5, p1, Lcom/superwall/sdk/game/GameControllerEvent;->y:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/superwall/sdk/game/GameControllerEvent;->directional:Z

    iget-boolean p1, p1, Lcom/superwall/sdk/game/GameControllerEvent;->directional:Z

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getControllerElement()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/superwall/sdk/game/GameControllerEvent;->controllerElement:Ljava/lang/String;

    return-object v0
.end method

.method public final getDirectional()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/superwall/sdk/game/GameControllerEvent;->directional:Z

    return v0
.end method

.method public final getEventName()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/superwall/sdk/game/GameControllerEvent;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()D
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/superwall/sdk/game/GameControllerEvent;->value:D

    return-wide v0
.end method

.method public final getX()D
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/superwall/sdk/game/GameControllerEvent;->x:D

    return-wide v0
.end method

.method public final getY()D
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/superwall/sdk/game/GameControllerEvent;->y:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/superwall/sdk/game/GameControllerEvent;->eventName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/game/GameControllerEvent;->controllerElement:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/superwall/sdk/game/GameControllerEvent;->value:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/superwall/sdk/game/GameControllerEvent;->x:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/superwall/sdk/game/GameControllerEvent;->y:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/game/GameControllerEvent;->directional:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setControllerElement(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/superwall/sdk/game/GameControllerEvent;->controllerElement:Ljava/lang/String;

    return-void
.end method

.method public final setDirectional(Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/superwall/sdk/game/GameControllerEvent;->directional:Z

    return-void
.end method

.method public final setEventName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/superwall/sdk/game/GameControllerEvent;->eventName:Ljava/lang/String;

    return-void
.end method

.method public final setValue(D)V
    .locals 0

    .line 12
    iput-wide p1, p0, Lcom/superwall/sdk/game/GameControllerEvent;->value:D

    return-void
.end method

.method public final setX(D)V
    .locals 0

    .line 14
    iput-wide p1, p0, Lcom/superwall/sdk/game/GameControllerEvent;->x:D

    return-void
.end method

.method public final setY(D)V
    .locals 0

    .line 16
    iput-wide p1, p0, Lcom/superwall/sdk/game/GameControllerEvent;->y:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lcom/superwall/sdk/game/GameControllerEvent;->eventName:Ljava/lang/String;

    iget-object v1, p0, Lcom/superwall/sdk/game/GameControllerEvent;->controllerElement:Ljava/lang/String;

    iget-wide v2, p0, Lcom/superwall/sdk/game/GameControllerEvent;->value:D

    iget-wide v4, p0, Lcom/superwall/sdk/game/GameControllerEvent;->x:D

    iget-wide v6, p0, Lcom/superwall/sdk/game/GameControllerEvent;->y:D

    iget-boolean v8, p0, Lcom/superwall/sdk/game/GameControllerEvent;->directional:Z

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "GameControllerEvent(eventName="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", controllerElement="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", directional="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
