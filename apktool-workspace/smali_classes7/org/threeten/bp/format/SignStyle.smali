.class public final enum Lorg/threeten/bp/format/SignStyle;
.super Ljava/lang/Enum;
.source "SignStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/threeten/bp/format/SignStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/threeten/bp/format/SignStyle;

.field public static final enum ALWAYS:Lorg/threeten/bp/format/SignStyle;

.field public static final enum EXCEEDS_PAD:Lorg/threeten/bp/format/SignStyle;

.field public static final enum NEVER:Lorg/threeten/bp/format/SignStyle;

.field public static final enum NORMAL:Lorg/threeten/bp/format/SignStyle;

.field public static final enum NOT_NEGATIVE:Lorg/threeten/bp/format/SignStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 52
    new-instance v0, Lorg/threeten/bp/format/SignStyle;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/format/SignStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/format/SignStyle;->NORMAL:Lorg/threeten/bp/format/SignStyle;

    .line 60
    new-instance v1, Lorg/threeten/bp/format/SignStyle;

    const-string v2, "ALWAYS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/threeten/bp/format/SignStyle;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/threeten/bp/format/SignStyle;->ALWAYS:Lorg/threeten/bp/format/SignStyle;

    .line 67
    new-instance v2, Lorg/threeten/bp/format/SignStyle;

    const-string v3, "NEVER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/threeten/bp/format/SignStyle;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/threeten/bp/format/SignStyle;->NEVER:Lorg/threeten/bp/format/SignStyle;

    .line 74
    new-instance v3, Lorg/threeten/bp/format/SignStyle;

    const-string v4, "NOT_NEGATIVE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/threeten/bp/format/SignStyle;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/threeten/bp/format/SignStyle;->NOT_NEGATIVE:Lorg/threeten/bp/format/SignStyle;

    .line 83
    new-instance v4, Lorg/threeten/bp/format/SignStyle;

    const-string v5, "EXCEEDS_PAD"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/threeten/bp/format/SignStyle;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/threeten/bp/format/SignStyle;->EXCEEDS_PAD:Lorg/threeten/bp/format/SignStyle;

    .line 44
    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/threeten/bp/format/SignStyle;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/format/SignStyle;->$VALUES:[Lorg/threeten/bp/format/SignStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/format/SignStyle;
    .locals 1

    .line 44
    const-class v0, Lorg/threeten/bp/format/SignStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/threeten/bp/format/SignStyle;

    return-object p0
.end method

.method public static values()[Lorg/threeten/bp/format/SignStyle;
    .locals 1

    .line 44
    sget-object v0, Lorg/threeten/bp/format/SignStyle;->$VALUES:[Lorg/threeten/bp/format/SignStyle;

    invoke-virtual {v0}, [Lorg/threeten/bp/format/SignStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/threeten/bp/format/SignStyle;

    return-object v0
.end method


# virtual methods
.method parse(ZZZ)Z
    .locals 3

    .line 94
    invoke-virtual {p0}, Lorg/threeten/bp/format/SignStyle;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    if-eqz p1, :cond_4

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v2
.end method
