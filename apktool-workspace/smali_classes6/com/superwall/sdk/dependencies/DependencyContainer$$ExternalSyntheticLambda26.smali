.class public final synthetic Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lcom/superwall/sdk/models/customer/CustomerInfo;

    invoke-static {p1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->$r8$lambda$vdPIR0ZuRTDZEkR1AOC5ltN-cRI(Lcom/superwall/sdk/models/customer/CustomerInfo;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
