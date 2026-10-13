.class public final Lcom/superwall/sdk/utilities/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007R\u0014\u0010\n\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007R\u0014\u0010\u000c\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0007R\u0014\u0010\u000e\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0007R\u0014\u0010\u0010\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0007R\u0014\u0010\u0012\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/superwall/sdk/utilities/DateUtils;",
        "",
        "<init>",
        "()V",
        "ISO_MILLIS",
        "",
        "getISO_MILLIS",
        "()Ljava/lang/String;",
        "ISO_SECONDS",
        "getISO_SECONDS",
        "ISO_SECONDS_TIMEZONE",
        "getISO_SECONDS_TIMEZONE",
        "SIMPLE",
        "getSIMPLE",
        "yyyy_MM_dd",
        "getYyyy_MM_dd",
        "HH_mm_ss",
        "getHH_mm_ss",
        "MMM_dd_yyyy",
        "getMMM_dd_yyyy",
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
.field private static final HH_mm_ss:Ljava/lang/String;

.field public static final INSTANCE:Lcom/superwall/sdk/utilities/DateUtils;

.field private static final ISO_MILLIS:Ljava/lang/String;

.field private static final ISO_SECONDS:Ljava/lang/String;

.field private static final ISO_SECONDS_TIMEZONE:Ljava/lang/String;

.field private static final MMM_dd_yyyy:Ljava/lang/String;

.field private static final SIMPLE:Ljava/lang/String;

.field private static final yyyy_MM_dd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/superwall/sdk/utilities/DateUtils;

    invoke-direct {v0}, Lcom/superwall/sdk/utilities/DateUtils;-><init>()V

    sput-object v0, Lcom/superwall/sdk/utilities/DateUtils;->INSTANCE:Lcom/superwall/sdk/utilities/DateUtils;

    .line 7
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    sput-object v0, Lcom/superwall/sdk/utilities/DateUtils;->ISO_MILLIS:Ljava/lang/String;

    .line 8
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    sput-object v0, Lcom/superwall/sdk/utilities/DateUtils;->ISO_SECONDS:Ljava/lang/String;

    .line 9
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sput-object v0, Lcom/superwall/sdk/utilities/DateUtils;->ISO_SECONDS_TIMEZONE:Ljava/lang/String;

    .line 10
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    sput-object v0, Lcom/superwall/sdk/utilities/DateUtils;->SIMPLE:Ljava/lang/String;

    .line 11
    const-string v0, "yyyy-MM-dd"

    sput-object v0, Lcom/superwall/sdk/utilities/DateUtils;->yyyy_MM_dd:Ljava/lang/String;

    .line 12
    const-string v0, "HH:mm:ss"

    sput-object v0, Lcom/superwall/sdk/utilities/DateUtils;->HH_mm_ss:Ljava/lang/String;

    .line 13
    const-string v0, "MMM dd, yyyy"

    sput-object v0, Lcom/superwall/sdk/utilities/DateUtils;->MMM_dd_yyyy:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHH_mm_ss()Ljava/lang/String;
    .locals 1

    .line 12
    sget-object v0, Lcom/superwall/sdk/utilities/DateUtils;->HH_mm_ss:Ljava/lang/String;

    return-object v0
.end method

.method public final getISO_MILLIS()Ljava/lang/String;
    .locals 1

    .line 7
    sget-object v0, Lcom/superwall/sdk/utilities/DateUtils;->ISO_MILLIS:Ljava/lang/String;

    return-object v0
.end method

.method public final getISO_SECONDS()Ljava/lang/String;
    .locals 1

    .line 8
    sget-object v0, Lcom/superwall/sdk/utilities/DateUtils;->ISO_SECONDS:Ljava/lang/String;

    return-object v0
.end method

.method public final getISO_SECONDS_TIMEZONE()Ljava/lang/String;
    .locals 1

    .line 9
    sget-object v0, Lcom/superwall/sdk/utilities/DateUtils;->ISO_SECONDS_TIMEZONE:Ljava/lang/String;

    return-object v0
.end method

.method public final getMMM_dd_yyyy()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lcom/superwall/sdk/utilities/DateUtils;->MMM_dd_yyyy:Ljava/lang/String;

    return-object v0
.end method

.method public final getSIMPLE()Ljava/lang/String;
    .locals 1

    .line 10
    sget-object v0, Lcom/superwall/sdk/utilities/DateUtils;->SIMPLE:Ljava/lang/String;

    return-object v0
.end method

.method public final getYyyy_MM_dd()Ljava/lang/String;
    .locals 1

    .line 11
    sget-object v0, Lcom/superwall/sdk/utilities/DateUtils;->yyyy_MM_dd:Ljava/lang/String;

    return-object v0
.end method
