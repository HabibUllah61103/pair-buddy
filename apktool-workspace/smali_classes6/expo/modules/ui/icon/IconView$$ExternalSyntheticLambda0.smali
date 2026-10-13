.class public final synthetic Lexpo/modules/ui/icon/IconView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lexpo/modules/kotlin/AppContext;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/kotlin/AppContext;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/ui/icon/IconView$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/kotlin/AppContext;

    iput-object p2, p0, Lexpo/modules/ui/icon/IconView$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lexpo/modules/ui/icon/IconView$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/kotlin/AppContext;

    iget-object v1, p0, Lexpo/modules/ui/icon/IconView$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-static {v0, v1}, Lexpo/modules/ui/icon/IconView;->$r8$lambda$z_I5qTp4udJxqWvZ1WIiNvoA-3k(Lexpo/modules/kotlin/AppContext;Landroid/content/Context;)Lexpo/modules/ui/icon/VectorIconLoader;

    move-result-object v0

    return-object v0
.end method
