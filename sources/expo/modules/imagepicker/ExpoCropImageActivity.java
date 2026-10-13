package expo.modules.imagepicker;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.app.ActionBar;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import com.canhub.cropper.CropImageActivity;
import com.canhub.cropper.CropImageOptions;
import com.canhub.cropper.CropImageView;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ExpoCropImageActivity.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\b\u0010\f\u001a\u00020\tH\u0014J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0007H\u0016J\u0018\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\n\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0002J\u001d\u0010\u0019\u001a\u0010\u0012\f\u0012\n \u001c*\u0004\u0018\u00010\u001b0\u001b0\u001aH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lexpo/modules/imagepicker/ExpoCropImageActivity;", "Lcom/canhub/cropper/CropImageActivity;", "<init>", "()V", "currentIconColor", "", "cropImageViewRef", "Lcom/canhub/cropper/CropImageView;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onCreateOptionsMenu", "", "menu", "Landroid/view/Menu;", "onPrepareOptionsMenu", "setCropImageView", "cropImageView", "applyCustomization", "isNight", "options", "Lcom/canhub/cropper/CropImageOptions;", "getCropOptions", "invokeSetCustomizations", "Lkotlin/Result;", "", "kotlin.jvm.PlatformType", "invokeSetCustomizations-d1pmJ48", "()Ljava/lang/Object;", "tintAllMenuItems", "expo-image-picker_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ExpoCropImageActivity extends CropImageActivity {
    private CropImageView cropImageViewRef;
    private int currentIconColor = -16777216;

    @Override // com.canhub.cropper.CropImageActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) throws IOException {
        super.onCreate(savedInstanceState);
        CropImageOptions cropOptions = getCropOptions();
        if (cropOptions != null) {
            applyCustomization((getResources().getConfiguration().uiMode & 48) == 32, cropOptions);
            m10950invokeSetCustomizationsd1pmJ48();
            invalidateOptionsMenu();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        ViewCompat.setOnApplyWindowInsetsListener(getWindow().getDecorView(), null);
        CropImageView cropImageView = this.cropImageViewRef;
        if (cropImageView != null) {
            ViewCompat.setOnApplyWindowInsetsListener(cropImageView, null);
        }
        this.cropImageViewRef = null;
        super.onDestroy();
    }

    @Override // com.canhub.cropper.CropImageActivity, android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        boolean zOnCreateOptionsMenu = super.onCreateOptionsMenu(menu);
        tintAllMenuItems(menu);
        return zOnCreateOptionsMenu;
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        boolean zOnPrepareOptionsMenu = super.onPrepareOptionsMenu(menu);
        tintAllMenuItems(menu);
        return zOnPrepareOptionsMenu;
    }

    @Override // com.canhub.cropper.CropImageActivity
    public void setCropImageView(CropImageView cropImageView) {
        Intrinsics.checkNotNullParameter(cropImageView, "cropImageView");
        super.setCropImageView(cropImageView);
        this.cropImageViewRef = cropImageView;
        ViewCompat.setOnApplyWindowInsetsListener(cropImageView, new OnApplyWindowInsetsListener() { // from class: expo.modules.imagepicker.ExpoCropImageActivity$$ExternalSyntheticLambda1
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return ExpoCropImageActivity.setCropImageView$lambda$3(view, windowInsetsCompat);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WindowInsetsCompat setCropImageView$lambda$3(View view, WindowInsetsCompat insets) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(insets, "insets");
        Insets insets2 = insets.getInsets(WindowInsetsCompat.Type.systemBars() | WindowInsetsCompat.Type.displayCutout());
        Intrinsics.checkNotNullExpressionValue(insets2, "getInsets(...)");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.setMargins(insets2.left, insets2.top, insets2.right, insets2.bottom);
            view.setLayoutParams(marginLayoutParams);
            return insets;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
    }

    private final void applyCustomization(boolean isNight, CropImageOptions options) {
        int iIntValue = isNight ? -16777216 : -1;
        int i = isNight ? -1 : -16777216;
        ExpoCropImageUtils expoCropImageUtils = ExpoCropImageUtils.INSTANCE;
        Resources.Theme theme = getTheme();
        Intrinsics.checkNotNullExpressionValue(theme, "getTheme(...)");
        Integer themeColor = expoCropImageUtils.getThemeColor(theme, R.attr.expoCropBackButtonIconColor);
        if (themeColor == null) {
            ExpoCropImageUtils expoCropImageUtils2 = ExpoCropImageUtils.INSTANCE;
            Resources resources = getResources();
            Intrinsics.checkNotNullExpressionValue(resources, "getResources(...)");
            themeColor = expoCropImageUtils2.getColorResource(resources, R.color.expoCropBackButtonIconColor);
        }
        ExpoCropImageUtils expoCropImageUtils3 = ExpoCropImageUtils.INSTANCE;
        Resources.Theme theme2 = getTheme();
        Intrinsics.checkNotNullExpressionValue(theme2, "getTheme(...)");
        Integer themeColor2 = expoCropImageUtils3.getThemeColor(theme2, R.attr.expoCropBackgroundColor);
        if (themeColor2 == null) {
            ExpoCropImageUtils expoCropImageUtils4 = ExpoCropImageUtils.INSTANCE;
            Resources resources2 = getResources();
            Intrinsics.checkNotNullExpressionValue(resources2, "getResources(...)");
            themeColor2 = expoCropImageUtils4.getColorResource(resources2, R.color.expoCropBackgroundColor);
        }
        ExpoCropImageUtils expoCropImageUtils5 = ExpoCropImageUtils.INSTANCE;
        Resources.Theme theme3 = getTheme();
        Intrinsics.checkNotNullExpressionValue(theme3, "getTheme(...)");
        Integer themeColor3 = expoCropImageUtils5.getThemeColor(theme3, R.attr.expoCropToolbarActionTextColor);
        if (themeColor3 == null) {
            ExpoCropImageUtils expoCropImageUtils6 = ExpoCropImageUtils.INSTANCE;
            Resources resources3 = getResources();
            Intrinsics.checkNotNullExpressionValue(resources3, "getResources(...)");
            themeColor3 = expoCropImageUtils6.getColorResource(resources3, R.color.expoCropToolbarActionTextColor);
        }
        ExpoCropImageUtils expoCropImageUtils7 = ExpoCropImageUtils.INSTANCE;
        Resources.Theme theme4 = getTheme();
        Intrinsics.checkNotNullExpressionValue(theme4, "getTheme(...)");
        Integer themeColor4 = expoCropImageUtils7.getThemeColor(theme4, R.attr.expoCropToolbarColor);
        if (themeColor4 == null) {
            ExpoCropImageUtils expoCropImageUtils8 = ExpoCropImageUtils.INSTANCE;
            Resources resources4 = getResources();
            Intrinsics.checkNotNullExpressionValue(resources4, "getResources(...)");
            themeColor4 = expoCropImageUtils8.getColorResource(resources4, R.color.expoCropToolbarColor);
        }
        ExpoCropImageUtils expoCropImageUtils9 = ExpoCropImageUtils.INSTANCE;
        Resources.Theme theme5 = getTheme();
        Intrinsics.checkNotNullExpressionValue(theme5, "getTheme(...)");
        Integer themeColor5 = expoCropImageUtils9.getThemeColor(theme5, R.attr.expoCropToolbarIconColor);
        if (themeColor5 == null) {
            ExpoCropImageUtils expoCropImageUtils10 = ExpoCropImageUtils.INSTANCE;
            Resources resources5 = getResources();
            Intrinsics.checkNotNullExpressionValue(resources5, "getResources(...)");
            themeColor5 = expoCropImageUtils10.getColorResource(resources5, R.color.expoCropToolbarIconColor);
        }
        int iIntValue2 = themeColor2 != null ? themeColor2.intValue() : iIntValue;
        if (themeColor4 != null) {
            iIntValue = themeColor4.intValue();
        }
        int iIntValue3 = themeColor5 != null ? themeColor5.intValue() : i;
        this.currentIconColor = iIntValue3;
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setElevation(0.0f);
        }
        options.activityBackgroundColor = iIntValue2;
        options.activityMenuIconColor = iIntValue3;
        if (themeColor3 == null) {
            themeColor3 = Integer.valueOf(i);
        }
        options.activityMenuTextColor = themeColor3;
        if (themeColor == null) {
            themeColor = Integer.valueOf(iIntValue3);
        }
        options.toolbarBackButtonColor = themeColor;
        options.toolbarColor = Integer.valueOf(iIntValue);
        options.toolbarTitleColor = Integer.valueOf(iIntValue3);
        Window window = getWindow();
        final View view = new View(window.getContext());
        view.setBackgroundColor(iIntValue);
        WindowCompat.enableEdgeToEdge(window);
        WindowInsetsControllerCompat windowInsetsControllerCompat = new WindowInsetsControllerCompat(window, window.getDecorView());
        windowInsetsControllerCompat.setAppearanceLightStatusBars(!isNight);
        windowInsetsControllerCompat.setAppearanceLightNavigationBars(!isNight);
        window.getDecorView().setBackgroundColor(iIntValue2);
        window.addContentView(view, new ViewGroup.LayoutParams(-1, 0));
        ViewCompat.setOnApplyWindowInsetsListener(window.getDecorView(), new OnApplyWindowInsetsListener() { // from class: expo.modules.imagepicker.ExpoCropImageActivity$$ExternalSyntheticLambda0
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view2, WindowInsetsCompat windowInsetsCompat) {
                return ExpoCropImageActivity.applyCustomization$lambda$8$lambda$7(view, view2, windowInsetsCompat);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WindowInsetsCompat applyCustomization$lambda$8$lambda$7(View view, View view2, WindowInsetsCompat insets) {
        Intrinsics.checkNotNullParameter(view2, "<unused var>");
        Intrinsics.checkNotNullParameter(insets, "insets");
        Insets insets2 = insets.getInsets(WindowInsetsCompat.Type.statusBars() | WindowInsetsCompat.Type.displayCutout());
        Intrinsics.checkNotNullExpressionValue(insets2, "getInsets(...)");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = insets2.top;
            view.setLayoutParams(layoutParams);
            return insets;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
    }

    private final CropImageOptions getCropOptions() {
        Object objM11241constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            ExpoCropImageActivity expoCropImageActivity = this;
            Field declaredField = CropImageActivity.class.getDeclaredField("cropImageOptions");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(this);
            objM11241constructorimpl = Result.m11241constructorimpl(obj instanceof CropImageOptions ? (CropImageOptions) obj : null);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM11241constructorimpl = Result.m11241constructorimpl(ResultKt.createFailure(th));
        }
        return (CropImageOptions) (Result.m11247isFailureimpl(objM11241constructorimpl) ? null : objM11241constructorimpl);
    }

    /* JADX INFO: renamed from: invokeSetCustomizations-d1pmJ48, reason: not valid java name */
    private final Object m10950invokeSetCustomizationsd1pmJ48() {
        try {
            Result.Companion companion = Result.INSTANCE;
            ExpoCropImageActivity expoCropImageActivity = this;
            Method declaredMethod = CropImageActivity.class.getDeclaredMethod("setCustomizations", new Class[0]);
            declaredMethod.setAccessible(true);
            return Result.m11241constructorimpl(declaredMethod.invoke(this, new Object[0]));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m11241constructorimpl(ResultKt.createFailure(th));
        }
    }

    private final void tintAllMenuItems(Menu menu) {
        Drawable icon;
        Drawable drawableMutate;
        int size = menu.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = menu.getItem(i);
            if (item != null && (icon = item.getIcon()) != null && (drawableMutate = icon.mutate()) != null) {
                drawableMutate.setTint(this.currentIconColor);
            }
        }
    }
}
