.class public final Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;
.super Ljava/lang/Object;
.source "ExpoLogBoxWebViewWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnReload"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0006H\u00c6\u0003J#\u0010\u000f\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0006H\u00d6\u0001R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0016"
    }
    d2 = {
        "Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;",
        "",
        "action",
        "Lkotlin/Function0;",
        "",
        "name",
        "",
        "<init>",
        "(Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V",
        "getAction",
        "()Lkotlin/jvm/functions/Function0;",
        "getName",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final action:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;->action:Lkotlin/jvm/functions/Function0;

    .line 210
    iput-object p2, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;->name:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 210
    const-string p2, "onReload"

    .line 208
    :cond_0
    invoke-direct {p0, p1, p2}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;-><init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ILjava/lang/Object;)Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;->action:Lkotlin/jvm/functions/Function0;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;->name:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;->copy(Lkotlin/jvm/functions/Function0;Ljava/lang/String;)Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;->action:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lkotlin/jvm/functions/Function0;Ljava/lang/String;)Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;

    invoke-direct {v0, p1, p2}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;-><init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;

    iget-object v1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;->action:Lkotlin/jvm/functions/Function0;

    iget-object v3, p1, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;->action:Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;->name:Ljava/lang/String;

    iget-object p1, p1, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;->name:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAction()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;->action:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;->action:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;->action:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnReload(action="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
