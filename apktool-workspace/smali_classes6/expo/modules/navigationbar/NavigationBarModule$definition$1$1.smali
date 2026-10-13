.class final Lexpo/modules/navigationbar/NavigationBarModule$definition$1$1;
.super Ljava/lang/Object;
.source "NavigationBarModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/navigationbar/NavigationBarModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
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

    iput-object p1, p0, Lexpo/modules/navigationbar/NavigationBarModule$definition$1$1;->this$0:Lexpo/modules/navigationbar/NavigationBarModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lexpo/modules/navigationbar/NavigationBarModule$definition$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 22
    iget-object v0, p0, Lexpo/modules/navigationbar/NavigationBarModule$definition$1$1;->this$0:Lexpo/modules/navigationbar/NavigationBarModule;

    invoke-static {v0}, Lexpo/modules/navigationbar/NavigationBarModule;->access$getCurrentActivity(Lexpo/modules/navigationbar/NavigationBarModule;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "getDecorView(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v1, Lexpo/modules/navigationbar/NavigationBarModule$definition$1$1$1;

    iget-object v2, p0, Lexpo/modules/navigationbar/NavigationBarModule$definition$1$1;->this$0:Lexpo/modules/navigationbar/NavigationBarModule;

    invoke-direct {v1, v0, v2}, Lexpo/modules/navigationbar/NavigationBarModule$definition$1$1$1;-><init>(Landroid/view/View;Lexpo/modules/navigationbar/NavigationBarModule;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
