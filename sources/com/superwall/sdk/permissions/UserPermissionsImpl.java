package com.superwall.sdk.permissions;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import androidx.activity.ComponentActivity;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.core.app.ActivityCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.content.ContextCompat;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: compiled from: UserPermissionsImpl.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0000\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\u0007H\u0002J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0002J\b\u0010\f\u001a\u00020\u0007H\u0002J\u001e\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\tH\u0096@¢\u0006\u0002\u0010\u0010J\u0016\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0082@¢\u0006\u0002\u0010\u0012J\u001e\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\tH\u0082@¢\u0006\u0002\u0010\u0010J\u0016\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0082@¢\u0006\u0002\u0010\u0012J\u001e\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0082@¢\u0006\u0002\u0010\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/superwall/sdk/permissions/UserPermissionsImpl;", "Lcom/superwall/sdk/permissions/UserPermissions;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "hasPermission", "Lcom/superwall/sdk/permissions/PermissionStatus;", "permission", "Lcom/superwall/sdk/permissions/PermissionType;", "checkNotificationPermission", "checkRuntimePermission", "checkBackgroundLocationPermission", "requestPermission", "activity", "Landroid/app/Activity;", "(Landroid/app/Activity;Lcom/superwall/sdk/permissions/PermissionType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "requestNotificationPermission", "(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "requestStandardPermission", "requestBackgroundLocationPermission", "requestRuntimePermission", "manifestPermission", "", "(Landroid/app/Activity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class UserPermissionsImpl implements UserPermissions {
    private static final int PERMISSION_REQUEST_CODE = 10001;
    private final Context context;

    /* JADX INFO: compiled from: UserPermissionsImpl.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PermissionType.values().length];
            try {
                iArr[PermissionType.NOTIFICATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PermissionType.LOCATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PermissionType.READ_IMAGES.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PermissionType.CONTACTS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[PermissionType.READ_VIDEO.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[PermissionType.CAMERA.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[PermissionType.MICROPHONE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[PermissionType.BACKGROUND_LOCATION.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.permissions.UserPermissionsImpl$requestBackgroundLocationPermission$1, reason: invalid class name */
    /* JADX INFO: compiled from: UserPermissionsImpl.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.permissions.UserPermissionsImpl", f = "UserPermissionsImpl.kt", i = {0, 0}, l = {166, 177}, m = "requestBackgroundLocationPermission", n = {"this", "activity"}, s = {"L$0", "L$1"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return UserPermissionsImpl.this.requestBackgroundLocationPermission(null, this);
        }
    }

    public UserPermissionsImpl(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    @Override // com.superwall.sdk.permissions.UserPermissions
    public PermissionStatus hasPermission(PermissionType permission) {
        Intrinsics.checkNotNullParameter(permission, "permission");
        switch (WhenMappings.$EnumSwitchMapping$0[permission.ordinal()]) {
            case 1:
                return checkNotificationPermission();
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                return checkRuntimePermission(permission);
            case 8:
                return checkBackgroundLocationPermission();
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    private final PermissionStatus checkNotificationPermission() {
        if (Build.VERSION.SDK_INT >= 33) {
            return ContextCompat.checkSelfPermission(this.context, "android.permission.POST_NOTIFICATIONS") == 0 ? PermissionStatus.GRANTED : PermissionStatus.DENIED;
        }
        NotificationManagerCompat notificationManagerCompatFrom = NotificationManagerCompat.from(this.context);
        Intrinsics.checkNotNullExpressionValue(notificationManagerCompatFrom, "from(...)");
        if (notificationManagerCompatFrom.areNotificationsEnabled()) {
            return PermissionStatus.GRANTED;
        }
        return PermissionStatus.DENIED;
    }

    private final PermissionStatus checkRuntimePermission(PermissionType permission) {
        String manifestPermission = permission.toManifestPermission();
        if (manifestPermission == null) {
            return PermissionStatus.UNSUPPORTED;
        }
        return ContextCompat.checkSelfPermission(this.context, manifestPermission) == 0 ? PermissionStatus.GRANTED : PermissionStatus.DENIED;
    }

    private final PermissionStatus checkBackgroundLocationPermission() {
        if (Build.VERSION.SDK_INT < 29) {
            return PermissionStatus.UNSUPPORTED;
        }
        if (ContextCompat.checkSelfPermission(this.context, "android.permission.ACCESS_FINE_LOCATION") == 0) {
            return ContextCompat.checkSelfPermission(this.context, "android.permission.ACCESS_BACKGROUND_LOCATION") == 0 ? PermissionStatus.GRANTED : PermissionStatus.DENIED;
        }
        return PermissionStatus.DENIED;
    }

    @Override // com.superwall.sdk.permissions.UserPermissions
    public Object requestPermission(Activity activity, PermissionType permissionType, Continuation<? super PermissionStatus> continuation) {
        switch (WhenMappings.$EnumSwitchMapping$0[permissionType.ordinal()]) {
            case 1:
                return requestNotificationPermission(activity, continuation);
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                return requestStandardPermission(activity, permissionType, continuation);
            case 8:
                return requestBackgroundLocationPermission(activity, continuation);
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object requestNotificationPermission(Activity activity, Continuation<? super PermissionStatus> continuation) {
        PermissionStatus permissionStatusHasPermission = hasPermission(PermissionType.NOTIFICATION);
        if (permissionStatusHasPermission == PermissionStatus.GRANTED) {
            return PermissionStatus.GRANTED;
        }
        if (Build.VERSION.SDK_INT < 33) {
            return permissionStatusHasPermission;
        }
        String manifestPermission = PermissionType.NOTIFICATION.toManifestPermission();
        if (manifestPermission == null) {
            return PermissionStatus.UNSUPPORTED;
        }
        return requestRuntimePermission(activity, manifestPermission, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object requestStandardPermission(Activity activity, PermissionType permissionType, Continuation<? super PermissionStatus> continuation) {
        if (hasPermission(permissionType) == PermissionStatus.GRANTED) {
            return PermissionStatus.GRANTED;
        }
        String manifestPermission = permissionType.toManifestPermission();
        if (manifestPermission == null) {
            return PermissionStatus.UNSUPPORTED;
        }
        return requestRuntimePermission(activity, manifestPermission, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:38:0x0086  */
    /* JADX WARN: Code duplicated, block: B:40:0x0089  */
    /* JADX WARN: Code duplicated, block: B:43:0x0097 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object requestBackgroundLocationPermission(Activity activity, Continuation<? super PermissionStatus> continuation) {
        AnonymousClass1 anonymousClass1;
        UserPermissionsImpl userPermissionsImpl;
        String manifestPermission;
        Object objRequestRuntimePermission;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object objRequestStandardPermission = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objRequestStandardPermission);
            if (Build.VERSION.SDK_INT < 29) {
                return PermissionStatus.UNSUPPORTED;
            }
            if (hasPermission(PermissionType.BACKGROUND_LOCATION) == PermissionStatus.GRANTED) {
                return PermissionStatus.GRANTED;
            }
            if (hasPermission(PermissionType.LOCATION) != PermissionStatus.GRANTED) {
                PermissionType permissionType = PermissionType.LOCATION;
                anonymousClass1.L$0 = this;
                anonymousClass1.L$1 = activity;
                anonymousClass1.label = 1;
                objRequestStandardPermission = requestStandardPermission(activity, permissionType, anonymousClass1);
                if (objRequestStandardPermission != coroutine_suspended) {
                    userPermissionsImpl = this;
                }
            } else {
                userPermissionsImpl = this;
                manifestPermission = PermissionType.BACKGROUND_LOCATION.toManifestPermission();
                if (manifestPermission == null) {
                    return PermissionStatus.UNSUPPORTED;
                }
                anonymousClass1.L$0 = null;
                anonymousClass1.L$1 = null;
                anonymousClass1.label = 2;
                objRequestRuntimePermission = userPermissionsImpl.requestRuntimePermission(activity, manifestPermission, anonymousClass1);
                if (objRequestRuntimePermission != coroutine_suspended) {
                    return objRequestRuntimePermission;
                }
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objRequestStandardPermission);
            return objRequestStandardPermission;
        }
        activity = (Activity) anonymousClass1.L$1;
        userPermissionsImpl = (UserPermissionsImpl) anonymousClass1.L$0;
        ResultKt.throwOnFailure(objRequestStandardPermission);
        if (((PermissionStatus) objRequestStandardPermission) != PermissionStatus.GRANTED) {
            return PermissionStatus.DENIED;
        }
        manifestPermission = PermissionType.BACKGROUND_LOCATION.toManifestPermission();
        if (manifestPermission == null) {
            return PermissionStatus.UNSUPPORTED;
        }
        anonymousClass1.L$0 = null;
        anonymousClass1.L$1 = null;
        anonymousClass1.label = 2;
        objRequestRuntimePermission = userPermissionsImpl.requestRuntimePermission(activity, manifestPermission, anonymousClass1);
        if (objRequestRuntimePermission != coroutine_suspended) {
            return coroutine_suspended;
        }
        return objRequestRuntimePermission;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v12, types: [T, androidx.activity.result.ActivityResultLauncher] */
    public final Object requestRuntimePermission(Activity activity, String str, Continuation<? super PermissionStatus> continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        final CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
        if (activity instanceof ComponentActivity) {
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = ((ComponentActivity) activity).getActivityResultRegistry().register("permission_request_" + System.currentTimeMillis(), new ActivityResultContracts.RequestPermission(), new ActivityResultCallback() { // from class: com.superwall.sdk.permissions.UserPermissionsImpl$requestRuntimePermission$2$1
                @Override // androidx.activity.result.ActivityResultCallback
                public /* bridge */ /* synthetic */ void onActivityResult(Object obj) {
                    onActivityResult(((Boolean) obj).booleanValue());
                }

                public final void onActivityResult(boolean z) {
                    ActivityResultLauncher<String> activityResultLauncher = objectRef.element;
                    if (activityResultLauncher != null) {
                        activityResultLauncher.unregister();
                    }
                    PermissionStatus permissionStatus = z ? PermissionStatus.GRANTED : PermissionStatus.DENIED;
                    if (cancellableContinuationImpl2.isActive()) {
                        CancellableContinuation<PermissionStatus> cancellableContinuation = cancellableContinuationImpl2;
                        Result.Companion companion = Result.INSTANCE;
                        cancellableContinuation.resumeWith(Result.m11241constructorimpl(permissionStatus));
                    }
                }
            });
            cancellableContinuationImpl2.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: com.superwall.sdk.permissions.UserPermissionsImpl$requestRuntimePermission$2$2
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Throwable th) {
                    objectRef.element.unregister();
                }
            });
            ((ActivityResultLauncher) objectRef.element).launch(str);
        } else {
            ActivityCompat.requestPermissions(activity, new String[]{str}, PERMISSION_REQUEST_CODE);
            boolean z = ContextCompat.checkSelfPermission(activity, str) == 0;
            if (cancellableContinuationImpl2.isActive()) {
                CancellableContinuationImpl cancellableContinuationImpl3 = cancellableContinuationImpl2;
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuationImpl3.resumeWith(Result.m11241constructorimpl(z ? PermissionStatus.GRANTED : PermissionStatus.DENIED));
            }
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }
}
