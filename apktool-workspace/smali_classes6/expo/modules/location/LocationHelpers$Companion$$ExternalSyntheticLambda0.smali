.class public final synthetic Lexpo/modules/location/LocationHelpers$Companion$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lexpo/modules/kotlin/Promise;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/kotlin/Promise;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/location/LocationHelpers$Companion$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/kotlin/Promise;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lexpo/modules/location/LocationHelpers$Companion$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/kotlin/Promise;

    check-cast p1, Landroid/location/Location;

    invoke-static {v0, p1}, Lexpo/modules/location/LocationHelpers$Companion;->$r8$lambda$ydKYt8U7d0YH_7c1_nEEOuaMi6o(Lexpo/modules/kotlin/Promise;Landroid/location/Location;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
