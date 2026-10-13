.class public final Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode;
.super Lcom/superwall/sdk/models/internal/RedemptionResult;
.source "WebRedemption.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/models/internal/RedemptionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InvalidCode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode$$serializer;,
        Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 !2\u00020\u0001:\u0002 !B\u0013\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B%\u0008\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u0005\u0010\u000bJ\r\u0010\u0010\u001a\u00060\u0003j\u0002`\u0004H\u00c6\u0003J\u0017\u0010\u0011\u001a\u00020\u00002\u000c\u0008\u0002\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0008H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0003H\u00d6\u0001J%\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0001\u00a2\u0006\u0002\u0008\u001fR \u0010\u0002\u001a\u00060\u0003j\u0002`\u00048\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\""
    }
    d2 = {
        "Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode;",
        "Lcom/superwall/sdk/models/internal/RedemptionResult;",
        "code",
        "",
        "Lcom/superwall/sdk/models/internal/RedemptionCode;",
        "<init>",
        "(Ljava/lang/String;)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getCode$annotations",
        "()V",
        "getCode",
        "()Ljava/lang/String;",
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
    value = "INVALID_CODE"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode$Companion;


# instance fields
.field private final code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode;->Companion:Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    .line 110
    sget-object v0, Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode$$serializer;->INSTANCE:Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode$$serializer;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/superwall/sdk/models/internal/RedemptionResult;-><init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V

    iput-object p2, p0, Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode;->code:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, v0}, Lcom/superwall/sdk/models/internal/RedemptionResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 113
    iput-object p1, p0, Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode;->code:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode;Ljava/lang/String;ILjava/lang/Object;)Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode;->code:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode;->copy(Ljava/lang/String;)Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getCode$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "code"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 110
    move-object v0, p0

    check-cast v0, Lcom/superwall/sdk/models/internal/RedemptionResult;

    invoke-static {v0, p1, p2}, Lcom/superwall/sdk/models/internal/RedemptionResult;->write$Self(Lcom/superwall/sdk/models/internal/RedemptionResult;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode;->getCode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;)Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode;
    .locals 1

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode;

    iget-object v1, p0, Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode;->code:Ljava/lang/String;

    iget-object p1, p1, Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode;->code:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode;->code:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode;->code:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode;->code:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InvalidCode(code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
