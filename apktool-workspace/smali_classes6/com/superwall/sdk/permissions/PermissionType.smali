.class public final enum Lcom/superwall/sdk/permissions/PermissionType;
.super Ljava/lang/Enum;
.source "PermissionType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/permissions/PermissionType$Companion;,
        Lcom/superwall/sdk/permissions/PermissionType$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/superwall/sdk/permissions/PermissionType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0008\u0086\u0081\u0002\u0018\u0000 \u00112\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0011B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0003R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/superwall/sdk/permissions/PermissionType;",
        "",
        "rawValue",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getRawValue",
        "()Ljava/lang/String;",
        "NOTIFICATION",
        "LOCATION",
        "BACKGROUND_LOCATION",
        "READ_IMAGES",
        "CONTACTS",
        "READ_VIDEO",
        "CAMERA",
        "MICROPHONE",
        "toManifestPermission",
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


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/superwall/sdk/permissions/PermissionType;

.field public static final enum BACKGROUND_LOCATION:Lcom/superwall/sdk/permissions/PermissionType;

.field public static final enum CAMERA:Lcom/superwall/sdk/permissions/PermissionType;

.field public static final enum CONTACTS:Lcom/superwall/sdk/permissions/PermissionType;

.field public static final Companion:Lcom/superwall/sdk/permissions/PermissionType$Companion;

.field public static final enum LOCATION:Lcom/superwall/sdk/permissions/PermissionType;

.field public static final enum MICROPHONE:Lcom/superwall/sdk/permissions/PermissionType;

.field public static final enum NOTIFICATION:Lcom/superwall/sdk/permissions/PermissionType;

.field public static final enum READ_IMAGES:Lcom/superwall/sdk/permissions/PermissionType;

.field public static final enum READ_VIDEO:Lcom/superwall/sdk/permissions/PermissionType;


# instance fields
.field private final rawValue:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/superwall/sdk/permissions/PermissionType;
    .locals 8

    sget-object v0, Lcom/superwall/sdk/permissions/PermissionType;->NOTIFICATION:Lcom/superwall/sdk/permissions/PermissionType;

    sget-object v1, Lcom/superwall/sdk/permissions/PermissionType;->LOCATION:Lcom/superwall/sdk/permissions/PermissionType;

    sget-object v2, Lcom/superwall/sdk/permissions/PermissionType;->BACKGROUND_LOCATION:Lcom/superwall/sdk/permissions/PermissionType;

    sget-object v3, Lcom/superwall/sdk/permissions/PermissionType;->READ_IMAGES:Lcom/superwall/sdk/permissions/PermissionType;

    sget-object v4, Lcom/superwall/sdk/permissions/PermissionType;->CONTACTS:Lcom/superwall/sdk/permissions/PermissionType;

    sget-object v5, Lcom/superwall/sdk/permissions/PermissionType;->READ_VIDEO:Lcom/superwall/sdk/permissions/PermissionType;

    sget-object v6, Lcom/superwall/sdk/permissions/PermissionType;->CAMERA:Lcom/superwall/sdk/permissions/PermissionType;

    sget-object v7, Lcom/superwall/sdk/permissions/PermissionType;->MICROPHONE:Lcom/superwall/sdk/permissions/PermissionType;

    filled-new-array/range {v0 .. v7}, [Lcom/superwall/sdk/permissions/PermissionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 13
    new-instance v0, Lcom/superwall/sdk/permissions/PermissionType;

    const/4 v1, 0x0

    const-string v2, "notification"

    const-string v3, "NOTIFICATION"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/permissions/PermissionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/permissions/PermissionType;->NOTIFICATION:Lcom/superwall/sdk/permissions/PermissionType;

    .line 14
    new-instance v0, Lcom/superwall/sdk/permissions/PermissionType;

    const/4 v1, 0x1

    const-string v2, "location"

    const-string v3, "LOCATION"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/permissions/PermissionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/permissions/PermissionType;->LOCATION:Lcom/superwall/sdk/permissions/PermissionType;

    .line 15
    new-instance v0, Lcom/superwall/sdk/permissions/PermissionType;

    const/4 v1, 0x2

    const-string v2, "background_location"

    const-string v3, "BACKGROUND_LOCATION"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/permissions/PermissionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/permissions/PermissionType;->BACKGROUND_LOCATION:Lcom/superwall/sdk/permissions/PermissionType;

    .line 16
    new-instance v0, Lcom/superwall/sdk/permissions/PermissionType;

    const/4 v1, 0x3

    const-string v2, "read_images"

    const-string v3, "READ_IMAGES"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/permissions/PermissionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/permissions/PermissionType;->READ_IMAGES:Lcom/superwall/sdk/permissions/PermissionType;

    .line 17
    new-instance v0, Lcom/superwall/sdk/permissions/PermissionType;

    const/4 v1, 0x4

    const-string v2, "contacts"

    const-string v3, "CONTACTS"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/permissions/PermissionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/permissions/PermissionType;->CONTACTS:Lcom/superwall/sdk/permissions/PermissionType;

    .line 18
    new-instance v0, Lcom/superwall/sdk/permissions/PermissionType;

    const/4 v1, 0x5

    const-string v2, "read_video"

    const-string v3, "READ_VIDEO"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/permissions/PermissionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/permissions/PermissionType;->READ_VIDEO:Lcom/superwall/sdk/permissions/PermissionType;

    .line 19
    new-instance v0, Lcom/superwall/sdk/permissions/PermissionType;

    const/4 v1, 0x6

    const-string v2, "camera"

    const-string v3, "CAMERA"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/permissions/PermissionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/permissions/PermissionType;->CAMERA:Lcom/superwall/sdk/permissions/PermissionType;

    .line 20
    new-instance v0, Lcom/superwall/sdk/permissions/PermissionType;

    const/4 v1, 0x7

    const-string v2, "microphone"

    const-string v3, "MICROPHONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/permissions/PermissionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/permissions/PermissionType;->MICROPHONE:Lcom/superwall/sdk/permissions/PermissionType;

    invoke-static {}, Lcom/superwall/sdk/permissions/PermissionType;->$values()[Lcom/superwall/sdk/permissions/PermissionType;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/permissions/PermissionType;->$VALUES:[Lcom/superwall/sdk/permissions/PermissionType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/permissions/PermissionType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/superwall/sdk/permissions/PermissionType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/permissions/PermissionType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/permissions/PermissionType;->Companion:Lcom/superwall/sdk/permissions/PermissionType$Companion;

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

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lcom/superwall/sdk/permissions/PermissionType;->rawValue:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/superwall/sdk/permissions/PermissionType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/superwall/sdk/permissions/PermissionType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/superwall/sdk/permissions/PermissionType;
    .locals 1

    const-class v0, Lcom/superwall/sdk/permissions/PermissionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 67
    check-cast p0, Lcom/superwall/sdk/permissions/PermissionType;

    return-object p0
.end method

.method public static values()[Lcom/superwall/sdk/permissions/PermissionType;
    .locals 1

    sget-object v0, Lcom/superwall/sdk/permissions/PermissionType;->$VALUES:[Lcom/superwall/sdk/permissions/PermissionType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 67
    check-cast v0, [Lcom/superwall/sdk/permissions/PermissionType;

    return-object v0
.end method


# virtual methods
.method public final getRawValue()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/superwall/sdk/permissions/PermissionType;->rawValue:Ljava/lang/String;

    return-object v0
.end method

.method public final toManifestPermission()Ljava/lang/String;
    .locals 4

    .line 28
    sget-object v0, Lcom/superwall/sdk/permissions/PermissionType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/superwall/sdk/permissions/PermissionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v2, 0x0

    const/16 v3, 0x21

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 56
    :pswitch_0
    const-string v0, "android.permission.RECORD_AUDIO"

    return-object v0

    .line 55
    :pswitch_1
    const-string v0, "android.permission.CAMERA"

    return-object v0

    .line 50
    :pswitch_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    .line 51
    const-string v0, "android.permission.READ_MEDIA_VIDEO"

    return-object v0

    :cond_0
    return-object v1

    .line 48
    :pswitch_3
    const-string v0, "android.permission.READ_CONTACTS"

    return-object v0

    .line 43
    :pswitch_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_1

    .line 44
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    return-object v0

    :cond_1
    return-object v1

    .line 37
    :pswitch_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    .line 38
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    return-object v0

    :cond_2
    return-object v2

    .line 35
    :pswitch_6
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    return-object v0

    .line 30
    :pswitch_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_3

    .line 31
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    return-object v0

    :cond_3
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
