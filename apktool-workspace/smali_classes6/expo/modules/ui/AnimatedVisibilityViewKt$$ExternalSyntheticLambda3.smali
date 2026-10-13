.class public final synthetic Lexpo/modules/ui/AnimatedVisibilityViewKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lexpo/modules/ui/EnterTransitionRecord;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/ui/EnterTransitionRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/ui/AnimatedVisibilityViewKt$$ExternalSyntheticLambda3;->f$0:Lexpo/modules/ui/EnterTransitionRecord;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lexpo/modules/ui/AnimatedVisibilityViewKt$$ExternalSyntheticLambda3;->f$0:Lexpo/modules/ui/EnterTransitionRecord;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lexpo/modules/ui/AnimatedVisibilityViewKt;->$r8$lambda$UhIhoiZOXTG6pMnyisXgpSVt1og(Lexpo/modules/ui/EnterTransitionRecord;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
