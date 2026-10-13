.class public Lcom/reactcommunity/rndatetimepicker/Common;
.super Ljava/lang/Object;
.source "Common.java"


# static fields
.field public static final LABEL:Ljava/lang/String; = "label"

.field public static final NEGATIVE:Ljava/lang/String; = "negative"

.field public static final NEUTRAL:Ljava/lang/String; = "neutral"

.field public static final POSITIVE:Ljava/lang/String; = "positive"

.field public static final TEXT_COLOR:Ljava/lang/String; = "textColor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs combine([Landroid/content/DialogInterface$OnShowListener;)Landroid/content/DialogInterface$OnShowListener;
    .locals 1

    .line 116
    new-instance v0, Lcom/reactcommunity/rndatetimepicker/Common$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/reactcommunity/rndatetimepicker/Common$$ExternalSyntheticLambda1;-><init>([Landroid/content/DialogInterface$OnShowListener;)V

    return-object v0
.end method

.method public static createDatePickerArguments(Lcom/facebook/react/bridge/ReadableMap;)Landroid/os/Bundle;
    .locals 4

    .line 248
    invoke-static {p0}, Lcom/reactcommunity/rndatetimepicker/Common;->createFragmentArguments(Lcom/facebook/react/bridge/ReadableMap;)Landroid/os/Bundle;

    move-result-object v0

    .line 250
    const-string v1, "minimumDate"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 253
    :cond_0
    const-string v1, "maximumDate"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 254
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 256
    :cond_1
    const-string v1, "display"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 257
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_2
    const-string v1, "dialogButtons"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 260
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/react/bridge/Arguments;->toBundle(Lcom/facebook/react/bridge/ReadableMap;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 262
    :cond_3
    const-string v1, "timeZoneOffsetInMinutes"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 263
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 265
    :cond_4
    const-string v1, "testID"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 266
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_5
    const-string v1, "fullscreen"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 269
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 271
    :cond_6
    const-string v1, "firstDayOfWeek"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 274
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 276
    :cond_7
    const-string v1, "startOnYearSelection"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 277
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_8
    return-object v0
.end method

.method public static createFragmentArguments(Lcom/facebook/react/bridge/ReadableMap;)Landroid/os/Bundle;
    .locals 4

    .line 229
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 231
    const-string v1, "value"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 232
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 234
    :cond_0
    const-string v1, "timeZoneName"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 235
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_1
    const-string v1, "title"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 238
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_2
    const-string v1, "initialInputMode"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 241
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method public static createTimePickerArguments(Lcom/facebook/react/bridge/ReadableMap;)Landroid/os/Bundle;
    .locals 4

    .line 283
    invoke-static {p0}, Lcom/reactcommunity/rndatetimepicker/Common;->createFragmentArguments(Lcom/facebook/react/bridge/ReadableMap;)Landroid/os/Bundle;

    move-result-object v0

    .line 285
    const-string v1, "is24Hour"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 286
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 288
    :cond_0
    const-string v1, "display"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 289
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_1
    const-string v1, "dialogButtons"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 292
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/react/bridge/Arguments;->toBundle(Lcom/facebook/react/bridge/ReadableMap;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 294
    :cond_2
    const-string v1, "minuteInterval"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 295
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 297
    :cond_3
    const-string v1, "timeZoneOffsetInMinutes"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 298
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_4
    return-object v0
.end method

.method public static dismissDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    if-nez p0, :cond_0

    .line 45
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Tried to close a "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " dialog while not attached to an Activity"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "E_NO_ACTIVITY"

    invoke-interface {p2, p1, p0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 52
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 53
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/DialogFragment;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 60
    :cond_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 62
    invoke-interface {p2, p0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static getButtonColor(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    .line 133
    const-string v0, "dialogButtons"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 137
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 142
    :cond_1
    const-string p1, "textColor"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide p0

    double-to-int p0, p0

    if-nez p0, :cond_2

    return-object v0

    .line 146
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultDialogButtonTextColor(Landroid/content/Context;)I
    .locals 4

    .line 67
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010036

    const/4 v3, 0x1

    .line 69
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 71
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_0

    .line 73
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 76
    :cond_0
    iget p0, v0, Landroid/util/TypedValue;->data:I

    return p0
.end method

.method public static getDisplayDate(Landroid/os/Bundle;)Lcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;
    .locals 3

    .line 158
    sget-object v0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;->DEFAULT:Lcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 159
    const-string v2, "display"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;->valueOf(Ljava/lang/String;)Lcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static getDisplayTime(Landroid/os/Bundle;)Lcom/reactcommunity/rndatetimepicker/RNTimePickerDisplay;
    .locals 3

    .line 150
    sget-object v0, Lcom/reactcommunity/rndatetimepicker/RNTimePickerDisplay;->DEFAULT:Lcom/reactcommunity/rndatetimepicker/RNTimePickerDisplay;

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 151
    const-string v2, "display"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/reactcommunity/rndatetimepicker/RNTimePickerDisplay;->valueOf(Ljava/lang/String;)Lcom/reactcommunity/rndatetimepicker/RNTimePickerDisplay;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static getTimeZone(Landroid/os/Bundle;)Ljava/util/TimeZone;
    .locals 5

    .line 183
    const-string v0, "GMT"

    if-eqz p0, :cond_0

    const-string v1, "timeZoneOffsetInMinutes"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    new-instance v2, Ljava/util/SimpleTimeZone;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    long-to-int p0, v3

    const v1, 0xea60

    mul-int/2addr p0, v1

    invoke-direct {v2, p0, v0}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    return-object v2

    :cond_0
    if-eqz p0, :cond_3

    .line 187
    const-string v1, "timeZoneName"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 188
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 189
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    return-object p0

    .line 191
    :cond_1
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 192
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    return-object p0

    .line 194
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\' does not exist in TimeZone.getAvailableIDs(). Falling back to TimeZone.getDefault()="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/facebook/react/util/RNLog;->w(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;)V

    .line 197
    :cond_3
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$combine$2([Landroid/content/DialogInterface$OnShowListener;Landroid/content/DialogInterface;)V
    .locals 3

    .line 117
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 118
    invoke-interface {v2, p1}, Landroid/content/DialogInterface$OnShowListener;->onShow(Landroid/content/DialogInterface;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$openYearDialog$1(ZLandroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 101
    instance-of p0, p1, Landroid/app/DatePickerDialog;

    if-eqz p0, :cond_1

    check-cast p1, Landroid/app/DatePickerDialog;

    .line 102
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object p0

    .line 104
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "id"

    const-string v0, "android"

    const-string v1, "date_picker_header_year"

    invoke-virtual {p1, v1, p2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$setButtonTextColor$0(Landroid/app/AlertDialog;Landroid/content/Context;Landroid/os/Bundle;ZLandroid/content/DialogInterface;)V
    .locals 2

    const/4 p4, -0x1

    .line 87
    invoke-virtual {p0, p4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p4

    const/4 v0, -0x2

    .line 88
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, -0x3

    .line 89
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    .line 91
    invoke-static {p1}, Lcom/reactcommunity/rndatetimepicker/Common;->getDefaultDialogButtonTextColor(Landroid/content/Context;)I

    move-result p1

    .line 92
    const-string v1, "positive"

    invoke-static {p4, v1, p2, p3, p1}, Lcom/reactcommunity/rndatetimepicker/Common;->setTextColor(Landroid/widget/Button;Ljava/lang/String;Landroid/os/Bundle;ZI)V

    .line 93
    const-string p4, "negative"

    invoke-static {v0, p4, p2, p3, p1}, Lcom/reactcommunity/rndatetimepicker/Common;->setTextColor(Landroid/widget/Button;Ljava/lang/String;Landroid/os/Bundle;ZI)V

    .line 94
    const-string p4, "neutral"

    invoke-static {p0, p4, p2, p3, p1}, Lcom/reactcommunity/rndatetimepicker/Common;->setTextColor(Landroid/widget/Button;Ljava/lang/String;Landroid/os/Bundle;ZI)V

    return-void
.end method

.method public static maxDateWithTimeZone(Landroid/os/Bundle;)J
    .locals 4

    .line 201
    const-string v0, "maximumDate"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 205
    :cond_0
    invoke-static {p0}, Lcom/reactcommunity/rndatetimepicker/Common;->getTimeZone(Landroid/os/Bundle;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 206
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p0, 0xb

    const/16 v0, 0x17

    .line 207
    invoke-virtual {v1, p0, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    const/16 v0, 0x3b

    .line 208
    invoke-virtual {v1, p0, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    .line 209
    invoke-virtual {v1, p0, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    const/16 v0, 0x3e7

    .line 210
    invoke-virtual {v1, p0, v0}, Ljava/util/Calendar;->set(II)V

    .line 211
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static minDateWithTimeZone(Landroid/os/Bundle;)J
    .locals 4

    .line 215
    const-string v0, "minimumDate"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 219
    :cond_0
    invoke-static {p0}, Lcom/reactcommunity/rndatetimepicker/Common;->getTimeZone(Landroid/os/Bundle;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 220
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p0, 0xb

    const/4 v0, 0x0

    .line 221
    invoke-virtual {v1, p0, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 222
    invoke-virtual {v1, p0, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    .line 223
    invoke-virtual {v1, p0, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    .line 224
    invoke-virtual {v1, p0, v0}, Ljava/util/Calendar;->set(II)V

    .line 225
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static openYearDialog(Landroid/app/AlertDialog;Z)Landroid/content/DialogInterface$OnShowListener;
    .locals 1

    .line 100
    new-instance v0, Lcom/reactcommunity/rndatetimepicker/Common$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p0}, Lcom/reactcommunity/rndatetimepicker/Common$$ExternalSyntheticLambda2;-><init>(ZLandroid/app/AlertDialog;)V

    return-object v0
.end method

.method private static setButtonLabel(Landroid/os/Bundle;Landroid/app/AlertDialog;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 176
    const-string v0, "label"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0, p3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setButtonTextColor(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/os/Bundle;Z)Landroid/content/DialogInterface$OnShowListener;
    .locals 1

    .line 83
    new-instance v0, Lcom/reactcommunity/rndatetimepicker/Common$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/reactcommunity/rndatetimepicker/Common$$ExternalSyntheticLambda0;-><init>(Landroid/app/AlertDialog;Landroid/content/Context;Landroid/os/Bundle;Z)V

    return-object v0
.end method

.method public static setButtonTitles(Landroid/os/Bundle;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 166
    const-string v0, "dialogButtons"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 170
    :cond_0
    const-string v0, "neutral"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, -0x3

    invoke-static {v0, p1, v1, p2}, Lcom/reactcommunity/rndatetimepicker/Common;->setButtonLabel(Landroid/os/Bundle;Landroid/app/AlertDialog;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 171
    const-string p2, "positive"

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, -0x1

    invoke-static {p2, p1, v1, v0}, Lcom/reactcommunity/rndatetimepicker/Common;->setButtonLabel(Landroid/os/Bundle;Landroid/app/AlertDialog;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 172
    const-string p2, "negative"

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const/4 p2, -0x2

    invoke-static {p0, p1, p2, v0}, Lcom/reactcommunity/rndatetimepicker/Common;->setButtonLabel(Landroid/os/Bundle;Landroid/app/AlertDialog;ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private static setTextColor(Landroid/widget/Button;Ljava/lang/String;Landroid/os/Bundle;ZI)V
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {p2, p1}, Lcom/reactcommunity/rndatetimepicker/Common;->getButtonColor(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p3, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 128
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p4

    :cond_3
    invoke-virtual {p0, p4}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method
