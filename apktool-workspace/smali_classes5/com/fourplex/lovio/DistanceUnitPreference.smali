.class final enum Lcom/fourplex/lovio/DistanceUnitPreference;
.super Ljava/lang/Enum;
.source "DistanceWidget.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fourplex/lovio/DistanceUnitPreference;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0082\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/fourplex/lovio/DistanceUnitPreference;",
        "",
        "raw",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getRaw",
        "()Ljava/lang/String;",
        "Km",
        "Mi",
        "app_release"
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

.field private static final synthetic $VALUES:[Lcom/fourplex/lovio/DistanceUnitPreference;

.field public static final enum Km:Lcom/fourplex/lovio/DistanceUnitPreference;

.field public static final enum Mi:Lcom/fourplex/lovio/DistanceUnitPreference;


# instance fields
.field private final raw:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/fourplex/lovio/DistanceUnitPreference;
    .locals 2

    sget-object v0, Lcom/fourplex/lovio/DistanceUnitPreference;->Km:Lcom/fourplex/lovio/DistanceUnitPreference;

    sget-object v1, Lcom/fourplex/lovio/DistanceUnitPreference;->Mi:Lcom/fourplex/lovio/DistanceUnitPreference;

    filled-new-array {v0, v1}, [Lcom/fourplex/lovio/DistanceUnitPreference;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 48
    new-instance v0, Lcom/fourplex/lovio/DistanceUnitPreference;

    const/4 v1, 0x0

    const-string v2, "km"

    const-string v3, "Km"

    invoke-direct {v0, v3, v1, v2}, Lcom/fourplex/lovio/DistanceUnitPreference;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fourplex/lovio/DistanceUnitPreference;->Km:Lcom/fourplex/lovio/DistanceUnitPreference;

    .line 49
    new-instance v0, Lcom/fourplex/lovio/DistanceUnitPreference;

    const/4 v1, 0x1

    const-string v2, "mi"

    const-string v3, "Mi"

    invoke-direct {v0, v3, v1, v2}, Lcom/fourplex/lovio/DistanceUnitPreference;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fourplex/lovio/DistanceUnitPreference;->Mi:Lcom/fourplex/lovio/DistanceUnitPreference;

    invoke-static {}, Lcom/fourplex/lovio/DistanceUnitPreference;->$values()[Lcom/fourplex/lovio/DistanceUnitPreference;

    move-result-object v0

    sput-object v0, Lcom/fourplex/lovio/DistanceUnitPreference;->$VALUES:[Lcom/fourplex/lovio/DistanceUnitPreference;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/fourplex/lovio/DistanceUnitPreference;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/fourplex/lovio/DistanceUnitPreference;->raw:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/fourplex/lovio/DistanceUnitPreference;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/fourplex/lovio/DistanceUnitPreference;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fourplex/lovio/DistanceUnitPreference;
    .locals 1

    const-class v0, Lcom/fourplex/lovio/DistanceUnitPreference;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 50
    check-cast p0, Lcom/fourplex/lovio/DistanceUnitPreference;

    return-object p0
.end method

.method public static values()[Lcom/fourplex/lovio/DistanceUnitPreference;
    .locals 1

    sget-object v0, Lcom/fourplex/lovio/DistanceUnitPreference;->$VALUES:[Lcom/fourplex/lovio/DistanceUnitPreference;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 50
    check-cast v0, [Lcom/fourplex/lovio/DistanceUnitPreference;

    return-object v0
.end method


# virtual methods
.method public final getRaw()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/fourplex/lovio/DistanceUnitPreference;->raw:Ljava/lang/String;

    return-object v0
.end method
