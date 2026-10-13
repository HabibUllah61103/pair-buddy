.class public interface abstract Lexpo/modules/apploader/HeadlessAppLoader;
.super Ljava/lang/Object;
.source "HeadlessAppLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/apploader/HeadlessAppLoader$Params;
    }
.end annotation


# virtual methods
.method public abstract invalidateApp(Ljava/lang/String;)Z
.end method

.method public abstract isRunning(Ljava/lang/String;)Z
.end method

.method public abstract loadApp(Landroid/content/Context;Lexpo/modules/apploader/HeadlessAppLoader$Params;Ljava/lang/Runnable;Lexpo/modules/core/interfaces/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lexpo/modules/apploader/HeadlessAppLoader$Params;",
            "Ljava/lang/Runnable;",
            "Lexpo/modules/core/interfaces/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method
