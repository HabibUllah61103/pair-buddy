package com.bumptech.glide;

import android.content.Context;
import com.bumptech.glide.integration.avif.AvifGlideModule;
import com.bumptech.glide.integration.okhttp3.OkHttpLibraryGlideModule;
import com.github.penfeizhou.animation.glide.GlideAnimationModule;
import expo.modules.image.ExpoImageAppGlideModule;
import expo.modules.image.blurhash.BlurhashModule;
import expo.modules.image.dataurls.Base64Module;
import expo.modules.image.decodedsource.DecodedModule;
import expo.modules.image.okhttp.ExpoImageOkHttpClientGlideModule;
import expo.modules.image.svg.SVGModule;
import expo.modules.image.thumbhash.ThumbhashModule;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GeneratedAppGlideModuleImpl.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J \u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;", "Lcom/bumptech/glide/GeneratedAppGlideModule;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "appGlideModule", "Lexpo/modules/image/ExpoImageAppGlideModule;", "registerComponents", "", "glide", "Lcom/bumptech/glide/Glide;", "registry", "Lcom/bumptech/glide/Registry;", "applyOptions", "builder", "Lcom/bumptech/glide/GlideBuilder;", "isManifestParsingEnabled", "", "expo-image_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class GeneratedAppGlideModuleImpl extends GeneratedAppGlideModule {
    private final ExpoImageAppGlideModule appGlideModule;

    @Override // com.bumptech.glide.module.AppGlideModule
    public boolean isManifestParsingEnabled() {
        return false;
    }

    public GeneratedAppGlideModuleImpl(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.appGlideModule = new ExpoImageAppGlideModule();
    }

    @Override // com.bumptech.glide.module.LibraryGlideModule, com.bumptech.glide.module.RegistersComponents
    public void registerComponents(Context context, Glide glide, Registry registry) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(glide, "glide");
        Intrinsics.checkNotNullParameter(registry, "registry");
        new GlideAnimationModule().registerComponents(context, glide, registry);
        new AvifGlideModule().registerComponents(context, glide, registry);
        new OkHttpLibraryGlideModule().registerComponents(context, glide, registry);
        new SVGModule().registerComponents(context, glide, registry);
        new BlurhashModule().registerComponents(context, glide, registry);
        new Base64Module().registerComponents(context, glide, registry);
        new DecodedModule().registerComponents(context, glide, registry);
        new ThumbhashModule().registerComponents(context, glide, registry);
        new ExpoImageOkHttpClientGlideModule().registerComponents(context, glide, registry);
        this.appGlideModule.registerComponents(context, glide, registry);
    }

    @Override // com.bumptech.glide.module.AppGlideModule, com.bumptech.glide.module.AppliesOptions
    public void applyOptions(Context context, GlideBuilder builder) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(builder, "builder");
        this.appGlideModule.applyOptions(context, builder);
    }
}
