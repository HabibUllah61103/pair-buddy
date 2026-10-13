.class public final synthetic Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate$$ExternalSyntheticLambda2;->f$0:Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate$$ExternalSyntheticLambda2;->f$0:Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;

    check-cast p1, Lexpo/modules/core/interfaces/ReactNativeHostHandler;

    invoke-static {v0, p1}, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->$r8$lambda$VOcUKW-liGkbyPAmdIksPLz2_Ew(Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;Lexpo/modules/core/interfaces/ReactNativeHostHandler;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
