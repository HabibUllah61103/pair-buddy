.class public final Lcom/superwall/sdk/storage/Storable$DefaultImpls;
.super Ljava/lang/Object;
.source "CacheKeys.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/storage/Storable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static file(Lcom/superwall/sdk/storage/Storable;Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/superwall/sdk/storage/Storable<",
            "TT;>;",
            "Landroid/content/Context;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-interface {p0}, Lcom/superwall/sdk/storage/Storable;->getDirectory()Lcom/superwall/sdk/storage/SearchPathDirectory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/storage/SearchPathDirectory;->fileDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 78
    :cond_0
    invoke-interface {p0}, Lcom/superwall/sdk/storage/Storable;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/superwall/sdk/storage/CacheKeysKt;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
