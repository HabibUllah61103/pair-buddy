.class public final Lexpo/modules/location/records/GeocodeResponse;
.super Ljava/lang/Object;
.source "LocationResults.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/location/records/GeocodeResponse$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u001a\u0008\u0000\u0018\u0000  2\u00020\u00012\u00020\u0002:\u0001 B/\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\t\u0010\nR$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R$\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0011\u0010\u000c\u001a\u0004\u0008\u0012\u0010\u000e\"\u0004\u0008\u0013\u0010\u0010R(\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u0019\u0012\u0004\u0008\u0014\u0010\u000c\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R(\u0010\u0008\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u001f\u0012\u0004\u0008\u001a\u0010\u000c\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006!"
    }
    d2 = {
        "Lexpo/modules/location/records/GeocodeResponse;",
        "Lexpo/modules/kotlin/records/Record;",
        "Ljava/io/Serializable;",
        "latitude",
        "",
        "longitude",
        "accuracy",
        "",
        "altitude",
        "<init>",
        "(DDLjava/lang/Float;Ljava/lang/Double;)V",
        "getLatitude$annotations",
        "()V",
        "getLatitude",
        "()D",
        "setLatitude",
        "(D)V",
        "getLongitude$annotations",
        "getLongitude",
        "setLongitude",
        "getAccuracy$annotations",
        "getAccuracy",
        "()Ljava/lang/Float;",
        "setAccuracy",
        "(Ljava/lang/Float;)V",
        "Ljava/lang/Float;",
        "getAltitude$annotations",
        "getAltitude",
        "()Ljava/lang/Double;",
        "setAltitude",
        "(Ljava/lang/Double;)V",
        "Ljava/lang/Double;",
        "Companion",
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
.field public static final Companion:Lexpo/modules/location/records/GeocodeResponse$Companion;


# instance fields
.field private accuracy:Ljava/lang/Float;

.field private altitude:Ljava/lang/Double;

.field private latitude:D

.field private longitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/location/records/GeocodeResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/location/records/GeocodeResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/location/records/GeocodeResponse;->Companion:Lexpo/modules/location/records/GeocodeResponse$Companion;

    return-void
.end method

.method public constructor <init>(DDLjava/lang/Float;Ljava/lang/Double;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-wide p1, p0, Lexpo/modules/location/records/GeocodeResponse;->latitude:D

    .line 151
    iput-wide p3, p0, Lexpo/modules/location/records/GeocodeResponse;->longitude:D

    .line 152
    iput-object p5, p0, Lexpo/modules/location/records/GeocodeResponse;->accuracy:Ljava/lang/Float;

    .line 153
    iput-object p6, p0, Lexpo/modules/location/records/GeocodeResponse;->altitude:Ljava/lang/Double;

    return-void
.end method

.method public synthetic constructor <init>(DDLjava/lang/Float;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x4

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p5, v0

    :cond_0
    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_1

    move-object p7, v0

    goto :goto_0

    :cond_1
    move-object p7, p6

    :goto_0
    move-object p6, p5

    move-wide p4, p3

    move-wide p2, p1

    move-object p1, p0

    .line 149
    invoke-direct/range {p1 .. p7}, Lexpo/modules/location/records/GeocodeResponse;-><init>(DDLjava/lang/Float;Ljava/lang/Double;)V

    return-void
.end method

.method public static synthetic getAccuracy$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getAltitude$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getLatitude$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getLongitude$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getAccuracy()Ljava/lang/Float;
    .locals 1

    .line 152
    iget-object v0, p0, Lexpo/modules/location/records/GeocodeResponse;->accuracy:Ljava/lang/Float;

    return-object v0
.end method

.method public final getAltitude()Ljava/lang/Double;
    .locals 1

    .line 153
    iget-object v0, p0, Lexpo/modules/location/records/GeocodeResponse;->altitude:Ljava/lang/Double;

    return-object v0
.end method

.method public final getLatitude()D
    .locals 2

    .line 150
    iget-wide v0, p0, Lexpo/modules/location/records/GeocodeResponse;->latitude:D

    return-wide v0
.end method

.method public final getLongitude()D
    .locals 2

    .line 151
    iget-wide v0, p0, Lexpo/modules/location/records/GeocodeResponse;->longitude:D

    return-wide v0
.end method

.method public final setAccuracy(Ljava/lang/Float;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lexpo/modules/location/records/GeocodeResponse;->accuracy:Ljava/lang/Float;

    return-void
.end method

.method public final setAltitude(Ljava/lang/Double;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lexpo/modules/location/records/GeocodeResponse;->altitude:Ljava/lang/Double;

    return-void
.end method

.method public final setLatitude(D)V
    .locals 0

    .line 150
    iput-wide p1, p0, Lexpo/modules/location/records/GeocodeResponse;->latitude:D

    return-void
.end method

.method public final setLongitude(D)V
    .locals 0

    .line 151
    iput-wide p1, p0, Lexpo/modules/location/records/GeocodeResponse;->longitude:D

    return-void
.end method
