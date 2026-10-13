.class public final synthetic Lexpo/modules/ui/ComposableSingletons$ExpoUIModuleKt$lambda$-22859264$1$$ExternalSyntheticLambda0;
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

    iput-object p1, p0, Lexpo/modules/ui/ComposableSingletons$ExpoUIModuleKt$lambda$-22859264$1$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lexpo/modules/ui/ComposableSingletons$ExpoUIModuleKt$lambda$-22859264$1$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lexpo/modules/ui/ComposableSingletons$ExpoUIModuleKt$lambda$-22859264$1;->$r8$lambda$7i7vXOPuAbC7UnGEyz2OS9ZXs4o(Lexpo/modules/kotlin/viewevent/ViewEventDelegate;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
