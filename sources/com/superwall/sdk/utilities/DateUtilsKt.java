package com.superwall.sdk.utilities;

import java.text.SimpleDateFormat;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DateUtils.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u001a\u0012\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0012\u0010\u0004\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u0003H\u0000\"\u0014\u0010\u0005\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"dateFormat", "Ljava/text/SimpleDateFormat;", "format", "", "localizedDateFormat", "DateFormatterUtil", "getDateFormatterUtil", "()Ljava/text/SimpleDateFormat;", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class DateUtilsKt {
    private static final SimpleDateFormat DateFormatterUtil = dateFormat$default(null, 1, null);

    public static final SimpleDateFormat dateFormat(String format) {
        Intrinsics.checkNotNullParameter(format, "format");
        return new SimpleDateFormat(format, Locale.US);
    }

    public static /* synthetic */ SimpleDateFormat dateFormat$default(String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = DateUtils.INSTANCE.getISO_MILLIS();
        }
        return dateFormat(str);
    }

    public static final SimpleDateFormat localizedDateFormat(String format) {
        Intrinsics.checkNotNullParameter(format, "format");
        return new SimpleDateFormat(format, Locale.getDefault());
    }

    public static /* synthetic */ SimpleDateFormat localizedDateFormat$default(String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = DateUtils.INSTANCE.getMMM_dd_yyyy();
        }
        return localizedDateFormat(str);
    }

    public static final SimpleDateFormat getDateFormatterUtil() {
        return DateFormatterUtil;
    }
}
