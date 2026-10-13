.class public final Lexpo/modules/location/records/LocationLastKnownOptions;
.super Ljava/lang/Object;
.source "LocationArguments.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u000e\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R(\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u000e\u0012\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR(\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u000e\u0012\u0004\u0008\u000f\u0010\t\u001a\u0004\u0008\u0010\u0010\u000b\"\u0004\u0008\u0011\u0010\r\u00a8\u0006\u0012"
    }
    d2 = {
        "Lexpo/modules/location/records/LocationLastKnownOptions;",
        "Lexpo/modules/kotlin/records/Record;",
        "Ljava/io/Serializable;",
        "maxAge",
        "",
        "requiredAccuracy",
        "<init>",
        "(Ljava/lang/Double;Ljava/lang/Double;)V",
        "getMaxAge$annotations",
        "()V",
        "getMaxAge",
        "()Ljava/lang/Double;",
        "setMaxAge",
        "(Ljava/lang/Double;)V",
        "Ljava/lang/Double;",
        "getRequiredAccuracy$annotations",
        "getRequiredAccuracy",
        "setRequiredAccuracy",
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
.field private maxAge:Ljava/lang/Double;

.field private requiredAccuracy:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lexpo/modules/location/records/LocationLastKnownOptions;-><init>(Ljava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lexpo/modules/location/records/LocationLastKnownOptions;->maxAge:Ljava/lang/Double;

    .line 18
    iput-object p2, p0, Lexpo/modules/location/records/LocationLastKnownOptions;->requiredAccuracy:Ljava/lang/Double;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 16
    :cond_1
    invoke-direct {p0, p1, p2}, Lexpo/modules/location/records/LocationLastKnownOptions;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    return-void
.end method

.method public static synthetic getMaxAge$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getRequiredAccuracy$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getMaxAge()Ljava/lang/Double;
    .locals 1

    .line 17
    iget-object v0, p0, Lexpo/modules/location/records/LocationLastKnownOptions;->maxAge:Ljava/lang/Double;

    return-object v0
.end method

.method public final getRequiredAccuracy()Ljava/lang/Double;
    .locals 1

    .line 18
    iget-object v0, p0, Lexpo/modules/location/records/LocationLastKnownOptions;->requiredAccuracy:Ljava/lang/Double;

    return-object v0
.end method

.method public final setMaxAge(Ljava/lang/Double;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lexpo/modules/location/records/LocationLastKnownOptions;->maxAge:Ljava/lang/Double;

    return-void
.end method

.method public final setRequiredAccuracy(Ljava/lang/Double;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lexpo/modules/location/records/LocationLastKnownOptions;->requiredAccuracy:Ljava/lang/Double;

    return-void
.end method
