package com.fourplex.lovio;

import android.net.Uri;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.BaseJavaModule;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.WritableMap;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import me.leolin.shortcutbadger.impl.NewHtcHomeBadger;

/* JADX INFO: compiled from: WidgetHelperModule.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010\b\u001a\u00020\tH\u0007J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\fH\u0007J(\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J \u0010\u0012\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J \u0010\u0013\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J(\u0010\u0012\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0018\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J \u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J \u0010\u001b\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J(\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J \u0010\u001c\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J\u0018\u0010\u001f\u001a\u00020\t2\u0006\u0010 \u001a\u00020\u001e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J\u0010\u0010!\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J\u0010\u0010\"\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J\u0010\u0010#\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J\u0010\u0010$\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J\u0018\u0010%\u001a\u00020&2\u0006\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u0007H\u0002J\u0016\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00070(2\u0006\u0010)\u001a\u00020\fH\u0002¨\u0006*"}, d2 = {"Lcom/fourplex/lovio/WidgetHelperModule;", "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;", "reactContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "getName", "", "reloadAllTimelines", "", "reloadTimelinesOfKinds", "kinds", "Lcom/facebook/react/bridge/ReadableArray;", "saveDataToAppGroupWithKinds", "jsonString", "key", BaseJavaModule.METHOD_TYPE_PROMISE, "Lcom/facebook/react/bridge/Promise;", "saveDataToAppGroup", "saveDataToAppGroupDeferred", "reloadWidgets", "", "setIsPremium", "isPremium", "saveImageToAppGroup", "sourcePath", "fileName", "saveImageToAppGroupDeferred", "saveMemoryImage", "index", "", "setMemoriesCount", NewHtcHomeBadger.COUNT, "getMemoriesMetadata", "clearMemoryImages", "clearDrawingWidget", "clearRelationshipWidgetData", "copySourceFileToAppFiles", "Ljava/io/File;", "readableArrayToStrings", "", "values", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WidgetHelperModule extends ReactContextBaseJavaModule {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WidgetHelperModule(ReactApplicationContext reactContext) {
        super(reactContext);
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
    }

    @Override // com.facebook.react.bridge.NativeModule
    public String getName() {
        return "WidgetHelper";
    }

    @ReactMethod
    public final void reloadAllTimelines() {
        WidgetUpdateDispatcher widgetUpdateDispatcher = WidgetUpdateDispatcher.INSTANCE;
        ReactApplicationContext reactApplicationContext = getReactApplicationContext();
        Intrinsics.checkNotNullExpressionValue(reactApplicationContext, "getReactApplicationContext(...)");
        widgetUpdateDispatcher.reloadAllWidgets(reactApplicationContext, true);
    }

    @ReactMethod
    public final void reloadTimelinesOfKinds(ReadableArray kinds) {
        Intrinsics.checkNotNullParameter(kinds, "kinds");
        List<String> list = readableArrayToStrings(kinds);
        WidgetUpdateDispatcher widgetUpdateDispatcher = WidgetUpdateDispatcher.INSTANCE;
        ReactApplicationContext reactApplicationContext = getReactApplicationContext();
        Intrinsics.checkNotNullExpressionValue(reactApplicationContext, "getReactApplicationContext(...)");
        widgetUpdateDispatcher.reloadKinds(reactApplicationContext, list, true);
    }

    @ReactMethod
    public final void saveDataToAppGroupWithKinds(String jsonString, String key, ReadableArray kinds, Promise promise) {
        Intrinsics.checkNotNullParameter(jsonString, "jsonString");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(kinds, "kinds");
        Intrinsics.checkNotNullParameter(promise, "promise");
        try {
            WidgetState widgetState = WidgetState.INSTANCE;
            ReactApplicationContext reactApplicationContext = getReactApplicationContext();
            Intrinsics.checkNotNullExpressionValue(reactApplicationContext, "getReactApplicationContext(...)");
            if (!widgetState.preferences(reactApplicationContext).edit().putString(key, jsonString).commit()) {
                promise.reject("SAVE_DATA_FAILED", "Failed to commit widget data");
                return;
            }
            WidgetUpdateDispatcher widgetUpdateDispatcher = WidgetUpdateDispatcher.INSTANCE;
            ReactApplicationContext reactApplicationContext2 = getReactApplicationContext();
            Intrinsics.checkNotNullExpressionValue(reactApplicationContext2, "getReactApplicationContext(...)");
            widgetUpdateDispatcher.reloadKinds(reactApplicationContext2, readableArrayToStrings(kinds), true);
            promise.resolve(true);
        } catch (Exception e) {
            promise.reject("SAVE_DATA_FAILED", e.getMessage(), e);
        }
    }

    @ReactMethod
    public final void saveDataToAppGroup(String jsonString, String key, Promise promise) {
        Intrinsics.checkNotNullParameter(jsonString, "jsonString");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(promise, "promise");
        saveDataToAppGroup(jsonString, key, true, promise);
    }

    @ReactMethod
    public final void saveDataToAppGroupDeferred(String jsonString, String key, Promise promise) {
        Intrinsics.checkNotNullParameter(jsonString, "jsonString");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(promise, "promise");
        saveDataToAppGroup(jsonString, key, false, promise);
    }

    private final void saveDataToAppGroup(String jsonString, String key, boolean reloadWidgets, Promise promise) {
        try {
            WidgetState widgetState = WidgetState.INSTANCE;
            ReactApplicationContext reactApplicationContext = getReactApplicationContext();
            Intrinsics.checkNotNullExpressionValue(reactApplicationContext, "getReactApplicationContext(...)");
            if (!widgetState.preferences(reactApplicationContext).edit().putString(key, jsonString).commit()) {
                promise.reject("SAVE_DATA_FAILED", "Failed to commit widget data");
                return;
            }
            if (reloadWidgets) {
                WidgetUpdateDispatcher widgetUpdateDispatcher = WidgetUpdateDispatcher.INSTANCE;
                ReactApplicationContext reactApplicationContext2 = getReactApplicationContext();
                Intrinsics.checkNotNullExpressionValue(reactApplicationContext2, "getReactApplicationContext(...)");
                widgetUpdateDispatcher.reloadAllWidgets(reactApplicationContext2, true);
            }
            promise.resolve(true);
        } catch (Exception e) {
            promise.reject("SAVE_DATA_FAILED", e.getMessage(), e);
        }
    }

    @ReactMethod
    public final void setIsPremium(boolean isPremium, Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        try {
            WidgetState widgetState = WidgetState.INSTANCE;
            ReactApplicationContext reactApplicationContext = getReactApplicationContext();
            Intrinsics.checkNotNullExpressionValue(reactApplicationContext, "getReactApplicationContext(...)");
            if (!widgetState.preferences(reactApplicationContext).edit().putBoolean("is_premium", true).commit()) {
                promise.reject("PREMIUM_SET_FAILED", "Failed to commit premium flag");
                return;
            }
            WidgetUpdateDispatcher widgetUpdateDispatcher = WidgetUpdateDispatcher.INSTANCE;
            ReactApplicationContext reactApplicationContext2 = getReactApplicationContext();
            Intrinsics.checkNotNullExpressionValue(reactApplicationContext2, "getReactApplicationContext(...)");
            widgetUpdateDispatcher.reloadAllWidgets(reactApplicationContext2, true);
            promise.resolve(true);
        } catch (Exception e) {
            promise.reject("PREMIUM_SET_FAILED", e.getMessage(), e);
        }
    }

    @ReactMethod
    public final void saveImageToAppGroup(String sourcePath, String fileName, Promise promise) {
        Intrinsics.checkNotNullParameter(sourcePath, "sourcePath");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(promise, "promise");
        saveImageToAppGroup(sourcePath, fileName, true, promise);
    }

    @ReactMethod
    public final void saveImageToAppGroupDeferred(String sourcePath, String fileName, Promise promise) {
        Intrinsics.checkNotNullParameter(sourcePath, "sourcePath");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(promise, "promise");
        saveImageToAppGroup(sourcePath, fileName, false, promise);
    }

    private final void saveImageToAppGroup(String sourcePath, String fileName, boolean reloadWidgets, Promise promise) {
        try {
            File fileCopySourceFileToAppFiles = copySourceFileToAppFiles(sourcePath, fileName);
            if (Intrinsics.areEqual(fileName, "latest_drawing.png")) {
                WidgetState widgetState = WidgetState.INSTANCE;
                ReactApplicationContext reactApplicationContext = getReactApplicationContext();
                Intrinsics.checkNotNullExpressionValue(reactApplicationContext, "getReactApplicationContext(...)");
                if (!widgetState.preferences(reactApplicationContext).edit().putString("last_drawing_image", fileName).commit()) {
                    promise.reject("SAVE_FAILED", "Failed to commit drawing metadata");
                    return;
                }
            }
            if (reloadWidgets) {
                WidgetUpdateDispatcher widgetUpdateDispatcher = WidgetUpdateDispatcher.INSTANCE;
                ReactApplicationContext reactApplicationContext2 = getReactApplicationContext();
                Intrinsics.checkNotNullExpressionValue(reactApplicationContext2, "getReactApplicationContext(...)");
                widgetUpdateDispatcher.reloadAllWidgets(reactApplicationContext2, true);
            }
            promise.resolve(fileCopySourceFileToAppFiles.getAbsolutePath());
        } catch (Exception e) {
            promise.reject("SAVE_FAILED", e.getMessage(), e);
        }
    }

    @ReactMethod
    public final void saveMemoryImage(String sourcePath, int index, Promise promise) {
        Intrinsics.checkNotNullParameter(sourcePath, "sourcePath");
        Intrinsics.checkNotNullParameter(promise, "promise");
        try {
            promise.resolve(copySourceFileToAppFiles(sourcePath, "memory_" + index + ".png").getAbsolutePath());
        } catch (Exception e) {
            promise.reject("SAVE_FAILED", e.getMessage(), e);
        }
    }

    @ReactMethod
    public final void setMemoriesCount(int count, Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        try {
            WidgetState widgetState = WidgetState.INSTANCE;
            ReactApplicationContext reactApplicationContext = getReactApplicationContext();
            Intrinsics.checkNotNullExpressionValue(reactApplicationContext, "getReactApplicationContext(...)");
            if (!widgetState.setMemoriesCount(reactApplicationContext, count)) {
                promise.reject("SET_COUNT_FAILED", "Failed to commit memories_count");
            } else {
                promise.resolve(true);
            }
        } catch (Exception e) {
            promise.reject("SET_COUNT_FAILED", e.getMessage(), e);
        }
    }

    @ReactMethod
    public final void getMemoriesMetadata(Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        try {
            WidgetState widgetState = WidgetState.INSTANCE;
            ReactApplicationContext reactApplicationContext = getReactApplicationContext();
            Intrinsics.checkNotNullExpressionValue(reactApplicationContext, "getReactApplicationContext(...)");
            Map<String, Integer> memoriesMetadata = widgetState.getMemoriesMetadata(reactApplicationContext);
            WritableMap writableMapCreateMap = Arguments.createMap();
            for (Map.Entry<String, Integer> entry : memoriesMetadata.entrySet()) {
                writableMapCreateMap.putInt(entry.getKey(), entry.getValue().intValue());
            }
            promise.resolve(writableMapCreateMap);
        } catch (Exception e) {
            promise.reject("GET_METADATA_FAILED", e.getMessage(), e);
        }
    }

    @ReactMethod
    public final void clearMemoryImages(Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        try {
            WidgetState widgetState = WidgetState.INSTANCE;
            ReactApplicationContext reactApplicationContext = getReactApplicationContext();
            Intrinsics.checkNotNullExpressionValue(reactApplicationContext, "getReactApplicationContext(...)");
            promise.resolve(Integer.valueOf(widgetState.clearMemoryImages(reactApplicationContext)));
        } catch (Exception e) {
            promise.reject("CLEAR_MEMORY_IMAGES_FAILED", e.getMessage(), e);
        }
    }

    @ReactMethod
    public final void clearDrawingWidget(Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        try {
            WidgetState widgetState = WidgetState.INSTANCE;
            ReactApplicationContext reactApplicationContext = getReactApplicationContext();
            Intrinsics.checkNotNullExpressionValue(reactApplicationContext, "getReactApplicationContext(...)");
            if (!widgetState.clearDrawingWidget(reactApplicationContext)) {
                promise.reject("CLEAR_DRAWING_FAILED", "Failed to clear drawing widget state");
                return;
            }
            WidgetUpdateDispatcher widgetUpdateDispatcher = WidgetUpdateDispatcher.INSTANCE;
            ReactApplicationContext reactApplicationContext2 = getReactApplicationContext();
            Intrinsics.checkNotNullExpressionValue(reactApplicationContext2, "getReactApplicationContext(...)");
            widgetUpdateDispatcher.reloadKinds(reactApplicationContext2, CollectionsKt.listOf("DrawingWidget"), true);
            promise.resolve(true);
        } catch (Exception e) {
            promise.reject("CLEAR_DRAWING_FAILED", e.getMessage(), e);
        }
    }

    @ReactMethod
    public final void clearRelationshipWidgetData(Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        try {
            WidgetState widgetState = WidgetState.INSTANCE;
            ReactApplicationContext reactApplicationContext = getReactApplicationContext();
            Intrinsics.checkNotNullExpressionValue(reactApplicationContext, "getReactApplicationContext(...)");
            if (!widgetState.clearRelationshipWidgetData(reactApplicationContext)) {
                promise.reject("CLEAR_RELATIONSHIP_WIDGET_FAILED", "Failed to clear relationship widget state");
                return;
            }
            WidgetUpdateDispatcher widgetUpdateDispatcher = WidgetUpdateDispatcher.INSTANCE;
            ReactApplicationContext reactApplicationContext2 = getReactApplicationContext();
            Intrinsics.checkNotNullExpressionValue(reactApplicationContext2, "getReactApplicationContext(...)");
            widgetUpdateDispatcher.reloadAllWidgets(reactApplicationContext2, true);
            promise.resolve(true);
        } catch (Exception e) {
            promise.reject("CLEAR_RELATIONSHIP_WIDGET_FAILED", e.getMessage(), e);
        }
    }

    private final File copySourceFileToAppFiles(String sourcePath, String fileName) throws FileNotFoundException {
        FileInputStream fileInputStream;
        ReactApplicationContext reactApplicationContext = getReactApplicationContext();
        Intrinsics.checkNotNullExpressionValue(reactApplicationContext, "getReactApplicationContext(...)");
        Uri uri = Uri.parse(sourcePath);
        if (StringsKt.startsWith$default(sourcePath, "content://", false, 2, (Object) null)) {
            fileInputStream = reactApplicationContext.getContentResolver().openInputStream(uri);
            if (fileInputStream == null) {
                throw new IllegalArgumentException("Could not open source content URI");
            }
        } else if (StringsKt.startsWith$default(sourcePath, "file:", false, 2, (Object) null)) {
            String path = uri.getPath();
            if (path == null) {
                throw new IllegalArgumentException("Invalid file URI path");
            }
            fileInputStream = new FileInputStream(new File(path));
        } else {
            fileInputStream = new FileInputStream(new File(sourcePath));
        }
        File file = new File(reactApplicationContext.getFilesDir(), fileName);
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            InputStream inputStream = fileInputStream;
            try {
                ByteStreamsKt.copyTo$default(inputStream, fileOutputStream, 0, 2, null);
                CloseableKt.closeFinally(inputStream, null);
                CloseableKt.closeFinally(fileOutputStream, null);
                return file;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(inputStream, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                CloseableKt.closeFinally(fileOutputStream, th3);
                throw th4;
            }
        }
    }

    private final List<String> readableArrayToStrings(ReadableArray values) {
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        int size = values.size();
        for (int i = 0; i < size; i++) {
            String string = values.getString(i);
            String str = string;
            if (str != null && !StringsKt.isBlank(str)) {
                listCreateListBuilder.add(string);
            }
        }
        return CollectionsKt.build(listCreateListBuilder);
    }
}
