.class public final Lcom/superwall/sdk/contrib/threeteen/AmountFormats$WordBased;
.super Ljava/lang/Object;
.source "AmountFormats.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/contrib/threeteen/AmountFormats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WordBased"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0015\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B%\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\rR\u0016\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/superwall/sdk/contrib/threeteen/AmountFormats$WordBased;",
        "",
        "units",
        "",
        "Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;",
        "separator",
        "",
        "lastSeparator",
        "<init>",
        "([Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;Ljava/lang/String;Ljava/lang/String;)V",
        "[Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;",
        "format",
        "values",
        "",
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
.field private final lastSeparator:Ljava/lang/String;

.field private final separator:Ljava/lang/String;

.field private final units:[Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;


# direct methods
.method public constructor <init>([Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "units"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "separator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastSeparator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iput-object p1, p0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$WordBased;->units:[Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;

    .line 619
    iput-object p2, p0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$WordBased;->separator:Ljava/lang/String;

    .line 620
    iput-object p3, p0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$WordBased;->lastSeparator:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final format([I)Ljava/lang/String;
    .locals 7

    const-string v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 625
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    .line 626
    aget v5, p1, v3

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 631
    :cond_1
    array-length v1, p1

    move v3, v2

    :goto_1
    if-ge v2, v1, :cond_6

    .line 632
    aget v5, p1, v2

    if-nez v5, :cond_2

    if-nez v3, :cond_5

    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    if-ne v2, v6, :cond_5

    .line 633
    :cond_2
    iget-object v6, p0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$WordBased;->units:[Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;

    aget-object v6, v6, v2

    invoke-interface {v6, v5, v0}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;->formatTo(ILjava/lang/StringBuilder;)V

    add-int/lit8 v5, v4, -0x2

    if-ge v3, v5, :cond_3

    .line 635
    iget-object v5, p0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$WordBased;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    if-ne v3, v5, :cond_4

    .line 637
    iget-object v5, p0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$WordBased;->lastSeparator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 642
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
