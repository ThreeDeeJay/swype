.class Landroid/support/v4/graphics/drawable/DrawableWrapperHoneycomb;
.super Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;
.source "DrawableWrapperHoneycomb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/drawable/DrawableWrapperHoneycomb$DrawableWrapperStateHoneycomb;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 28
    return-void
.end method

.method constructor <init>(Landroid/support/v4/graphics/drawable/DrawableWrapperDonut$DrawableWrapperState;Landroid/content/res/Resources;)V
    .registers 3
    .param p1, "state"    # Landroid/support/v4/graphics/drawable/DrawableWrapperDonut$DrawableWrapperState;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;-><init>(Landroid/support/v4/graphics/drawable/DrawableWrapperDonut$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 32
    return-void
.end method


# virtual methods
.method public jumpToCurrentState()V
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperHoneycomb;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 37
    return-void
.end method

.method mutateConstantState()Landroid/support/v4/graphics/drawable/DrawableWrapperDonut$DrawableWrapperState;
    .registers 3

    .prologue
    .line 42
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableWrapperHoneycomb$DrawableWrapperStateHoneycomb;

    iget-object v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperHoneycomb;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperDonut$DrawableWrapperState;

    invoke-direct {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableWrapperHoneycomb$DrawableWrapperStateHoneycomb;-><init>(Landroid/support/v4/graphics/drawable/DrawableWrapperDonut$DrawableWrapperState;)V

    return-object v0
.end method
