.class public final Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;
.super Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;
.source "SuperwallEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SurveyResponse"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\tH\u00c6\u0003J3\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u00d6\u0003J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001J\t\u0010!\u001a\u00020\u0007H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0011\u00a8\u0006\""
    }
    d2 = {
        "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;",
        "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;",
        "survey",
        "Lcom/superwall/sdk/config/models/Survey;",
        "selectedOption",
        "Lcom/superwall/sdk/config/models/SurveyOption;",
        "customResponse",
        "",
        "paywallInfo",
        "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
        "<init>",
        "(Lcom/superwall/sdk/config/models/Survey;Lcom/superwall/sdk/config/models/SurveyOption;Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V",
        "getSurvey",
        "()Lcom/superwall/sdk/config/models/Survey;",
        "getSelectedOption",
        "()Lcom/superwall/sdk/config/models/SurveyOption;",
        "getCustomResponse",
        "()Ljava/lang/String;",
        "getPaywallInfo",
        "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
        "rawName",
        "getRawName",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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


# instance fields
.field private final customResponse:Ljava/lang/String;

.field private final paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

.field private final selectedOption:Lcom/superwall/sdk/config/models/SurveyOption;

.field private final survey:Lcom/superwall/sdk/config/models/Survey;


# direct methods
.method public constructor <init>(Lcom/superwall/sdk/config/models/Survey;Lcom/superwall/sdk/config/models/SurveyOption;Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V
    .locals 1

    const-string/jumbo v0, "survey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "selectedOption"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paywallInfo"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 407
    invoke-direct {p0, v0}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 403
    iput-object p1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->survey:Lcom/superwall/sdk/config/models/Survey;

    .line 404
    iput-object p2, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->selectedOption:Lcom/superwall/sdk/config/models/SurveyOption;

    .line 405
    iput-object p3, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->customResponse:Ljava/lang/String;

    .line 406
    iput-object p4, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;Lcom/superwall/sdk/config/models/Survey;Lcom/superwall/sdk/config/models/SurveyOption;Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;ILjava/lang/Object;)Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->survey:Lcom/superwall/sdk/config/models/Survey;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->selectedOption:Lcom/superwall/sdk/config/models/SurveyOption;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->customResponse:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->copy(Lcom/superwall/sdk/config/models/Survey;Lcom/superwall/sdk/config/models/SurveyOption;Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/superwall/sdk/config/models/Survey;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->survey:Lcom/superwall/sdk/config/models/Survey;

    return-object v0
.end method

.method public final component2()Lcom/superwall/sdk/config/models/SurveyOption;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->selectedOption:Lcom/superwall/sdk/config/models/SurveyOption;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->customResponse:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    return-object v0
.end method

.method public final copy(Lcom/superwall/sdk/config/models/Survey;Lcom/superwall/sdk/config/models/SurveyOption;Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;
    .locals 1

    const-string/jumbo v0, "survey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "selectedOption"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paywallInfo"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;-><init>(Lcom/superwall/sdk/config/models/Survey;Lcom/superwall/sdk/config/models/SurveyOption;Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;

    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->survey:Lcom/superwall/sdk/config/models/Survey;

    iget-object v3, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->survey:Lcom/superwall/sdk/config/models/Survey;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->selectedOption:Lcom/superwall/sdk/config/models/SurveyOption;

    iget-object v3, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->selectedOption:Lcom/superwall/sdk/config/models/SurveyOption;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->customResponse:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->customResponse:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    iget-object p1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCustomResponse()Ljava/lang/String;
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->customResponse:Ljava/lang/String;

    return-object v0
.end method

.method public final getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    return-object v0
.end method

.method public getRawName()Ljava/lang/String;
    .locals 1

    .line 409
    const-string/jumbo v0, "survey_response"

    return-object v0
.end method

.method public final getSelectedOption()Lcom/superwall/sdk/config/models/SurveyOption;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->selectedOption:Lcom/superwall/sdk/config/models/SurveyOption;

    return-object v0
.end method

.method public final getSurvey()Lcom/superwall/sdk/config/models/Survey;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->survey:Lcom/superwall/sdk/config/models/Survey;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->survey:Lcom/superwall/sdk/config/models/Survey;

    invoke-virtual {v0}, Lcom/superwall/sdk/config/models/Survey;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->selectedOption:Lcom/superwall/sdk/config/models/SurveyOption;

    invoke-virtual {v1}, Lcom/superwall/sdk/config/models/SurveyOption;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->customResponse:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->survey:Lcom/superwall/sdk/config/models/Survey;

    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->selectedOption:Lcom/superwall/sdk/config/models/SurveyOption;

    iget-object v2, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->customResponse:Ljava/lang/String;

    iget-object v3, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SurveyResponse(survey="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", selectedOption="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", customResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paywallInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
