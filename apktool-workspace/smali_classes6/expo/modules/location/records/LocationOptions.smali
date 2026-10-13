.class public Lexpo/modules/location/records/LocationOptions;
.super Ljava/lang/Object;
.source "LocationArguments.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0019\u0008\u0010\u0018\u00002\u00020\u00012\u00020\u0002B3\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\n\u0010\u000bB\u001f\u0008\u0016\u0012\u0014\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\r\u00a2\u0006\u0004\u0008\n\u0010\u0010R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R(\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u001c\u0012\u0004\u0008\u0017\u0010\u0012\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR$\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001d\u0010\u0012\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R(\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\'\u0012\u0004\u0008\"\u0010\u0012\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&\u00a8\u0006("
    }
    d2 = {
        "Lexpo/modules/location/records/LocationOptions;",
        "Lexpo/modules/kotlin/records/Record;",
        "Ljava/io/Serializable;",
        "accuracy",
        "",
        "distanceInterval",
        "mayShowUserSettingsDialog",
        "",
        "timeInterval",
        "",
        "<init>",
        "(ILjava/lang/Integer;ZLjava/lang/Long;)V",
        "map",
        "",
        "",
        "",
        "(Ljava/util/Map;)V",
        "getAccuracy$annotations",
        "()V",
        "getAccuracy",
        "()I",
        "setAccuracy",
        "(I)V",
        "getDistanceInterval$annotations",
        "getDistanceInterval",
        "()Ljava/lang/Integer;",
        "setDistanceInterval",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getMayShowUserSettingsDialog$annotations",
        "getMayShowUserSettingsDialog",
        "()Z",
        "setMayShowUserSettingsDialog",
        "(Z)V",
        "getTimeInterval$annotations",
        "getTimeInterval",
        "()Ljava/lang/Long;",
        "setTimeInterval",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
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


# instance fields
.field private accuracy:I

.field private distanceInterval:Ljava/lang/Integer;

.field private mayShowUserSettingsDialog:Z

.field private timeInterval:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lexpo/modules/location/records/LocationOptions;-><init>(ILjava/lang/Integer;ZLjava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Integer;ZLjava/lang/Long;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lexpo/modules/location/records/LocationOptions;->accuracy:I

    .line 23
    iput-object p2, p0, Lexpo/modules/location/records/LocationOptions;->distanceInterval:Ljava/lang/Integer;

    .line 24
    iput-boolean p3, p0, Lexpo/modules/location/records/LocationOptions;->mayShowUserSettingsDialog:Z

    .line 25
    iput-object p4, p0, Lexpo/modules/location/records/LocationOptions;->timeInterval:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Integer;ZLjava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x3

    :cond_0
    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const/4 p3, 0x1

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move-object p4, v0

    .line 21
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lexpo/modules/location/records/LocationOptions;-><init>(ILjava/lang/Integer;ZLjava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    const-string v0, "accuracy"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    .line 29
    :goto_1
    const-string v1, "distanceInterval"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    check-cast v1, Ljava/lang/Integer;

    goto :goto_2

    :cond_2
    move-object v1, v2

    .line 30
    :goto_2
    const-string v3, "mayShowUserSettingsDialog"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    check-cast v3, Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    move-object v3, v2

    :goto_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_4

    :cond_4
    const/4 v3, 0x1

    .line 31
    :goto_4
    const-string v4, "timeInterval"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v4, p1, Ljava/lang/Long;

    if-eqz v4, :cond_5

    move-object v2, p1

    check-cast v2, Ljava/lang/Long;

    .line 27
    :cond_5
    invoke-direct {p0, v0, v1, v3, v2}, Lexpo/modules/location/records/LocationOptions;-><init>(ILjava/lang/Integer;ZLjava/lang/Long;)V

    return-void
.end method

.method public static synthetic getAccuracy$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getDistanceInterval$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getMayShowUserSettingsDialog$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getTimeInterval$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getAccuracy()I
    .locals 1

    .line 22
    iget v0, p0, Lexpo/modules/location/records/LocationOptions;->accuracy:I

    return v0
.end method

.method public final getDistanceInterval()Ljava/lang/Integer;
    .locals 1

    .line 23
    iget-object v0, p0, Lexpo/modules/location/records/LocationOptions;->distanceInterval:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMayShowUserSettingsDialog()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lexpo/modules/location/records/LocationOptions;->mayShowUserSettingsDialog:Z

    return v0
.end method

.method public final getTimeInterval()Ljava/lang/Long;
    .locals 1

    .line 25
    iget-object v0, p0, Lexpo/modules/location/records/LocationOptions;->timeInterval:Ljava/lang/Long;

    return-object v0
.end method

.method public final setAccuracy(I)V
    .locals 0

    .line 22
    iput p1, p0, Lexpo/modules/location/records/LocationOptions;->accuracy:I

    return-void
.end method

.method public final setDistanceInterval(Ljava/lang/Integer;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lexpo/modules/location/records/LocationOptions;->distanceInterval:Ljava/lang/Integer;

    return-void
.end method

.method public final setMayShowUserSettingsDialog(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lexpo/modules/location/records/LocationOptions;->mayShowUserSettingsDialog:Z

    return-void
.end method

.method public final setTimeInterval(Ljava/lang/Long;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lexpo/modules/location/records/LocationOptions;->timeInterval:Ljava/lang/Long;

    return-void
.end method
