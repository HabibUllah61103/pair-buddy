package com.superwall.sdk.permissions;

import android.app.Activity;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: UserPermissions.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u001e\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u0005H¦@¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/permissions/UserPermissions;", "", "hasPermission", "Lcom/superwall/sdk/permissions/PermissionStatus;", "permission", "Lcom/superwall/sdk/permissions/PermissionType;", "requestPermission", "activity", "Landroid/app/Activity;", "(Landroid/app/Activity;Lcom/superwall/sdk/permissions/PermissionType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface UserPermissions {
    PermissionStatus hasPermission(PermissionType permission);

    Object requestPermission(Activity activity, PermissionType permissionType, Continuation<? super PermissionStatus> continuation);
}
