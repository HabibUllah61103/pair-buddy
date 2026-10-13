package expo.modules.core.interfaces;

import com.facebook.react.turbomodule.core.CallInvokerHolderImpl;

/* JADX INFO: loaded from: classes6.dex */
public interface JavaScriptContextProvider {
    CallInvokerHolderImpl getJSCallInvokerHolder();

    long getJavaScriptContextRef();
}
