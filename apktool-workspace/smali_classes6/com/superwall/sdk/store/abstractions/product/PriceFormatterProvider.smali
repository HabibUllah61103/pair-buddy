.class public final Lcom/superwall/sdk/store/abstractions/product/PriceFormatterProvider;
.super Ljava/lang/Object;
.source "PriceFormatterProvider.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPriceFormatterProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PriceFormatterProvider.kt\ncom/superwall/sdk/store/abstractions/product/PriceFormatterProvider\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,41:1\n1#2:42\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0007\u001a\u00020\u0008H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/superwall/sdk/store/abstractions/product/PriceFormatterProvider;",
        "",
        "<init>",
        "()V",
        "cachedPriceFormatter",
        "Ljava/text/NumberFormat;",
        "priceFormatter",
        "currencyCode",
        "",
        "makePriceFormatter",
        "currency",
        "Ljava/util/Currency;",
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
.field private cachedPriceFormatter:Ljava/text/NumberFormat;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final currency(Ljava/lang/String;)Ljava/util/Currency;
    .locals 0

    .line 25
    :try_start_0
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final makePriceFormatter(Ljava/lang/String;)Ljava/text/NumberFormat;
    .locals 1

    .line 19
    invoke-static {}, Ljava/text/DecimalFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 20
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, p1}, Lcom/superwall/sdk/store/abstractions/product/PriceFormatterProviderKt;->setCurrencyCode(Ljava/text/NumberFormat;Ljava/lang/String;)V

    .line 19
    const-string p1, "also(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final priceFormatter(Ljava/lang/String;)Ljava/text/NumberFormat;
    .locals 3

    const-string v0, "currencyCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1}, Lcom/superwall/sdk/store/abstractions/product/PriceFormatterProvider;->currency(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/product/PriceFormatterProvider;->cachedPriceFormatter:Ljava/text/NumberFormat;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/text/NumberFormat;->getCurrency()Ljava/util/Currency;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    return-object v1

    .line 13
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/superwall/sdk/store/abstractions/product/PriceFormatterProvider;->makePriceFormatter(Ljava/lang/String;)Ljava/text/NumberFormat;

    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/PriceFormatterProvider;->cachedPriceFormatter:Ljava/text/NumberFormat;

    return-object p1
.end method
