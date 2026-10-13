.class public final Lexpo/modules/ui/RNHostView$applySizeFromYogaNodeModifier$lambda$12$lambda$11$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "Effects.kt"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/ui/RNHostView;->applySizeFromYogaNodeModifier(Landroid/view/View;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEffects.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope$onDispose$1\n+ 2 RNHostView.kt\nexpo/modules/ui/RNHostView\n*L\n1#1,603:1\n125#2:604\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "androidx/compose/runtime/DisposableEffectScope$onDispose$1",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        "dispose",
        "",
        "runtime"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $childView$inlined:Landroid/view/View;

.field final synthetic $listener$inlined:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/ui/RNHostView$applySizeFromYogaNodeModifier$lambda$12$lambda$11$$inlined$onDispose$1;->$childView$inlined:Landroid/view/View;

    iput-object p2, p0, Lexpo/modules/ui/RNHostView$applySizeFromYogaNodeModifier$lambda$12$lambda$11$$inlined$onDispose$1;->$listener$inlined:Landroid/view/View$OnLayoutChangeListener;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 604
    iget-object v0, p0, Lexpo/modules/ui/RNHostView$applySizeFromYogaNodeModifier$lambda$12$lambda$11$$inlined$onDispose$1;->$childView$inlined:Landroid/view/View;

    iget-object v1, p0, Lexpo/modules/ui/RNHostView$applySizeFromYogaNodeModifier$lambda$12$lambda$11$$inlined$onDispose$1;->$listener$inlined:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
