.class public final synthetic Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntegerScalarPart$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntegerScalarPart;


# direct methods
.method public synthetic constructor <init>(Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntegerScalarPart;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntegerScalarPart$$ExternalSyntheticLambda0;->f$0:Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntegerScalarPart;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntegerScalarPart$$ExternalSyntheticLambda0;->f$0:Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntegerScalarPart;

    check-cast p1, Lorg/threeten/bp/Duration;

    invoke-static {v0, p1}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntegerScalarPart;->$r8$lambda$FMhf3fcCCXsuBY8RzSgZt8QjsNs(Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntegerScalarPart;Lorg/threeten/bp/Duration;)Lorg/threeten/bp/Duration;

    move-result-object p1

    return-object p1
.end method
