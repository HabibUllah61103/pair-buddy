.class public final Lcom/superwall/sdk/contrib/threeteen/AmountFormats$FractionScalarPart;
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
    name = "FractionScalarPart"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/superwall/sdk/contrib/threeteen/AmountFormats$FractionScalarPart;",
        "Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationScalar;",
        "value",
        "",
        "scale",
        "<init>",
        "(JJ)V",
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
.field private final scale:J

.field private final value:J


# direct methods
.method public static synthetic $r8$lambda$athuPPxaaZIMxv0xRSjmg8u4Fcw(Lcom/superwall/sdk/contrib/threeteen/AmountFormats$FractionScalarPart;Lorg/threeten/bp/Duration;)Lorg/threeten/bp/Duration;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$FractionScalarPart;->applyTo$lambda$0(Lcom/superwall/sdk/contrib/threeteen/AmountFormats$FractionScalarPart;Lorg/threeten/bp/Duration;)Lorg/threeten/bp/Duration;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 775
    iput-wide p1, p0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$FractionScalarPart;->value:J

    .line 776
    iput-wide p3, p0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$FractionScalarPart;->scale:J

    return-void
.end method

.method private static final applyTo$lambda$0(Lcom/superwall/sdk/contrib/threeteen/AmountFormats$FractionScalarPart;Lorg/threeten/bp/Duration;)Lorg/threeten/bp/Duration;
    .locals 2

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 785
    iget-wide v0, p0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$FractionScalarPart;->value:J

    .line 784
    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/Duration;->multipliedBy(J)Lorg/threeten/bp/Duration;

    move-result-object p1

    .line 786
    iget-wide v0, p0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$FractionScalarPart;->scale:J

    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/Duration;->dividedBy(J)Lorg/threeten/bp/Duration;

    move-result-object p0

    .line 783
    const-string p1, "null cannot be cast to non-null type org.threeten.bp.Duration"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public applyTo(Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;)Lorg/threeten/bp/Duration;
    .locals 4

    const-string v0, "unit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 779
    iget-wide v0, p0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$FractionScalarPart;->value:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 780
    sget-object p1, Lorg/threeten/bp/Duration;->ZERO:Lorg/threeten/bp/Duration;

    .line 779
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1

    .line 782
    :cond_0
    new-instance v0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$FractionScalarPart$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$FractionScalarPart$$ExternalSyntheticLambda0;-><init>(Lcom/superwall/sdk/contrib/threeteen/AmountFormats$FractionScalarPart;)V

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;->scaleBy(Lkotlin/jvm/functions/Function1;)Lorg/threeten/bp/Duration;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method
