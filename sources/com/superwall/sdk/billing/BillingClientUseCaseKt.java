package com.superwall.sdk.billing;

import kotlin.Metadata;

/* JADX INFO: compiled from: BillingClientUseCase.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\"\u000e\u0010\n\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\f\u001a\u00020\u0002X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\u0002X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\u0002X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000f\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000*\u0088\u0001\b\u0000\u0010\u0000\"@\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005\u0012!\u0012\u001f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\b0\u00012@\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005\u0012!\u0012\u001f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\b0\u0001¨\u0006\u0010"}, d2 = {"ExecuteRequestOnUIThreadFunction", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", "delayInMillis", "Lkotlin/Function1;", "Lcom/superwall/sdk/billing/BillingError;", "", "onError", "MAX_RETRIES_DEFAULT", "", "RETRY_TIMER_START_MILLISECONDS", "RETRY_TIMER_MAX_TIME_MILLISECONDS", "FOREGROUND_BACKOFF_START_MILLISECONDS", "FOREGROUND_BACKOFF_MAX_ATTEMPTS", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class BillingClientUseCaseKt {
    private static final int FOREGROUND_BACKOFF_MAX_ATTEMPTS = 2;
    private static final long FOREGROUND_BACKOFF_START_MILLISECONDS = 250;
    private static final int MAX_RETRIES_DEFAULT = 3;
    public static final long RETRY_TIMER_MAX_TIME_MILLISECONDS = 900000;
    private static final long RETRY_TIMER_START_MILLISECONDS = 878;
}
