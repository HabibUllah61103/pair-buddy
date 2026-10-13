.class public final Lcom/superwall/sdk/models/transactions/SavedTransaction;
.super Ljava/lang/Object;
.source "SavedTransaction.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/transactions/SavedTransaction$$serializer;,
        Lcom/superwall/sdk/models/transactions/SavedTransaction$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 $2\u00020\u0001:\u0002#$B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nB=\u0008\u0010\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\t\u0010\u000fJ%\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0001\u00a2\u0006\u0002\u0008\"R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0014\u0010\u0011\u001a\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0017\u0010\u0011\u001a\u0004\u0008\u0018\u0010\u0019R\u001c\u0010\u0008\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001a\u0010\u0011\u001a\u0004\u0008\u0008\u0010\u0019\u00a8\u0006%"
    }
    d2 = {
        "Lcom/superwall/sdk/models/transactions/SavedTransaction;",
        "",
        "id",
        "",
        "date",
        "",
        "hasExternalPurchaseController",
        "",
        "isExternal",
        "<init>",
        "(Ljava/lang/String;JZZ)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;JZZLkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getId$annotations",
        "()V",
        "getId",
        "()Ljava/lang/String;",
        "getDate$annotations",
        "getDate",
        "()J",
        "getHasExternalPurchaseController$annotations",
        "getHasExternalPurchaseController",
        "()Z",
        "isExternal$annotations",
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
.field public static final Companion:Lcom/superwall/sdk/models/transactions/SavedTransaction$Companion;


# instance fields
.field private final date:J

.field private final hasExternalPurchaseController:Z

.field private final id:Ljava/lang/String;

.field private final isExternal:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/models/transactions/SavedTransaction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/transactions/SavedTransaction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/transactions/SavedTransaction;->Companion:Lcom/superwall/sdk/models/transactions/SavedTransaction$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;JZZLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p1, 0xf

    const/16 v0, 0xf

    if-eq v0, p7, :cond_0

    .line 13
    sget-object p7, Lcom/superwall/sdk/models/transactions/SavedTransaction$$serializer;->INSTANCE:Lcom/superwall/sdk/models/transactions/SavedTransaction$$serializer;

    invoke-virtual {p7}, Lcom/superwall/sdk/models/transactions/SavedTransaction$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p7

    invoke-static {p1, v0, p7}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/superwall/sdk/models/transactions/SavedTransaction;->id:Ljava/lang/String;

    iput-wide p3, p0, Lcom/superwall/sdk/models/transactions/SavedTransaction;->date:J

    iput-boolean p5, p0, Lcom/superwall/sdk/models/transactions/SavedTransaction;->hasExternalPurchaseController:Z

    iput-boolean p6, p0, Lcom/superwall/sdk/models/transactions/SavedTransaction;->isExternal:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZZ)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/superwall/sdk/models/transactions/SavedTransaction;->id:Ljava/lang/String;

    .line 17
    iput-wide p2, p0, Lcom/superwall/sdk/models/transactions/SavedTransaction;->date:J

    .line 19
    iput-boolean p4, p0, Lcom/superwall/sdk/models/transactions/SavedTransaction;->hasExternalPurchaseController:Z

    .line 21
    iput-boolean p5, p0, Lcom/superwall/sdk/models/transactions/SavedTransaction;->isExternal:Z

    return-void
.end method

.method public static synthetic getDate$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "date"
    .end annotation

    return-void
.end method

.method public static synthetic getHasExternalPurchaseController$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "hasExternalPurchaseController"
    .end annotation

    return-void
.end method

.method public static synthetic getId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "id"
    .end annotation

    return-void
.end method

.method public static synthetic isExternal$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "isExternal"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/models/transactions/SavedTransaction;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    .line 13
    iget-object v1, p0, Lcom/superwall/sdk/models/transactions/SavedTransaction;->id:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/superwall/sdk/models/transactions/SavedTransaction;->date:J

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/superwall/sdk/models/transactions/SavedTransaction;->hasExternalPurchaseController:Z

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/4 v0, 0x3

    iget-boolean p0, p0, Lcom/superwall/sdk/models/transactions/SavedTransaction;->isExternal:Z

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    return-void
.end method


# virtual methods
.method public final getDate()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/superwall/sdk/models/transactions/SavedTransaction;->date:J

    return-wide v0
.end method

.method public final getHasExternalPurchaseController()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/superwall/sdk/models/transactions/SavedTransaction;->hasExternalPurchaseController:Z

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/superwall/sdk/models/transactions/SavedTransaction;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final isExternal()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/superwall/sdk/models/transactions/SavedTransaction;->isExternal:Z

    return v0
.end method
