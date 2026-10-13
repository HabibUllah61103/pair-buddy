.class public final Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;
.super Ljava/lang/Object;
.source "Variables.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables$$serializer;,
        Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 $2\u00020\u0001:\u0002#$B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B/\u0008\u0010\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u0006\u0010\u000cJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\tH\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u0003H\u00d6\u0001J%\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0001\u00a2\u0006\u0002\u0008\"R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006%"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;",
        "",
        "eventName",
        "",
        "variables",
        "Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables;",
        "<init>",
        "(Ljava/lang/String;Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables;)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getEventName$annotations",
        "()V",
        "getEventName",
        "()Ljava/lang/String;",
        "getVariables",
        "()Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables;",
        "component1",
        "component2",
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
.field public static final Companion:Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables$Companion;


# instance fields
.field private final eventName:Ljava/lang/String;

.field private final variables:Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;->Companion:Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 71
    sget-object p4, Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables$$serializer;->INSTANCE:Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables$$serializer;

    invoke-virtual {p4}, Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;->eventName:Ljava/lang/String;

    iput-object p3, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;->variables:Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables;)V
    .locals 1

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "variables"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;->eventName:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;->variables:Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables;

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;Ljava/lang/String;Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables;ILjava/lang/Object;)Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;->eventName:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;->variables:Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;->copy(Ljava/lang/String;Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables;)Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getEventName$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "event_name"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    .line 71
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;->eventName:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    sget-object v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables$$serializer;->INSTANCE:Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables$$serializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;->variables:Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables;

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;->variables:Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables;)Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;
    .locals 1

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "variables"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;

    invoke-direct {v0, p1, p2}, Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;-><init>(Ljava/lang/String;Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;->eventName:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;->eventName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;->variables:Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables;

    iget-object p1, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;->variables:Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getEventName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public final getVariables()Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;->variables:Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;->eventName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;->variables:Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;->eventName:Ljava/lang/String;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;->variables:Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JsonVariables(eventName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", variables="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
