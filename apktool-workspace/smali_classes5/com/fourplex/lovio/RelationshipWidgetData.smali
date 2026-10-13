.class public final Lcom/fourplex/lovio/RelationshipWidgetData;
.super Ljava/lang/Object;
.source "WidgetSupport.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0013\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0008H\u00c6\u0003J1\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00082\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/fourplex/lovio/RelationshipWidgetData;",
        "",
        "daysTogether",
        "",
        "partnerName",
        "",
        "userName",
        "hasAnniversaryDate",
        "",
        "<init>",
        "(ILjava/lang/String;Ljava/lang/String;Z)V",
        "getDaysTogether",
        "()I",
        "getPartnerName",
        "()Ljava/lang/String;",
        "getUserName",
        "getHasAnniversaryDate",
        "()Z",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final daysTogether:I

.field private final hasAnniversaryDate:Z

.field private final partnerName:Ljava/lang/String;

.field private final userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "partnerName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/fourplex/lovio/RelationshipWidgetData;->daysTogether:I

    .line 36
    iput-object p2, p0, Lcom/fourplex/lovio/RelationshipWidgetData;->partnerName:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/fourplex/lovio/RelationshipWidgetData;->userName:Ljava/lang/String;

    .line 38
    iput-boolean p4, p0, Lcom/fourplex/lovio/RelationshipWidgetData;->hasAnniversaryDate:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/fourplex/lovio/RelationshipWidgetData;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/fourplex/lovio/RelationshipWidgetData;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/fourplex/lovio/RelationshipWidgetData;->daysTogether:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/fourplex/lovio/RelationshipWidgetData;->partnerName:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/fourplex/lovio/RelationshipWidgetData;->userName:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lcom/fourplex/lovio/RelationshipWidgetData;->hasAnniversaryDate:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fourplex/lovio/RelationshipWidgetData;->copy(ILjava/lang/String;Ljava/lang/String;Z)Lcom/fourplex/lovio/RelationshipWidgetData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/fourplex/lovio/RelationshipWidgetData;->daysTogether:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fourplex/lovio/RelationshipWidgetData;->partnerName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fourplex/lovio/RelationshipWidgetData;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fourplex/lovio/RelationshipWidgetData;->hasAnniversaryDate:Z

    return v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;Z)Lcom/fourplex/lovio/RelationshipWidgetData;
    .locals 1

    const-string v0, "partnerName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/fourplex/lovio/RelationshipWidgetData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/fourplex/lovio/RelationshipWidgetData;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/fourplex/lovio/RelationshipWidgetData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/fourplex/lovio/RelationshipWidgetData;

    iget v1, p0, Lcom/fourplex/lovio/RelationshipWidgetData;->daysTogether:I

    iget v3, p1, Lcom/fourplex/lovio/RelationshipWidgetData;->daysTogether:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/fourplex/lovio/RelationshipWidgetData;->partnerName:Ljava/lang/String;

    iget-object v3, p1, Lcom/fourplex/lovio/RelationshipWidgetData;->partnerName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/fourplex/lovio/RelationshipWidgetData;->userName:Ljava/lang/String;

    iget-object v3, p1, Lcom/fourplex/lovio/RelationshipWidgetData;->userName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/fourplex/lovio/RelationshipWidgetData;->hasAnniversaryDate:Z

    iget-boolean p1, p1, Lcom/fourplex/lovio/RelationshipWidgetData;->hasAnniversaryDate:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getDaysTogether()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/fourplex/lovio/RelationshipWidgetData;->daysTogether:I

    return v0
.end method

.method public final getHasAnniversaryDate()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/fourplex/lovio/RelationshipWidgetData;->hasAnniversaryDate:Z

    return v0
.end method

.method public final getPartnerName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/fourplex/lovio/RelationshipWidgetData;->partnerName:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/fourplex/lovio/RelationshipWidgetData;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/fourplex/lovio/RelationshipWidgetData;->daysTogether:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/fourplex/lovio/RelationshipWidgetData;->partnerName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/fourplex/lovio/RelationshipWidgetData;->userName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/fourplex/lovio/RelationshipWidgetData;->hasAnniversaryDate:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/fourplex/lovio/RelationshipWidgetData;->daysTogether:I

    iget-object v1, p0, Lcom/fourplex/lovio/RelationshipWidgetData;->partnerName:Ljava/lang/String;

    iget-object v2, p0, Lcom/fourplex/lovio/RelationshipWidgetData;->userName:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/fourplex/lovio/RelationshipWidgetData;->hasAnniversaryDate:Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "RelationshipWidgetData(daysTogether="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", partnerName="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasAnniversaryDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
