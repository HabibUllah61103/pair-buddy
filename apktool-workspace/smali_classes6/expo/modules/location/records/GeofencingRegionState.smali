.class public final enum Lexpo/modules/location/records/GeofencingRegionState;
.super Ljava/lang/Enum;
.source "LocationArguments.kt"

# interfaces
.implements Lexpo/modules/kotlin/types/Enumerable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/location/records/GeofencingRegionState;",
        ">;",
        "Lexpo/modules/kotlin/types/Enumerable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lexpo/modules/location/records/GeofencingRegionState;",
        "Lexpo/modules/kotlin/types/Enumerable;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "UNKNOWN",
        "INSIDE",
        "OUTSIDE",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lexpo/modules/location/records/GeofencingRegionState;

.field public static final enum INSIDE:Lexpo/modules/location/records/GeofencingRegionState;

.field public static final enum OUTSIDE:Lexpo/modules/location/records/GeofencingRegionState;

.field public static final enum UNKNOWN:Lexpo/modules/location/records/GeofencingRegionState;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/location/records/GeofencingRegionState;
    .locals 3

    sget-object v0, Lexpo/modules/location/records/GeofencingRegionState;->UNKNOWN:Lexpo/modules/location/records/GeofencingRegionState;

    sget-object v1, Lexpo/modules/location/records/GeofencingRegionState;->INSIDE:Lexpo/modules/location/records/GeofencingRegionState;

    sget-object v2, Lexpo/modules/location/records/GeofencingRegionState;->OUTSIDE:Lexpo/modules/location/records/GeofencingRegionState;

    filled-new-array {v0, v1, v2}, [Lexpo/modules/location/records/GeofencingRegionState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lexpo/modules/location/records/GeofencingRegionState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lexpo/modules/location/records/GeofencingRegionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lexpo/modules/location/records/GeofencingRegionState;->UNKNOWN:Lexpo/modules/location/records/GeofencingRegionState;

    .line 12
    new-instance v0, Lexpo/modules/location/records/GeofencingRegionState;

    const-string v1, "INSIDE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lexpo/modules/location/records/GeofencingRegionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lexpo/modules/location/records/GeofencingRegionState;->INSIDE:Lexpo/modules/location/records/GeofencingRegionState;

    .line 13
    new-instance v0, Lexpo/modules/location/records/GeofencingRegionState;

    const-string v1, "OUTSIDE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lexpo/modules/location/records/GeofencingRegionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lexpo/modules/location/records/GeofencingRegionState;->OUTSIDE:Lexpo/modules/location/records/GeofencingRegionState;

    invoke-static {}, Lexpo/modules/location/records/GeofencingRegionState;->$values()[Lexpo/modules/location/records/GeofencingRegionState;

    move-result-object v0

    sput-object v0, Lexpo/modules/location/records/GeofencingRegionState;->$VALUES:[Lexpo/modules/location/records/GeofencingRegionState;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/location/records/GeofencingRegionState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/location/records/GeofencingRegionState;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/location/records/GeofencingRegionState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/location/records/GeofencingRegionState;
    .locals 1

    const-class v0, Lexpo/modules/location/records/GeofencingRegionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 14
    check-cast p0, Lexpo/modules/location/records/GeofencingRegionState;

    return-object p0
.end method

.method public static values()[Lexpo/modules/location/records/GeofencingRegionState;
    .locals 1

    sget-object v0, Lexpo/modules/location/records/GeofencingRegionState;->$VALUES:[Lexpo/modules/location/records/GeofencingRegionState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, [Lexpo/modules/location/records/GeofencingRegionState;

    return-object v0
.end method
