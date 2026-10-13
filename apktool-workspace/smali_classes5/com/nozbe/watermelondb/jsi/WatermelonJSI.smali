.class public Lcom/nozbe/watermelondb/jsi/WatermelonJSI;
.super Ljava/lang/Object;
.source "WatermelonJSI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onCatalystInstanceDestroy()V
    .locals 0

    .line 16
    invoke-static {}, Lcom/nozbe/watermelondb/jsi/JSIInstaller;->destroy()V

    return-void
.end method

.method public static onTrimMemory(I)V
    .locals 0

    return-void
.end method

.method public static provideSyncJson(I[B)V
    .locals 0

    .line 12
    invoke-static {p0, p1}, Lcom/nozbe/watermelondb/jsi/JSIInstaller;->provideSyncJson(I[B)V

    return-void
.end method
