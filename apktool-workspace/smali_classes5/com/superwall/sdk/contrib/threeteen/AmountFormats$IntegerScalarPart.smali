.class public final Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntegerScalarPart;
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
    name = "IntegerScalarPart"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntegerScalarPart;",
        "Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationScalar;",
        "value",
        "",
        "<init>",
        "(J)V",
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
.field private final value:J


# direct methods
.method public static synthetic $r8$lambda$FMhf3fcCCXsuBY8RzSgZt8QjsNs(Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntegerScalarPart;Lorg/threeten/bp/Duration;)Lorg/threeten/bp/Duration;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntegerScalarPart;->applyTo$lambda$0(Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntegerScalarPart;Lorg/threeten/bp/Duration;)Lorg/threeten/bp/Duration;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 762
    iput-wide p1, p0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntegerScalarPart;->value:J

    return-void
.end method

.method private static final applyTo$lambda$0(Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntegerScalarPart;Lorg/threeten/bp/Duration;)Lorg/threeten/bp/Duration;
    .locals 2

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 767
    iget-wide v0, p0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntegerScalarPart;->value:J

    .line 766
    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/Duration;->multipliedBy(J)Lorg/threeten/bp/Duration;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public applyTo(Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;)Lorg/threeten/bp/Duration;
    .locals 1

    const-string v0, "unit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 765
    new-instance v0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntegerScalarPart$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntegerScalarPart$$ExternalSyntheticLambda0;-><init>(Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntegerScalarPart;)V

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;->scaleBy(Lkotlin/jvm/functions/Function1;)Lorg/threeten/bp/Duration;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type org.threeten.bp.Duration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
