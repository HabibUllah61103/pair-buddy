.class public final Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;
.super Ljava/lang/Object;
.source "PageViewData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u001f\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0016J\t\u0010 \u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010!\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0016Jd\u0010\"\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010#J\u0013\u0010$\u001a\u00020%2\u0008\u0010&\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\'\u001a\u00020\u0005H\u00d6\u0001J\t\u0010(\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000fR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000fR\u0015\u0010\t\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u0017\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u000fR\u0015\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u0017\u001a\u0004\u0008\u0019\u0010\u0016\u00a8\u0006)"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;",
        "",
        "pageNodeId",
        "",
        "flowPosition",
        "",
        "pageName",
        "navigationNodeId",
        "previousPageNodeId",
        "previousFlowPosition",
        "navigationType",
        "timeOnPreviousPageMs",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V",
        "getPageNodeId",
        "()Ljava/lang/String;",
        "getFlowPosition",
        "()I",
        "getPageName",
        "getNavigationNodeId",
        "getPreviousPageNodeId",
        "getPreviousFlowPosition",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getNavigationType",
        "getTimeOnPreviousPageMs",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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


# instance fields
.field private final flowPosition:I

.field private final navigationNodeId:Ljava/lang/String;

.field private final navigationType:Ljava/lang/String;

.field private final pageName:Ljava/lang/String;

.field private final pageNodeId:Ljava/lang/String;

.field private final previousFlowPosition:Ljava/lang/Integer;

.field private final previousPageNodeId:Ljava/lang/String;

.field private final timeOnPreviousPageMs:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "pageNodeId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navigationNodeId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navigationType"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->pageNodeId:Ljava/lang/String;

    .line 5
    iput p2, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->flowPosition:I

    .line 6
    iput-object p3, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->pageName:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->navigationNodeId:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->previousPageNodeId:Ljava/lang/String;

    .line 9
    iput-object p6, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->previousFlowPosition:Ljava/lang/Integer;

    .line 10
    iput-object p7, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->navigationType:Ljava/lang/String;

    .line 11
    iput-object p8, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->timeOnPreviousPageMs:Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;
    .locals 0

    and-int/lit8 p10, p9, 0x1

    if-eqz p10, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->pageNodeId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    iget p2, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->flowPosition:I

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    iget-object p3, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->pageName:Ljava/lang/String;

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    iget-object p4, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->navigationNodeId:Ljava/lang/String;

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    iget-object p5, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->previousPageNodeId:Ljava/lang/String;

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    iget-object p6, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->previousFlowPosition:Ljava/lang/Integer;

    :cond_5
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_6

    iget-object p7, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->navigationType:Ljava/lang/String;

    :cond_6
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_7

    iget-object p8, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->timeOnPreviousPageMs:Ljava/lang/Integer;

    :cond_7
    move-object p9, p7

    move-object p10, p8

    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p10}, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->copy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->pageNodeId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->flowPosition:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->pageName:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->navigationNodeId:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->previousPageNodeId:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->previousFlowPosition:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->navigationType:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->timeOnPreviousPageMs:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;
    .locals 10

    const-string v0, "pageNodeId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navigationNodeId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navigationType"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->pageNodeId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->pageNodeId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->flowPosition:I

    iget v3, p1, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->flowPosition:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->pageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->pageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->navigationNodeId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->navigationNodeId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->previousPageNodeId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->previousPageNodeId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->previousFlowPosition:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->previousFlowPosition:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->navigationType:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->navigationType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->timeOnPreviousPageMs:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->timeOnPreviousPageMs:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getFlowPosition()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->flowPosition:I

    return v0
.end method

.method public final getNavigationNodeId()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->navigationNodeId:Ljava/lang/String;

    return-object v0
.end method

.method public final getNavigationType()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->navigationType:Ljava/lang/String;

    return-object v0
.end method

.method public final getPageName()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->pageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPageNodeId()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->pageNodeId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPreviousFlowPosition()Ljava/lang/Integer;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->previousFlowPosition:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPreviousPageNodeId()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->previousPageNodeId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimeOnPreviousPageMs()Ljava/lang/Integer;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->timeOnPreviousPageMs:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->pageNodeId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->flowPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->pageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->navigationNodeId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->previousPageNodeId:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->previousFlowPosition:Ljava/lang/Integer;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->navigationType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->timeOnPreviousPageMs:Ljava/lang/Integer;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->pageNodeId:Ljava/lang/String;

    iget v1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->flowPosition:I

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->pageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->navigationNodeId:Ljava/lang/String;

    iget-object v4, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->previousPageNodeId:Ljava/lang/String;

    iget-object v5, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->previousFlowPosition:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->navigationType:Ljava/lang/String;

    iget-object v7, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;->timeOnPreviousPageMs:Ljava/lang/Integer;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "PageViewData(pageNodeId="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", flowPosition="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", navigationNodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", previousPageNodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", previousFlowPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", navigationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeOnPreviousPageMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
