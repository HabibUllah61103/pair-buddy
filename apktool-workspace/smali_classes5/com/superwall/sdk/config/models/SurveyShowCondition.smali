.class public final enum Lcom/superwall/sdk/config/models/SurveyShowCondition;
.super Ljava/lang/Enum;
.source "SurveyShowCondition.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/config/models/SurveyShowCondition$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/superwall/sdk/config/models/SurveyShowCondition;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0087\u0081\u0002\u0018\u0000 \n2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/superwall/sdk/config/models/SurveyShowCondition;",
        "",
        "rawValue",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getRawValue",
        "()Ljava/lang/String;",
        "ON_MANUAL_CLOSE",
        "ON_PURCHASE",
        "Companion",
        "superwall_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
    with = Lcom/superwall/sdk/config/models/SurveyShowConditionSerializer;
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/superwall/sdk/config/models/SurveyShowCondition;

.field public static final Companion:Lcom/superwall/sdk/config/models/SurveyShowCondition$Companion;

.field public static final enum ON_MANUAL_CLOSE:Lcom/superwall/sdk/config/models/SurveyShowCondition;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "ON_MANUAL_CLOSE"
    .end annotation
.end field

.field public static final enum ON_PURCHASE:Lcom/superwall/sdk/config/models/SurveyShowCondition;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "ON_PURCHASE"
    .end annotation
.end field


# instance fields
.field private final rawValue:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/superwall/sdk/config/models/SurveyShowCondition;
    .locals 2

    sget-object v0, Lcom/superwall/sdk/config/models/SurveyShowCondition;->ON_MANUAL_CLOSE:Lcom/superwall/sdk/config/models/SurveyShowCondition;

    sget-object v1, Lcom/superwall/sdk/config/models/SurveyShowCondition;->ON_PURCHASE:Lcom/superwall/sdk/config/models/SurveyShowCondition;

    filled-new-array {v0, v1}, [Lcom/superwall/sdk/config/models/SurveyShowCondition;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/superwall/sdk/config/models/SurveyShowCondition;

    const-string v1, "ON_MANUAL_CLOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/superwall/sdk/config/models/SurveyShowCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/config/models/SurveyShowCondition;->ON_MANUAL_CLOSE:Lcom/superwall/sdk/config/models/SurveyShowCondition;

    .line 18
    new-instance v0, Lcom/superwall/sdk/config/models/SurveyShowCondition;

    const-string v1, "ON_PURCHASE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/superwall/sdk/config/models/SurveyShowCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/config/models/SurveyShowCondition;->ON_PURCHASE:Lcom/superwall/sdk/config/models/SurveyShowCondition;

    invoke-static {}, Lcom/superwall/sdk/config/models/SurveyShowCondition;->$values()[Lcom/superwall/sdk/config/models/SurveyShowCondition;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/config/models/SurveyShowCondition;->$VALUES:[Lcom/superwall/sdk/config/models/SurveyShowCondition;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/config/models/SurveyShowCondition;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/superwall/sdk/config/models/SurveyShowCondition$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/config/models/SurveyShowCondition$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/config/models/SurveyShowCondition;->Companion:Lcom/superwall/sdk/config/models/SurveyShowCondition$Companion;

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

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/superwall/sdk/config/models/SurveyShowCondition;->rawValue:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/superwall/sdk/config/models/SurveyShowCondition;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/superwall/sdk/config/models/SurveyShowCondition;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/superwall/sdk/config/models/SurveyShowCondition;
    .locals 1

    const-class v0, Lcom/superwall/sdk/config/models/SurveyShowCondition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 19
    check-cast p0, Lcom/superwall/sdk/config/models/SurveyShowCondition;

    return-object p0
.end method

.method public static values()[Lcom/superwall/sdk/config/models/SurveyShowCondition;
    .locals 1

    sget-object v0, Lcom/superwall/sdk/config/models/SurveyShowCondition;->$VALUES:[Lcom/superwall/sdk/config/models/SurveyShowCondition;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 19
    check-cast v0, [Lcom/superwall/sdk/config/models/SurveyShowCondition;

    return-object v0
.end method


# virtual methods
.method public final getRawValue()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/superwall/sdk/config/models/SurveyShowCondition;->rawValue:Ljava/lang/String;

    return-object v0
.end method
