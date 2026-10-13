.class public final synthetic Lcom/swmansion/rnscreens/gamma/tabs/image/TabsImageLoaderKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/swmansion/rnscreens/gamma/tabs/TabScreen;

.field public final synthetic f$1:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lcom/swmansion/rnscreens/gamma/tabs/TabScreen;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/swmansion/rnscreens/gamma/tabs/image/TabsImageLoaderKt$$ExternalSyntheticLambda1;->f$0:Lcom/swmansion/rnscreens/gamma/tabs/TabScreen;

    iput-object p2, p0, Lcom/swmansion/rnscreens/gamma/tabs/image/TabsImageLoaderKt$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/swmansion/rnscreens/gamma/tabs/image/TabsImageLoaderKt$$ExternalSyntheticLambda1;->f$0:Lcom/swmansion/rnscreens/gamma/tabs/TabScreen;

    iget-object v1, p0, Lcom/swmansion/rnscreens/gamma/tabs/image/TabsImageLoaderKt$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/swmansion/rnscreens/gamma/tabs/image/TabsImageLoaderKt;->$r8$lambda$0KgK73Kg82pm8dJ5kR9rBAlvwB8(Lcom/swmansion/rnscreens/gamma/tabs/TabScreen;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
