.class public final Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;
.super Ljava/lang/Object;
.source "AmountFormats.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/contrib/threeteen/AmountFormats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DurationUnit"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000bJ\u001e\u0010\r\u001a\u0004\u0018\u00010\u00052\u0014\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;",
        "",
        "abbrev",
        "",
        "value",
        "Lorg/threeten/bp/Duration;",
        "<init>",
        "(Ljava/lang/String;Lorg/threeten/bp/Duration;)V",
        "prefixMatchesUnit",
        "",
        "text",
        "",
        "consumeDurationUnit",
        "scaleBy",
        "scaleFunc",
        "Lkotlin/Function1;",
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
.field private final abbrev:Ljava/lang/String;

.field private final value:Lorg/threeten/bp/Duration;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/threeten/bp/Duration;)V
    .locals 1

    const-string v0, "abbrev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 728
    iput-object p1, p0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;->abbrev:Ljava/lang/String;

    .line 729
    iput-object p2, p0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;->value:Lorg/threeten/bp/Duration;

    return-void
.end method


# virtual methods
.method public final consumeDurationUnit(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;->abbrev:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public final prefixMatchesUnit(Ljava/lang/CharSequence;)Z
    .locals 3

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 732
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;->abbrev:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;->abbrev:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v2
.end method

.method public final scaleBy(Lkotlin/jvm/functions/Function1;)Lorg/threeten/bp/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/threeten/bp/Duration;",
            "Lorg/threeten/bp/Duration;",
            ">;)",
            "Lorg/threeten/bp/Duration;"
        }
    .end annotation

    const-string v0, "scaleFunc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;->value:Lorg/threeten/bp/Duration;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/Duration;

    return-object p1
.end method
