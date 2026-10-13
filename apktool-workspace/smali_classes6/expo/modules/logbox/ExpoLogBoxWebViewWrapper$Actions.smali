.class public final Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;
.super Ljava/lang/Object;
.source "ExpoLogBoxWebViewWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Actions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$FetchTextAsync;,
        Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0002\u0019\u001aB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0011\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r\u00a2\u0006\u0002\u0010\u000fJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u000eH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001b"
    }
    d2 = {
        "Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;",
        "",
        "onReload",
        "Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;",
        "fetchTextAsync",
        "Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$FetchTextAsync;",
        "<init>",
        "(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$FetchTextAsync;)V",
        "getOnReload",
        "()Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;",
        "getFetchTextAsync",
        "()Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$FetchTextAsync;",
        "getNames",
        "",
        "",
        "()[Ljava/lang/String;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "OnReload",
        "FetchTextAsync",
        "expo-log-box_release"
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
.field private final fetchTextAsync:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$FetchTextAsync;

.field private final onReload:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;


# direct methods
.method public constructor <init>(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$FetchTextAsync;)V
    .locals 1

    const-string v0, "onReload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetchTextAsync"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;->onReload:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;

    .line 199
    iput-object p2, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;->fetchTextAsync:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$FetchTextAsync;

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$FetchTextAsync;ILjava/lang/Object;)Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;->onReload:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;->fetchTextAsync:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$FetchTextAsync;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;->copy(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$FetchTextAsync;)Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;
    .locals 1

    iget-object v0, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;->onReload:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;

    return-object v0
.end method

.method public final component2()Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$FetchTextAsync;
    .locals 1

    iget-object v0, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;->fetchTextAsync:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$FetchTextAsync;

    return-object v0
.end method

.method public final copy(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$FetchTextAsync;)Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;
    .locals 1

    const-string v0, "onReload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetchTextAsync"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;

    invoke-direct {v0, p1, p2}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;-><init>(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$FetchTextAsync;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;

    iget-object v1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;->onReload:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;

    iget-object v3, p1, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;->onReload:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;->fetchTextAsync:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$FetchTextAsync;

    iget-object p1, p1, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;->fetchTextAsync:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$FetchTextAsync;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getFetchTextAsync()Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$FetchTextAsync;
    .locals 1

    .line 199
    iget-object v0, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;->fetchTextAsync:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$FetchTextAsync;

    return-object v0
.end method

.method public final getNames()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 203
    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;->onReload:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;

    invoke-virtual {v1}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 204
    iget-object v1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;->fetchTextAsync:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$FetchTextAsync;

    invoke-virtual {v1}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$FetchTextAsync;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public final getOnReload()Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;
    .locals 1

    .line 198
    iget-object v0, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;->onReload:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;->onReload:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;

    invoke-virtual {v0}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;->fetchTextAsync:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$FetchTextAsync;

    invoke-virtual {v1}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$FetchTextAsync;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;->onReload:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;

    iget-object v1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;->fetchTextAsync:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$FetchTextAsync;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Actions(onReload="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", fetchTextAsync="

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
