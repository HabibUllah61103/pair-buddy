.class public final synthetic Lexpo/modules/location/LocationModule$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lexpo/modules/location/LocationModule;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/location/LocationModule;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/location/LocationModule$$ExternalSyntheticLambda1;->f$0:Lexpo/modules/location/LocationModule;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lexpo/modules/location/LocationModule$$ExternalSyntheticLambda1;->f$0:Lexpo/modules/location/LocationModule;

    check-cast p1, Lcom/google/android/gms/location/LocationSettingsResponse;

    invoke-static {v0, p1}, Lexpo/modules/location/LocationModule;->$r8$lambda$6dUoFfGuJH9USiV96hWZ97WTDO0(Lexpo/modules/location/LocationModule;Lcom/google/android/gms/location/LocationSettingsResponse;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
