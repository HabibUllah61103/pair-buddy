.class public final Lexpo/modules/location/AppForegroundedSingleton;
.super Ljava/lang/Object;
.source "LocationHelpers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lexpo/modules/location/AppForegroundedSingleton;",
        "",
        "<init>",
        "()V",
        "isForegrounded",
        "",
        "()Z",
        "setForegrounded",
        "(Z)V",
        "expo-location_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lexpo/modules/location/AppForegroundedSingleton;

.field private static isForegrounded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/location/AppForegroundedSingleton;

    invoke-direct {v0}, Lexpo/modules/location/AppForegroundedSingleton;-><init>()V

    sput-object v0, Lexpo/modules/location/AppForegroundedSingleton;->INSTANCE:Lexpo/modules/location/AppForegroundedSingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isForegrounded()Z
    .locals 1

    .line 200
    sget-boolean v0, Lexpo/modules/location/AppForegroundedSingleton;->isForegrounded:Z

    return v0
.end method

.method public final setForegrounded(Z)V
    .locals 0

    .line 200
    sput-boolean p1, Lexpo/modules/location/AppForegroundedSingleton;->isForegrounded:Z

    return-void
.end method
