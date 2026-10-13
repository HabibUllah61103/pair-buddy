.class public final Lexpo/modules/location/records/ReverseGeocodeResponse;
.super Ljava/lang/Object;
.source "LocationResults.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/location/records/ReverseGeocodeResponse$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008*\u0008\u0000\u0018\u0000 <2\u00020\u00012\u00020\u0002:\u0001<B}\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\r\u001a\u00020\u0004\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0010\u0010\u0011B\u0011\u0008\u0016\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0010\u0010\u0014R&\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR&\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001b\u0010\u0016\u001a\u0004\u0008\u001c\u0010\u0018\"\u0004\u0008\u001d\u0010\u001aR&\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001e\u0010\u0016\u001a\u0004\u0008\u001f\u0010\u0018\"\u0004\u0008 \u0010\u001aR&\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008!\u0010\u0016\u001a\u0004\u0008\"\u0010\u0018\"\u0004\u0008#\u0010\u001aR&\u0010\u0008\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008$\u0010\u0016\u001a\u0004\u0008%\u0010\u0018\"\u0004\u0008&\u0010\u001aR&\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\'\u0010\u0016\u001a\u0004\u0008(\u0010\u0018\"\u0004\u0008)\u0010\u001aR&\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008*\u0010\u0016\u001a\u0004\u0008+\u0010\u0018\"\u0004\u0008,\u0010\u001aR&\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008-\u0010\u0016\u001a\u0004\u0008.\u0010\u0018\"\u0004\u0008/\u0010\u001aR&\u0010\u000c\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u00080\u0010\u0016\u001a\u0004\u00081\u0010\u0018\"\u0004\u00082\u0010\u001aR$\u0010\r\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u00083\u0010\u0016\u001a\u0004\u00084\u0010\u0018\"\u0004\u00085\u0010\u001aR&\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u00086\u0010\u0016\u001a\u0004\u00087\u0010\u0018\"\u0004\u00088\u0010\u001aR&\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u00089\u0010\u0016\u001a\u0004\u0008:\u0010\u0018\"\u0004\u0008;\u0010\u001a\u00a8\u0006="
    }
    d2 = {
        "Lexpo/modules/location/records/ReverseGeocodeResponse;",
        "Lexpo/modules/kotlin/records/Record;",
        "Ljava/io/Serializable;",
        "city",
        "",
        "district",
        "streetNumber",
        "street",
        "region",
        "subregion",
        "country",
        "postalCode",
        "name",
        "isoCountryCode",
        "timezone",
        "formattedAddress",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "address",
        "Landroid/location/Address;",
        "(Landroid/location/Address;)V",
        "getCity$annotations",
        "()V",
        "getCity",
        "()Ljava/lang/String;",
        "setCity",
        "(Ljava/lang/String;)V",
        "getDistrict$annotations",
        "getDistrict",
        "setDistrict",
        "getStreetNumber$annotations",
        "getStreetNumber",
        "setStreetNumber",
        "getStreet$annotations",
        "getStreet",
        "setStreet",
        "getRegion$annotations",
        "getRegion",
        "setRegion",
        "getSubregion$annotations",
        "getSubregion",
        "setSubregion",
        "getCountry$annotations",
        "getCountry",
        "setCountry",
        "getPostalCode$annotations",
        "getPostalCode",
        "setPostalCode",
        "getName$annotations",
        "getName",
        "setName",
        "getIsoCountryCode$annotations",
        "getIsoCountryCode",
        "setIsoCountryCode",
        "getTimezone$annotations",
        "getTimezone",
        "setTimezone",
        "getFormattedAddress$annotations",
        "getFormattedAddress",
        "setFormattedAddress",
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
.field public static final Companion:Lexpo/modules/location/records/ReverseGeocodeResponse$Companion;


# instance fields
.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private district:Ljava/lang/String;

.field private formattedAddress:Ljava/lang/String;

.field private isoCountryCode:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private postalCode:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private street:Ljava/lang/String;

.field private streetNumber:Ljava/lang/String;

.field private subregion:Ljava/lang/String;

.field private timezone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/location/records/ReverseGeocodeResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/location/records/ReverseGeocodeResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/location/records/ReverseGeocodeResponse;->Companion:Lexpo/modules/location/records/ReverseGeocodeResponse$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/location/Address;)V
    .locals 14

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-virtual {p1}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v3

    .line 191
    invoke-virtual {p1}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v4

    .line 192
    invoke-virtual {p1}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v5

    .line 193
    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v6

    .line 194
    invoke-virtual {p1}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v7

    .line 195
    invoke-virtual {p1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v8

    .line 196
    invoke-virtual {p1}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v9

    .line 197
    invoke-virtual {p1}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v10

    .line 198
    invoke-virtual {p1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v11

    const-string v0, "getCountryCode(...)"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    sget-object v0, Lexpo/modules/location/records/ReverseGeocodeResponse;->Companion:Lexpo/modules/location/records/ReverseGeocodeResponse$Companion;

    invoke-virtual {v0, p1}, Lexpo/modules/location/records/ReverseGeocodeResponse$Companion;->constructFormattedAddress(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v13

    const/4 v12, 0x0

    move-object v1, p0

    .line 188
    invoke-direct/range {v1 .. v13}, Lexpo/modules/location/records/ReverseGeocodeResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "isoCountryCode"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p1, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->city:Ljava/lang/String;

    .line 176
    iput-object p2, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->district:Ljava/lang/String;

    .line 177
    iput-object p3, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->streetNumber:Ljava/lang/String;

    .line 178
    iput-object p4, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->street:Ljava/lang/String;

    .line 179
    iput-object p5, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->region:Ljava/lang/String;

    .line 180
    iput-object p6, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->subregion:Ljava/lang/String;

    .line 181
    iput-object p7, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->country:Ljava/lang/String;

    .line 182
    iput-object p8, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->postalCode:Ljava/lang/String;

    .line 183
    iput-object p9, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->name:Ljava/lang/String;

    .line 184
    iput-object p10, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->isoCountryCode:Ljava/lang/String;

    .line 185
    iput-object p11, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->timezone:Ljava/lang/String;

    .line 186
    iput-object p12, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->formattedAddress:Ljava/lang/String;

    return-void
.end method

.method public static synthetic getCity$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getCountry$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getDistrict$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getFormattedAddress$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getIsoCountryCode$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getName$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getPostalCode$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getRegion$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getStreet$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getStreetNumber$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getSubregion$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getTimezone$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getCity()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->city:Ljava/lang/String;

    return-object v0
.end method

.method public final getCountry()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->country:Ljava/lang/String;

    return-object v0
.end method

.method public final getDistrict()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->district:Ljava/lang/String;

    return-object v0
.end method

.method public final getFormattedAddress()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->formattedAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getIsoCountryCode()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->isoCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPostalCode()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->postalCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getRegion()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->region:Ljava/lang/String;

    return-object v0
.end method

.method public final getStreet()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->street:Ljava/lang/String;

    return-object v0
.end method

.method public final getStreetNumber()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->streetNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubregion()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->subregion:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimezone()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->timezone:Ljava/lang/String;

    return-object v0
.end method

.method public final setCity(Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->city:Ljava/lang/String;

    return-void
.end method

.method public final setCountry(Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->country:Ljava/lang/String;

    return-void
.end method

.method public final setDistrict(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->district:Ljava/lang/String;

    return-void
.end method

.method public final setFormattedAddress(Ljava/lang/String;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->formattedAddress:Ljava/lang/String;

    return-void
.end method

.method public final setIsoCountryCode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    iput-object p1, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->isoCountryCode:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->name:Ljava/lang/String;

    return-void
.end method

.method public final setPostalCode(Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->postalCode:Ljava/lang/String;

    return-void
.end method

.method public final setRegion(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->region:Ljava/lang/String;

    return-void
.end method

.method public final setStreet(Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->street:Ljava/lang/String;

    return-void
.end method

.method public final setStreetNumber(Ljava/lang/String;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->streetNumber:Ljava/lang/String;

    return-void
.end method

.method public final setSubregion(Ljava/lang/String;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->subregion:Ljava/lang/String;

    return-void
.end method

.method public final setTimezone(Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lexpo/modules/location/records/ReverseGeocodeResponse;->timezone:Ljava/lang/String;

    return-void
.end method
