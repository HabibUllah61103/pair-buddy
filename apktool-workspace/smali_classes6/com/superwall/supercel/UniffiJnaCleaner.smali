.class final Lcom/superwall/supercel/UniffiJnaCleaner;
.super Ljava/lang/Object;
.source "CEL.kt"

# interfaces
.implements Lcom/superwall/supercel/UniffiCleaner;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/superwall/supercel/UniffiJnaCleaner;",
        "Lcom/superwall/supercel/UniffiCleaner;",
        "()V",
        "cleaner",
        "Lcom/sun/jna/internal/Cleaner;",
        "kotlin.jvm.PlatformType",
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
.field private final cleaner:Lcom/sun/jna/internal/Cleaner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1159
    invoke-static {}, Lcom/sun/jna/internal/Cleaner;->getCleaner()Lcom/sun/jna/internal/Cleaner;

    move-result-object v0

    iput-object v0, p0, Lcom/superwall/supercel/UniffiJnaCleaner;->cleaner:Lcom/sun/jna/internal/Cleaner;

    return-void
.end method


# virtual methods
.method public register(Ljava/lang/Object;Ljava/lang/Runnable;)Lcom/superwall/supercel/UniffiCleaner$Cleanable;
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cleanUpTask"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1162
    new-instance v0, Lcom/superwall/supercel/UniffiJnaCleanable;

    iget-object v1, p0, Lcom/superwall/supercel/UniffiJnaCleaner;->cleaner:Lcom/sun/jna/internal/Cleaner;

    invoke-virtual {v1, p1, p2}, Lcom/sun/jna/internal/Cleaner;->register(Ljava/lang/Object;Ljava/lang/Runnable;)Lcom/sun/jna/internal/Cleaner$Cleanable;

    move-result-object p1

    const-string p2, "register(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/superwall/supercel/UniffiJnaCleanable;-><init>(Lcom/sun/jna/internal/Cleaner$Cleanable;)V

    check-cast v0, Lcom/superwall/supercel/UniffiCleaner$Cleanable;

    return-object v0
.end method
