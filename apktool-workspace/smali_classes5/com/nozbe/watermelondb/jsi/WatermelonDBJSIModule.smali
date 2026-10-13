.class public Lcom/nozbe/watermelondb/jsi/WatermelonDBJSIModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "WatermelonDBJSIModule.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "WMDatabaseJSIBridge"
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "WMDatabaseJSIBridge"


# instance fields
.field reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 21
    iput-object p1, p0, Lcom/nozbe/watermelondb/jsi/WatermelonDBJSIModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 27
    const-string v0, "WMDatabaseJSIBridge"

    return-object v0
.end method

.method public install()Z
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .line 33
    const-string v0, "WMDatabaseJSIBridge"

    :try_start_0
    invoke-virtual {p0}, Lcom/nozbe/watermelondb/jsi/WatermelonDBJSIModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJavaScriptContextHolder()Lcom/facebook/react/bridge/JavaScriptContextHolder;

    move-result-object v1

    .line 34
    invoke-virtual {p0}, Lcom/nozbe/watermelondb/jsi/WatermelonDBJSIModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    invoke-virtual {v1}, Lcom/facebook/react/bridge/JavaScriptContextHolder;->get()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/nozbe/watermelondb/jsi/JSIInstaller;->install(Landroid/content/Context;J)V

    .line 35
    const-string v1, "Successfully installed Watermelon DB JSI Bindings!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 38
    const-string v2, "Failed to install Watermelon DB JSI Bindings!"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method
