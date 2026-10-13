.class final Lcom/superwall/supercel/JavaLangRefCleaner;
.super Ljava/lang/Object;
.source "CEL.kt"

# interfaces
.implements Lcom/superwall/supercel/UniffiCleaner;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016R\u0019\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/superwall/supercel/JavaLangRefCleaner;",
        "Lcom/superwall/supercel/UniffiCleaner;",
        "()V",
        "cleaner",
        "Ljava/lang/ref/Cleaner;",
        "kotlin.jvm.PlatformType",
        "getCleaner",
        "()Ljava/lang/ref/Cleaner;",
        "register",
        "Lcom/superwall/supercel/UniffiCleaner$Cleanable;",
        "value",
        "",
        "cleanUpTask",
        "Ljava/lang/Runnable;",
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
.field private final cleaner:Ljava/lang/ref/Cleaner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1190
    invoke-static {}, Ljava/lang/ref/Cleaner;->create()Ljava/lang/ref/Cleaner;

    move-result-object v0

    iput-object v0, p0, Lcom/superwall/supercel/JavaLangRefCleaner;->cleaner:Ljava/lang/ref/Cleaner;

    return-void
.end method


# virtual methods
.method public final getCleaner()Ljava/lang/ref/Cleaner;
    .locals 1

    .line 1190
    iget-object v0, p0, Lcom/superwall/supercel/JavaLangRefCleaner;->cleaner:Ljava/lang/ref/Cleaner;

    return-object v0
.end method

.method public register(Ljava/lang/Object;Ljava/lang/Runnable;)Lcom/superwall/supercel/UniffiCleaner$Cleanable;
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cleanUpTask"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1193
    new-instance v0, Lcom/superwall/supercel/JavaLangRefCleanable;

    iget-object v1, p0, Lcom/superwall/supercel/JavaLangRefCleaner;->cleaner:Ljava/lang/ref/Cleaner;

    invoke-virtual {v1, p1, p2}, Ljava/lang/ref/Cleaner;->register(Ljava/lang/Object;Ljava/lang/Runnable;)Ljava/lang/ref/Cleaner$Cleanable;

    move-result-object p1

    const-string p2, "register(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/superwall/supercel/JavaLangRefCleanable;-><init>(Ljava/lang/ref/Cleaner$Cleanable;)V

    check-cast v0, Lcom/superwall/supercel/UniffiCleaner$Cleanable;

    return-object v0
.end method
