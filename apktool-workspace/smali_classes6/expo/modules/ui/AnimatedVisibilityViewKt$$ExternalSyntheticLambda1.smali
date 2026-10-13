.class public final synthetic Lexpo/modules/ui/AnimatedVisibilityViewKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lexpo/modules/ui/ExitTransitionRecord;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/ui/ExitTransitionRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/ui/AnimatedVisibilityViewKt$$ExternalSyntheticLambda1;->f$0:Lexpo/modules/ui/ExitTransitionRecord;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lexpo/modules/ui/AnimatedVisibilityViewKt$$ExternalSyntheticLambda1;->f$0:Lexpo/modules/ui/ExitTransitionRecord;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lexpo/modules/ui/AnimatedVisibilityViewKt;->$r8$lambda$T2y_VcPQEF2QXeQff0A9di7ziEw(Lexpo/modules/ui/ExitTransitionRecord;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
