.class Lcom/nozbe/watermelondb/jsi/JSIInstaller;
.super Ljava/lang/Object;
.source "JSIInstaller.java"


# static fields
.field private static context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-string v0, "watermelondb-jsi"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static _resolveDatabasePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 18
    sget-object v0, Lcom/nozbe/watermelondb/jsi/JSIInstaller;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ".db"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/databases"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static native destroy()V
.end method

.method static install(Landroid/content/Context;J)V
    .locals 0

    .line 6
    sput-object p0, Lcom/nozbe/watermelondb/jsi/JSIInstaller;->context:Landroid/content/Context;

    .line 7
    new-instance p0, Lcom/nozbe/watermelondb/jsi/JSIInstaller;

    invoke-direct {p0}, Lcom/nozbe/watermelondb/jsi/JSIInstaller;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/nozbe/watermelondb/jsi/JSIInstaller;->installBinding(J)V

    .line 12
    const-string p0, ""

    invoke-static {p0}, Lcom/nozbe/watermelondb/jsi/JSIInstaller;->_resolveDatabasePath(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private native installBinding(J)V
.end method

.method static native provideSyncJson(I[B)V
.end method
