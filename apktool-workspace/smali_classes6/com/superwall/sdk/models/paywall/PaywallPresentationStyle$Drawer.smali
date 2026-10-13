.class public final Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;
.super Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;
.source "PaywallPresentationStyle.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Drawer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer$$serializer;,
        Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 %2\u00020\u0001:\u0002$%B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B+\u0008\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u0005\u0010\u000bJ\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u0008H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J%\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0001\u00a2\u0006\u0002\u0008#R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0010\u0010\r\u001a\u0004\u0008\u0011\u0010\u000f\u00a8\u0006&"
    }
    d2 = {
        "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;",
        "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;",
        "height",
        "",
        "cornerRadius",
        "<init>",
        "(DD)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(IDDLkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getHeight$annotations",
        "()V",
        "getHeight",
        "()D",
        "getCornerRadius$annotations",
        "getCornerRadius",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
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
    value = "DRAWER"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer$Companion;


# instance fields
.field private final cornerRadius:D

.field private final height:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;->Companion:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer$Companion;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 2

    .line 37
    const-string v0, "DRAWER"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    iput-wide p1, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;->height:D

    .line 35
    iput-wide p3, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;->cornerRadius:D

    return-void
.end method

.method public synthetic constructor <init>(IDDLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x3

    if-eq v1, v0, :cond_0

    .line 30
    sget-object v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer$$serializer;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer$$serializer;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0, p1, p6}, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;-><init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V

    iput-wide p2, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;->height:D

    iput-wide p4, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;->cornerRadius:D

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;DDILjava/lang/Object;)Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;->height:D

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    iget-wide p3, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;->cornerRadius:D

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;->copy(DD)Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getCornerRadius$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "corner_radius"
    .end annotation

    return-void
.end method

.method public static synthetic getHeight$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "height"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 30
    move-object v0, p0

    check-cast v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    invoke-static {v0, p1, p2}, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;->write$Self(Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;->height:D

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeDoubleElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;->cornerRadius:D

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeDoubleElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    return-void
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;->height:D

    return-wide v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;->cornerRadius:D

    return-wide v0
.end method

.method public final copy(DD)Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;
    .locals 1

    new-instance v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;-><init>(DD)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;

    iget-wide v3, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;->height:D

    iget-wide v5, p1, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;->height:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;->cornerRadius:D

    iget-wide v5, p1, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;->cornerRadius:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCornerRadius()D
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;->cornerRadius:D

    return-wide v0
.end method

.method public final getHeight()D
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;->height:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;->height:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;->cornerRadius:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;->height:D

    iget-wide v2, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;->cornerRadius:D

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Drawer(height="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cornerRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
