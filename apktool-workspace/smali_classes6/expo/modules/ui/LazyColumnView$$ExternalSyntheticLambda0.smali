.class public final synthetic Lexpo/modules/ui/LazyColumnView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lexpo/modules/ui/LazyColumnView;

.field public final synthetic f$1:Lexpo/modules/kotlin/views/ComposableScope;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/ui/LazyColumnView;Lexpo/modules/kotlin/views/ComposableScope;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/ui/LazyColumnView$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/ui/LazyColumnView;

    iput-object p2, p0, Lexpo/modules/ui/LazyColumnView$$ExternalSyntheticLambda0;->f$1:Lexpo/modules/kotlin/views/ComposableScope;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lexpo/modules/ui/LazyColumnView$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/ui/LazyColumnView;

    iget-object v1, p0, Lexpo/modules/ui/LazyColumnView$$ExternalSyntheticLambda0;->f$1:Lexpo/modules/kotlin/views/ComposableScope;

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-static {v0, v1, p1}, Lexpo/modules/ui/LazyColumnView;->$r8$lambda$1MobIvq6FIsfsenmnlIL9ZdcOEw(Lexpo/modules/ui/LazyColumnView;Lexpo/modules/kotlin/views/ComposableScope;Landroidx/compose/foundation/lazy/LazyListScope;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
