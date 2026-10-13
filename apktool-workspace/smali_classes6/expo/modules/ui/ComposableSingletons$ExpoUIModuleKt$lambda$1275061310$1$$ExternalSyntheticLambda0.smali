.class public final synthetic Lexpo/modules/ui/ComposableSingletons$ExpoUIModuleKt$lambda$1275061310$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/kotlin/viewevent/ViewEventDelegate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/ui/ComposableSingletons$ExpoUIModuleKt$lambda$1275061310$1$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lexpo/modules/ui/ComposableSingletons$ExpoUIModuleKt$lambda$1275061310$1$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    check-cast p1, Lexpo/modules/ui/button/ButtonPressedEvent;

    invoke-static {v0, p1}, Lexpo/modules/ui/ComposableSingletons$ExpoUIModuleKt$lambda$1275061310$1;->$r8$lambda$f3X744fvJnqyogd4WnE1xAntNn8(Lexpo/modules/kotlin/viewevent/ViewEventDelegate;Lexpo/modules/ui/button/ButtonPressedEvent;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
