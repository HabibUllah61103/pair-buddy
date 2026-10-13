.class final Lexpo/modules/navigationbar/NavigationBarModule$definition$1$1$1$1;
.super Ljava/lang/Object;
.source "NavigationBarModule.kt"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/navigationbar/NavigationBarModule$definition$1$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lexpo/modules/navigationbar/NavigationBarModule;


# direct methods
.method constructor <init>(Lexpo/modules/navigationbar/NavigationBarModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/navigationbar/NavigationBarModule$definition$1$1$1$1;->this$0:Lexpo/modules/navigationbar/NavigationBarModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSystemUiVisibilityChange(I)V
    .locals 4

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    .line 27
    const-string v0, "visible"

    goto :goto_0

    :cond_0
    const-string v0, "hidden"

    .line 28
    :goto_0
    iget-object v1, p0, Lexpo/modules/navigationbar/NavigationBarModule$definition$1$1$1$1;->this$0:Lexpo/modules/navigationbar/NavigationBarModule;

    .line 30
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 31
    const-string v3, "visibility"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v0, "rawVisibility"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 28
    const-string p1, "ExpoNavigationBar.didChange"

    invoke-virtual {v1, p1, v2}, Lexpo/modules/navigationbar/NavigationBarModule;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
