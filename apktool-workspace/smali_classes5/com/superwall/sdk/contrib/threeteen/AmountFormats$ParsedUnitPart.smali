.class public final Lcom/superwall/sdk/contrib/threeteen/AmountFormats$ParsedUnitPart;
.super Ljava/lang/Object;
.source "AmountFormats.kt"

# interfaces
.implements Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationScalar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/contrib/threeteen/AmountFormats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParsedUnitPart"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0006\u0010\u0002\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/superwall/sdk/contrib/threeteen/AmountFormats$ParsedUnitPart;",
        "Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationScalar;",
        "remainingText",
        "",
        "scalar",
        "<init>",
        "(Ljava/lang/CharSequence;Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationScalar;)V",
        "applyTo",
        "Lorg/threeten/bp/Duration;",
        "unit",
        "Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;",
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
.field private final remainingText:Ljava/lang/CharSequence;

.field private final scalar:Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationScalar;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationScalar;)V
    .locals 1

    const-string v0, "remainingText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scalar"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 752
    iput-object p1, p0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$ParsedUnitPart;->remainingText:Ljava/lang/CharSequence;

    .line 753
    iput-object p2, p0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$ParsedUnitPart;->scalar:Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationScalar;

    return-void
.end method


# virtual methods
.method public applyTo(Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;)Lorg/threeten/bp/Duration;
    .locals 1

    const-string v0, "unit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 755
    iget-object v0, p0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$ParsedUnitPart;->scalar:Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationScalar;

    invoke-interface {v0, p1}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationScalar;->applyTo(Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;)Lorg/threeten/bp/Duration;

    move-result-object p1

    return-object p1
.end method

.method public final remainingText()Ljava/lang/CharSequence;
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$ParsedUnitPart;->remainingText:Ljava/lang/CharSequence;

    return-object v0
.end method
