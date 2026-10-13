package expo.modules.securestore;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.Log;
import androidx.exifinterface.media.ExifInterface;
import androidx.tracing.Trace;
import com.facebook.imageutils.JfifUtil;
import com.reactcommunity.rndatetimepicker.RNConstants;
import expo.modules.kotlin.events.BasicEventListener;
import expo.modules.kotlin.events.EventName;
import expo.modules.kotlin.exception.CodedException;
import expo.modules.kotlin.exception.Exceptions;
import expo.modules.kotlin.functions.AsyncFunctionBuilder;
import expo.modules.kotlin.functions.BoolAsyncFunctionComponent;
import expo.modules.kotlin.functions.DoubleAsyncFunctionComponent;
import expo.modules.kotlin.functions.FloatAsyncFunctionComponent;
import expo.modules.kotlin.functions.IntAsyncFunctionComponent;
import expo.modules.kotlin.functions.StringAsyncFunctionComponent;
import expo.modules.kotlin.functions.SuspendFunctionComponent;
import expo.modules.kotlin.functions.SyncFunctionComponent;
import expo.modules.kotlin.functions.UntypedAsyncFunctionComponent;
import expo.modules.kotlin.modules.Module;
import expo.modules.kotlin.modules.ModuleDefinitionBuilder;
import expo.modules.kotlin.modules.ModuleDefinitionData;
import expo.modules.kotlin.types.AnyType;
import expo.modules.kotlin.types.AnyTypeProvider;
import expo.modules.kotlin.types.LazyKType;
import expo.modules.kotlin.types.ReturnType;
import expo.modules.kotlin.types.ReturnTypeProvider;
import expo.modules.kotlin.types.TypeConverterProvider;
import expo.modules.securestore.encryptors.AESEncryptor;
import expo.modules.securestore.encryptors.HybridAESEncryptor;
import expo.modules.securestore.encryptors.KeyBasedEncryptor;
import java.io.IOException;
import java.security.KeyStore;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableEntryException;
import java.security.cert.CertificateException;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KType;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: SecureStoreModule.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0016\u0018\u0000 ;2\u00020\u0001:\u0001;B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0010\u001a\u00020\u0011H\u0016J \u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0016H\u0082@¢\u0006\u0002\u0010\u0017J(\u0010\u0018\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0015\u001a\u00020\u0016H\u0082@¢\u0006\u0002\u0010\u001bJ0\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0014\u001a\u00020\u00132\b\u0010\u001e\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020 H\u0082@¢\u0006\u0002\u0010!J0\u0010\"\u001a\u00020 2\u0006\u0010#\u001a\u00020$2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010%\u001a\u00020 2\u0006\u0010&\u001a\u00020\u0013H\u0002J\u0018\u0010'\u001a\u00020\u001d2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0018\u0010(\u001a\u00020\u001d2\u0006\u0010)\u001a\u00020\u00132\u0006\u0010&\u001a\u00020\u0013H\u0002J\u0010\u0010*\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020\u0013H\u0002J=\u0010+\u001a\u0004\u0018\u0001H,\"\b\b\u0000\u0010,*\u00020-2\f\u0010.\u001a\b\u0012\u0004\u0012\u0002H,0/2\f\u00100\u001a\b\u0012\u0004\u0012\u0002H,012\u0006\u0010\u0015\u001a\u00020\u0016H\u0002¢\u0006\u0002\u00102JE\u00103\u001a\u0004\u0018\u0001H,\"\b\b\u0000\u0010,*\u00020-2\f\u0010.\u001a\b\u0012\u0004\u0012\u0002H,0/2\f\u00100\u001a\b\u0012\u0004\u0012\u0002H,012\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010%\u001a\u00020 H\u0002¢\u0006\u0002\u00104JC\u00105\u001a\u0002H,\"\b\b\u0000\u0010,*\u00020-2\f\u0010.\u001a\b\u0012\u0004\u0012\u0002H,0/2\f\u00100\u001a\b\u0012\u0004\u0012\u0002H,012\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010%\u001a\u00020 H\u0002¢\u0006\u0002\u00104JM\u00106\u001a\u0004\u0018\u0001H,\"\b\b\u0000\u0010,*\u00020-2\f\u0010.\u001a\b\u0012\u0004\u0012\u0002H,0/2\f\u00100\u001a\b\u0012\u0004\u0012\u0002H,012\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010%\u001a\u00020 2\u0006\u00107\u001a\u00020 H\u0002¢\u0006\u0002\u00108J\u0006\u00109\u001a\u00020\u001aJ\u0018\u0010:\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010&\u001a\u00020\u0013H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.¢\u0006\u0002\n\u0000¨\u0006<"}, d2 = {"Lexpo/modules/securestore/SecureStoreModule;", "Lexpo/modules/kotlin/modules/Module;", "<init>", "()V", "mAESEncryptor", "Lexpo/modules/securestore/encryptors/AESEncryptor;", "reactContext", "Landroid/content/Context;", "getReactContext", "()Landroid/content/Context;", "keyStore", "Ljava/security/KeyStore;", "hybridAESEncryptor", "Lexpo/modules/securestore/encryptors/HybridAESEncryptor;", "authenticationHelper", "Lexpo/modules/securestore/AuthenticationHelper;", "definition", "Lexpo/modules/kotlin/modules/ModuleDefinitionData;", "getItemImpl", "", "key", "options", "Lexpo/modules/securestore/SecureStoreOptions;", "(Ljava/lang/String;Lexpo/modules/securestore/SecureStoreOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "readJSONEncodedItem", "prefs", "Landroid/content/SharedPreferences;", "(Ljava/lang/String;Landroid/content/SharedPreferences;Lexpo/modules/securestore/SecureStoreOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setItemImpl", "", RNConstants.ARG_VALUE, "keyIsInvalidated", "", "(Ljava/lang/String;Ljava/lang/String;Lexpo/modules/securestore/SecureStoreOptions;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "saveEncryptedItem", "encryptedItem", "Lorg/json/JSONObject;", AuthenticationHelper.REQUIRE_AUTHENTICATION_PROPERTY, "keychainService", "deleteItemImpl", "removeKeyFromKeystore", "keyStoreAlias", "removeAllEntriesUnderKeychainService", "getLegacyKeyEntry", ExifInterface.LONGITUDE_EAST, "Ljava/security/KeyStore$Entry;", "keyStoreEntryClass", "Ljava/lang/Class;", "encryptor", "Lexpo/modules/securestore/encryptors/KeyBasedEncryptor;", "(Ljava/lang/Class;Lexpo/modules/securestore/encryptors/KeyBasedEncryptor;Lexpo/modules/securestore/SecureStoreOptions;)Ljava/security/KeyStore$Entry;", "getKeyEntry", "(Ljava/lang/Class;Lexpo/modules/securestore/encryptors/KeyBasedEncryptor;Lexpo/modules/securestore/SecureStoreOptions;Z)Ljava/security/KeyStore$Entry;", "getOrCreateKeyEntry", "getKeyEntryCompat", SecureStoreModule.USES_KEYSTORE_SUFFIX_PROPERTY, "(Ljava/lang/Class;Lexpo/modules/securestore/encryptors/KeyBasedEncryptor;Lexpo/modules/securestore/SecureStoreOptions;ZZ)Ljava/security/KeyStore$Entry;", "getSharedPreferences", "createKeychainAwareKey", "Companion", "expo-secure-store_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class SecureStoreModule extends Module {
    public static final String AUTHENTICATED_KEYSTORE_SUFFIX = "keystoreAuthenticated";
    public static final String DEFAULT_KEYSTORE_ALIAS = "key_v1";
    private static final String KEYSTORE_ALIAS_PROPERTY = "keystoreAlias";
    private static final String KEYSTORE_PROVIDER = "AndroidKeyStore";
    private static final String SCHEME_PROPERTY = "scheme";
    private static final String SHARED_PREFERENCES_NAME = "SecureStore";
    public static final String TAG = "ExpoSecureStore";
    public static final String UNAUTHENTICATED_KEYSTORE_SUFFIX = "keystoreUnauthenticated";
    public static final String USES_KEYSTORE_SUFFIX_PROPERTY = "usesKeystoreSuffix";
    private AuthenticationHelper authenticationHelper;
    private HybridAESEncryptor hybridAESEncryptor;
    private KeyStore keyStore;
    private final AESEncryptor mAESEncryptor = new AESEncryptor();

    /* JADX INFO: renamed from: expo.modules.securestore.SecureStoreModule$readJSONEncodedItem$1, reason: invalid class name */
    /* JADX INFO: compiled from: SecureStoreModule.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "expo.modules.securestore.SecureStoreModule", f = "SecureStoreModule.kt", i = {0, 0, 1, 1}, l = {145, 150}, m = "readJSONEncodedItem", n = {"key", "options", "key", "options"}, s = {"L$0", "L$1", "L$0", "L$1"})
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
            return SecureStoreModule.this.readJSONEncodedItem(null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: expo.modules.securestore.SecureStoreModule$setItemImpl$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SecureStoreModule.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "expo.modules.securestore.SecureStoreModule", f = "SecureStoreModule.kt", i = {0, 0, 0, 0, 0, 0}, l = {204, JfifUtil.MARKER_RST7}, m = "setItemImpl", n = {"key", RNConstants.ARG_VALUE, "options", "keychainAwareKey", "prefs", "keyIsInvalidated"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "Z$0"})
    static final class C07001 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        C07001(Continuation<? super C07001> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SecureStoreModule.this.setItemImpl(null, null, null, false, this);
        }
    }

    public Context getReactContext() throws Exceptions.ReactContextLost {
        Context reactContext = getAppContext().getReactContext();
        if (reactContext != null) {
            return reactContext;
        }
        throw new Exceptions.ReactContextLost();
    }

    @Override // expo.modules.kotlin.modules.Module
    public ModuleDefinitionData definition() {
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent;
        SecureStoreModule secureStoreModule = this;
        Trace.beginSection("[ExpoModulesCore] " + (secureStoreModule.getClass() + ".ModuleDefinition"));
        try {
            ModuleDefinitionBuilder moduleDefinitionBuilder = new ModuleDefinitionBuilder(secureStoreModule);
            moduleDefinitionBuilder.Name(TAG);
            AsyncFunctionBuilder asyncFunctionBuilderAsyncFunction = moduleDefinitionBuilder.AsyncFunction("setValueWithKeyAsync");
            String name = asyncFunctionBuilderAsyncFunction.getName();
            TypeConverterProvider converters = asyncFunctionBuilderAsyncFunction.getConverters();
            AnyType[] anyTypeArr = new AnyType[3];
            AnyType anyType = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), true));
            if (anyType == null) {
                anyType = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), true, new Function0<KType>() { // from class: expo.modules.securestore.SecureStoreModule$definition$lambda$7$$inlined$Coroutine$1
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(String.class);
                    }
                }), converters);
            }
            anyTypeArr[0] = anyType;
            AnyType anyType2 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), true));
            if (anyType2 == null) {
                anyType2 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), true, new Function0<KType>() { // from class: expo.modules.securestore.SecureStoreModule$definition$lambda$7$$inlined$Coroutine$2
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(String.class);
                    }
                }), converters);
            }
            anyTypeArr[1] = anyType2;
            AnyType anyType3 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(SecureStoreOptions.class), false));
            if (anyType3 == null) {
                anyType3 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(SecureStoreOptions.class), false, new Function0<KType>() { // from class: expo.modules.securestore.SecureStoreModule$definition$lambda$7$$inlined$Coroutine$3
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(SecureStoreOptions.class);
                    }
                }), converters);
            }
            anyTypeArr[2] = anyType3;
            asyncFunctionBuilderAsyncFunction.setAsyncFunctionComponent(new SuspendFunctionComponent(name, anyTypeArr, new SecureStoreModule$definition$lambda$7$$inlined$Coroutine$4(null, this)));
            AsyncFunctionBuilder asyncFunctionBuilderAsyncFunction2 = moduleDefinitionBuilder.AsyncFunction("getValueWithKeyAsync");
            String name2 = asyncFunctionBuilderAsyncFunction2.getName();
            TypeConverterProvider converters2 = asyncFunctionBuilderAsyncFunction2.getConverters();
            AnyType[] anyTypeArr2 = new AnyType[2];
            AnyType anyType4 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), false));
            if (anyType4 == null) {
                anyType4 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), false, new Function0<KType>() { // from class: expo.modules.securestore.SecureStoreModule$definition$lambda$7$$inlined$Coroutine$5
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(String.class);
                    }
                }), converters2);
            }
            anyTypeArr2[0] = anyType4;
            AnyType anyType5 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(SecureStoreOptions.class), false));
            if (anyType5 == null) {
                anyType5 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(SecureStoreOptions.class), false, new Function0<KType>() { // from class: expo.modules.securestore.SecureStoreModule$definition$lambda$7$$inlined$Coroutine$6
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(SecureStoreOptions.class);
                    }
                }), converters2);
            }
            anyTypeArr2[1] = anyType5;
            asyncFunctionBuilderAsyncFunction2.setAsyncFunctionComponent(new SuspendFunctionComponent(name2, anyTypeArr2, new SecureStoreModule$definition$lambda$7$$inlined$Coroutine$7(null, this)));
            ModuleDefinitionBuilder moduleDefinitionBuilder2 = moduleDefinitionBuilder;
            TypeConverterProvider converters3 = moduleDefinitionBuilder2.getConverters();
            AnyType[] anyTypeArr3 = new AnyType[3];
            AnyType anyType6 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), true));
            if (anyType6 == null) {
                anyType6 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), true, new Function0<KType>() { // from class: expo.modules.securestore.SecureStoreModule$definition$lambda$7$$inlined$Function$1
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(String.class);
                    }
                }), converters3);
            }
            anyTypeArr3[0] = anyType6;
            AnyType anyType7 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), true));
            if (anyType7 == null) {
                anyType7 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), true, new Function0<KType>() { // from class: expo.modules.securestore.SecureStoreModule$definition$lambda$7$$inlined$Function$2
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(String.class);
                    }
                }), converters3);
            }
            anyTypeArr3[1] = anyType7;
            AnyType anyType8 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(SecureStoreOptions.class), false));
            if (anyType8 == null) {
                anyType8 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(SecureStoreOptions.class), false, new Function0<KType>() { // from class: expo.modules.securestore.SecureStoreModule$definition$lambda$7$$inlined$Function$3
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(SecureStoreOptions.class);
                    }
                }), converters3);
            }
            anyTypeArr3[2] = anyType8;
            ReturnTypeProvider returnTypeProvider = ReturnTypeProvider.INSTANCE;
            ReturnType returnType = returnTypeProvider.getTypes().get(Reflection.getOrCreateKotlinClass(Unit.class));
            if (returnType == null) {
                returnType = new ReturnType(Reflection.getOrCreateKotlinClass(Unit.class));
                returnTypeProvider.getTypes().put(Reflection.getOrCreateKotlinClass(Unit.class), returnType);
            }
            moduleDefinitionBuilder2.getSyncFunctions().put("setValueWithKeySync", new SyncFunctionComponent("setValueWithKeySync", anyTypeArr3, returnType, new Function1<Object[], Object>() { // from class: expo.modules.securestore.SecureStoreModule$definition$lambda$7$$inlined$Function$4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] objArr) throws NullKeyException, InterruptedException {
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    Object obj = objArr[0];
                    Object obj2 = objArr[1];
                    SecureStoreOptions secureStoreOptions = (SecureStoreOptions) objArr[2];
                    String str = (String) obj2;
                    String str2 = (String) obj;
                    if (str != null) {
                        BuildersKt__BuildersKt.runBlocking$default(null, new SecureStoreModule$definition$1$3$1(this.this$0, str, str2, secureStoreOptions, null), 1, null);
                        return Unit.INSTANCE;
                    }
                    throw new NullKeyException();
                }
            }));
            ModuleDefinitionBuilder moduleDefinitionBuilder3 = moduleDefinitionBuilder;
            TypeConverterProvider converters4 = moduleDefinitionBuilder3.getConverters();
            AnyType[] anyTypeArr4 = new AnyType[2];
            AnyType anyType9 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), false));
            if (anyType9 == null) {
                anyType9 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), false, new Function0<KType>() { // from class: expo.modules.securestore.SecureStoreModule$definition$lambda$7$$inlined$Function$5
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(String.class);
                    }
                }), converters4);
            }
            anyTypeArr4[0] = anyType9;
            AnyType anyType10 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(SecureStoreOptions.class), false));
            if (anyType10 == null) {
                anyType10 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(SecureStoreOptions.class), false, new Function0<KType>() { // from class: expo.modules.securestore.SecureStoreModule$definition$lambda$7$$inlined$Function$6
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(SecureStoreOptions.class);
                    }
                }), converters4);
            }
            anyTypeArr4[1] = anyType10;
            ReturnTypeProvider returnTypeProvider2 = ReturnTypeProvider.INSTANCE;
            ReturnType returnType2 = returnTypeProvider2.getTypes().get(Reflection.getOrCreateKotlinClass(String.class));
            if (returnType2 == null) {
                returnType2 = new ReturnType(Reflection.getOrCreateKotlinClass(String.class));
                returnTypeProvider2.getTypes().put(Reflection.getOrCreateKotlinClass(String.class), returnType2);
            }
            moduleDefinitionBuilder3.getSyncFunctions().put("getValueWithKeySync", new SyncFunctionComponent("getValueWithKeySync", anyTypeArr4, returnType2, new Function1<Object[], Object>() { // from class: expo.modules.securestore.SecureStoreModule$definition$lambda$7$$inlined$Function$7
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] objArr) {
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    Object obj = objArr[0];
                    SecureStoreOptions secureStoreOptions = (SecureStoreOptions) objArr[1];
                    return (String) BuildersKt__BuildersKt.runBlocking$default(null, new SecureStoreModule$definition$1$4$1(this.this$0, (String) obj, secureStoreOptions, null), 1, null);
                }
            }));
            ModuleDefinitionBuilder moduleDefinitionBuilder4 = moduleDefinitionBuilder;
            TypeConverterProvider converters5 = moduleDefinitionBuilder4.getConverters();
            AnyType[] anyTypeArr5 = new AnyType[2];
            AnyType anyType11 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), false));
            if (anyType11 == null) {
                anyType11 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), false, new Function0<KType>() { // from class: expo.modules.securestore.SecureStoreModule$definition$lambda$7$$inlined$AsyncFunction$1
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(String.class);
                    }
                }), converters5);
            }
            anyTypeArr5[0] = anyType11;
            AnyType anyType12 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(SecureStoreOptions.class), false));
            if (anyType12 == null) {
                anyType12 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(SecureStoreOptions.class), false, new Function0<KType>() { // from class: expo.modules.securestore.SecureStoreModule$definition$lambda$7$$inlined$AsyncFunction$2
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(SecureStoreOptions.class);
                    }
                }), converters5);
            }
            anyTypeArr5[1] = anyType12;
            Function1<Object[], Unit> function1 = new Function1<Object[], Unit>() { // from class: expo.modules.securestore.SecureStoreModule$definition$lambda$7$$inlined$AsyncFunction$3
                @Override // kotlin.jvm.functions.Function1
                public final Unit invoke(Object[] objArr) throws CodedException {
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    Object obj = objArr[0];
                    SecureStoreOptions secureStoreOptions = (SecureStoreOptions) objArr[1];
                    String str = (String) obj;
                    try {
                        this.this$0.deleteItemImpl(str, secureStoreOptions);
                        return Unit.INSTANCE;
                    } catch (CodedException e) {
                        throw e;
                    } catch (Exception e2) {
                        throw new DeleteException(e2.getMessage(), str, secureStoreOptions.getKeychainService(), e2);
                    }
                }
            };
            if (!Intrinsics.areEqual(Unit.class, Integer.TYPE)) {
                if (!Intrinsics.areEqual(Unit.class, Boolean.TYPE)) {
                    if (!Intrinsics.areEqual(Unit.class, Double.TYPE)) {
                        if (!Intrinsics.areEqual(Unit.class, Float.TYPE)) {
                            if (Intrinsics.areEqual(Unit.class, String.class)) {
                                untypedAsyncFunctionComponent = new StringAsyncFunctionComponent("deleteValueWithKeyAsync", anyTypeArr5, function1);
                            } else {
                                untypedAsyncFunctionComponent = new UntypedAsyncFunctionComponent("deleteValueWithKeyAsync", anyTypeArr5, function1);
                            }
                        } else {
                            untypedAsyncFunctionComponent = new FloatAsyncFunctionComponent("deleteValueWithKeyAsync", anyTypeArr5, function1);
                        }
                    } else {
                        untypedAsyncFunctionComponent = new DoubleAsyncFunctionComponent("deleteValueWithKeyAsync", anyTypeArr5, function1);
                    }
                } else {
                    untypedAsyncFunctionComponent = new BoolAsyncFunctionComponent("deleteValueWithKeyAsync", anyTypeArr5, function1);
                }
            } else {
                untypedAsyncFunctionComponent = new IntAsyncFunctionComponent("deleteValueWithKeyAsync", anyTypeArr5, function1);
            }
            moduleDefinitionBuilder4.getAsyncFunctions().put("deleteValueWithKeyAsync", untypedAsyncFunctionComponent);
            ModuleDefinitionBuilder moduleDefinitionBuilder5 = moduleDefinitionBuilder;
            AnyType[] anyTypeArr6 = new AnyType[0];
            ReturnTypeProvider returnTypeProvider3 = ReturnTypeProvider.INSTANCE;
            ReturnType returnType3 = returnTypeProvider3.getTypes().get(Reflection.getOrCreateKotlinClass(Object.class));
            if (returnType3 == null) {
                returnType3 = new ReturnType(Reflection.getOrCreateKotlinClass(Object.class));
                returnTypeProvider3.getTypes().put(Reflection.getOrCreateKotlinClass(Object.class), returnType3);
            }
            moduleDefinitionBuilder5.getSyncFunctions().put("canUseBiometricAuthentication", new SyncFunctionComponent("canUseBiometricAuthentication", anyTypeArr6, returnType3, new Function1<Object[], Object>() { // from class: expo.modules.securestore.SecureStoreModule$definition$lambda$7$$inlined$FunctionWithoutArgs$1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    boolean z;
                    Intrinsics.checkNotNullParameter(it, "it");
                    try {
                        AuthenticationHelper authenticationHelper = this.this$0.authenticationHelper;
                        if (authenticationHelper == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("authenticationHelper");
                            authenticationHelper = null;
                        }
                        authenticationHelper.assertBiometricsSupport();
                        z = true;
                    } catch (AuthenticationException unused) {
                        z = false;
                    }
                    return Boolean.valueOf(z);
                }
            }));
            moduleDefinitionBuilder.getEventListeners().put(EventName.MODULE_CREATE, new BasicEventListener(EventName.MODULE_CREATE, new Function0<Unit>() { // from class: expo.modules.securestore.SecureStoreModule$definition$lambda$7$$inlined$OnCreate$1
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() throws NoSuchAlgorithmException, IOException, java.security.KeyStoreException, CertificateException {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() throws NoSuchAlgorithmException, IOException, java.security.KeyStoreException, CertificateException {
                    this.this$0.authenticationHelper = new AuthenticationHelper(this.this$0.getReactContext(), this.this$0.getAppContext().getLegacyModuleRegistry());
                    this.this$0.hybridAESEncryptor = new HybridAESEncryptor(this.this$0.getReactContext(), this.this$0.mAESEncryptor);
                    KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
                    keyStore.load(null);
                    this.this$0.keyStore = keyStore;
                }
            }));
            return moduleDefinitionBuilder.buildModule();
        } finally {
            Trace.endSection();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object getItemImpl(String str, SecureStoreOptions secureStoreOptions, Continuation<? super String> continuation) {
        SharedPreferences sharedPreferences = getSharedPreferences();
        if (sharedPreferences.contains(createKeychainAwareKey(str, secureStoreOptions.getKeychainService()))) {
            return readJSONEncodedItem(str, sharedPreferences, secureStoreOptions, continuation);
        }
        if (sharedPreferences.contains(str)) {
            return readJSONEncodedItem(str, sharedPreferences, secureStoreOptions, continuation);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 6701. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    public final java.lang.Object readJSONEncodedItem(java.lang.String r19, android.content.SharedPreferences r20, expo.modules.securestore.SecureStoreOptions r21, kotlin.coroutines.Continuation<? super java.lang.String> r22) {
        /*
            Method dump skipped, instruction units count: 670
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: expo.modules.securestore.SecureStoreModule.readJSONEncodedItem(java.lang.String, android.content.SharedPreferences, expo.modules.securestore.SecureStoreOptions, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:71:0x0161  */
    /* JADX WARN: Code duplicated, block: B:76:0x0183  */
    /* JADX WARN: Code duplicated, block: B:7:0x0020  */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x017d, code lost:
    
        if (setItemImpl(r2, r3, r4, true, r8) == r11) goto L73;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object setItemImpl(java.lang.String r17, java.lang.String r18, expo.modules.securestore.SecureStoreOptions r19, boolean r20, kotlin.coroutines.Continuation<? super kotlin.Unit> r21) throws expo.modules.kotlin.exception.CodedException {
        /*
            Method dump skipped, instruction units count: 420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: expo.modules.securestore.SecureStoreModule.setItemImpl(java.lang.String, java.lang.String, expo.modules.securestore.SecureStoreOptions, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final boolean saveEncryptedItem(JSONObject encryptedItem, SharedPreferences prefs, String key, boolean requireAuthentication, String keychainService) throws JSONException, WriteException {
        encryptedItem.put(USES_KEYSTORE_SUFFIX_PROPERTY, true);
        encryptedItem.put(KEYSTORE_ALIAS_PROPERTY, keychainService);
        encryptedItem.put(AuthenticationHelper.REQUIRE_AUTHENTICATION_PROPERTY, requireAuthentication);
        String string = encryptedItem.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        if (string.length() == 0) {
            throw new WriteException("Could not JSON-encode the encrypted item for SecureStore - the string " + string + " is null or empty", key, keychainService, null, 8, null);
        }
        return prefs.edit().putString(key, string).commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void deleteItemImpl(String key, SecureStoreOptions options) throws DeleteException {
        SharedPreferences sharedPreferences = getSharedPreferences();
        String strCreateKeychainAwareKey = createKeychainAwareKey(key, options.getKeychainService());
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(getReactContext());
        boolean zCommit = sharedPreferences.contains(strCreateKeychainAwareKey) ? sharedPreferences.edit().remove(strCreateKeychainAwareKey).commit() : true;
        if (sharedPreferences.contains(key)) {
            zCommit = sharedPreferences.edit().remove(key).commit() && zCommit;
        }
        if (defaultSharedPreferences.contains(key)) {
            zCommit = defaultSharedPreferences.edit().remove(key).commit() && zCommit;
        }
        if (!zCommit) {
            throw new DeleteException("Could not delete the item from SecureStore", key, options.getKeychainService(), null, 8, null);
        }
    }

    private final void removeKeyFromKeystore(String keyStoreAlias, String keychainService) throws java.security.KeyStoreException {
        KeyStore keyStore = this.keyStore;
        if (keyStore == null) {
            Intrinsics.throwUninitializedPropertyAccessException("keyStore");
            keyStore = null;
        }
        keyStore.deleteEntry(keyStoreAlias);
        removeAllEntriesUnderKeychainService(keychainService);
    }

    private final void removeAllEntriesUnderKeychainService(String keychainService) {
        SharedPreferences sharedPreferences = getSharedPreferences();
        Map<String, ?> all = sharedPreferences.getAll();
        Intrinsics.checkNotNullExpressionValue(all, "getAll(...)");
        for (Map.Entry<String, ?> entry : all.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            String str = value instanceof String ? (String) value : null;
            if (str != null) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    String strOptString = jSONObject.optString(KEYSTORE_ALIAS_PROPERTY);
                    if (strOptString != null && jSONObject.optBoolean(AuthenticationHelper.REQUIRE_AUTHENTICATION_PROPERTY, false) && Intrinsics.areEqual(keychainService, strOptString)) {
                        sharedPreferences.edit().remove(key).apply();
                        Log.w(TAG, "Removing entry: " + key + " due to the encryption key being deleted");
                    }
                } catch (JSONException unused) {
                }
            }
        }
    }

    private final <E extends KeyStore.Entry> E getLegacyKeyEntry(Class<E> keyStoreEntryClass, KeyBasedEncryptor<E> encryptor, SecureStoreOptions options) throws NoSuchAlgorithmException, java.security.KeyStoreException, UnrecoverableEntryException {
        String keyStoreAlias = encryptor.getKeyStoreAlias(options);
        KeyStore keyStore = this.keyStore;
        if (keyStore == null) {
            Intrinsics.throwUninitializedPropertyAccessException("keyStore");
            keyStore = null;
        }
        if (!keyStore.containsAlias(encryptor.getKeyStoreAlias(options))) {
            return null;
        }
        KeyStore keyStore2 = this.keyStore;
        if (keyStore2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("keyStore");
            keyStore2 = null;
        }
        KeyStore.Entry entry = keyStore2.getEntry(keyStoreAlias, null);
        if (keyStoreEntryClass.isInstance(entry)) {
            return keyStoreEntryClass.cast(entry);
        }
        return null;
    }

    private final <E extends KeyStore.Entry> E getKeyEntry(Class<E> keyStoreEntryClass, KeyBasedEncryptor<E> encryptor, SecureStoreOptions options, boolean requireAuthentication) throws KeyStoreException, NoSuchAlgorithmException, java.security.KeyStoreException, UnrecoverableEntryException {
        String extendedKeyStoreAlias = encryptor.getExtendedKeyStoreAlias(options, requireAuthentication);
        KeyStore keyStore = this.keyStore;
        if (keyStore == null) {
            Intrinsics.throwUninitializedPropertyAccessException("keyStore");
            keyStore = null;
        }
        if (!keyStore.containsAlias(extendedKeyStoreAlias)) {
            return null;
        }
        KeyStore keyStore2 = this.keyStore;
        if (keyStore2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("keyStore");
            keyStore2 = null;
        }
        KeyStore.Entry entry = keyStore2.getEntry(extendedKeyStoreAlias, null);
        if (!keyStoreEntryClass.isInstance(entry)) {
            throw new KeyStoreException("The entry for the keystore alias \"" + extendedKeyStoreAlias + "\" is not a " + keyStoreEntryClass.getSimpleName());
        }
        E eCast = keyStoreEntryClass.cast(entry);
        if (eCast != null) {
            return eCast;
        }
        throw new KeyStoreException("The entry for the keystore alias \"" + extendedKeyStoreAlias + "\" couldn't be cast to correct class");
    }

    private final <E extends KeyStore.Entry> E getOrCreateKeyEntry(Class<E> keyStoreEntryClass, KeyBasedEncryptor<E> encryptor, SecureStoreOptions options, boolean requireAuthentication) throws AuthenticationException {
        E e = (E) getKeyEntry(keyStoreEntryClass, encryptor, options, requireAuthentication);
        if (e != null) {
            return e;
        }
        KeyStore keyStore = null;
        if (requireAuthentication) {
            AuthenticationHelper authenticationHelper = this.authenticationHelper;
            if (authenticationHelper == null) {
                Intrinsics.throwUninitializedPropertyAccessException("authenticationHelper");
                authenticationHelper = null;
            }
            authenticationHelper.assertBiometricsSupport();
        }
        KeyStore keyStore2 = this.keyStore;
        if (keyStore2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("keyStore");
        } else {
            keyStore = keyStore2;
        }
        return (E) encryptor.initializeKeyStoreEntry(keyStore, options);
    }

    private final <E extends KeyStore.Entry> E getKeyEntryCompat(Class<E> keyStoreEntryClass, KeyBasedEncryptor<E> encryptor, SecureStoreOptions options, boolean requireAuthentication, boolean usesKeystoreSuffix) {
        if (usesKeystoreSuffix) {
            return (E) getKeyEntry(keyStoreEntryClass, encryptor, options, requireAuthentication);
        }
        return (E) getLegacyKeyEntry(keyStoreEntryClass, encryptor, options);
    }

    public final SharedPreferences getSharedPreferences() {
        SharedPreferences sharedPreferences = getReactContext().getSharedPreferences(SHARED_PREFERENCES_NAME, 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        return sharedPreferences;
    }

    private final String createKeychainAwareKey(String key, String keychainService) {
        return keychainService + "-" + key;
    }
}
