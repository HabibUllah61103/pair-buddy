.class final Lcom/superwall/supercel/JavaLangRefCleanable;
.super Ljava/lang/Object;
.source "CEL.kt"

# interfaces
.implements Lcom/superwall/supercel/UniffiCleaner$Cleanable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/superwall/supercel/JavaLangRefCleanable;",
        "Lcom/superwall/supercel/UniffiCleaner$Cleanable;",
        "cleanable",
        "Ljava/lang/ref/Cleaner$Cleanable;",
        "(Ljava/lang/ref/Cleaner$Cleanable;)V",
        "getCleanable",
        "()Ljava/lang/ref/Cleaner$Cleanable;",
        "clean",
        "",
        "supercel_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final cleanable:Ljava/lang/ref/Cleaner$Cleanable;


# direct methods
.method public constructor <init>(Ljava/lang/ref/Cleaner$Cleanable;)V
    .locals 1

    const-string v0, "cleanable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1197
    iput-object p1, p0, Lcom/superwall/supercel/JavaLangRefCleanable;->cleanable:Ljava/lang/ref/Cleaner$Cleanable;

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    .line 1199
    iget-object v0, p0, Lcom/superwall/supercel/JavaLangRefCleanable;->cleanable:Ljava/lang/ref/Cleaner$Cleanable;

    invoke-interface {v0}, Ljava/lang/ref/Cleaner$Cleanable;->clean()V

    return-void
.end method

.method public final getCleanable()Ljava/lang/ref/Cleaner$Cleanable;
    .locals 1

    .line 1197
    iget-object v0, p0, Lcom/superwall/supercel/JavaLangRefCleanable;->cleanable:Ljava/lang/ref/Cleaner$Cleanable;

    return-object v0
.end method
