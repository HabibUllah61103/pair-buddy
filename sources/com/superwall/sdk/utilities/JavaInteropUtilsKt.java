package com.superwall.sdk.utilities;

import androidx.exifinterface.media.ExifInterface;
import com.google.firebase.messaging.Constants;
import com.reactcommunity.rndatetimepicker.RNConstants;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: JavaInteropUtils.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0001\n\u0002\u0010\u0003\n\u0002\b\u0003\u001a\u001f\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002¢\u0006\u0002\u0010\u0004\u001a#\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0001\"\b\b\u0000\u0010\u0002*\u00020\u00072\u0006\u0010\b\u001a\u0002H\u0002¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"createSuccessResult", "Lkotlin/Result;", ExifInterface.GPS_DIRECTION_TRUE, RNConstants.ARG_VALUE, "(Ljava/lang/Object;)Ljava/lang/Object;", "createFailureResult", "", "", Constants.IPC_BUNDLE_KEY_SEND_ERROR, "(Ljava/lang/Throwable;)Ljava/lang/Object;", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class JavaInteropUtilsKt {
    public static final <T> Object createSuccessResult(T t) {
        Result.Companion companion = Result.INSTANCE;
        return Result.m11241constructorimpl(t);
    }

    public static final <T extends Throwable> Object createFailureResult(T error) {
        Intrinsics.checkNotNullParameter(error, "error");
        Result.Companion companion = Result.INSTANCE;
        return Result.m11241constructorimpl(ResultKt.createFailure(error));
    }
}
