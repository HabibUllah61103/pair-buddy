.class public final synthetic Lcom/superwall/sdk/network/Network$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/network/Network$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/superwall/sdk/network/Network$$ExternalSyntheticLambda3;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/network/Network$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/superwall/sdk/network/Network$$ExternalSyntheticLambda3;->f$1:Ljava/util/Map;

    check-cast p1, Lcom/superwall/sdk/network/NetworkError;

    invoke-static {v0, v1, p1}, Lcom/superwall/sdk/network/Network;->$r8$lambda$vaZO2j-iqpgElTJSuoxl2CsOTDE(Ljava/lang/String;Ljava/util/Map;Lcom/superwall/sdk/network/NetworkError;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
