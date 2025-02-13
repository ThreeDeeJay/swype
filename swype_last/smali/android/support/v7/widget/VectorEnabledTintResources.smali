.class public final Landroid/support/v7/widget/VectorEnabledTintResources;
.super Landroid/content/res/Resources;
.source "VectorEnabledTintResources.java"


# instance fields
.field private final mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 50
    invoke-virtual {p2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v7/widget/VectorEnabledTintResources;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 52
    return-void
.end method

.method public static shouldBeUsed()Z
    .registers 2

    .prologue
    .line 37
    invoke-static {}, Landroid/support/v7/app/AppCompatDelegate;->isCompatVectorFromResourcesEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public final getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v1, p0, Landroid/support/v7/widget/VectorEnabledTintResources;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 62
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_22

    .line 63
    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object v2

    .line 1416
    invoke-virtual {v2, v0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1417
    if-nez v1, :cond_18

    .line 2070
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1420
    :cond_18
    if-eqz v1, :cond_20

    .line 1421
    const/4 v3, 0x0

    invoke-virtual {v2, v0, p1, v3, v1}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1f
    return-object v1

    .line 1423
    :cond_20
    const/4 v1, 0x0

    .line 63
    goto :goto_1f

    .line 65
    :cond_22
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1f
.end method
